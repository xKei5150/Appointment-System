document.addEventListener('DOMContentLoaded', function() {
    let availableDates = [];

    // Fetch available dates from the server
    const xhrDates = new XMLHttpRequest();
    xhrDates.open('GET', 'php_files/fetchDate.php', true);
    xhrDates.onload = function() {
        if (xhrDates.status === 200) {
            availableDates = JSON.parse(xhrDates.responseText);

            const picker = new Pikaday({
                field: document.getElementById('datepicker'),
                bound: false,

                disableDayFn: function(date) {
                    return !availableDates.includes(moment(date).format('YYYY-MM-DD'));
                },
                onSelect: function(date) {
                    fetchTimeslotsForDate(moment(date).format('YYYY-MM-DD'));
                }
            });
        }
    };
    xhrDates.send();

    function fetchTimeslotsForDate(date) {
        const xhrTimeslots = new XMLHttpRequest();
        xhrTimeslots.open('GET', 'php_files/fetchTimeslot.php?date=' + date, true);
        xhrTimeslots.onload = function() {
            if (xhrTimeslots.status === 200) {
                const timeslots = JSON.parse(xhrTimeslots.responseText);
                console.log(timeslots);
                displayTimeslots(timeslots);
            }
        };
        xhrTimeslots.send();
    }
    let selectedButton = null;
    let selectedRow = null;

    function displayTimeslots(timeslots) {
        const timeslotsDiv = document.getElementById('timeslots');
        timeslotsDiv.className = "time";
        timeslotsDiv.innerHTML = "";

    

        timeslots.forEach(timeslot => {
            const rowDiv = document.createElement('div');
            rowDiv.className = "d-flex justify-content-between align-items-center mb-2 line";

            const timeSpan = document.createElement('span');
            timeSpan.textContent = timeslot.timeslot;
            timeSpan.className = "tSpan";
            rowDiv.appendChild(timeSpan);

            const slotsSpan = document.createElement('span');
            slotsSpan.textContent = `(${timeslot.slots} slots available)  `;
            rowDiv.appendChild(slotsSpan);

            const selectButton = document.createElement('button');
            selectButton.className = "btn btn-primary btn-sm";
            selectButton.textContent = "Select";
            selectButton.onclick = function() {
                // Reset previous selected timeslot
                if (selectedButton) {
                    selectedButton.disabled = false;
                    selectedButton.textContent = "Select";
                    selectedRow.classList.remove('bg-success');
                }

                // Set current selected timeslot
                selectButton.disabled = true;
                selectButton.textContent = "Selected";
                rowDiv.classList.add('bg-success');

                // Store current selected button and row
                selectedButton = selectButton;
                selectedRow = rowDiv;
                selectedDate = document.getElementById('datepicker').value;
                selectedTimeslot = timeSpan.textContent;
            };

            if (timeslot.slots <= 0) {
                selectButton.disabled = true;
                selectButton.textContent = "Unavailable";
                rowDiv.classList.add('bg-light');
            }

            rowDiv.appendChild(selectButton);
            timeslotsDiv.appendChild(rowDiv);
        });
    }


});

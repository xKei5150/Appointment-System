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

            const selectButton = document.createElement('div');
            selectButton.className = "custom-control custom-radio";

            const selectsButton = document.createElement('input');
            selectsButton.type = "radio";
            selectsButton.className = "custom-control-input";
            selectsButton.id = `radio-${Math.random().toString(36).substr(2, 9)}`; // Generate a random ID
            selectsButton.name = "timeSlotSelection"; 


            selectsButton.onclick = function() {
                // Reset previous selected timeslot
                if (selectedButton) {
                    selectedButton.disabled = false;
                    selectedRow.classList.remove('bg-danger');
                }

                // Set current selected timeslot
                selectsButton.disabled = true;
                rowDiv.classList.add('bg-danger');

                // Store current selected button and row
                selectedButton = selectsButton;
                selectedRow = rowDiv;
                selectedDate = document.getElementById('datepicker').value;
                selectedTimeslot = timeSpan.textContent;


            };

            const radioLabel = document.createElement('label');
            radioLabel.className = "custom-control-label";
            radioLabel.htmlFor = selectsButton.id;

            selectButton.appendChild(selectsButton);
            selectButton.appendChild(radioLabel);


            if (timeslot.slots <= 0) {
                selectsButton.disabled = true;
                rowDiv.classList.add('bg-light');
            }

            rowDiv.appendChild(selectsButton);
            timeslotsDiv.appendChild(rowDiv);
        });
    }


});

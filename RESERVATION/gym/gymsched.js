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

            const radioWrapper = document.createElement('div');
            radioWrapper.className = "custom-control custom-radio";

            const selectRadioButton = document.createElement('input');
            selectRadioButton.type = "radio";
            selectRadioButton.className = "custom-control-input";
            selectRadioButton.id = `radio-${Math.random().toString(36).substr(2, 9)}`; // Generate a random ID
            selectRadioButton.name = "timeSlotSelection"; // Give the same name to make them mutually exclusive

            selectRadioButton.onchange = function() {
                // Reset previous selected timeslot
                if (selectedButton) {
                    selectedButton.checked = false;
                    selectedRow.classList.remove('bg-danger');
                }

                // Set current selected timeslot
                selectRadioButton.checked = true;
                rowDiv.classList.add('bg-danger');

                // Store current selected button and row
                selectedButton = selectRadioButton;
                selectedRow = rowDiv;
                selectedDate = document.getElementById('datepicker').value;
                selectedTimeslot = timeSpan.textContent;
            };

            const radioLabel = document.createElement('label');
            radioLabel.className = "custom-control-label";
            radioLabel.htmlFor = selectRadioButton.id;

            radioWrapper.appendChild(selectRadioButton);
            radioWrapper.appendChild(radioLabel);

            if (timeslot.availability == 0) {
                selectRadioButton.disabled = true;
                rowDiv.classList.add('bg-light');
            }

            rowDiv.appendChild(radioWrapper);
            timeslotsDiv.appendChild(rowDiv);
        });
    }
});



document.addEventListener('DOMContentLoaded', function() {
    fetchSchedule();
});

function fetchSchedule() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'php_files/fetchSchedule.php', true);
    xhr.onload = function() {
        if (xhr.status === 200) {
            const schedules = JSON.parse(this.responseText);
            displaySchedules(schedules);
        } else {
            showAlert("Error: Failed to fetch the schedule from the server.");
        }
    };
    xhr.onerror = function() {
        showAlert("Network error occurred.");
    };
    xhr.send();
}

function displaySchedules(schedules) {
    const scheduleContainer = document.querySelector('.schedule');

    schedules.forEach((schedule, idx) => {
        const scheduleDate = new Date(schedule.date);
        const dayOfWeek = scheduleDate.toLocaleString('default', { weekday: 'long' }); // This will give you the full name of the day, like "Monday"

        const dateDiv = document.createElement('div');
        dateDiv.className = 'date card mb-3';
        dateDiv.innerHTML = `
        <div class="card-header d-flex justify-content-between" data-toggle="collapse" data-target="#collapse${idx}">
            <span>${dayOfWeek}, ${schedule.date}</span>
            <button class="btn btn-danger btn-sm toggle-btn" data-date="${schedule.date}" data-state="enabled">Disable</button>
        </div>
        <div id="collapse${idx}" class="collapse">
            <div class="card-body timeslots">
            </div>
        </div>
    `;

        dateDiv.querySelector(".toggle-btn").addEventListener('click', function() {
            const dateToToggle = this.getAttribute('data-date');
            const currentState = this.getAttribute('data-state');
            const headerDiv = this.parentElement;
            let newSlotsValue;

            if (currentState === "enabled") {
                // Change button to "Enable" and its appearance to green
                this.textContent = "Enable";
                this.classList.replace('btn-danger', 'btn-success');
                this.setAttribute('data-state', 'disabled');

                // Remove the collapsible behavior and hide the timeslots
                headerDiv.removeAttribute('data-toggle');
                document.querySelector(`#collapse${idx}`).classList.remove('show');

                // Set the slots to 0
                newSlotsValue = 0;

            } else {
                // Change button to "Disable" and its appearance to red
                this.textContent = "Disable";
                this.classList.replace('btn-success', 'btn-danger');
                this.setAttribute('data-state', 'enabled');

                // Add the collapsible behavior back
                headerDiv.setAttribute('data-toggle', 'collapse');

                // Set the slots back to default, which is 10
                newSlotsValue = 10;
            }

            // XHR (Ajax) request to update the slots in the database
            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'php_files/enableDisableDate.php', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() {
                if (this.status === 200) {
                    console.log(this.responseText);
                } else {
                    console.error('Request failed.');
                }
            };
            xhr.send(`date=${dateToToggle}&slots=${newSlotsValue}`);
        });

        const timeslotsDiv = dateDiv.querySelector('.timeslots');
        schedule.timeslots.forEach(timeslot => {
            const slotDiv = document.createElement('div');
            slotDiv.className = 'mb-2 d-flex justify-content-between align-items-center';
            slotDiv.innerHTML = `
                <span class="mr-2">${timeslot.time} - ${timeslot.slots} slots available</span>
                <button class="btn btn-primary btn-sm edit-button">Edit</button>
            `;
            timeslotsDiv.appendChild(slotDiv);

            const editButton = slotDiv.querySelector('.edit-button');
            editButton.addEventListener('click', function() {
                const modal = document.getElementById('editModal');
                modal.dataset.date = schedule.date;
                modal.dataset.time = timeslot.time;
                document.getElementById('editSlots').value = timeslot.slots;
                $('#editModal').modal('show');
            });

        });

        scheduleContainer.appendChild(dateDiv);
    });
}



function showAlert(message) {
    const alertDiv = document.createElement('div');
    alertDiv.className = 'alert alert-warning alert-dismissible fade show mt-3';
    alertDiv.setAttribute('role', 'alert');
    alertDiv.innerHTML = `
        ${message}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    `;
    document.body.appendChild(alertDiv);
}


function submitEdit() {
    const slots = document.getElementById('editSlots').value;
    const modal = document.getElementById('editModal');
    const date = modal.dataset.date;
    const time = modal.dataset.time;
    //PHP backend
    const xhr = new XMLHttpRequest();
    xhr.open('POST', 'php_files/editSchedule.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function() {
        if (xhr.status === 200) {
            console.log("Updated successfully.");
            fetchSchedule();
            location.reload(true);

        } else {
            showAlert("Error: Failed to update the schedule.");
        }
    };
    xhr.onerror = function() {
        showAlert("Network error occurred.");
    };
    xhr.send(`date=${date}&timeslot=${time}&slots=${slots}`);
}



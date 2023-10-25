document.addEventListener("DOMContentLoaded", function() {
    // Function to fetch appointment data
    function fetchAppointments() {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', 'php_files/fetchAppointment.php', true);
        xhr.onload = function() {
            if (this.status === 200) {
                const appointments = JSON.parse(this.responseText);
                populateTable(appointments);
            } else {
                console.error('Failed to fetch data.');
            }
        };
        xhr.onerror = function() {
            console.error('Request error...');
        };
        xhr.send();
    }

    function populateTable(appointments) {
        const tbody = document.querySelector("#datatablesSimple tbody");
        tbody.innerHTML = "";  // Clear any previous data

        appointments.forEach(appointment => {
            const tr = document.createElement('tr');

            tr.innerHTML = `
           
                <td>${appointment.id}</td>
                <td>${appointment.firstname} ${appointment.lastname}</td>
                <td>${appointment.eu_id}</td>
                <td>${appointment.email}</td>
                <td>${appointment.phone}</td>
                <td>${appointment.event}</td>
                <td>${appointment.purpose}</td>
                <td>${appointment.date}</td>
                <td>${appointment.timeslot}</td>
            `;

            tbody.appendChild(tr);
        });
    }

    // Fetch data when page loads
    fetchAppointments();
});

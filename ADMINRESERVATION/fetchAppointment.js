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


    function fetchApprovedAppointments() {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', 'php_files/fetchAppointment.php', true);
        xhr.onload = function() {
            if (this.status === 200) {
                const appointments = JSON.parse(this.responseText);

                populateApprovedTable(appointments);

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
        const tbody = document.getElementById("datatablesSimple");
        tbody.innerHTML = "";  // Clear any previous data

        appointments.forEach(appointment => {
            // Only process appointments with a "pending" status
            if (appointment.status.toLowerCase() === 'pending') {
                let tr = document.createElement('tr');

                tr.innerHTML = `
                <td>${appointment.org}</td>
                <td>${appointment.id}</td>
                <td>${appointment.firstname} ${appointment.lastname}</td>
                <td>${appointment.eu_id}</td>
                <td>${appointment.email}</td>
                <td>${appointment.phone}</td>
                <td>${appointment.event}</td>
                <td>${appointment.date}</td>
            `;

                let actions = document.createElement('td');  // Correct element is 'td', not 'tr'
                let viewBtn = document.createElement('button');
                viewBtn.innerText = 'View';
                viewBtn.classList.add('btn', 'btn-sm', 'btn-outline-info');
                viewBtn.setAttribute('data-bs-toggle', 'modal');
                viewBtn.dataset.id = appointment.id;
                viewBtn.setAttribute('data-bs-target', '#viewreserveModal');
                viewBtn.addEventListener("click", handleview);

                let deleteBtn = document.createElement('button');
                deleteBtn.innerText = 'Delete';  // Correct text setting
                deleteBtn.classList.add('btn', 'btn-sm', 'btn-outline-danger');
                deleteBtn.dataset.id = appointment.id;
                deleteBtn.addEventListener("click", handledelete);

                let approveBtn = document.createElement('button');
                approveBtn.innerText = 'Approve';  // Correct text setting
                approveBtn.classList.add('btn', 'btn-sm', 'btn-outline-success');
                approveBtn.dataset.id = appointment.id;
                approveBtn.addEventListener("click", handlereserve);

                actions.appendChild(viewBtn);
                actions.appendChild(deleteBtn);
                actions.appendChild(approveBtn);
                tr.appendChild(actions);

                tbody.appendChild(tr);
            }
        });
    }

    function populateApprovedTable(appointments) {
        const tableBody = document.getElementById('approvedListTable').querySelector('tbody');
        tableBody.innerHTML = '';  // Clear existing table body

        appointments.forEach(appointment => {
            // Check if the status is approved
            if (appointment.status.toLowerCase() === 'approved') {
                const row = tableBody.insertRow();
                row.innerHTML = `
        <td>${appointment.org}</td>
        <td>${appointment.id}</td>
        <td>${appointment.firstname} ${appointment.lastname}</td>
        <td>${appointment.eu_id}</td>
        <td>${appointment.email}</td>
        <td>${appointment.phone}</td>
        <td>${appointment.event}</td>
        <td>${appointment.date}</td>
        <td>${appointment.status}</td>
      `;
            }
        });
    }


    function handledelete() {
        const reserveId = this.dataset.id;
        const confirmed = confirm("Are you sure you want to delete this announcement?");
        if (confirmed) {
            const deleteXhr = new XMLHttpRequest();
            deleteXhr.open("POST", "php_files/reservedelete.php", true);
            deleteXhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            deleteXhr.onreadystatechange = function () {
                if (deleteXhr.readyState === 4 && deleteXhr.status === 200) {
                    fetchAnnouncements(); // Refresh the announcements after deletion
                }
            };
            deleteXhr.send(`id=${reserveId}`);

        }
        location.reload();
    }



    function handlereserve() {
        const reserveId = this.dataset.id;
        const confirmed = confirm("Are you sure you want to approve this reservation?");
        if (confirmed) {
            const reserveXhr = new XMLHttpRequest();
            reserveXhr.open("POST", "php_files/approve.php", true);
            reserveXhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            reserveXhr.onreadystatechange = function () {
                if (reserveXhr.readyState === 4 && reserveXhr.status === 200) {
                    fetchAppointments(); // Refresh the announcements after deletion
                }
            };
            reserveXhr.send(`id=${reserveId}`);
        }
        location.reload();

    }


    function handleview() {
        const appointmentId = this.dataset.id; // Fetch the id from the clicked button
    
        // Clear the previous details
        const orgList = document.getElementById("org-list");
        orgList.innerHTML = '';
        const idList = document.getElementById("id-list");
        idList.innerHTML = '';
        const nameList = document.getElementById("name-list");
        nameList.innerHTML = '';
        const addressList = document.getElementById("address-list");
        addressList.innerHTML = '';
        const emailList = document.getElementById("email-list");
        emailList.innerHTML = '';
        const dateList = document.getElementById("date-list");
        dateList.innerHTML = '';
        const phoneList = document.getElementById("phone-list");
        phoneList.innerHTML = '';
        const eventList = document.getElementById("event-list");
        eventList.innerHTML = '';
        const purposeList = document.getElementById("purpose-list");
        purposeList.innerHTML = '';
        const tableList = document.getElementById("table-list");
        tableList.innerHTML = '';
        const chairList = document.getElementById("chair-list");
        chairList.innerHTML = '';
        const otherList = document.getElementById("other-list");
        otherList.innerHTML = '';
        const timeslotList = document.getElementById("timeslot-list");
        timeslotList.innerHTML = '';
    
        // Modify the request to include the appointment ID
        const xhr = new XMLHttpRequest();
        xhr.open("GET", `php_files/fetchAnAppointment.php?id=${appointmentId}`, true); // Send the ID to the PHP script
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const appointment = JSON.parse(xhr.responseText);
    
                // Assuming response is a single appointment object
                orgList.innerHTML += appointment.org;
                idList.innerHTML += appointment.id;
                nameList.innerHTML += `${appointment.firstname} ${appointment.lastname}`;
                addressList.innerHTML += appointment.eu_id;
                phoneList.innerHTML += appointment.phone;
                emailList.innerHTML += appointment.email;
                eventList.innerHTML += appointment.event;
                purposeList.innerHTML += appointment.purpose;
                dateList.innerHTML += appointment.date;
                timeslotList.innerHTML += appointment.timeslot;
            }
        };
        xhr.send();
    }
    

    // Fetch data when page loads
    fetchAppointments();
    fetchApprovedAppointments();
});




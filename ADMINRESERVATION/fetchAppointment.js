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
        const tbody = document.getElementById("datatablesSimple");
        tbody.innerHTML = "";  // Clear any previous data

        appointments.forEach(appointment => {
            let tr = document.createElement('tr');

            tr.innerHTML = `
           
                <td>${appointment.id}</td>
                <td>${appointment.firstname} ${appointment.lastname}</td>
                <td>${appointment.eu_id}</td>
                <td>${appointment.email}</td>
                <td>${appointment.phone}</td>
                <td>${appointment.event}</td>
                <td>${appointment.date}</td>

            `;


            let actions = document.createElement('tr');
            let viewBtn= document.createElement('button');
            viewBtn.innerHTML = '<iclass="wrapper d-flex justify-content-between>View</i>';
            viewBtn.classList.add('btn', 'btn-sm' ,'btn-outline-info');
            viewBtn.setAttribute('data-bs-toggle', 'modal');
            viewBtn.setAttribute('data-bs-target', '#viewreserveModal');
            viewBtn.addEventListener("click", handleview);


    
            let deleteBtn = document.createElement('button');
            deleteBtn.innerHTML = '<iclass="wrapper d-flex justify-content-between>Delete</i>';  // Assuming you have the relevant icon class
            deleteBtn.classList.add('btn', 'btn-sm','btn-outline-danger');
            // deleteBtn.setAttribute('data-bs-toggle', 'modal');
            // deleteBtn.setAttribute('data-bs-target', '#deleteEmployeeModal');
            deleteBtn.dataset.id = appointment.id;
            deleteBtn.addEventListener("click", handledelete);

            let approveBtn = document.createElement('button');
            approveBtn.innerHTML = '<iclass="wrapper d-flex justify-content-between>Approve</i>';  // Assuming you have the relevant icon class
            approveBtn.classList.add('btn', 'btn-sm','btn-outline-success');
            approveBtn.dataset.id = appointment.id;
            approveBtn.addEventListener("click", handlereserve);
            
    
            actions.appendChild(viewBtn);
            actions.appendChild(deleteBtn);
            actions.appendChild(approveBtn);
            tr.appendChild(actions);
    
            tbody.appendChild(tr);
            
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
    }


    function handleview() {
        // Get references to the HTML elements where you want to display data
        const idList = document.getElementById("id-list");
        const nameList = document.getElementById("name-list");
        const addressList = document.getElementById("address-list");
        const emailList = document.getElementById("email-list");
        const dateList = document.getElementById("date-list");
        const phoneList = document.getElementById("phone-list");
        const eventList = document.getElementById("event-list");
        const purposeList = document.getElementById("purpose-list");
        const timeslotList = document.getElementById("timeslot-list");
    
        const xhr = new XMLHttpRequest();
        xhr.open("GET", "php_files/fetchAppointment.php", true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const data = JSON.parse(xhr.responseText);
    
                data.forEach(function (appointments) {
                
                    idList.innerHTML += `<div>${appointments.id}</div>`;
                    nameList.innerHTML += `<div>${appointments.firstname} ${appointments.lastname}</div>`;
                    addressList.innerHTML += `<div>${appointments.eu_id}</div>`;
                    phoneList.innerHTML += `<div>${appointments.phone}</div>`;
                    emailList.innerHTML += `<div>${appointments.email}</div>`;
                    eventList.innerHTML += `<div>${appointments.event}</div>`;
                    purposeList.innerHTML += `<div>${appointments.purpose}</div>`;
                    dateList.innerHTML += `<div>${appointments.date}</div>`;
                    timeslotList.innerHTML += `<div>${appointments.timeslot}</div>`;
    
                });
            }
        };
        xhr.send();
    }
    
    

    // Fetch data when page loads
    fetchAppointments();
});






//     fetchAppointment();
// });
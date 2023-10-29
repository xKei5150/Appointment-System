const sections = document.querySelectorAll('.form');
const prevButton = document.getElementById('prevButton');
const nextButton = document.getElementById('nextButton');
const finishButton = document.getElementById('finishButton');
const summaryInfo = document.getElementById('summaryInfo');

const button = document.getElementById('button');
let currentSectionIndex = -1;

function updateSummary() {
    const name = document.querySelector('input[name="name"]').value;
    const cellnum = document.querySelector('input[name="cellnum"]').value;
    const address = document.querySelector('input[name="address"]').value;
    const email = document.querySelector('input[name="email"]').value;

    // Construct the summary content
    const summaryContent = `
        <p>Date and Time: ${selectedDate} ${selectedTimeslot}</p>
        <p>Name: ${name}</p>
        <p>Number: ${cellnum}</p>
        <p>Address: ${address}</p>
        <p>Email: ${email}</p>
    `;

    summaryInfo.innerHTML = summaryContent; // Update the summary content
}

document.querySelector('#finishButton').addEventListener('click', function() {
    // Gather data
    const name = document.querySelector('input[name="name"]').value;
    const cellnum = document.querySelector('input[name="cellnum"]').value;
    const address = document.querySelector('input[name="address"]').value;
    const email = document.querySelector('input[name="email"]').value;

    const xhr = new XMLHttpRequest();
    xhr.open('POST', 'php_files/addAppointment.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function() {
        if (xhr.status === 200 && xhr.responseText === "success") {
            console.log("Data stored and slot updated successfully.");
            // Here, you might want to give feedback to the user or redirect them
        } else {
            console.error("Error processing the data.");
        }
    };
    xhr.onerror = function() {
        console.error("Network error occurred.");
    };
    xhr.send(`name=${name}&cellnum=${cellnum}&address=${address}&email=${email}&date=${selectedDate}&timeslot=${selectedTimeslot}`);
});


function showCurrentSection() {
    console.log(currentSectionIndex);
    sections.forEach((form, index) => {
        if (index === currentSectionIndex) {
            form.style.display = 'block';
        } else {
            form.style.display = 'none';
        }
    });

    if (currentSectionIndex === 0) {
        prevButton.style.display = 'none';
        nextButton.style.display = 'block';
        finishButton.style.display = 'none';
    } else if (currentSectionIndex === sections.length - 1) {
        prevButton.style.display = 'block';
        nextButton.style.display = 'none';
        finishButton.style.display = 'block';
        updateSummary();
    } else if (currentSectionIndex > 0 && currentSectionIndex < sections.length - 1) {
        prevButton.style.display = 'block';
        nextButton.style.display = 'block';
        finishButton.style.display = 'none';
    }
    else {
        prevButton.style.display = 'none';
        nextButton.style.display = 'none';
        finishButton.style.display = 'none';
    }
}

button.addEventListener('click', () => {
    currentSectionIndex = 0;
    document.getElementById("announce").style.display = 'none';
    showCurrentSection();
});

prevButton.addEventListener('click', (e) => {
    e.preventDefault();
    if (currentSectionIndex > 0) {
        currentSectionIndex--;
        showCurrentSection();
    }
});

nextButton.addEventListener('click', (e) => {
    e.preventDefault();
    if (currentSectionIndex < sections.length - 1) {
        currentSectionIndex++;
        showCurrentSection();
    }
});



showCurrentSection();
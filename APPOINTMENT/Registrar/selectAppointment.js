document.addEventListener("DOMContentLoaded", function () {
    document.getElementById('requirementDiv').style.display = 'none';
    document.getElementById('prevButton').style.display = 'none';
    document.getElementById('nextButton').style.display = 'none';

    setupSectionNavigation();
    fetchAnnouncementsAndDisplayCarousel();
    fetchRequirements();
});

// Global Variables
const sections = document.querySelectorAll('.form');
let currentSectionIndex = -1;

function setupSectionNavigation() {
    const prevButton = document.getElementById('prevButton');
    const nextButton = document.getElementById('nextButton');
    const finishButton = document.getElementById('finishButton');
    const button = document.getElementById('button');

    
    
    button.addEventListener('click', () => {
        currentSectionIndex = 0;
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
    finishButton.addEventListener('click', function() {
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
        
    
            } else {
                console.error("Error processing the data.");
            }
        };
        xhr.onerror = function() {
            console.error("Network error occurred.");
        };
        xhr.send(`name=${name}&cellnum=${cellnum}&address=${address}&email=${email}&date=${selectedDate}&timeslot=${selectedTimeslot}`);
        
        
        populateTicketInfo(name, email, selectedDate, selectedTimeslot);            
        currentSectionIndex++;
        showCurrentSection();
    });
    
    
    showCurrentSection();
    
}

function showCurrentSection() {
    const prevButton = document.getElementById('prevButton');
    const nextButton = document.getElementById('nextButton');
    const finishButton = document.getElementById('finishButton');

    sections.forEach((section, index) => {
        if (index === currentSectionIndex) {
            section.style.display = 'block';
        } else {
            section.style.display = 'none';
        }
    });

    if (currentSectionIndex === 0) {
        prevButton.style.display = 'none';
        nextButton.style.display = 'none';
        finishButton.style.display = 'none';
    } else if (currentSectionIndex === sections.length - 2) {
        prevButton.style.display = 'block';
        nextButton.style.display = 'none';
        finishButton.style.display = 'block';
        updateSummary();
    } else if (currentSectionIndex > 0 && currentSectionIndex < sections.length - 2) {
        prevButton.style.display = 'block';
        nextButton.style.display = 'block';
        finishButton.style.display = 'none';
     } else {
        prevButton.style.display = 'none';
        nextButton.style.display = 'none';
        finishButton.style.display = 'none';
    }
}

function updateSummary() {
    const summaryInfo = document.getElementById('summaryInfo');
/*    const name = document.querySelector('input[name=" name"]').value;
    const cellnum = document.querySelector('input[name=" cellnum"]').value;
    const address = document.querySelector('input[name=" address"]').value;
    const email = document.querySelector('input[name=" email"]').value;*/
    const name = document.getElementById("name").value;
    const cellnum = document.getElementById("cellnum").value;
    const address = document.getElementById("address").value;
    const email = document.getElementById("email").value;
    const summaryContent =
    
    `
        <p>Name:    ${name}</p>
        <p>Number:  ${cellnum}</p>
        <p>Address: ${address}</p>
        <p>Email:   ${email}</p>
    `;
    console.log(summaryInfo);
    summaryInfo.innerHTML = summaryContent;
}

function fetchAnnouncementsAndDisplayCarousel() {
    const carouselInner = document.getElementById("carouselInner");
    const carouselIndicators = document.getElementById("carouselIndicators");

    const xhr = new XMLHttpRequest();
    xhr.open("GET", "php_files/fetchAnnouncements.php", true);
    xhr.onload = function () {
        if (xhr.status === 200) {
            const announcements = JSON.parse(xhr.responseText);
            if (announcements.length > 0) {
                announcements.forEach((announcement, index) => {
                    const announcementItem = document.createElement("div");
                    announcementItem.classList.add("carousel-item");
                    if (index === 0) {
                        announcementItem.classList.add("active");
                    }
                    const announcementTitle = document.createElement("div");
                    announcementTitle.classList.add('announcement-title','titleannounce');
                    announcementTitle.textContent = announcement.title;
                    const announcementDisc = document.createElement("div");
                    announcementDisc.classList.add('announcement-desc', 'fw-lightttt');
                    announcementDisc.textContent = announcement.announcement;
                    announcementItem.appendChild(announcementTitle);
                    announcementItem.appendChild(announcementDisc);
                    carouselInner.appendChild(announcementItem);

                    const indicator = document.createElement("li");
                    indicator.setAttribute("data-bs-target", "#announcementSlider");
                    indicator.setAttribute("data-bs-slide-to", index);
                    if (index === 0) {
                        indicator.classList.add("active");
                    }
                    carouselIndicators.appendChild(indicator);
                });
            } else {
                carouselInner.innerHTML = "No announcements found.";
            }
        } else {
            console.log("Failed to fetch announcements: " + xhr.status);
        }
    };
    xhr.send();
}

function fetchRequirements() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'php_files/fetchRequirements.php', true);
    xhr.onload = function() {
        if (xhr.status === 200) {
            const requirements = JSON.parse(xhr.responseText);
            displayTitlesAsButtons(requirements);
        } else {
            console.error('Failed to fetch requirements.');
        }
    };
    xhr.send();
}

function displayTitlesAsButtons(requirements) {
    const requirementDiv = document.getElementById('requirement');
    requirementDiv.className= "requirebtn";


    requirements.forEach((requirement) => {
        let btn = document.createElement('button');
        btn.textContent = requirement.title;
        btn.classList.add('btn', 'btn-primary', 'm-2' , 'menubtn' );

        btn.addEventListener('click', function() {
            currentSectionIndex++; // Move to the next section
            displayRequirementList(requirement);
            showCurrentSection();
        });

        requirementDiv.appendChild(btn);
    });
}


function displayRequirementList(requirement) {
    const title = requirement.title;
    const requirementListDiv = document.getElementById('requirement-list');
    requirementListDiv.innerHTML = "";

    let xhr = new XMLHttpRequest();
    xhr.open('GET', 'php_files/fetchARequirement.php?title=' + encodeURIComponent(title), true);
    xhr.onload = function() {
        if (this.status === 200) {
            const requirements = JSON.parse(this.responseText);

            if (Array.isArray(requirements)) {
                let ul = document.createElement('ul');
                requirements.forEach(req => {
                    let li = document.createElement('li');
                    li.textContent = req.requirement;
                    ul.appendChild(li);
                });
                requirementListDiv.appendChild(ul);


                requirementListDiv.style.display = 'block';
            } else {
                console.error('Unexpected data format:', requirements);
            }
        } else {
            console.error('Failed to fetch requirements for title:', title);
        }
    };
    xhr.send();
}

function populateTicketInfo(name, email, selectedDate, selectedTimeslots) {
    const ticketInfo = document.getElementById("ticketInfo");
    const announce = document.getElementById('announce');
    let btn = document.createElement('button');
    btn.classList.add('btn', 'btn-primary');
    btn.innerText = "Done";
    btn.addEventListener('click', function () {
        location.reload();
    });
announce.style.display = 'none';

    ticketInfo.innerHTML = `
    <p> ${name} </p>
    <p> ${email} </p>
    
    <h1> Register Office </h1>
    <p> ${selectedDate} </p>
    <p> ${selectedTimeslots} </p>
    `;
    ticketInfo.appendChild(btn);

}
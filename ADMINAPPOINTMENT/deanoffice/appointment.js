document.addEventListener("DOMContentLoaded", function () {
    const button = document.getElementById('button');

    // button.addEventListener("click", fetchAnnouncementsAndDisplayCarousel);
    function fetchAnnouncementsAndDisplayCarousel() {
        const carouselInner = document.getElementById("carouselInner");
        const carouselIndicators = document.getElementById("carouselIndicators");

        carouselInner.innerHTML = "";
        carouselIndicators.innerHTML = "";

        const xhr = new XMLHttpRequest();

        // Fetch announcements from the server
        xhr.open("GET", "php_files/fetchAnnouncements.php", true);

        xhr.onload = function () {
            if (xhr.status === 200) {
                const announcements = JSON.parse(xhr.responseText);
                console.log(announcements);
                if (announcements.length > 0) {
                    announcements.forEach(function (announcement, index) {
                        const announcementItem = document.createElement("div");
                        announcementItem.classList.add("carousel-item");
                        if (index === 0) {
                            announcementItem.classList.add("active"); // Set the first item as active
                        }
                        const announcementText = document.createElement("div");
                        announcementText.classList.add("announcement-text");
                        announcementText.textContent = announcement.title + ": " + announcement.announcement;
                        announcementItem.appendChild(announcementText);
                        carouselInner.appendChild(announcementItem);

                        // Create an indicator for each announcement
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

                const carousel = new bootstrap.Carousel(document.getElementById("announcementSlider"), {
                    interval: 2000, // 2000 milliseconds (2 seconds)
                });
            } else {
                console.log("Failed to fetch announcements: " + xhr.status);
            }
        };


        xhr.send();
    }
    fetchAnnouncementsAndDisplayCarousel();
});

window.onload = function() {
    fetchRequirements();
};

function fetchRequirements() {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', 'php_files/fetchRequirements.php', true);
    xhr.onload = function() {
        if (this.status === 200) {
            const requirements = JSON.parse(this.responseText);
            displayTitlesAsButtons(requirements);
        } else {
            console.error('Failed to fetch requirements.');
        }
    };
    xhr.send();
}
function displayTitlesAsButtons(requirements) {
    const requirementDiv = document.getElementById('requirement');

    requirements.forEach((requirement) => {
        let btn = document.createElement('button');
        btn.textContent = requirement.title;
        btn.classList.add('btn', 'btn-primary', 'm-2');

        btn.addEventListener('click', function() {
            displayRequirementList(requirement);
        });

        requirementDiv.appendChild(btn);
    });
}
function displayRequirementList(title) {
    const requirementDiv = document.getElementById('requirement');
    const requirementListDiv = document.getElementById('requirement-list');

    // Clear the current content
    while (requirementListDiv.firstChild) {
        requirementListDiv.removeChild(requirementListDiv.firstChild);
    }

    requirementDiv.style.display = 'none';

    // Fetch the requirements for the title
    let xhr = new XMLHttpRequest();
    xhr.open('GET', 'php_files/fetchARequirement.php?title=' + encodeURIComponent(title), true);
    xhr.onload = function() {
        if (this.status === 200) {
            const requirements = JSON.parse(this.responseText);

            // Add the requirements as a list
            let ul = document.createElement('ul');
            requirements.forEach(req => {
                let li = document.createElement('li');
                li.textContent = req;
                ul.appendChild(li);
            });
            requirementListDiv.appendChild(ul);

            // Add the "Back" button
            let backButton = document.createElement('button');
            backButton.textContent = 'Back';
            backButton.classList.add('btn', 'btn-secondary', 'mt-2');
            backButton.addEventListener('click', function() {
                requirementDiv.style.display = 'block';
                requirementListDiv.style.display = 'none';
            });
            requirementListDiv.appendChild(backButton);

            requirementListDiv.style.display = 'block';
        } else {
            console.error('Failed to fetch requirements for title:', title);
        }
    };
    xhr.send();
}




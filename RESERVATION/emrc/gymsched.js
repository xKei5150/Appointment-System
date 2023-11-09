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



    fetchAnnouncementsAndDisplayCarousel();
    
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



document.addEventListener("DOMContentLoaded", function () {
    // Elements
    const addAnnouncementButton = document.getElementById("addAnnouncementButton");
    const addAnnouncementModal = document.getElementById("addAnnouncementModal");
    const announcementForm = document.getElementById("announcementForm");
    const idList = document.getElementById("id-list");
    const titleList = document.getElementById("title-list");
    const actionList = document.getElementById("action-list");
    const announcementsContainer = document.getElementById("announcementsContainer");
    const announcementModalHeader = document.getElementById("announcementModalHeader");

    function showModal() {
        addAnnouncementModal.style.display = "block";
    }
    function closeModal() {
        addAnnouncementModal.style.display = "none";
        announcementForm.reset();
        document.querySelector("#announcementForm button[type=submit]").innerText = "Submit";
        announcementModalHeader.innerText = "Add Announcement";
    }

    function handleFormSubmission(e) {
        e.preventDefault();
        const title = document.getElementById("title").value;
        const details = document.getElementById("details").value;
        const submitButton = document.querySelector("#announcementForm button[type=submit]");

        let xhr = new XMLHttpRequest();
        const isUpdate = submitButton.innerText === "Update";
        const url = isUpdate ? `php_files/editAnnouncement.php` : `php_files/addAnnouncement.php`;

        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    const response = xhr.responseText;
                    console.log("Response from the server:", response);
                    location.reload();
                    alert(isUpdate ? "Announcement updated successfully!" : "Announcement added successfully!");
                } else {
                    console.log("Error:", xhr.status, xhr.statusText);
                    location.reload();
                    alert("An error occurred while " + (isUpdate ? "updating" : "adding") + " the announcement.");
                }
                fetchAnnouncements(); // Refresh the announcements after adding or updating
            }
        };

        const announcementId = isUpdate ? submitButton.dataset.id : null;
        xhr.send(`id=${announcementId}&title=${title}&details=${details}`);
        console.log(announcementId);

        announcementForm.reset();
        closeModal();
    }


    addAnnouncementButton.addEventListener("click", showModal);
    document.querySelector(".close").addEventListener("click", closeModal);
    announcementForm.addEventListener("submit", handleFormSubmission);
    announcementsContainer.addEventListener("click", function (e) {
        if (e.target && e.target.tagName === "BUTTON" && e.target.innerText === "Edit") {
            handleEdit.call(e.target);
        }
    });

    function createAndAppendElement(parent, element, text) {
        const newElement = document.createElement(element);
        newElement.textContent = text;
        parent.appendChild(newElement);
        return newElement;
    }

    function fetchAnnouncements() {
        const xhr = new XMLHttpRequest();
        xhr.open("GET", "php_files/fetchAnnouncements.php", true);

        xhr.onload = function () {
            if (xhr.status === 200) {
                const announcements = JSON.parse(xhr.responseText);

                idList.innerHTML = "";
                titleList.innerHTML = "";
                actionList.innerHTML = "";

                if (announcements.length === 0) {
                    announcementsContainer.innerHTML = "No announcements found.";
                } else {
                    announcements.forEach(function (announcement) {
                        createAndAppendElement(idList, "div", announcement.id);
                        createAndAppendElement(titleList, "div", announcement.title);

                        const actionElement = createAndAppendElement(actionList, "div", "");

                        const editButton = createAndAppendElement(actionElement, "button", "Edit");
                        editButton.innerHTML = '<i class="fa-regular fa-pen-to-square"></i>';
                        editButton.classList.add('btn', 'btn-sm', 'btn-warning');
                        editButton.setAttribute('data-bs-toggle', 'modal');
                        editButton.setAttribute('data-bs-target', '#editModal');
                        const deleteButton = createAndAppendElement(actionElement, "button", "Delete");
                        deleteButton.innerHTML = '<i class="fa-solid fa-trash"></i>';  // Assuming you have an 'icon-delete' class for the delete icon
                        deleteButton.classList.add('btn', 'btn-sm', 'btn-danger');

                        editButton.dataset.id = announcement.id;
                        deleteButton.dataset.id = announcement.id;

                        editButton.addEventListener("click", handleEdit);
                        deleteButton.addEventListener("click", handleDelete);
                    });
                }
            } else {
                console.log("Failed to fetch announcements: " + xhr.status);
            }
        };

        xhr.send();
    }

    function handleEdit() {
        const announcementId = this.dataset.id;
        const xhr = new XMLHttpRequest();
        xhr.open("GET", `php_files/getAnnouncement.php?id=${announcementId}`, true);

        xhr.onload = function () {
            if (xhr.status === 200) {
                const announcements = JSON.parse(xhr.responseText);

                document.getElementById("title").value = announcements.title;
                document.getElementById("details").value = announcements.announcement;


                // Update the form submit button text
                document.querySelector("#announcementForm button[type=submit]").innerText = "Update";
                announcementModalHeader.innerText = "Edit Announcement";
                const submitButton = document.querySelector("#announcementForm button[type=submit]");
                submitButton.innerText = "Update";
                submitButton.dataset.id = announcementId;

                showModal();
            } else {
                console.log("Failed to fetch announcement details: " + xhr.status);
            }
        };

        xhr.send();
    }


    function handleDelete() {
        const announcementId = this.dataset.id;
        const confirmed = confirm("Are you sure you want to delete this announcement?");
        if (confirmed) {
            const deleteXhr = new XMLHttpRequest();
            deleteXhr.open("POST", "php_files/deleteAnnouncement.php", true);
            deleteXhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            deleteXhr.onreadystatechange = function () {
                if (deleteXhr.readyState === 4 && deleteXhr.status === 200) {
                    fetchAnnouncements(); // Refresh the announcements after deletion
                }
            };
            deleteXhr.send(`id=${announcementId}`);
        }
    }

    fetchAnnouncements();
});

window.onload = function() {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', 'php_files/fetchRequirements.php', true);
    xhr.onload = function() {
        if (this.status === 200) {
            const requirements = JSON.parse(this.responseText);
            displayRequirements(requirements);
        } else {
            console.error('Failed to fetch requirements.');
        }
    };
    xhr.send();
};

function displayRequirements(requirements) {
    const titleList = document.getElementById('title-list');
    const requirementList = document.getElementById('requirement-list');
    const actionList = document.getElementById('action-list');

    requirements.forEach((requirement) => {
        // Display title
        let titleDiv = document.createElement('div');
        titleDiv.textContent = requirement.title;
        titleList.appendChild(titleDiv);

        // Display number of requirements
        let requirementDiv = document.createElement('div');
        requirementDiv.textContent = requirement.count;
        requirementList.appendChild(requirementDiv);

        // Display action buttons
        let actionDiv = document.createElement('div');

        let editBtn = document.createElement('button');
        editBtn.innerHTML = '<i class="fa-regular fa-pen-to-square"></i>';
        editBtn.classList.add('btn', 'btn-sm');
        editBtn.setAttribute('data-bs-toggle', 'modal');
        editBtn.setAttribute('data-bs-target', '#editModal');
        editBtn.addEventListener('click', function() {
            fetchAndPopulateModal(requirement.title);
        });

        let deleteBtn = document.createElement('button');
        deleteBtn.innerHTML = '<i class="fa-solid fa-trash"></i>';  // Assuming you have an 'icon-delete' class for the delete icon
        deleteBtn.classList.add('btn', 'btn-sm');
        deleteBtn.setAttribute('data-bs-toggle', 'modal');
        deleteBtn.setAttribute('data-bs-target', '#deleteEmployeeModal');
        deleteBtn.addEventListener('click', function() {
            fetchAndPopulateModal(requirement.title);
            
        });

        actionDiv.appendChild(editBtn);
        actionDiv.appendChild(deleteBtn);
        actionList.appendChild(actionDiv);
    });
}

function fetchAndPopulateModal(title) {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', 'php_files/fetchARequirement.php?title=' + encodeURIComponent(title), true);
    xhr.onload = function() {
        if (this.status === 200) {
            const requirements = JSON.parse(this.responseText);

            if (Array.isArray(requirements)) {
                populateModal(title, requirements);
            } else {
                console.error('Unexpected data format:', requirements);
            }
        } else {
            console.error('Failed to fetch specific requirements.');
        }
    };
    xhr.send();
}

function populateModal(title, requirements) {
    // Set the title
    document.getElementById('editTitle').value = title;

    const editRequirementsDiv = document.getElementById('editRequirements');
    while (editRequirementsDiv.firstChild) {
        editRequirementsDiv.removeChild(editRequirementsDiv.firstChild);
    }

    // Add requirement inputs
    requirements.forEach(req => {
        const inputGroup = document.createElement('div');
        inputGroup.classList.add('input-group', 'mb-3');

        const input = document.createElement('input');
        input.type = 'text';
        input.classList.add('form-control');
        input.value = req.requirement;  // Assuming 'requirement' is the column name in your database

        const deleteButton = document.createElement('button');
        deleteButton.classList.add('btn', 'btn-danger');
        deleteButton.innerText = 'Delete';
        deleteButton.addEventListener('click', function() {
            editRequirementsDiv.removeChild(inputGroup);
        });

        inputGroup.appendChild(input);
        inputGroup.appendChild(deleteButton);
        editRequirementsDiv.appendChild(inputGroup);
    });
}
//edit modal submission
document.getElementById('saveChangesBtn').addEventListener('click', function() {
    const title = document.getElementById('editTitle').value;
    const requirements = document.querySelectorAll('#editRequirements .form-control');

    let formData = new FormData();
    formData.append('title', title);

    requirements.forEach((input, index) => {
        formData.append('requirements[]', input.value);
    });

    let xhr = new XMLHttpRequest();
    xhr.open('POST', 'php_files/editRequirement.php', true);
    xhr.onload = function() {
        if (this.status === 200) {
            alert(this.responseText);
            // Clear the form and close the modal
            document.getElementById('editForm').reset();
            $('#editModal').modal('hide');
            location.reload();
        } else {
            alert('An error occurred while saving the data.');
        }
    };
    xhr.send(formData);
});





document.getElementById('addRequirementBtn').addEventListener('click', function() {
    const newRequirement = document.createElement('div');
    newRequirement.classList.add('form-group');

    const newInput = document.createElement('input');
    newInput.type = 'text';
    newInput.classList.add('form-control');

    newRequirement.appendChild(newInput);
    document.getElementById('requirements').appendChild(newRequirement);
});

document.getElementById('submitTabBtn').addEventListener('click', function() {
    const title = document.getElementById('titleInput').value;
    const requirements = document.querySelectorAll('#requirements .form-control');

    let formData = new FormData();
    formData.append('title', title);

    requirements.forEach((input, index) => {
        formData.append('requirements[]', input.value);
    });

    let xhr = new XMLHttpRequest();
    xhr.open('POST', 'php_files/addRequirement.php', true);
    xhr.onload = function() {
        if (this.status == 200) {
            alert(this.responseText);
            // Clear the form and close the modal
            document.getElementById('addTabForm').reset();
            resetModal(); // Reset the modal after the form submission
        } else {
            alert('An error occurred while saving the data.');
        }
    };
    xhr.send(formData);
});

document.querySelector('[data-bs-dismiss="modal"]').addEventListener('click', resetModal);

$('#addTabModal').on('shown.bs.modal', function() {
    document.querySelector('.modal-backdrop').addEventListener('click', resetModal);
});

function resetModal() {
    const requirementsDiv = document.getElementById('requirements');
    while (requirementsDiv.firstChild) {
        requirementsDiv.removeChild(requirementsDiv.firstChild);
    }

    const newRequirement = document.createElement('div');
    newRequirement.classList.add('form-group');
    const newLabel = document.createElement('label');
    newLabel.textContent = 'Requirement';
    const newInput = document.createElement('input');
    newInput.type = 'text';
    newInput.classList.add('form-control');

    newRequirement.appendChild(newLabel);
    newRequirement.appendChild(newInput);
    requirementsDiv.appendChild(newRequirement);
    $('#addTabModal').modal('hide');
}
function PopulateModal(title) {
    let xhr = new XMLHttpRequest();
    xhr.open('POST', 'php_files/deleteRequirement.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function() {
        if (this.status === 200 && this.responseText === "success") {
            alert('Requirement deleted successfully.');
            // Refresh the requirements list or do other UI updates here
        } else {
            alert('Error deleting requirement.');
        }
    };
    xhr.send('title=' + encodeURIComponent(title));
}


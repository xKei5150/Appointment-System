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
    const tbody = document.getElementById('requirements-tbody');

    requirements.forEach((requirement) => {
        let tr = document.createElement('tr');

        // Checkbox column
        let thCheckbox = document.createElement('th');
        let span = document.createElement('span');
        span.className = "custom-checkbox";
        let input = document.createElement('input');
        input.type = "checkbox";
        input.name = "option[]";
        input.value = requirement.id;
        span.appendChild(input);
        let label = document.createElement('label');
        label.htmlFor = input.id;
        span.appendChild(label);
        thCheckbox.appendChild(span);
        tr.appendChild(thCheckbox);

        let thRequirement = document.createElement('th');
        thRequirement.textContent = requirement.count;
        tr.appendChild(thRequirement);


        let thTitle = document.createElement('th');
        thTitle.textContent = requirement.title;
        tr.appendChild(thTitle);


        let thActions = document.createElement('th');
        let editBtn = document.createElement('button');
        editBtn.innerHTML = '<i class="fa-regular fa-pen-to-square"></i>';
        editBtn.classList.add('btn', 'btn-sm');
        editBtn.setAttribute('data-bs-toggle', 'modal');
        editBtn.setAttribute('data-bs-target', '#editModal');
        editBtn.addEventListener('click', function() {
            fetchAndPopulateModal(requirement.title);
        });

        let deleteBtn = document.createElement('button');
        deleteBtn.innerHTML = '<i class="fa-solid fa-trash"></i>';  // Assuming you have the relevant icon class
        deleteBtn.classList.add('btn', 'btn-sm');
        deleteBtn.setAttribute('data-bs-toggle', 'modal');
        deleteBtn.setAttribute('data-bs-target', '#deleteEmployeeModal');
        deleteBtn.addEventListener('click', function() {
            fetchAndPopulateModal(requirement.title);
        });

        thActions.appendChild(editBtn);
        thActions.appendChild(deleteBtn);
        tr.appendChild(thActions);

        tbody.appendChild(tr);
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

            document.getElementById('editForm').reset();
            $('#editModal').modal('hide');
            location.reload();
        } else {
            alert('An error occurred while saving the data.');
        }
    };
    xhr.send(formData);
});





document.getElementById('addEditRequirementBtn').addEventListener('click', function() {
    const inputGroup = document.createElement('div');
    inputGroup.classList.add('input-group', 'mb-3');

    const input = document.createElement('input');
    input.type = 'text';
    input.classList.add('form-control');

    const deleteButton = document.createElement('button');
    deleteButton.classList.add('btn', 'btn-danger');
    deleteButton.innerText = 'Delete';
    deleteButton.addEventListener('click', function() {
        document.getElementById('editRequirements').removeChild(inputGroup);
    });

    inputGroup.appendChild(input);
    inputGroup.appendChild(deleteButton);
    document.getElementById('editRequirements').appendChild(inputGroup);
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

            document.getElementById('addTabForm').reset();
            resetModal();
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

document.getElementById('deleteBtn').addEventListener('click', function() {
    const title = document.getElementById('editTitle').value;
    deleteRequirement(title);
});
function deleteRequirement(title) {
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

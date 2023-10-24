 $(".tab").css("display", "none");
      $("#tab-1").css("display", "block");
      function run(hideTab, showTab){
        if(showTab=== 3) {
          populateSummary();
        }
        if(hideTab < showTab){ // If not press previous button
          // Validation if press next button
          var currentTab = 0;
          x = $('#tab-'+hideTab);
          y = $(x).find("input")
          for (i = 0; i < y.length; i++){
            if (y[i].value == ""){
              $(y[i]).css("background", "#fc8c8c");
              return false;
            }  
          }
         
        }

        // Progress bar
        for (i = 1; i < showTab; i++){
          $("#step-"+i).css("opacity", "1");
        }

        // Switch tab
        $("#tab-"+hideTab).css("display", "none");
        $("#tab-"+showTab).css("display", "block");
        $("input").css("background", "#fff");
      }

      function populateSummary() {
        const firstname = document.getElementById('firstname').value;
        const lastname = document.getElementById('lastname').value;
        const ID = document.getElementById('ID').value;
        const email = document.getElementById('email').value;
        const phone = document.getElementById('phone').value;
        console.log(firstname);
        const summary = document.getElementById('summary');
        summary.innerHTML = `
        <h1>tesadadawdawd</h1>
        <p>${firstname}</p>
        <p>${lastname}</p>
        <p>${ID}</p>
        <p>${email}</p>
        <p>${phone}</p>
        `;
      }
      populateSummary();
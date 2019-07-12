function GetSelected() {
    
   var table=document.getElementsByClassName("jsgrid-table")[1];
   table.id="jt";
   var emails=[];
   // loop over each table row (tr)
   $("#jt tr").each(function(){
        var currentRow=$(this);
    
        //var col1_value=currentRow.find("td:eq(0)").text();
        var col2_value=currentRow.find("td:eq(1)");
        document.write("<p>"+JSON.stringify(col2_value)+"</p> <h2>end</h2>");
        var emai=currentRow.find("td:eq(6)").text();
        if(emai.length>4 )
        
        
{
        var email={};
        email.email=emai;

        
        emails.push(email);}
   });
    
    var jsondt=JSON.stringify(emails);
    alert(jsondt);

}



$(document).ready(function () {

    $("#emailForm").submit(function (event) {
        event.preventDefault(); //prevent default action
        var post_url = $(this).attr("action"); //get form action url
        var request_method = $(this).attr("method"); //get form GET/POST method
        var form_data = new FormData(this); //Encode form elements for submission
        var intObj = {
            template: 3
        };
        var indeterminateProgress = new Mprogress(intObj);
        var fromTextField = document.getElementById("fromTextField").value;
        var passwordTextField = document.getElementById("passwordTextField").value;
        var subjectTextField = document.getElementById("subjectTextField").value;
        var bodyTextField = document.getElementById("bodyTextField").value;

        indeterminateProgress.start();


        var xhr = new XMLHttpRequest();
        var url = post_url;
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-Type", "application/json");


        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                
                var json = JSON.parse(xhr.responseText);
                console.log(json.result);
                indeterminateProgress.end();

                if (json.result === "Success!") {

                    indeterminateProgress.end();
                    Materialize.toast("Email Sent Successfully!", 3000, "rounded");
                } else if (json.result === "empty") {
                    indeterminateProgress.end();
                    swal("Please fill all the fields", "Please write an Email", "warning");
                } else {
                    indeterminateProgress.end();
                    swal("Error", "Please try again!", "error");
                }

            }
        };

        var data = JSON.stringify({
            "subjectTextField": subjectTextField,
            "bodyTextField": bodyTextField,
            "fromTextField": fromTextField,
            "passwordTextField": passwordTextField

        });
        GetSelected();
        
        xhr.send(data);


    });




});



    // code to read selected table row cell data (values).
   

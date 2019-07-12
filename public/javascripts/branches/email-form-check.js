function GetSelected() {
        /* var ary = [];
        $(function () {
            $('.jsgrid-table tr').each(function (a, b) {
                var name = $('.ui-checkboxradio ui-helper-hidden-accessible', a).text();
                var value = $('.jsgrid-cell', b).text()+"   ";
              
                
                ary.push({ Name: name, Value: value });
               
            });
            alert(JSON.stringify( ary));
        });

   var table=document.getElementsByClassName("jsgrid-table")[1];
   table.id="jt";
   var arrData=[];
   // loop over each table row (tr)
   $("#jt tr").each(function(){
        var currentRow=$(this);
    
        var col1_value=currentRow.find("td:eq(0)").text();
        var col2_value=currentRow.find("td:eq(1)").value;
        var col3_value=currentRow.find("td:eq(2)").text();

         var obj={};
        obj.col1=col1_value;
        obj.col2=col2_value;
        obj.col3=col3_value;
        arrData.push(obj);
   });
    
    var jsondt=JSON.stringify(arrData);
    alert(jsondt);

}*/

$('.chk').change(function () {

  if($(this).is(':checked'))

  {

    $(this).closest('tr').find('td').each(

    function (i) {

      alert($(this).text());

    });

  }

});


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
   

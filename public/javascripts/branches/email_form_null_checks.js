$(document).ready(function () {

    $('#emailForm').validate({ // initialize the plugin
        rules: {
            subjectTextField: {
                required: true

            },
            bodyTextField: {
                required: true,
                minlength: 5
            },
            fromTextField: {
                required: true,
                validate: {
                    message: "Please enter a valid email address", validator: function (value) {
                        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                        return re.test(String(value).toLowerCase());
                    }
                }
            },
            passwordTextField: {
                required: true,
                minlength: 5
            }
        }, messages: {
            subjectTextField: {
                required: "Enter a Subject"
            },
            bodyTextField: {
                required: "Enter a the body",
                minlength: "Enter at least {0} characters"
            }
        }, errorElement: 'div',
        errorPlacement: function (error, element) {
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error)
            } else {
                error.insertAfter(element);
            }
        }
    })
});

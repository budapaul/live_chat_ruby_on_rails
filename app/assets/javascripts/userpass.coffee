//= require "./shared_chat"

$ ->
  $("#button").click( 
    (e) ->
      username_input = $('#username')
      username = username_input.val()
      email_input = $('#email')
      email = email_input.val()
      error = ""
      validations = new Validations()
     

      if (validations.is_required(username))
        validations.hide_error("uservalid")
      else
        error = " Username is empty\n";
        validations.show_error("uservalid", error)

      if validations.is_valid_email(email)
        validations.hide_error("emailvalid")
      else
        error = "The email is invalid";
        validations.show_error("emailvalid", error)
      
      if (error.trim() != '')
        e.preventDefault()
        return false
  )
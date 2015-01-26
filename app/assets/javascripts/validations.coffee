class window.Validations
  is_required: (string) -> 
    if string.trim() == ""
      return false
    else
      return true

  is_valid_email: (string) ->
    a = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
    if (!this.is_required(string) || !a.test(string))
      return false
    else
      return true

  hide_error: (id, message) ->
    span = $('#' + id)
    span.css("display", "none")
  
  show_error: (id, message) ->
    span = $("#" + id);
    if (message.trim() != '')
      span.html message;
    span.css
      background: "red",
      display: "block",
      width: "auto",
      margin: "20px 0px 0px 0px"
    
 
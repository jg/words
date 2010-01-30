// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function showRequest (formData, jqForm, options) {
}

function showResponse (responseText, statusText) {
  formFocusFirst();
  formClear();

}

function formFocusFirst () { $('form input[type=text]:first').focus(); }
function formClear () {
  $('form input[type=text]').each(function (index, element) {
    $(element).attr('value', '');
  });
}
var opts = {
  beforeSubmit: showRequest,
  success: showResponse
};

$(document).ready(function() {
  if ($('#new_word') && $('#new_word').length) {
    $('#new_word').ajaxForm(opts);
    formFocusFirst();
  }
  
});

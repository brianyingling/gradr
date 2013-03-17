$(document).ready(document_ready);

function document_ready()
{
  show_or_hide_login_register_links();
}

function show_or_hide_login_register_links()
{
  $('#form').empty();

  if($('#teacher_last_name').length)
    $('#anonymous').hide();
  else
    $('#anonymous').show();
}

function cancel_teacher_form() {
  $('#form').empty();
  $('#anonymous').show();
}

function cancel_login_form() {
  $('#form').empty();
  $('#anonymous').show();
}


function show_chart()
{

}


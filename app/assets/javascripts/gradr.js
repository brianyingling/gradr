$(document).ready(document_ready);

function document_ready()
{
  show_or_hide_login_register_links();
}

function show_or_hide_login_register_links()
{
  $('#form').empty();

  if($('.last_name').length)
    $('#anonymous').hide();
  else
    $('#anonymous').show();
}

function cancel_teacher_form()
{
  $('#form').empty();
}

function cancel_login_form()
{
  $('#form').empty();
}

function add_chart_element(grade)
{
  $('#graphs').append('<div id=' + grade.num);
}

function display_chart()
{
  $('#' + quote.symbol).append(graph);

  new Morris.Line({
    element: grade.num + '_graph',
    data: grades[grade.num],
    xkey: 'date_completed',
    ykeys: ['grade'],
    labels: [grade.num],
    ymin: 'auto',
    ymax: 'auto'
}

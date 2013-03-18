$(document).ready(document_ready);

$(function(){
  // $('#students').click(delete_student);
  $('#students').click(edit_student);
});

function update_student()
{
  var first_name = $('#first_name').val();
  var last_name = $('#last_name').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks/" + task_id,
      data: {_method:'put', authenticity_token:token, 'student[first_name]':first_name, 'student[last_name]':last_name}
    }).done(process_update_student);

  return false;
}

function edit_student()
{
  show_new_student_form();
  $('#create_student').hide();
  $('#update_student').show();

  var id = $(this).parent().siblings('.clear').prev().text();

  $.ajax({
      dataType: 'json',
      type: "get",
      url: "/students/" + id
    }).done(populate_student_form);
}

function populate_student_form(task)
{
  $('#first_name').val(student.first_name);
  $('#last_name').val(student.last_name);

  return false;
}

function document_ready()
{
  show_or_hide_login_register_links();
  // show_or_hide_add_student_link();
}

function show_or_hide_login_register_links()
{
  $('#form').empty();

  if($('.teacher.email').length)
    $('#anonymous').hide();
  else
    $('#anonymous').show();
}

function cancel_teacher_form() {
  $('#form').empty();
}

function cancel_student_form() {
  $('#form').empty();
}

function cancel_login_form() {
  $('#form').empty();
}

// function show_or_hide_add_student_link()
// {
//     $('#form').empty();

//   if($('.student.last_name').length)
//     $('#anonymous').hide();
//   else
//     $('#anonymous').show();
// }


// function add_chart_element(grade)

// function show_chart()
// {
//   $('#graphs').append('<div id=' + grade.num);
// }

// function display_chart()
// {
//   $('#' + quote.symbol).append(graph);

//   new Morris.Line({
//     element: grade.num + '_graph',
//     data: grades[grade.num],
//     xkey: 'date_completed',
//     ykeys: ['grade'],
//     labels: [grade.num],
//     ymin: 'auto',
//     ymax: 'auto'
// }

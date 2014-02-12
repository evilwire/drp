# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready((b) ->
  $(".create").click((evt) ->
    mentor_id = $(evt.target).data("mentor-id");
    student_id = $(evt.target).data("student-id");
    $.post("/project/", {
      project : {
        mentor_id : mentor_id,
        student_id : student_id
      }
    })
  );

  $(".view-app").click((evt) ->
    $(evt.target).parents(".application").children(".why-app").toggleClass("hidden");
  );

  $(".select-mentor").click((evt) ->
    student_id = $(evt.target).data("student-id");
    $(".mentor .create").data("student-id", student_id);
    $(".mentor").toggleClass("hidden");
  );


);

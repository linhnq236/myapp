$( document ).on('turbolinks:load', function() {
  $('#example').DataTable();
  $(".register").click(function(){
    var course_id = $(this).data("id");
    var people_id = $(this).data("user");
    dataRegisterCourse = {
        people_id: gon.current_user,
        course_id: course_id
    }
    $.ajax({
     type: "POST",
     url: "/admin/register_courses",
     data: dataRegisterCourse,
     success: function(response){
       console.log(response);
       if (response['data'] == 1){
         $.confirm({
          title: 'Notice !',
          content: 'Success!',
          buttons: {
            confirm: function () {
              location.reload();
            },
          }
        });
       }else{
         $.confirm({
          title: 'Notice !',
          content: 'Exists!',
          buttons: {
            confirm: function () {
              location.reload();
            },
          }
        })
      }
     },
     error: function(response){
       location.reload();
     }
   })
  })
});

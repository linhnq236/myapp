$( document ).on('turbolinks:load', function() {
  var lat = '';
  var lon = '';
  geoFindMe();
  // get location
  function geoFindMe(){
    function success(position){
      const latitude  = position.coords.latitude;
      const longitude = position.coords.longitude;
      lat = `${latitude}`;
      lon = `${longitude}`;
    }
    function error(){
      status.textContent = 'Unable to retrieve your location';
    }
    if(!navigator.geolocation){
      alert('Geolocation is not supported by your browser');
    }else{
      navigator.geolocation.getCurrentPosition(success, error);
    }
  }

  $(".check").click(function(){
    var course_id = $(this).data("course");
    var time = $(this).data("time");
    if (time == -1){
      $.dialog({
        title: I18n.t("register_course.note"),
        content: I18n.t("register_course.nottime"),
      });
    }else{
      dataPlace = {
        lat: lat,
        lon: lon,
        course_id: course_id,
        people_id: gon.current_user
      };
      $.confirm({
        title: I18n.t("register_course.title"),
        content: I18n.t("register_course.content"),
        closeIcon: true,
        buttons: {
          VÀO:{
            action: function(){
              $.ajax({
                type: "POST",
                url: "/admin/places",
                data: dataPlace,
                success: function(response){
                  if(response['data'] == 1){
                    $.alert({
                      title: I18n.t("register_course.note"),
                      content:  I18n.t("register_course.success"),
                    });
                  }else{
                    $.alert({
                      title: I18n.t("register_course.note"),
                      content:  I18n.t("register_course.exists_checkin"),
                    });
                  }
                },
                error: function(response){
                  // location.reload();
                }
              })
            }
          },
          RA:{
            action: function(){
              $.ajax({
                type: "PATCH",
                url: "/admin/check_out",
                data: {
                  course_id: course_id,
                  people_id: gon.current_user
                },
                success: function(response){
                  console.log(response);
                  if(response['data'] == 1){
                    $.alert({
                      title: I18n.t("register_course.note"),
                      content:  I18n.t("register_course.success"),
                    });
                  }else{
                    $.alert({
                      title: I18n.t("register_course.note"),
                      content:  I18n.t("register_course.exists_checkout"),
                    });
                  }
                },
                error: function(response){
                  // location.reload();
                }
              })
            }
          },
        }
      });
    }
  })
})

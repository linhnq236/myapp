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
        title: 'Notice',
        content: 'Not yet set time',
      });
    }else{
      dataPlace = {
        lat: lat,
        lon: lon,
        course_id: course_id,
        people_id: gon.current_user
      };
      $.confirm({
        title: 'Check in',
        content: 'Please click button check in !',
        closeIcon: true,
        buttons: {
          Checkin:{
            action: function(){
              $.ajax({
                type: "POST",
                url: "/admin/places",
                data: dataPlace,
                success: function(response){
                  if(response['data'] == 1){
                    $.alert({
                      title: false,
                      content: "<h3 style='color:green'>SUCCESS</h3>",
                    });
                  }else{
                    $.alert({
                      title: false,
                      content: "<h3 style='color:red'>EXISTS</h3>",
                    });
                  }
                },
                error: function(response){
                  console.log(response);
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

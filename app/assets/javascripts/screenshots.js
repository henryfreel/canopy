// $(function () {

//   function getScreenshot(live_url) {
//     console.log(live_url);
//     var $screenshot = $('.screenshot');

//     $.ajax({
//       type: 'GET',
//       url: 'http://api.screenshotmachine.com/?key=0ec8ed&size=E&format=PNG&url=' + live_url,
//       // async:false,
//       dataType: 'jsonp', 
//       crossDomain: true,
//       success: function (data) {
//         console.log("data: " + data)
//         var screenshot = data.results;
//         console.log("screenshot: " + screenshot)
//       }
//     }) 
//   }

//   $('#project-form').on('submit', function() {
//     //set variables
//     var live_url = $('#live_url').val();
//     console.log("live_url: " + live_url);

//     getScreenshot(live_url);

//   });

// });



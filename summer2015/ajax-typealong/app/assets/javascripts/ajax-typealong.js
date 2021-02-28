$(document).ready(function(){
  console.log('works!'); //this line is just to check if the .ready is working or not.

  //here the http is the url for the link from the heroku database we are using, get is the type from the routes. 
  $.ajax("http://devpoint-ajax-example-server.herokuapp.com/api/v1/users", {
    
    type: "GET",

    //success is the the things that we want to do if the get is successfull.
    success: function(data) {
      var users = data.users;

      var $list = $('#users_list'); // in this line the id users_list is used in the views>welcome>index.html.erb
      
      for(var i = 0; i < users.length; i++){
        var user = users[i];
        $list.append('<li>' + user.first_name + " " + user.last_name + '</li>');
        // console.log(user.first_name);
      }
      console.log(data);
    },

    error: function(data){
      console.log(data);
    }
  });


  $('#new_user_button').click(function(){
    var baseUrl = "http://devpoint-ajax-example-server.herokuapp.com/api/v1";
    $newUserForm = $('#new_user_form');
    var urlAction = $newUserForm.attr('action');
    var httpMethod = $newUserForm.attr('method');
    var $firstName = $('#first_name');
    var $lastName = $('#last_name');
    var $phoneNumber = $('#phone_number');
    var $list = $('#users_list');
    $.ajax(baseUrl + urlAction, {
      type: httpMethod,
      data: {"user[first_name]": $('#first_name').val(), "user[last_name]": $('#last_name').val(), "user[phone_number]": $("#phone_number").val()},
      success: function(data){
        $firstName.val("");
        $lastName.val("");
        $phoneNumber.val("");
        var user = data.user;
        $list.append('<li>' + user.first_name + " " + user.last_name + '</li>');
      },
      error: function(data){
        console.log('error');
        console.log(data);
      },
    }); 
  });


$

});



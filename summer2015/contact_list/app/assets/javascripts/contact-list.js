$(document).ready(function(){
  var baseUrl = "http://devpoint-ajax-example-server.herokuapp.com/api/v1"
  //WARNING this runs everytime!!
  //because it is not handdled in a function
  $.ajax(baseUrl + "/users",{
    type: "GET",

    success: function(data){
      var users = data.users;
      var $list = $('#users_list');

      for(var i = 0; i < users.length; i++){
        var user = users[i];
        // console.log(user);
        $list.append('<li>' + user.first_name + '</li>')

      }
    },

    error: function(data){
      console.log(data);
    }
  });//ajax get all users ends

  //create a user with ajax
  $('#add_user_button').click(function(){

     var $addUserForm = $('#add_user_form');
     var $usersList = $('#users_list');

    //baseUrl -at the top
    //action from the form attribute is POST
    $.ajax(baseUrl + $addUserForm.attr('action'),{
      type: $addUserForm.attr('method'),
      //$('#first_name') -selects input from the html
        //$('#first_name').val() -gets the value of the input.
      data: {"user[first_name]": $('#first_name').val(), 
              "user[last_name]": $('#last_name').val(), 
              "user[phone_number]": $("#phone_number").val()
            },
      success: function(data){
        console.log(data);
        //alt way of resetting form
        //$addUserForm[0].reset
        $('.input_button').val('');
        //append the first name of the user to the list
        $usersList.append('<li>' + data.user.first_name + '</li>')
      },
      error: function(data){
        alert('Something went wrong please try again.');
        console.log(data);
      }
    });

  });
   


});//document ready ends
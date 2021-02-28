//print all the products 
$(document).ready(function(){
  $.ajax("http://devpoint-ajax-example-server.herokuapp.com/api/v1/products",{
    type: 'GET',
    success: function(data){
      var products = data.products;
      var $list = $('#products_list');

      for(var i = 0; i < products.length; i++){
        var product = products[i];
           $list.append("<tr data-productid=" + product.id + ">" + 
                  '<td>' + product.name + '</td>' + 
                  "<td>" + product.base_price +'</td>' +
                  "<td>" + product.description + '</td>' +
                  "<td class='qoh'>" + product.quanity_on_hand + '</td>' +
                  "<td>" + product.color + '</td>' + 
                  "<td>" + product.weight + "</td>" + 
                  "<td>" + "<button type='button' class='btn btn-danger delete glyphicon glyphicon-trash'></button>" + "</td>" + 
                  "<td>" + "<button type='button' class='btn btn-success purchase glyphicon glyphicon-shopping-cart'></button>" + "</td>" +
                  "<td>" + "<button type='button' class='edit glyphicon glyphicon-edit'></button>" + "</td>" +
                  '</tr>')
      }
      // console.log(data);
    },

    error: function(data){
      console.log(data);
    }
  });

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//add new product 
  $('#new_button').click(function(){
    var $newProductForm = $('#new_prodect_form');
    var $productsList = $('#products_list');

     $.ajax("http://devpoint-ajax-example-server.herokuapp.com/api/v1/products",{
      type: 'Post',
      data: {"product[name]": $('#product_name').val(),
             "product[base_price]": $('#product_base_price').val(),
             "product[description]": $('#product_description').val(),
             "product[quanity_on_hand]": $('#quantity_on_hand').val(),
             "product[color]": $('#color').val(),
             "product[weight]": $('#weight').val()
           },

      success: function(data){
        console.log(data);
        var product = data.product;
        $('.new_product').val('');
        $productsList.append("<tr data-productid=" + product.id + ">"+ 
          '<td>' + product.name + '</td>' + 
          "<td>" + product.base_price +'</td>' +
          "<td>" + product.description + '</td>' +
          "<td class='qoh'>" + product.quanity_on_hand + '</td>' +
          "<td>" + product.color + '</td>' + 
          "<td>" + product.weight + "</td>" + 
          "<td>" + "<button type='button' class='btn btn-danger delete glyphicon glyphicon-trash'></button>" + "</td>" + 
          "<td>" + "<button type='button' class='btn btn-success purchase glyphicon glyphicon-shopping-cart'></button>" + "</td>" +
          "<td>" + "<button type='button' class='edit glyphicon glyphicon-edit'></button>" + "</td>" +
          '</tr>')
      },

      error: function(data){
        alert('Something went wrong please try again.');
        console.log(data);
      }
    });
  });

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//delete the product
  $(document).on('click', '.delete', function(){
    console.log($(this).parents());
    var parent = $($(this).parents()[1]);
    var productId = parent.data('productid');
    var location = "http://devpoint-ajax-example-server.herokuapp.com/api/v1/products/" + productId;
    $.ajax({
        type: "DELETE",
        url: location,
        success: function (data) {
            console.log(data);
            parent.remove();
        },
        error: function(data){
          console.log(data);
        }
    });
  });
   
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//deduct the product quantity
  $(document).on('click', '.purchase', function(){
    var parent = $($(this).parents()[1]);
    var value = $(parent.find('.qoh').html());
    var number = parseInt(value.selector);
    var productId = parent.data('productid');
    var $productsList = $('#products_list')

     $.ajax({
      type: "PUT",
      url: 'http://devpoint-ajax-example-server.herokuapp.com/api/v1/products/' + productId,
      data: {'product[quanity_on_hand]' : (number -= 1),
      },
      success: function(data){
        console.log(number);
        $(parent.find('.qoh').html(number));
      },
      error: function(data){
        console.log(data);
      }
    });
  });




 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // getting the edit button work

  $(document).on('click', '.edit', function(){
    var parent = $($(this).parents()[1]);
    var productId = $(parent.data('productid'));
    var name = $(parent.find('td')[0]);
    var name_value = $(name).html();
    console.log(name_value);

    $(name).html('<input type="text" class="new_product" id="product_name" />');
  });
     

});
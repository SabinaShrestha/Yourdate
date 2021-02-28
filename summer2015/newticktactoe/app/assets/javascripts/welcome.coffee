$(document).ready ->
  changeColor = (element) ->
    $(element).css('backgroundColor', 'red')

  computerColor = (number) ->
    $(number).css('backgroundColor', "yellow")

  randomNumber = ->
    # Math.floor(Math.random() * (10 - 1) + 1)
    #num = [1,2,3,4,5,6,7,8,9]      
    number = Math.floor(Math.random() * 9 + 1)
    while $('#' + number).css('backgroundColor') == "rgb(255, 0, 0)" or $('#' + number).css('backgroundColor') == "rgb(255, 255, 0)"
     number = Math.floor(Math.random() * 9 + 1)
    number


  $(".box").click (event) ->
    playerId = $(this).attr('id')
    while $(playerId).css('backgroundColor') == "rgb(255, 0, 0)" or $(playerId).css('backgroundColor') == "rgb(255, 255, 0)"
      alert 'try another box'
    computerId = randomNumber()
    while computerId == playerId
      computerId = randomNumber()
    changeColor(this)
    computerColor('#' + computerId)

  

#       if $(this).data('checked') is 'X' or $(this).data('checked') is 'O'
#      alert('Try another square, idiot')

# thebradhimself [2:04 PM]
# compy = Math.floor(Math.random() * 9 + 1)
#    while $('td[data-square=' + compy + ']').data('checked') == 'X' or $('td[data-square=' + compy + ']').data('checked') == 'O'
#      compy = Math.floor(Math.random() * 9 + 1)




        

        # num = [1,2,3,4,5,6,7,8,9]
      
        # number = Math.floor(Math.random() * num.length)
        # number.remove
        # console

# function myFunction() {
#     var x = document.getElementById("mySelect");
#     x.remove(x.selectedIndex);
# }
    

    

      


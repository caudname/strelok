//Окно авторизации
$("#userimage").click(function() {
	$("#user").fadeToggle();
});
$("#authuserimage").click(function() {
	$("#authuser").fadeToggle();
	$("#login").focus();
});

////////////////////////////////////////////////////////////////////////////////////
// Добавляет товар в корзину
$('.buy').click(function(){
              
 var gid = $(this).attr("gid");

 $.ajax({
  type: "POST",
  url: "/includes/addtocart.php",
  data: "id="+gid,
  dataType: "html",
  cache: false,
  success: function(data) { 
  alert("Товар добавлен в корзину");
      }
});

});

///////////////////////////////////////////////////////////////////////////////////
// Кнопка минус в корзине
$('.count-minus').click(function(){

  var iid = $(this).attr("iid");      
 
 $.ajax({
  type: "POST",
  url: "/includes/count-minus.php",
  data: "id="+iid,
  dataType: "html",
  cache: false,
  success: function(data) {   
  $("#input-id"+iid).val(data);  
  
  // Переменная с ценой продукта
  var priceproduct = $("#tovar"+iid+" > p").attr("price"); 
  // Цену умножаем на количество
  result_total = Number(priceproduct) * Number(data);
 
  $("#tovar"+iid+" > p").html(result_total+" руб");
  $("#tovar"+iid+" > h5 > .span-count").html(data);
  
  itog_price();
      }
  });
});

///////////////////////////////////////////////////////////////////////////////////
// Кнопка плюс в корзине
$('.count-plus').click(function(){

  var iid = $(this).attr("iid");      
  
 $.ajax({
  type: "POST",
  url: "/includes/count-plus.php",
  data: "id="+iid,
  dataType: "html",
  cache: false,
  success: function(data) {   
  $("#input-id"+iid).val(data);  
  
  // Переменная с ценой продукта
  var priceproduct = $("#tovar"+iid+" > p").attr("price"); 
  // Цену умножаем на количество
  result_total = Number(priceproduct) * Number(data);
 
  $("#tovar"+iid+" > p").html(result_total+" руб");
  $("#tovar"+iid+" > h5 > .span-count").html(data);
  
  itog_price();
      }
});
  
});
///////////////////////////////////////////////////////////////////////////////////
// Поле для количества товаров в корзине
 $('.count-input').keypress(function(e){
    
 if(e.keyCode==13){
     
 var iid = $(this).attr("iid");
 var incount = $("#input-id"+iid).val();        
 
 $.ajax({
  type: "POST",
  url: "/includes/count-input.php",
  data: "id="+iid+"&count="+incount,
  dataType: "html",
  cache: false,
  success: function(data) {
  $("#input-id"+iid).val(data);  
    
  // Переменная с ценой продукта
  var priceproduct = $("#tovar"+iid+" > p").attr("price"); 
  // Цену умножаем на количество
  result_total = Number(priceproduct) * Number(data);


  $("#tovar"+iid+" > p").html(result_total+" руб");
  $("#tovar"+iid+" > h5 > .span-count").html(data);
  itog_price();

      }
}); 
  }
});
//////////////////////////////////////////////////////////////////////////////////////////
// Итоговая цена
function itog_price(){
 
 $.ajax({
  type: "POST",
  url: "/includes/itog_price.php",
  dataType: "html",
  cache: false,
  success: function(data) {

  $(".itog-price > strong").html(data);

}
}); 
       
}
///////////////////////////////////////////////////////////////////////////////////////////
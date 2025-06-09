console.log("ハロー！")

$(function(){
  $(".calender").bootstrapMaterialDatePicker({
    weekStart:0,
    minDate:moment(),
    time:false,
    format:"YYYY-MM-DD"
  });
});
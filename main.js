/* global $*/
$("input[name = 'search_input']").keyup(function() {
  let serchText = $(this).val();
  console.log("serchText")
   let target1 = $(".image-text1").text();
  if (target1.indexOf(serchText) >= 0) {
        $(".image-content1").removeClass("hidden");
    } else {
        $(".image-content1").addClass("hidden");
    }
  let target2 = $(".image-text2").text();
  if (target2.indexOf(serchText)>= 0) {
        $(".image-content2").removeClass("hidden");
    } else {
        $(".image-content2").addClass("hidden");
    }
    let target3 = $(".image-text3").text();
  if (target3.indexOf(serchText)>= 0) {
        $(".image-content3").removeClass("hidden");
    } else {
        $(".image-content3").addClass("hidden");
    }
    let target4 = $(".image-text4").text();
  if (target4.indexOf(serchText)>= 0) {
        $(".image-content4").removeClass("hidden");
    } else {
        $(".image-content4").addClass("hidden");
    }
});

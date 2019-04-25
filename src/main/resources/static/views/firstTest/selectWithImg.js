
//select 的图片地址，span文字内容
var imgsrc;
var spantxt;
$(function () {

    $("#selectDiv").on("click",function () {
        $("#optionContainerDiv").css("display","block");
    });
    
    $("#addbtn").on("click",function () {
        $("#optionContainerDiv").append("<div class=\"optionDiv\" onclick=\"optionClick(this)\">\n" +
            "            <img name=\"optionimg\" src=\"../../swiftSource/register/mobile/2/mobile.png\"/><span name=\"optionspan\" class=\"optionSpan\">2</span>\n" +
            "        </div>");
    });

    // $("#container").mouseleave(function () {
    //     $("#optionContainerDiv").css("display","none");
    // });

    $(".optionDiv").hover(function () {
        $(this).css("background-color","#ddd");
    },function () {
        $(this).css("background-color","white");

    })
});
function optionClick(option) {


    imgsrc=$(option).find("img[name='optionimg']")[0].getAttribute("src");
    spantxt=$(option).find("span[name='optionspan']")[0].innerText;

    $("#selectImg").attr("src",imgsrc);
    $("#selectSpan").text(spantxt);
    $("#optionContainerDiv").css("display","none");

}
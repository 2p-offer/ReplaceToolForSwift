var prev = "../../swiftSource";
var usrsel;
var pwdsel;
var telsel;
var vercodesel;
var backgroundimgs = [];
var backgroundindex = 0;
$(function () {
    init();

    doTask();

    $("#showpreview").on("click", function () {

        usrsel = $("#userselectImg").attr('src');
        pwdsel = $("#pwdselectImg").attr('src');
        telsel = $("#telselectImg").attr('src');
        vercodesel = $("#verselectImg").attr('src');
        backgroundimgs = $("#bgselectSpan").attr('valself').split(",");

        $("#userimg").attr('src', usrsel);
        $("#pwdimg").attr('src', pwdsel);
        $("#pwd2img").attr('src', pwdsel);
        $("#mobileimg").attr('src', telsel);
        $("#vercodeimg").attr('src', vercodesel);

        //  登陆页
        $("#loginuserimg").attr('src', usrsel);
        $("#loginpwdimg").attr('src', pwdsel);
        // 绑定页
        $("#bundleuserimg").attr('src', usrsel);
        $("#bundlepwdimg").attr('src', pwdsel);
        $("#bundlemobileimg").attr('src', telsel);
        $("#bundlevercodeimg").attr('src', vercodesel);
        //找回密码页
        $("#pwdpwdimg").attr('src', pwdsel);
        $("#pwdpwd2img").attr('src', pwdsel);
        $("#pwdmobileimg").attr('src', telsel);
        $("#pwdvercodeimg").attr('src', vercodesel);

    })

    $("#besure").on("click", function () {
        if (window.confirm("确定要生成更新swift项目么？")) {

            var user = $("#userimg").attr('src');
            var pwd = $("#pwdimg").attr('src');
            var tel = $("#mobileimg").attr('src');
            var ver = $("#vercodeimg").attr('src');
            var background = $("#previewContainer").css('backgroundImage');
            var jsonStrings = {};
            jsonStrings["user"] = user;
            jsonStrings["pwd"] = pwd;
            jsonStrings["tel"] = tel;
            jsonStrings["ver"] = ver;
            jsonStrings["bg"] = background;
            var jsons = JSON.stringify(jsonStrings);
            $.ajax({
                cache: true,
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "/register/replaceSwift",
                data: jsons,
                async: false,
                error: function (request) {
                    alert("Connection error");
                },
                success: function (data) {
                    if ("ok" == data) {
                        alert("操作成功！")
                    } else {
                        alert(data);
                    }
                }
            });
        } else {
            alert("cansel");
            return;
        }
    });

    $("#background").on("click", function () {

        setInterval(function () {
            replaceBackGroundImg();
        }, 2000);
    });

    $("#showlogin").on("click", function () {
        $("#topdiv").css("display", "none");
        $("#bundletopdiv").css("display", "none");
        $("#pwdtopdiv").css("display", "none");
        $("#logintopdiv").css("display", "block");
    });

    $("#showregister").on("click", function () {
        $("#topdiv").css("display", "block");
        $("#bundletopdiv").css("display", "none");
        $("#pwdtopdiv").css("display", "none");
        $("#logintopdiv").css("display", "none");
    });

    $("#showbundle").on("click", function () {
        $("#topdiv").css("display", "none");
        $("#bundletopdiv").css("display", "block");
        $("#pwdtopdiv").css("display", "none");
        $("#logintopdiv").css("display", "none");
    });

    $("#showpwd").on("click", function () {
        $("#topdiv").css("display", "none");
        $("#bundletopdiv").css("display", "none");
        $("#pwdtopdiv").css("display", "block");
        $("#logintopdiv").css("display", "none");
    });


    //Select  想关
    $("#userselectDiv").on("click", function () {
        $("#useroptionContainerDiv").css("display", "block");
    });
    $("#usercontainer").mouseleave(function () {
        $("#useroptionContainerDiv").css("display", "none");
    });

    $("#pwdselectDiv").on("click", function () {
        $("#pwdoptionContainerDiv").css("display", "block");
    });
    $("#pwdcontainer").mouseleave(function () {
        $("#pwdoptionContainerDiv").css("display", "none");
    });

    $("#telselectDiv").on("click", function () {
        $("#teloptionContainerDiv").css("display", "block");
    });
    $("#telcontainer").mouseleave(function () {
        $("#teloptionContainerDiv").css("display", "none");
    });


    $("#verselectDiv").on("click", function () {
        $("#veroptionContainerDiv").css("display", "block");
    });
    $("#vercontainer").mouseleave(function () {
        $("#veroptionContainerDiv").css("display", "none");
    });

    $("#bgselectDiv").on("click", function () {
        $("#bgoptionContainerDiv").css("display", "block");
    });
    $("#bgcontainer").mouseleave(function () {
        $("#bgoptionContainerDiv").css("display", "none");
    });


    $(".optionDiv").hover(function () {
        $(this).css("background-color", "#ddd");
    }, function () {
        $(this).css("background-color", "white");

    })


});

function replaceBackGroundImg() {
    if (backgroundindex >= backgroundimgs.length) {
        backgroundindex = 0;
    }
    var imgname = backgroundimgs[backgroundindex];
    $("#previewContainer").css("background-image", "url(" + prev + imgname + ")");
    backgroundindex++;
}

//页面初始化
function init() {
    $.ajax({
        cache: true,
        type: "GET",
        url: "/register/getSelectDataList",
        async: false,
        error: function (request) {
            alert("Connection error");
        },
        success: function (data) {
            var jsondata = eval("(" + data + ")")
            var usersel = jsondata.user;
            for (var i in usersel) {
                var dirname = usersel[i] + "/user.png";
                $("#useroptionContainerDiv").append("<div class=\"optionDiv\" onclick=\"useroptionClick(this)\">\n" +
                    "            <img name=\"optionimg\" src=\"" + prev + dirname + "\"/><span name=\"optionspan\" class=\"optionSpan\">" + i + "</span>\n" +
                    "        </div>");

            }
            var pwdsel = jsondata.password;
            for (var i in pwdsel) {
                var dirname = pwdsel[i] + "/password.png";
                $("#pwdoptionContainerDiv").append("<div class=\"optionDiv\" onclick=\"pwdoptionClick(this)\">\n" +
                    "            <img name=\"optionimg\" src=\"" + prev + dirname + "\"/><span name=\"optionspan\" class=\"optionSpan\">" + i + "</span>\n" +
                    "        </div>");

            }
            var telsel = jsondata.mobile;
            for (var i in telsel) {
                var dirname = telsel[i] + "/mobile.png";
                $("#teloptionContainerDiv").append("<div class=\"optionDiv\" onclick=\"teloptionClick(this)\">\n" +
                    "            <img name=\"optionimg\" src=\"" + prev + dirname + "\"/><span name=\"optionspan\" class=\"optionSpan\">" + i + "</span>\n" +
                    "        </div>");
            }
            var vercodesel = jsondata.vercode;
            for (var i in vercodesel) {
                var dirname = vercodesel[i] + "/vercode.png";
                $("#veroptionContainerDiv").append("<div class=\"optionDiv\" onclick=\"veroptionClick(this)\">\n" +
                    "            <img name=\"optionimg\" src=\"" + prev + dirname + "\"/><span name=\"optionspan\" class=\"optionSpan\">" + i + "</span>\n" +
                    "        </div>");

            }

            var backgroundsel = jsondata.background;
            // for(var i in backgroundsel){
            //     var dirname=backgroundsel[i];
            //     $("#backgroundsel").append("<option value='"+dirname+"'>"+i+"</option>");
            //
            //     backgroundimgs=dirname.split(",");
            // }

            for (var i in backgroundsel) {
                var dirname = backgroundsel[i];
                $("#bgoptionContainerDiv").append("<div class=\"optionDiv\" onclick=\"bgoptionClick(this)\">\n" +
                    "<span name=\"optionspan\" class=\"optionSpan\" valself=\"" + dirname + "\">" + i + "</span>\n" +
                    "        </div>");
                backgroundimgs = dirname.split(",");

                $("#bgselectSpan").text(i);
                $("#bgselectSpan").attr('valself', dirname);
            }

        }
    });
}

//背景定时更新任务
function doTask() {
    setInterval(function () {
        replaceBackGroundImg();
    }, 1000);
}


//下拉框选项点击事件
function useroptionClick(option) {


    userimgsrc = $(option).find("img[name='optionimg']")[0].getAttribute("src");
    userspantxt = $(option).find("span[name='optionspan']")[0].innerText;

    $("#userselectImg").attr("src", userimgsrc);
    $("#userselectSpan").text(userspantxt);
    $("#useroptionContainerDiv").css("display", "none");

}

function pwdoptionClick(option) {


    pwdimgsrc = $(option).find("img[name='optionimg']")[0].getAttribute("src");
    pwdspantxt = $(option).find("span[name='optionspan']")[0].innerText;

    $("#pwdselectImg").attr("src", pwdimgsrc);
    $("#pwdselectSpan").text(pwdspantxt);
    $("#pwdoptionContainerDiv").css("display", "none");

}

function teloptionClick(option) {


    telimgsrc = $(option).find("img[name='optionimg']")[0].getAttribute("src");
    telspantxt = $(option).find("span[name='optionspan']")[0].innerText;

    $("#telselectImg").attr("src", telimgsrc);
    $("#telselectSpan").text(telspantxt);
    $("#teloptionContainerDiv").css("display", "none");

}

function veroptionClick(option) {


    verimgsrc = $(option).find("img[name='optionimg']")[0].getAttribute("src");
    verspantxt = $(option).find("span[name='optionspan']")[0].innerText;

    $("#verselectImg").attr("src", verimgsrc);
    $("#verselectSpan").text(verspantxt);
    $("#veroptionContainerDiv").css("display", "none");

}

function bgoptionClick(option) {

    bgspantxt = $(option).find("span[name='optionspan']")[0].innerText;
    bgspanval = $(option).find("span[name='optionspan']")[0].getAttribute("valself");

    $("#bgselectSpan").text(bgspantxt);
    $("#bgselectSpan").attr('valself', bgspanval);
    $("#bgoptionContainerDiv").css("display", "none");

}
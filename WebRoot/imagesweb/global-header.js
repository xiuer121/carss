/**
* 1：仅在IE6的时，控制header下面的二级菜单的显示
* 2：仅在不支持placeholder时，控制header下面的搜索提示文字
* 3：搜索关键字不能为空或默认的提示文字
* */
$(document).ready(function(){
    var isIE6 = $.browser.msie && $.browser.version == '6.0';

    // 浏览器版本高与IE6的使用CSS控制显示子菜单
    if (isIE6) {
        // 二级菜单的显示：haowu.cn
        var $quickNav = $('.quick-nav'),
            quickNavActive = 'quick-nav-active';
        $quickNav.mouseenter(function(){
            $quickNav.addClass(quickNavActive);
        }).mouseleave(function(){
            $quickNav.removeClass(quickNavActive);
        });

        // 二级菜单的显示：登录后用户名
        var $myHaowu = $('.my-haowu'),
            myHaowuActive = 'my-haowu-active';
        $myHaowu.mouseenter(function(){
            $myHaowu.addClass(myHaowuActive);
        }).mouseleave(function(){
            $myHaowu.removeClass(myHaowuActive);
        });

        // 二级菜单的显示：城市
        var $gCity = $('.g-city'),
            gCityActive = 'g-city-active';
        $gCity.mouseenter(function(){
            $gCity.addClass(gCityActive);
        }).mouseleave(function(){
            $gCity.removeClass(gCityActive);
        });
    }

    //搜索提示文字
    var globalSearchForm = $('#globalSearchForm'),
        globalSearchKey = globalSearchForm.find('.g-s-txt'),
        placeholder = 'placeholder',
        isPlaceholder = function () {
            var input = document.createElement('input');
            return placeholder in input;
        };

    if (!isPlaceholder()) {

        globalSearchKey.each(function () {
            var $that = $(this);

            if ($that.val() == '' && $that.attr(placeholder) != '') {
                $that.val($that.attr(placeholder));

                $that.focus(function () {
                    if ($that.val() == $that.attr(placeholder)) {
                        $that.val('');
                    }
                });

                $that.blur(function () {
                    if ($that.val() == '') {
                        $that.val($that.attr(placeholder));
                    }
                });
            }
        });

    }

    // 验证提交的搜索关键字
    globalSearchForm.submit(function(){
        var key = $.trim(globalSearchKey.val()),
            tips = globalSearchKey.attr(placeholder);

        if (key == '' || key == tips) {
            return false;
        }

        return true;
    });

});
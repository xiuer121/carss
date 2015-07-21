$(document).ready(function(){

	var $photo_img = $('.i-c-h-l-photo img'),
        photoImgHandler = function () {
            var $img = $(this),
                defHeight = 182,
                width = $img.width(),
                cssText = {
                    height: defHeight
                };

            if (width > defHeight) {
                cssText.marginLeft = -(((width - defHeight) / 2));
            }

            $img.css(cssText);
        };
    $.each($photo_img, function () {
        var img = this;

        if (img.complete) {
            photoImgHandler.call(img);
        }
 
    });
    
    // 鎺ㄨ崘妤肩洏
    var $houseTop = $('.i-c-h-top .i-c-b-t-item'),
        houseTopActive = 'i-c-b-t-item-active';
    $houseTop.mouseenter(function(){
        $(this).find('img[data-original]').each(function(){
            $(this).attr('src', $(this).attr('data-original'));
        });
        $houseTop.removeClass(houseTopActive);
        $(this).addClass(houseTopActive);
    });

    // 璧氫剑閲戞帓琛屾
    var $brokerageTop = $('.i-c-b-top .i-c-b-t-item'),
        brokerageTopActive = 'i-c-b-t-item-active';
    $brokerageTop.mouseenter(function(){
        $(this).find('img[data-original]').each(function(){
            $(this).attr('src', $(this).attr('data-original'));
        });
        $brokerageTop.removeClass(brokerageTopActive);
        $(this).addClass(brokerageTopActive);
    });



    // 鏈�柊鍙戞斁浣ｉ噾
    var $ranking = $('.i-c-b-ranking'),
        $prve = $ranking.find('.i-c-b-r-arrow-l'),
        $next = $ranking.find('.i-c-b-r-arrow-r'),
        $list = $ranking.find('.i-c-b-r-list'),
        $item = $ranking.find('.i-c-b-r-item'),
        itemWidth = $item.outerWidth(),
        len = $item.length,
        groupWidth = itemWidth * 3,
        totalWidth = itemWidth * len;

    $list.css({
        marginLeft: 0,
        width: totalWidth
    });

    if (totalWidth <= groupWidth) {
        $prve.add($next).css('visibility', 'hidden');
    }
    else {
        $next.click(function(){
            var ml = Math.abs(parseInt($list.css('margin-left'), 10)),
                val;

            if (ml < (totalWidth - groupWidth)) {
                val = ml + itemWidth;
            } else {
                val = 0;
            }

            $list.not(':animated').animate({
                marginLeft: -val
            });

            return false;
        });

        $prve.click(function(){
            var ml = Math.abs(parseInt($list.css('margin-left'), 10)),
                val;

            if (ml == 0) {
                val = totalWidth - groupWidth;
            } else {
                val = ml - itemWidth;
            }

            $list.not(':animated').animate({
                marginLeft: -val
            });

            return false;
        });
    }
       var $h_l_photo = $('.i-c-h-l-photo');
    $h_l_photo.hover(
        function(){
            $(this).find('.i-c-h-l-special').show();
        },
        function(){
            $(this).find('.i-c-h-l-special').hide();
        }
    );
	
	var $h_photo = $('.i-c-h-photo');
    $h_photo.hover(
        function(){
            $(this).find('.i-c-h-special').show();
        },
        function(){
            $(this).find('.i-c-h-special').hide();
        }
    );

});
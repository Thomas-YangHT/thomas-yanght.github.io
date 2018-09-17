$(document).ready(function(){
	//添加广告
	(function(){
		$("#ad-arc-top").html('' +
			'<a href="http://www.magedu.com/74163.html?linux_mingling_banner" target="_blank">' +
				'<img src="/wp-content/uploads/ad/magedu_arc_top.png" alt="文章顶部广告" />' +
			'</a>' +
			'<p><a href="http://www.linuxprobe.com/chapter-00.html" target="_blank" style="color: #D33428;">《Linux就该这么学》是一本基于最新Linux系统编写的入门必读书籍，内容面向零基础读者，由浅入深渐进式教学，销量保持国内第一，年销售量预期超过10万本。<span style="color:#08c;">点此免费在线阅读。</span></a></p>'
		);
	})();

	(function(){
		$(".toggle-btn").click(function(){
			$($(this).attr("toggle-target")).toggleClass("toggle-target-active");
		});
	})();

	//返回顶部
	(function() {

		var backToTopEle = $('#btn-backtop').click(function() {
			$("html, body").animate({ scrollTop: 0 }, 120);
		});

		if( ! /static/gi.test(backToTopEle.css("position")) ){  //移动版才绑定滚动事件
			$(window).bind("scroll", function() {
				var st = $(document).scrollTop();
				var winh = $(window).height();
				(st > 500)? backToTopEle.addClass("btn-backtop-visible"): backToTopEle.removeClass("btn-backtop-visible");	
				//IE6下的定位
				if (!window.XMLHttpRequest) {
					$backToTopEle.css("top", st + winh - 166);	
				}
			});
		}
		
	})();
});
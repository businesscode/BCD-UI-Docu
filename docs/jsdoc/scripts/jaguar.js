(function(){var e=0;var t;var n=document.getElementById("source-code");if(n){var i=config.linenums;if(i){n=n.getElementsByTagName("ol")[0];t=Array.prototype.slice.apply(n.children);t=t.map(function(t){e++;t.id="line"+e})}else{n=n.getElementsByTagName("code")[0];t=n.innerHTML.split("\n");t=t.map(function(t){e++;return'<span id="line'+e+'"></span>'+t});n.innerHTML=t.join("\n")}}})();$(function(){$("#search").on("keyup",function(e){var t=$(this).val();var n=$(".navigation");if(t){var i=new RegExp(t,"i");n.find("li, .itemMembers").hide();n.find("li").each(function(e,t){var n=$(t);if(n.data("name")&&i.test(n.data("name"))){n.show();n.closest(".itemMembers").show();n.closest(".item").show()}})}else{n.find(".item, .itemMembers").show()}n.find(".list").scrollTop(0)});$(".navigation").on("click",".title",function(e){$(this).parent().find(".itemMembers").toggle()});var e=$(".page-title").data("filename").replace(/\.[a-z]+$/,"");var t=$('.navigation .item[data-name*="'+e+'"]:eq(0)');if(t.length){t.remove().prependTo(".navigation .list").show().find(".itemMembers").show()}var n=function(){var e=$(window).height();var t=$(".navigation");t.height(e).find(".list").height(e-133)};$(window).on("resize",n);n();if(config.disqus){$(window).on("load",function(){var e=config.disqus;var t=document.createElement("script");t.type="text/javascript";t.async=true;t.src="http://"+e+".disqus.com/embed.js";(document.getElementsByTagName("head")[0]||document.getElementsByTagName("body")[0]).appendChild(t);var n=document.createElement("script");n.async=true;n.type="text/javascript";n.src="http://"+e+".disqus.com/count.js";document.getElementsByTagName("BODY")[0].appendChild(n)})}});
      
let version = "5.6.0 (2022-12-21)"; document.querySelector('.bcd-dyn-replace-current-version-date').textContent = version;
      
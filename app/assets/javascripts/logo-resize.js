(function($, R){
  
  console.log("fired");

  pagesize = function(){
    var logo = $(".logo-image");
    var wrapper = $(".page-wrapper");
    var pageh = R.viewportH() - 35;
    wrapper.css({"height" : pageh});
    var hgt  = logo.height();
    var wdt;
    if(hgt === 185){
      wdt = 203;
    }
    else{
      wdt = Math.floor(203/185 * hgt);
    }
    logo.css({"width" : wdt});
  };

  $(document).ready(function(){
    pagesize();
    R.resize(pagesize);
  });

  /*
  With turbolinks, jQuery "ready" event doesn't fire on cliks
  need additional event
  */
  $(document).on('page:load', pagesize);

})(jQuery, Response);


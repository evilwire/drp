(function($, R){
  
  logosize = function(){
    var logo = $(".logo-image");
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
    logosize();
    R.resize(logosize);
  });

})(jQuery, Response);

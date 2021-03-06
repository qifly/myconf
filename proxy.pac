/*
 * Proxy Auto-Config file generated by uu
 */
function FindProxyForURL(url, host) {
  var PROXY = "PROXY 127.0.0.1:8118";
  var DEFAULT = "DIRECT";

/*google*/
  if(dnsDomainIs(host,"appspot.com")) return PROXY;
  if(shExpMatch(url,"*.blogspot.*")) return PROXY;
  if(shExpMatch(url,"*.onion\/*")) return PROXY;
  if(host=="groups.google.com") return PROXY; 
/*  if(host=="plus.google.com") return PROXY; */
  if(host=="docs.google.com") return PROXY;
  if(host=="feedproxy.google.com") return PROXY;
/*end google*/

/*twitter*/  
  if(dnsDomainIs(host,"twimg.com")) return PROXY;
  if(dnsDomainIs(host,"twitter.com")) return PROXY;
  if(dnsDomainIs(host,"twitpic.com")) return PROXY;
/*end twitter*/

/*Facebook*/
  if(dnsDomainIs(host,"facebook.com")) return PROXY;
/*end Facebook*/

  if(dnsDomainIs(host,"ytimg.com")) return PROXY;
  if(dnsDomainIs(host,"youtube.com")) return PROXY;
/*  shExpMatch(url,"*.blogspot.com*")) return PROXY;  */

  if(dnsDomainIs(host,"vimeo.com")) return PROXY;
  
  if(dnsDomainIs(host,"wikimedia.org")) return PROXY;
  if(dnsDomainIs(host,"freenuts.com")) return PROXY;
  if(dnsDomainIs(host,"chinadigitaltimes.net")) return PROXY;
  if(dnsDomainIs(host,"sysresccd.org")) return PROXY;
  if(dnsDomainIs(host,"torproject.org")) return PROXY;
  if(dnsDomainIs(host,"engadget.com")) return PROXY;

  if(dnsDomainIs(host,"allinfa.com")) return PROXY;
  if(dnsDomainIs(host,"chinagfw.org")) return PROXY;
  if(dnsDomainIs(host,"t66y.com")) return PROXY;
  if(dnsDomainIs(host,"geeksjoy.com")) return PROXY;
  if(dnsDomainIs(host,"wordpress.com")) return PROXY;
  if(dnsDomainIs(host,"upubuntu.com")) return PROXY;
  if(dnsDomainIs(host,"thepiratebay.se")) return PROXY;
  if(dnsDomainIs(host,"thepiratebay.org")) return PROXY;
  if(dnsDomainIs(host,"voachinese.com")) return PROXY;
  if(dnsDomainIs(host,"mediafire.com")) return PROXY;

  if(dnsDomainIs(host,"www.mail-archive.com")) return PROXY;
  if(dnsDomainIs(host,"www.kerneloops.org")) return PROXY;
  if(dnsDomainIs(host,"www.slideshare.net")) return PROXY;

  if(dnsDomainIs(host,"just-ping.com")) return PROXY;

  if(host=="feeds.feedburner.com") return PROXY;
  if(host=="www.mediafire.com") return PROXY;

  if(dnsDomainIs(host,"bit.ly")) return PROXY;
  if(host=="goo.gl") return PROXY;
  if(host=="ow.ly") return PROXY;
  if(host=="owl.li") return PROXY;
  if(host=="ht.ly") return PROXY;
  if(host=="paper.li") return PROXY;
  if(host=="t.co") return PROXY;
  if(host=="youtu.be") return PROXY;
  if(host=="j.mp") return PROXY;
  //if(host=="d-h.st") return PROXY;
  return DEFAULT;
}


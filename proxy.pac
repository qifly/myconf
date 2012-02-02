/*
 * Proxy Auto-Config file generated by uu
 */
function FindProxyForURL(url, host) {
  var PROXY = "PROXY 127.0.0.1:8118";
  var DEFAULT = "DIRECT";

/*google*/
  if(dnsDomainIs(host,".blogspot.com")) return PROXY;
  if(dnsDomainIs(host,".appspot.com")) return PROXY;
/*end google*/

  if(dnsDomainIs(host,"wikimedia.org")) return PROXY;
  if(dnsDomainIs(host,"freenuts.com")) return PROXY;

/*twitter*/  
  if(dnsDomainIs(host,"twimg.com")) return PROXY;
  if(dnsDomainIs(host,"twitter.com")) return PROXY;
  if(dnsDomainIs(host,"twitpic.com")) return PROXY;
/*end twitter*/

  if(dnsDomainIs(host,"ytimg.com")) return PROXY;
  if(shExpMatch(url,"*cache*.youtube.com*")) return PROXY;
/*  shExpMatch(url,"*.blogspot.com*")) return PROXY;  */
  
  if(dnsDomainIs(host,"sysresccd.org")) return PROXY;
  if(dnsDomainIs(host,"torproject.org")) return PROXY;

  if(dnsDomainIs(host,"chinagfw.org")) return PROXY;
  if(dnsDomainIs(host,"geeksjoy.com")) return PROXY;
  if(dnsDomainIs(host,"wordpress.com")) return PROXY;
  if(dnsDomainIs(host,"upubuntu.com")) return PROXY;
  if(dnsDomainIs(host,"www.mail-archive.com")) return PROXY;
  if(dnsDomainIs(host,"www.kerneloops.org")) return PROXY;

  if(host=="ow.ly") return PROXY;
  if(host=="ht.ly") return PROXY;
  if(host=="paper.li") return PROXY;
  if(host=="t.co") return PROXY;
  if(host=="youtu.be") return PROXY;
  if(host=="j.mp") return PROXY;
  return DEFAULT;
}


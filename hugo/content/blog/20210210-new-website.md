---
title: "New Website!"
date: 2021-02-10T11:38:36-08:00
draft: false
tags:
  - engineering
  - ipfs
  - hugo
---

After many years of owning www.patrickcking.com and really doing nothing with it, I've decided that it's time to make use of this domain. This decision comes as a time when I am preparing to leave all social media websites and I am trying to find the least disruptive way to do so. The main drive to build this site is for my [contact](/contact) and [event](/event) pages which I hope will allow me to keep in touch with my friends and continue to organize parties.

Besides leaving social media, building this website was fun! I learned about [IPFS](https://ipfs.io) a little over a month ago and was immediately intrigued by the promise of a distributed web. Looking for the best way to do that I found [Cloudflare's IPFS Gateway](https://developers.cloudflare.com/distributed-web/ipfs-gateway) and immediately started to port all of my sites over to use it. At the time this page was just a static html file that said "Hi." so it was pretty easy to do. To serve a more complicated website I would need a relative-linked website (since there is no DNS in IPFS) and I found [Hugo](https://gohugo.io/) which was just perfect! Not only was it written in golang, but you could write everything in markdown.

So, here we are. The first blog post of my new IPFS hosted, Hugo website. I don’t know if I’ll do much on this blog, but it’s nice to know that I have somewhere to post content if I need to.


---
This page's [markdown](https://raw.githubusercontent.com/mr-mustash/patrickcking.com/master/hugo/content/blog/20210210-new-website.md) can be verified with [this signature](/signatures/markdown/blog/20210210-new-website.md.sig) and it's HTML can be verified with [this signature](/signatures/html/{{< relref "blog/20210210-new-website.md" >}}/index.html.sig).

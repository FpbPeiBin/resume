#import "@preview/fontawesome:0.2.1": fa-envelope, fa-rss, fa-github
#import "lib.typ": *

// gh link with icon
#let gh_link = [
  #text(baseline: 0.1em)[#fa-github()] #link("https://github.com/FpbPeiBin")[github.com/FpbPeiBin]
]

#let mail = [
  #text(baseline: 0.1em)[#fa-envelope()];
  #ulink("mailto:1445643707@qq.com")[1445643707\@qq.com]
]

#let name = "冯培彬"

#grid(
  rows: 1,
  columns: (50%, 50%),
  align: (left, right),
  [
    #text(size: 16pt, weight: "bold")[#name] \
    #mail \
    #gh_link
  ],
  [
    #box[
      #v(-1.2cm),
      #image("img/fpb.jpg", width: 2.5cm)
    ]
  ],
)
#v(-0.8cm)

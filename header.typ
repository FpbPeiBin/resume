#import "@preview/fontawesome:0.2.1": fa-envelope, fa-rss, fa-github, fa-contact-card
#import "lib.typ": *

// gh link with icon
#let gh_link = [
  #text(baseline: 0.1em)[#fa-github()] #link("https://github.com/FpbPeiBin")[github.com/FpbPeiBin]
]

#let contact = [
  #text(baseline: 0.1em)[#fa-contact-card()] 19928844820
]

#let mail = [
  #text(baseline: 0.1em)[#fa-envelope()];
  #ulink("mailto:atlantic.pb.feng@outlook.com")[atlantic.pb.feng\@outlook.com]
]

#let name = "冯培彬"

#grid(
  rows: 1,
  columns: (50%, 50%),
  align: (left, right),
  [
    #text(size: 16pt, weight: "bold")[#name] \
    #mail \
    #contact
  ],
  [
    #box[
      #v(-0.5cm)
      #image("img/fpb.jpg", width: 2.5cm)
    ]
  ],
)
#v(-0.8cm)

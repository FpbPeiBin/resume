#import "@preview/fontawesome:0.2.1": fa-link, fa-github, fa-icon, fa-chalkboard-user

#let fa-circle-solid() = {
  text(size: 3pt, baseline: -1.8pt)[
    #fa-icon("circle", font: "Font Awesome 6 Free Solid") #h(1.5pt)
  ]
}

#let betterlink(url, content, icon: fa-link()) = {
  // possible values [digital, print]
  let medium = sys.inputs.at("medium", default: "digital")
  let icon = text(size: 8pt)[#icon]
  let sm_icon = text(baseline: 0.1em, size: 6pt)[#fa-link()]
  let addition = if medium == "print" {
    footnote[ #sm_icon #raw(url) ]
  } else if medium == "digital" { [] } else { panic("Invalid medium") }

  link(url)[
    #icon
    #content
    #addition
  ]
}

#let ulink(url, content) = {
  link(url)[
    #underline(content, offset: 2pt)
  ]
}

#let gh_repo(url, content) = [
  #link(url)[#text(baseline: 0.1em)[#fa-github()] #content]
]

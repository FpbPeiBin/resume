 #let chiline() = {
    v(-0.6em);
    line(length: 100%, stroke: black + 0.06em);
}

#let cventry(
    tl: lorem(2),
    tl_comments: "",
    tr: "",
    bl: "",
    br: "",
    content
) = {
    block(
        inset: (left: 0pt),
        text(weight: "bold", size: 11pt)[#tl] 
        + tl_comments 
        + h(1fr) 
        + text(style: "italic", fill: luma(125))[#tr]
        + linebreak() +
        if bl != "" or br != "" {
            bl + h(1fr) + br + linebreak()
        }
        + v(-0.2em)
        + content
        + v(0.5em)
    )
}

#let chicv(body) = {

    let fonts = (
        "Linux Biolinum",
        "Source Han Serif SC"
    )

    show raw: set text(
        font: "Iosevka"
    )

    show heading.where(
        level: 1
    ): set text(
        size: 16pt,
        font: fonts,
    )

    show heading.where(
        level: 2
    ): it => text(
        size: 12pt,
        font: fonts,
        fill: blue.darken(15%),
        weight: "bold",
        block(
            v(-0.1em) +
        //  ^^^^^^^^ visual break between blocks
            it + chiline(),
        )
    )
    set list(indent: 0pt)

    // show link: it => underline(offset: 2pt, it)
    // prevent overriding: https://github.com/typst/typst/issues/420
    show footnote.entry: set text(gray)

    set page(
        margin: (x: 0.9cm, top: 0.5cm, bottom: 0.5cm),
    )

    set par(justify: true, leading: 0.85em)

    set text(font: fonts, size: 11pt)

    body
}

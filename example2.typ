#let kws(
  doc,
 ) = [
  #set page("a4",
  numbering: "1",
  number-align: end,
  margin: (top: 12em, bottom: auto),
  header-ascent: 40%,
      header:[
      #place(
       dx: 0em,
       dy: 3em,
      image("logo.png", height: 5em)
            )
      #set align(right)
      #set text(font: "Source Serif Pro", size: 12pt, lang: "sv")
      Company ONE
      #line(
       length: 25%,
       stroke: (paint: gray, thickness: 0.01em, cap: "round")
      )
      ],
      footer-descent: 10%,
      footer:[
      #set align(center)
      #set text(font: "Source Code Pro", size: 7pt, lang: "sv")
      #line(
       length: 75%,
       stroke: (paint: gray, thickness: 0.01em, cap: "round")
      )
      Company One | Company Two | Company Three\
      Small road 54, 392 56 Bigtown\
       000-47 96 50  --- info\u{0040}companyone.com\
      companyone.com | companytwo.com | companyfour.com
      #place(
        right,
        text(fill: gray, counter(page).display()))
      ])
  #set text(font: "Source Sans Pro", size: 10pt, lang: "sv")
  #set heading(numbering: "1.1")
  #set par(justify: true)
  #show heading: set text(font:"Source Serif Pro")
  #doc
]
#show: doc => kws(
doc
)

= Heading 1
#lorem(75)
#parbreak()
#lorem(35)
== Heading 2
#lorem(150)
=== Heading 3
#lorem(250)
#figure(
table(
  columns: (1fr, 1fr, 1fr),
  inset: 10pt,
  align: horizon,
  [*1*], [*2*], [*3*],
  lorem(15),lorem(7),lorem(9),
  [125],[222],[47],
  lorem(3),lorem(4),lorem(1),
  lorem(1),lorem(12),lorem(4),
  )
)
)
 ==== Heading 4
  #lorem(150)
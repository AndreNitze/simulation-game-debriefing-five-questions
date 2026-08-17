// Primary palette for the Typst PDF.
#let dark-blue = rgb("#1C45C2")
#let primary-blue = rgb("#296dbc")
#let pale-blue = rgb("#E8EEFF")

// Pandoc delegates straight quotes to Typst, which does not retain German
// opening and closing quotation marks reliably in this output. Keep them
// explicit for the German guide.
#let de-quote(body) = [„#body“]

#let document-details() = align(center)[
  #block(below: 3pt)[
    #text(size: 8.5pt, fill: black)[Version 1.0.1 · Autor: André Nitze · Datum: 17. August 2026 · Lizenz: #link("https://creativecommons.org/licenses/by/4.0/")[#text(fill: black)[CC BY 4.0]]]
  ]
  #text(size: 8pt, fill: black)[Aktuelle Versionen und weitere Informationen: #link("https://github.com/AndreNitze/simulation-game-debriefing-five-questions")[#text(fill: black)[https://github.com/AndreNitze/simulation-game-debriefing-five-questions]]]
]

// Keep each example together as one visually distinct practice area. The
// block may break across pages while retaining its border and inset.
#let example-box(body) = block(
  breakable: true,
  width: 100%,
  fill: rgb("#F8FAFF"),
  stroke: (paint: primary-blue, thickness: 0.8pt),
  inset: (x: 12pt, y: 10pt),
  radius: 3pt,
  body,
)

// Numbered prompts use a two-column grid so wrapped lines align with the
// prompt text rather than returning to the left edge below the numeral.
#let numbered-item(marker, body) = block(
  width: 100%,
  above: 0pt,
  below: 0.6em,
)[
  #grid(
    columns: (1.45em, 1fr),
    gutter: 0pt,
    align: top,
    [#marker],
    [
      #set par(leading: 0.75em, first-line-indent: 0pt)
      #body
    ],
  )
]

// Keep the explanation as the main reading path and place optional moderation
// prompts in a narrow, consistently styled reference area to its right.
#let question-layout(body, followups) = block(
  breakable: false,
  width: 100%,
)[
  #grid(
    columns: (2.05fr, 0.95fr),
    gutter: 1.15em,
    align: top,
    body,
    block(
      width: 100%,
      fill: pale-blue,
      stroke: (paint: primary-blue, thickness: 0.55pt),
      inset: (x: 9pt, y: 8pt),
      radius: 2.5pt,
    )[
      #set par(
        justify: false,
        leading: 0.72em,
        spacing: 0.62em,
        first-line-indent: 0pt,
      )
      #text(size: 8.7pt, weight: "bold", fill: dark-blue)[Mögliche Nachfragen]
      #v(0.45em)
      #text(size: 8.7pt)[#followups]
    ],
  )
]

// Match Quarto's callout structure while giving icon and title a clearer gap.
#let callout(body: [], title: "Callout", background_color: rgb("#dddddd"), icon: none, icon_color: black, body_background_color: white) = {
  let callout-background = pale-blue
  let callout-icon = primary-blue
  block(
    breakable: false,
    fill: callout-background,
    stroke: (paint: callout-icon, thickness: 0.5pt, cap: "round"),
    width: 100%,
    radius: 2pt,
    block(
      inset: 1pt,
      width: 100%,
      below: 0pt,
      block(
        fill: callout-background,
        width: 100%,
        inset: 8pt,
      )[
        #if icon != none [#text(callout-icon, weight: 900)[#icon]#h(6pt)]#title
      ] + if body != [] {
        block(
          inset: 1pt,
          width: 100%,
          block(fill: white, width: 100%, inset: 8pt, body),
        )
      },
    ),
  )
}

#set par(
  leading: 0.68em,
  spacing: 0.68em,
  first-line-indent: (amount: 1.25em, all: true),
)

#show footnote.entry: set text(size: 8pt)

#set page(
  header: context {
    if counter(page).get().first() > 1 {
      align(right)[
        #text(size: 8pt, fill: black)[Leitfaden für Debriefings in Planspielen]
        #v(1.5pt)
        #line(length: 100%, stroke: 0.55pt + pale-blue)
      ]
    }
  },
  footer: context align(right)[
    #text(size: 8.5pt, fill: black)[#counter(page).display("1")]
  ],
)

#show heading.where(level: 1): it => block(width: 100%, above: 2.35em, below: 0.95em, sticky: true)[
  #text(size: 15pt, weight: "bold", fill: dark-blue)[#it.body]
]

#show heading.where(level: 2): it => block(width: 100%, above: 1.65em, below: 0.7em, sticky: true)[
  #text(size: 11.5pt, weight: "bold", fill: dark-blue)[#it.body]
]

#show heading.where(level: 3): it => block(width: 100%, above: 1.35em, below: 0.55em)[
  #text(size: 10.2pt, weight: "bold", fill: dark-blue)[#it.body]
]

#import "@preview/touying:0.4.2": *

#let s = themes.simple.register(aspect-ratio: "16-9", footer: [Simple slides])
#let (init, slides) = utils.methods(s)
#show: init

#set text(font: ("Arial", "SimHei"), size: 24pt)

#let (slide, empty-slide, title-slide, centered-slide, focus-slide) = utils.slides(s)
#show: slides

#title-slide[
  #set text(font: ("Georgia", "KaiTi"))

  #text(size: 36pt)[
    这是标题；English
  ] 

  作者 Author \
  机构 Institution
]

= 第一部分

#slide[
  #lorem(20)
]

#focus-slide[
  _Focus!_

  This is very important.
]

= 第二部分

== Dynamic slide

#slide[
  Did you know that...

  #pause

  ...you can see the current section at the top of the slide?
]

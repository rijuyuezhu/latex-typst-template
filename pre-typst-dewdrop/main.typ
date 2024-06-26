#import "@preview/touying:0.4.2": *

#let s = themes.dewdrop.register(
  aspect-ratio: "16-9",
  footer: [Dewdrop],
  navigation: "mini-slides",
	mini-slides: (
		height: 2.2em,
		x: 2em,
		section: false,
		subsection: false,
	)
  // navigation: none,
)


#let s = (s.methods.info)(
  self: s,
  title: [
    #set text(font: ("Georgia", "KaiTi"), size: 36pt)
    这是标题 This is title.
  ],
  subtitle: [
    #set text(font: ("Georgia", "KaiTi"), size: 24pt)
    这是副标题 This is subtitle.
  ],
  author: [
    #set text(font: ("Georgia", "KaiTi"), size: 24pt)
    作者 Author \
    机构 Institution
  ],
)

#let (init, slides, touying-outline, alert, speaker-note) = utils.methods(s)
#show: init

#set text(font: ("Arial", "FZHei-B01S"), size: 24pt)

#show strong: alert

#let (slide, empty-slide, title-slide, new-section-slide, focus-slide) = utils.slides(s)
#show: slides


= Section A 第一大节

== Subsection A.1

#slide[
  A slide with equation:

  $ x_(n+1) = (x_n + a/x_n) / 2 $
]

== Subsection A.2

#slide[
  A slide without a title but with *important* infos
]

= Section B

== Subsection B.1

#slide[
  #lorem(80)
]

#focus-slide[
  Wake up!
]

== Subsection B.2

#slide[
  We can use `#pause` to #pause display something later.

  你好

  #pause
  
  Just like this.

  #meanwhile
  
  Meanwhile, #pause we can also use `#meanwhile` to #pause display other content synchronously.
]

// appendix by freezing last-slide-number
#let s = (s.methods.appendix)(self: s)
#let (slide, empty-slide) = utils.slides(s)

= Appendix

=== Appendix

#slide[
  Please pay attention to the current slide number.
]
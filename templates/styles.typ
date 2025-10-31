#import "../config.typ": author, project_shortname, institute

#let template(doc) = [

	#set text(font: "Noto Sans",
			  size: 11pt,
			  fill: rgb("333333"),
			  tracking: 0.2pt )

	#set par(leading: 0.8em,
			 justify: true)

	#set heading(numbering: "1.")
	#show heading: set text(rgb("1d1d1d"))
	#show heading.where(level: 1): it => {
		pagebreak(weak: true)
		text(24pt, it)
		v(0.6em)
	}

	#show heading.where(level: 2): it => {
		v(0.6em)
		it
		v(0.4em)
	}

	#show link: set text(blue)
	#show ref: set text(blue)

	#show table: set par(justify: false)
	#set table(inset: 8pt,
			   stroke: 1pt + rgb("#EEEEEE") )

    #set text(lang: "de")
	#set ref(supplement: "Abschnitt")
	
	#doc
]
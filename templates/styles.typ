#import "../config.typ": author, project_shortname, institute

#let template(doc) = [

    #set page(
        header-ascent: 35% + 0pt,
        header: context [
            #set text(size: 8pt)
            #grid(
                columns: (1fr, 1fr),
                align: (left, right),
                institute,
                author
            )
        ],
        footer-descent: 35% + 0pt,
        footer: context [
            #set text(size: 8pt)
            #grid(
                columns: (1fr, 1fr, 1fr),
                align: (left, center, right),
                project_shortname,
                datetime.today().display("[day].[month].[year]"),
                counter(page).display("1/1", both: true)
            )
        ]
    )

	#set text(font: "Noto Sans",
			  size: 11pt,
			  fill: rgb("323232"))

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

	#show link: set text(rgb("3788c1"))
	#show ref: set text(rgb("3788c1"))

	#show table: set par(justify: false)
	#set table(inset: 8pt,
			   stroke: 1pt + rgb("#EEEEEE") )

    #set text(lang: "en")
	
	#doc
]
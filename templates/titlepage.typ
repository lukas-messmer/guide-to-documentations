#import "../config.typ": author, document_type, project_name, project_shortname

#let titlepage(metadata: (), title: project_name) = {
	set par(justify: false)
	set align(center)

	metadata.push("Abkürzung: " + project_shortname)

	v(1cm)
	text(16pt, document_type)
	v(0.1em)
	text(size: 34pt,
		 fill: rgb("1d1d1d"),
		 weight: "bold",
		 title)
	metadata.map(m => block(spacing: 0.9em, m)).join()

	v(1fr)
	image("/assets/logo.jpg", height: 1.5cm)
	v(1cm)

	pagebreak()
}
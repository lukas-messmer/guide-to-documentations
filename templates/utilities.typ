#let y-statement(include_explanation: false, caption: none, content) = {
    figure(
        kind: "architectural-decision-record",
        supplement: [ADR],
        caption: caption,
        table(
            columns: (1fr, 9fr),
            align: (center + horizon, left),
            { text(18pt, [Y])
              if (include_explanation){ footnote[#link("https://socadk.github.io/design-practice-repository/artifact-templates/DPR-ArchitecturalDecisionRecordYForm.html")[Y-Statements] (read "Why-Statements") are designed to summarize architectural decisions in a single, structured sentence. This structure is used throughout this document.]}},
            par(justify: true, content)
        )
    )
}

#let svg(source, height: auto, width: auto, caption: none) = {
    figure(
        text(
            font: "Noto Sans",
            image(source, height: height, width: width)
        ),
        caption: caption
    )
}

#let inline_label(identifier, content, show_text: true) = [
    #show figure: it => it.body
    #figure(
        kind: "text-ref",
        outlined: false,
        supplement: none,
        numbering: it => content,
        if show_text { content }
    )
    #label(identifier)
]

#let pdf(filename, from_page: 1, to_page, label: none, landscape: false) = [
	#for p in range(from_page, to_page + 1) {
		page(background: image(filename + "-p" + str(p) + ".svg"), 
		     flipped: landscape)[
		    #if p == from_page and label != none {
                inline_label(label.id, label.name, show_text: false)
            }
		]
	}
]
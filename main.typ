#import "/templates/styles.typ": template
#import "/templates/titlepage.typ": titlepage
#show: template

#titlepage(
	// Use the title argument if you want to change e.g. the line breaks in the title.
	metadata: (
		"Auftraggeber: Max Test",
		"Projektverantwortung: Max Mustermann"
		)
	)

#include "chapters/01_introduction.typ"
#include "chapters/02_organization.typ"

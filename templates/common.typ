


#let LEVELS = (
    (
        name: [High-Level],
        about: [For readers *not directly* involved in the software project (i.e. stakeholders)],
        documentation_types: (
            (
                name: [Management Summary],
                reference: [],
            ),
            (
                name: [Presentation],
                reference: [],
            ),
        )
    ),
    (
        name: [Medium-Level],
        about: [For readers *directly* involved in the software project (i.e. architects)],
        documentation_types: (
            (
                name: [Architecture Documentation],
                reference: [],
            ),
            (
                name: [Requirements Specification],
                reference: [],
            ),
            (
                name: [Test Documentation],
                reference: [],
            ),
        )
    ),
    (
        name: [Low-Level],
        about: [For readers *developing, maintaining, or using* the software (i.e. devs)],
        documentation_types: (
            (
                name: [API Reference],
                reference: [],
            ),
            (
                name: [Code-Level Documentation],
                reference: [],
            ),
            (
                name: [How-To Guides],
                reference: [],
            ),
            (
                name: [Tutorials],
                reference: [],
            ),
            (
                name: [Release Notes],
                reference: [],
            ),
            (
                name: [READMEs],
                reference: [],
            ),
        )
    ),
)


#let documentation_overview(shorten: false, mark: ()) = {
    table(
      columns: (..LEVELS.map(_ => 1fr)),
      align: center,
      table.header(
        ..LEVELS.map(level => [*#level.name* \ #par(leading: 0.5em, text(0.6em, tracking: 0.05em, level.about))]),
      ),
      ..LEVELS.map(level =>
        level.documentation_types.fold(
            [],
            (acc, type) =>
                acc + block(
                    fill: if mark.contains(type.name) { rgb("#e1e5ea") } else { none },
                    stroke: rgb("#e1e5ea"),
                    width: 100%,
                    radius: 4pt,
                    inset: 8pt,
                    below: 8pt,
                    type.name)
            )
        )
    )
}
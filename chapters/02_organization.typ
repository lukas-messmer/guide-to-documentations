#import "/templates/utilities.typ": svg

= Organisation

== Personen

_Welche Personen mit welchen Rollen sind involviert?_

== Erwartete Produkte

_Was muss am Ende des Projekts vorhanden sein (Software, Dokumentation, etc.)? _

== Bereitgestellte Unterlagen

_Welche für das Projekt relevanten Unterlagen werden bereitgestellt (Links, Vorlagen, etc.)?_

== Zeitplanung

=== Kostenstelle & Stunden

Arbeitsstunden: _Wie viele Stunden können für das Projekt aufgewendet werden?_

Kostenstelle: _Wie lautet die Kostenstelle?_

=== Deadlines

_Welche Deadlines existieren in dem Projekt?_

#table(
	columns: (auto, auto, 1fr),
	table.header(
		[*\#*], [*Datum*], [*Beschreibung*],
	),
	[...],[...],[...],
)

=== Zeitplan

_Wie sieht der Projektablauf grob aus?_

#svg("/generated/assets/diagrams/time_planning.svg",
	 width: 100%)
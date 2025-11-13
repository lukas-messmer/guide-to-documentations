#import "/templates/utilities.typ": important, fallacy
#import "/templates/common.typ": documentation_overview, LEVELS

= Getting Started

== The No. 1 Question

Everything has to start somewhere. When talking about documentations, you might think that this means opening a text editor and thinking about which structure to use or which chapters are needed. But before you even dare to write the first sentence, you need to ask yourself one crucial question.

#important[
    Who am I writing documentations for and what do these people need to know?
]

After all, a documentation only has value if there is a *reader* who can *gain* something from it. The best documentation becomes useless if there is no one to read it. 

For this reason, the question is especially important as it does not only determine what to write (in terms of content), but also how to write it (both in terms of language and tools) and how to present it. Different readers have different requirements for what they would like to know, influenced by factors such as their prior knowledge, their current goals, their time and patience, and much more.

#fallacy[
    Never treat the readers of your documentation as one homogeneous group. Different readers have different goals when reading your documentation.
]

=== How can I answer this question?

// TODO: Any potential templates for this?

In order to answer the question "Who am I writing documentations for and what do these people need to know?", one must examine the potential readers of their documentation in more detail. Generally speaking, if you want to find an answer to this question, you have to ask yourself further questions such as these:

- Am I writing this documentation for a software architect / project lead / developer? 
- How does this person want to read my documentation (e.g. PDFs, inline hints)?
- Does this person require specific information (e.g. charts, schedules, code)?
- What domain-specific words does this person use?

Luckily for us, there were already many people before us who had to deal with the same questions. What they came up with is a plethora of different models, documentation types and concepts, each tailored to a specific group of potential readers. All we need to do now is to apply these ideas to whatever it is we want to document.

#pagebreak()
=== Recommended Approach

Instead of reinventing the wheel, we recommend familiarizing yourself with the different types of documentation available in order to understand *who* they are intended for, *what* they contain, and *how* they are written. After that, all you have to do is to decide which documentation types are most suitable for the readers interested in my software.

Here is a concept that can help you with this:

#important[
    All documentations can generally be divided into *3 levels* (low, high, and medium). Each level contains a range of different *documentation types* tailored to different target audiences. Which documentation types from which level you want to produce depends solely on the software you want to document.
]

#documentation_overview()

Note that not all software attracts the same kind of readers. An open-source library that solves a specific problem has a different target audience for its documentation than an internal application for managing customers. The software you want to document determines the documentation types you should use, and it's rarely necessary to use all available types. After all, you wouldn't use everything in your refrigerator to bake a cake.

#fallacy[
    Don't try to use all documentation types available. Different software solutions attract different kinds of documentation readers. Only document what these readers actually want to know.
]

=== How to: Decide on what you need to write

Lets look at some examples that show how the above framework can be helpful. We assume that you have some basic knowledge of what management summaries, API references, and so on are. If not, you might want to start with section xy instead.

==== Open-Source Library

Let's say I am creating a small open-source library that allows me to print Simpson quotes on the console, similar to Fortune. What kind of documentation does such a software need? Here is how you can determine this using a few simple questions and the framework provided above:

- _Are there external people who are interested in my software?_ \ Yes, there may be people who don't know this library and want to know what it is.

- _Are there people involved in my project?_ \ No, only myself.

- _Are there people who will use my software?_ \ Yes, there are.

- _What are these people most likely going to do?_ \ Probably use or extend my software.

- _What information do users need?_ \ Probably instructions on how to use the software.

- _What information do contributors need?_ \ Probably information about the code itself, e.g. where the quotes come from.

#documentation_overview(
    mark: (
        LEVELS.at(0).documentation_types.at(0).name,
        LEVELS.at(2).documentation_types.at(2).name,
        LEVELS.at(2).documentation_types.at(3).name,
    )
)

Important: These questions aren't meant as a strict rule you should follow all the time. It simply demonstrates the thinking process you could have that will ultimatly help you determine what documentation is acually required.


== Documentation Types

After reading section XY, you should now understand that diffrent software attracts diffrent kind of documentation readers and that there are diffrent kind of documentation types that we can use to meet does readers demand. The next thing we have to do is to understand how these documentation types differ from one another and how to actually write them.

Here's the answer to the first question:

#important[
    The diffrent documentation types differ in these things:

        - Reader: The people who want to read this documentation type
        - Format: How this documentation type should be presented to the reader
        - Tooling: How this documentation type should be written by the author
        - Content: What the documentation type should contain
        - Best Practices: What we should aim for when writting this documentation type
]

We already discuessed that understanding the target audience of your documentation is a cruical part in writing something that is actually useful. However, the other aspects (format, tooling, etc.) are equaly important in writing good and maintainable documentations. Think of code documentations: You probably already used websites like (...) where you can look for information about a specfic piece of code you need to use. You probably expect some sort of filter to find things like classes, functions and similar and you probably also expect links to relating code pieces and so on. Now imagen how cumbersom it would be to find your code pieces in a 1000 pages long PDF.

This is why it's important to differentate between the diffrent types of documentation.

#fallacy[
    Don't blindly apply the same concepts, ideas or principles from one documentation type to another. While some documentation types may have overlaps, it's important to understand that some core principles may be fundamentaly diffrent, especaially when dealing with documentation types of diffrent levels.
]

#fallacy[
    Don't try to fit every documentation type into the same format (e.g. putting both your architecture and code documentation in the same PDF). If you have to do this (e.g. for archiving purposes) make sure to obviously sepearte these parts.
]
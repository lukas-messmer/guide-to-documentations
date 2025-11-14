#import "/templates/utilities.typ": important, fallacy
#import "/templates/common.typ": documentation_overview, LEVELS

= Getting Started

== The No. 1 Question <the-no-1-question>

Everything has to start somewhere. When talking about documentations, you might think that this means opening a text editor and thinking about which chapters are needed or which template to use. But before you even think about writing your first sentence, you need to ask yourself one crucial question:

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
- Does this person require specific information (e.g. charts, schedules, code)?
- What prior knowledge does this person have (e.g. domain-specific words)?
- How does this person want to read my documentation (e.g. PDFs, inline hints)?

Luckily for us, there were already many people before us who had to deal with the same questions. What they came up with is a plethora of different models, documentation types and concepts, each tailored to a specific group of potential readers. All we need to do now is to apply these ideas to whatever it is we want to document.

#pagebreak()
=== Recommended Approach

Instead of reinventing the wheel, we recommend familiarizing yourself with the different types of documentation available in order to understand *who* they are intended for, *what* they contain, and *how* they are written. After that, all you have to do is to decide which documentation types are most suitable for the readers interested in your software.

Here is a concept that can help you with this:

#important[
    All documentations can generally be divided into *3 levels* (low, high, and medium). Each level contains a range of different *documentation types* tailored to different target audiences. Which documentation types from which level you want to produce depends solely on the software you want to document.
]

#documentation_overview()

It is important to note that not all software attracts the same kind of readers. An open-source library that solves a specific problem has a different target audience for its documentation than an internal application for managing customers. The software you want to document determines the documentation types you should use, and it's rarely necessary to use all available types. After all, you wouldn't use every ingredient in your refrigerator to bake a cake.

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

After reading @the-no-1-question, you should now understand that different software attracts different kinds of documentation readers and that there are different documentation types we can use to address these audiences. Our next step is to understand how these documentation types differ from one another and how we can actually write them.

We will start by addressing the first question:

#important[
    The different types of documentation differ in the following aspects:
    
    - *Readers*: Which people are interested in this documentation type
    - *Format*: How this documentation type should be presented to the reader
    - *Tools*: How this documentation type should be written by the author
    - *Content*: What this documentation type should contain
    - *Best Practices*: What we should strive for when writing this documentation type
]

We already discussed that understanding the target audience of your documentation is crucial for creating content with genuine value. However, other aspects such as format and tooling are equally important for writing usable and maintainable documentations. 

Think about code documentations: You probably have already used websites such as #link("https://docs.oracle.com/en/java/javase/25/docs/api/index.html")[Java Doc] @java-doc or #link("https://cppreference.com/")[CPP Reference] @cppreference to search for information about a specific piece of code that you need to use. What do you expect when using such a documentation? Perhaps a hierarchical view for classes? Maybe a search bar to find specific functions? Whatever it is, it's probably better than a 250-page PDF with code documentation written in prose like some kind of Shakespeare novel (We are looking at you, Latex).

While this line of thought may seem obvious for documentation tools and formats, the same principle also applies to concepts and best practices:

#fallacy[   
    Do not blindly apply the same concepts, ideas, and best practices from one documentation type to another. While some documentation types may have overlaps, it is important to understand that some fundamental principles may differ significantly, especially when dealing with documentation types at different levels.
]

#pagebreak()

Another thing we would like to address, which we found frequently in student work:

#fallacy[
    Do not try to force all documentation types into the same format (e.g. putting your architecture and code documentation together in the same PDF). If you must do this (e.g. for archiving purposes), be sure to clearly separate these parts.
]
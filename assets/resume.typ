/* this is my resume's latex code and it can be updated and all */
#set page(margin: (x: 1.8cm, y: 1.5cm))
#set text(font: "New Computer Modern", size: 10pt)
#set par(justify: true, leading: 0.55em)

#let name = "Manogya Dahal"
#let contact = (
  link("mailto:him@manogyadahal.com.np")[him\@manogyadahal.com.np],
  link("https://manogyadahal.com.np")[manogyadahal.com.np],
  link("https://github.com/ManogyaDahal")[github/ManogyaDahal],
  link("tel:+9779761795280")[+977-9761795280],
)

#align(center)[
  #text(size: 20pt, weight: "bold", fill: navy)[#name] \ \
  #text(size: 9pt)[#contact.join("  |  ")]
]

#v(0.3em)

#text(size: 9.5pt)[
A Computer Science undergraduate with experience working with servers,
systems architecture, and open-source development. Proficient in
backend projects across multiple programming languages.
]
#v(0.3em)
#let section(title) = [
  #v(0.6em, weak: true)
  #text(size: 14pt, weight: "bold", fill: navy)[#title]
  #v(-0.8em)
  #line(length: 100%, stroke: 0.5pt)
]

#let entry(left, right) = [
  #grid(
    columns: (1fr, auto),
    [#text(weight: "bold")[#left]], [#text(style: "italic")[#right]]
  )
]

= #section[Education]

#entry("Kathmandu University, Dhulikhel, Kavrepalanchowk", "Aug. 2023 -- Exp. Aug. 2027")
*BSc in Computer Science* \
Relevant Coursework: Algorithms, Databases, Computer Networks, Data Structures, Operating Systems

= #section[Projects]

#let project(title, tech, items, url: none) = [
  #if url != none [
    #link(url)[#text(weight: "bold")[#title]] #text(style: "italic")[(#tech)]
  ] else [
    #text(weight: "bold")[#title] #text(style: "italic")[(#tech)]
  ]
  #list(..items, marker: "•", indent: 1em)
]

#project("Collaboratex:", "Go, React, Redis, Docker", url:"https://github.com/ManogyaDahal/collaboratex", (
  [Engineered a concurrent compilation pipeline utilizing Go and Redis caching to efficiently manage multi-user document build requests.],
  [Built real-time collaborative text-editor and chat system using codemirror and gorilla websockets.],
))

#project("Letsgodb", "Go", url:"https://github.com/ManogyaDahal/letsgodb",(
  [Designed and implemented a SQL-like database engine from scratch.],
  [Built a custom query parser, file-based storage layer, and CRUD execution engine.],
))

#project("DistQ", "Go, Javascript, Redis", url:"https://github.com/ManogyaDahal/DistQ",(
  [Worked on the broker and queue part of the task queue.],
  [Designed the dashboard displaying the status of the task and workers]
))

#project("GoType", "Go , React", url:"https://github.com/ManogyaDahal/Gotype",(
  [Engineered a real-time multiplayer synchronization engine utilizing 
   WebSockets.],
  [Setup google's oauth along with chat system inside lobby and player's progress],
))


#project("Concurrent-grep", "Go", url:"https://github.com/ManogyaDahal/concurentGrep",(
  [Reimplemented the grep utility in go with concurrency],
  [Recursively searches for the match inside of the directories and sub-directories],
))


#project("Http/1.1", "Go", url:"https://github.com/ManogyaDahal/http",(
  [Engineered a custom HTTP/1.1 server from scratch utilizing net package, managing raw TCP connections.],
  [Designed and built a byte-stream request parser to decode http protocol specifications, extracting request lines, parsing headers, and managing status code routing.],
))

#project("Conways game of life", "Go, Ebitengine", url:"https://github.com/ManogyaDahal/gameoflife",(
  [Engineered a 2D cellular automata engine using the Ebiten game engine in Go, implementing custom game loops for real-time grid rendering and state updates.],
))

#project("BMP", "Python, Opencv", url:"github.com/ManogyaDahal/BMP",(
  [Engineered a real-time gesture-controlled media player utilizing OpenCV to track hand movements and calculate precise finger counts for UI navigation.],
))


= #section[Technical Skills]

- *Languages*: Go, Python, C/C++, Rust, TypeScript, Bash, Lua
- *Frameworks/Libraries*: React, Django, Node.js, Pygame, Tailwind, Gin, Sevelte
- *Other*: Vim, Git, Linux,  Docker \& Virtualization, ORMs, Sockets, REST APIs 
- *Databases/Caching*: MySQL, SQLite, PostgreSQL, MongoDB, Redis

= #section[Experience]

#entry("Technician -- Kathmandu University High Performance Computing (KUHPC)", "Jun 2024 -- Aug 2025")
- Assisted in maintaining and troubleshooting the university's HPC cluster.
- Monitored and optimized system performance, handled system updates and hardware maintenance.

= #section[Leadership \& Activities]


#let non_bold_entry(left, right, url: none) = [
  #grid(
    columns: (1fr, auto),
    if url != none [#link(url)[#left]] else [#left],
    text(style: "italic")[#right]
  )
]
#non_bold_entry("Active contributor -- Kathmandu University Open Source Community (KUOSC)", "Aug 2024 -- Present", url:"kuosc.org.np/")
#non_bold_entry("Active member -- Kathmandu University Computer Club (KUCC)", "2023 - Present", url:"https://kucc.ku.edu.np/")

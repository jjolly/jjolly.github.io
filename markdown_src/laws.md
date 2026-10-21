---
title: Engineering Laws
subtitle: None of these are suggestions
author: John Jolly
author-url: "https://selfserving.systems"
date: 2026-10-21
lang: en
toc-title: Contents
---

Every trade keeps commandments. Ours are mostly scar tissue with
punchlines — the collected paranoia of people who have shipped something
to production and lived to be sarcastic about it. This page keeps them
in two drawers: the general truths that survive any discipline, and the
scar tissue particular to software. The named laws are indexed at the
back, next to the canon that keeps them.[^how]

## General Rules

### Fault and Blame

- It's always your fault until it's provably not your fault.
- The problem belongs to whoever discovered it until it belongs to
  someone else.
- Don't prove it's someone else's problem. Prove it's not yours.
- Users don't care whose team owns the bug.
- <a id="law-hanlon"></a>Never attribute to malice that which is
  adequately explained by incompetence. — [*Hanlon's
  Razor*](#the-named-laws)

### Estimation and Process

- <a id="law-hofstadter"></a>It always takes longer than you expect,
  even when you take into account [Hofstadter's
  Law](#the-named-laws).
- <a id="law-ninety-ninety"></a>The first 90 percent of the code
  accounts for the first 90 percent of the development time. The
  remaining 10 percent of the code accounts for the other 90 percent of
  the development time. — [*the ninety-ninety
  rule*](#the-named-laws)
- <a id="law-goodhart"></a>When a measure becomes a target, it ceases
  to be a good measure. — [*Goodhart's Law*](#the-named-laws)
- <a id="law-segal"></a>A man with a watch knows what time it is. A man
  with two watches is never sure. — [*Segal's Law*](#the-named-laws)
- <a id="law-brooks"></a>Adding people to a late project makes it
  later. — [*Brooks's Law*](#the-named-laws)
- Nothing is temporary. Especially temporary fixes.

### Systems

- <a id="law-murphy"></a>If it can fail, it will fail. — [*Murphy's
  Law*](#the-named-laws)
- <a id="law-gall"></a>A complex system that works is invariably found
  to have evolved from a simple system that works. — [*Gall's
  Law*](#the-named-laws)
- <a id="law-sturgeon"></a>Ninety percent of everything is crap. —
  [*Sturgeon's Law*](#the-named-laws)
- Every process exists because something terrible happened once.
- The most dangerous words in engineering are: "Nobody would ever do
  that."

## Discipline-Specific Rules

### Debugging

- No matter how well it works, assume it's broken somewhere.
- If you didn't test it, it doesn't work.
- If you only tested it once, it doesn't work.
- If it works on your machine, that's where it belongs.[^docker]
- The bug is never where you first think it is.
- The harder you insist "that can't be the problem," the more likely
  it's the problem.
- Trust, but verify. Then verify the verification.[^reagan]
- Assume the logs are lying. Then check them anyway.
- Read the error message. Actually read it.
- Before building a solution, make sure you understand the problem.
- The issue you've spent six hours chasing is probably a typo.
- The issue that looks like a typo probably isn't.
- The cleverer the code, the less likely Future You will understand
  it.[^kernighan]

### Operations

- Everything fails eventually. Design accordingly.[^vogels]
- Every system is a distributed system once enough time passes.
- Every distributed system is eventually a messaging system.
- Every success story is built on a pile of postmortems.
- Production is the world's most expensive test environment.
- There are two kinds of systems: those that are down, and those that
  haven't gone down yet.
- The customer experiences one system, not seventeen microservices.

### Design

- Make it work. Make it right. Make it fast. In that order.[^beck]
- Every abstraction leaks eventually.[^leaky]
- All models are wrong; some are useful.[^box]
- Simple things should be simple. Complex things should be possible.[^kay]
- We should forget about small efficiencies, say about 97% of the time.
  Premature optimization is the root of all evil.[^knuth]
- <a id="law-tesler"></a>Every application has an inherent amount of
  complexity that cannot be removed or hidden, only moved.[^tesler] —
  [*Tesler's Law*](#the-named-laws)
- There are only two hard things in Computer Science: cache invalidation
  and naming things.[^karlton]
- The best documentation is the code. The second-best documentation is
  documentation.

### The Software Laws

- <a id="law-conway"></a>[Conway's Law](#the-named-laws) (1968):
  organizations design systems that mirror their communication
  structures.
- <a id="law-wirth"></a>[Wirth's Law](#the-named-laws) (1995): software
  gets slower faster than hardware gets faster.
- <a id="law-zawinski"></a>[Zawinski's Law](#the-named-laws) (1990s):
  every program attempts to expand until it can read mail.
- <a id="law-greenspun"></a>[Greenspun's Tenth
  Rule](#the-named-laws) (1993): any sufficiently complicated C or
  Fortran program contains an ad hoc, informally-specified, bug-ridden,
  slow implementation of half of Common Lisp.
- <a id="law-linus"></a>[Linus's Law](#the-named-laws) (1999): given
  enough eyeballs, all bugs are shallow.
- <a id="law-atwood"></a>[Atwood's Law](#the-named-laws) (2007): any
  application that can be written in JavaScript, will eventually be
  written in JavaScript.

### The Bestiary

- Heisenbug — vanishes the moment you observe it.[^bestiary]
- Bohrbug — solid, repeatable, sits exactly where you expect it.
- Mandelbug — causes so tangled that bug and design become
  indistinguishable.
- Schrödinbug — worked fine until someone read the code and noticed.

## Commandments

- If it isn't monitored, it isn't running.
- If it isn't documented, it doesn't exist.
- If it works perfectly, you're missing something.
- The customer will always find the one workflow you never
  tested.[^hyrum]
- Future You is a different person and deserves kindness.[^woods]
- The root cause is usually human, even when the symptom is technical.
- Production gets a vote.

## References

### The Named Laws

Chronological, because the lineage is half the joke. Each entry links
to the law as it lives in the lists above — and every named law in the
lists links back here.

| Law | Author | Year | Lives above |
|---|---|---|---|
| [Segal's Law](#law-segal) | San Diego Union, misattributed to Lee Segal | 1930 | [Estimation and Process](#estimation-and-process) |
| [Murphy's Law](#law-murphy) | Edward A. Murphy Jr. | 1949 | [Systems](#systems) |
| [Sturgeon's Law](#law-sturgeon) | Theodore Sturgeon | 1957 | [Systems](#systems) |
| [Conway's Law](#law-conway) | Melvin Conway | 1968 | [The Software Laws](#the-software-laws) |
| [Brooks's Law](#law-brooks) | Fred Brooks | 1975 | [Estimation and Process](#estimation-and-process) |
| [Gall's Law](#law-gall) | John Gall | 1975 | [Systems](#systems) |
| [Goodhart's Law](#law-goodhart) | Charles Goodhart; phrasing M. Strathern | 1975 | [Estimation and Process](#estimation-and-process) |
| [Hofstadter's Law](#law-hofstadter) | Douglas Hofstadter | 1979 | [Estimation and Process](#estimation-and-process) |
| [Hanlon's Razor](#law-hanlon) | Robert J. Hanlon | 1980 | [Fault and Blame](#fault-and-blame) |
| [Ninety-ninety rule](#law-ninety-ninety) | Tom Cargill, Bell Labs | 1985 | [Estimation and Process](#estimation-and-process) |
| [Greenspun's Tenth Rule](#law-greenspun) | Philip Greenspun | 1993 | [The Software Laws](#the-software-laws) |
| [Zawinski's Law](#law-zawinski) | Jamie Zawinski | 1990s | [The Software Laws](#the-software-laws) |
| [Wirth's Law](#law-wirth) | Niklaus Wirth, after Martin Reiser | 1995 | [The Software Laws](#the-software-laws) |
| [Linus's Law](#law-linus) | Eric S. Raymond | 1999 | [The Software Laws](#the-software-laws) |
| [Tesler's Law](#law-tesler) | Larry Tesler | — | [Design](#design) |
| [Atwood's Law](#law-atwood) | Jeff Atwood (attributed) | 2007 | [The Software Laws](#the-software-laws) |

### Canon

- [Wikipedia: List of eponymous laws](https://en.wikipedia.org/wiki/List_of_laws_named_after_people)
  — the umbrella index.
- [The Jargon File](http://www.catb.org/jargon/) — the hacker-folklore
  canon, in print since *The Hacker's Dictionary* (1983, ed. Steele).
- [laws-of-software.com](https://www.laws-of-software.com) — attributed,
  one page per law.
- [murphys-laws.com](https://www.murphys-laws.com) — the Murphy archive,
  origin story included.
- ["How Do Committees Invent?"](https://melconway.com/Home/pdf/committees.pdf)
  — Conway's original paper (Datamation, April 1968). Primary source.

[^how]: Every attribution on this page was verified against a real
source in October 2026. "Attributed" means the saying is universally
associated with the name but no primary source survives — the usual
condition of engineering law.

[^docker]: Folklore. The joke predates Docker; Docker (2013) turned
"then we'll ship your machine" into a business model.

[^reagan]: Russian proverb — *doveryai, no proveryai* — quoted by
Ronald Reagan to Mikhail Gorbachev at the Höfði House meeting,
Reykjavík, 1986.

[^vogels]: Werner Vogels, AWS CTO (2008): "Everything fails, all the
time."

[^beck]: Attributed to Kent Beck (extreme programming), via the
original c2 wiki.

[^leaky]: [Joel Spolsky, "The Law of Leaky
Abstractions"](https://www.joelonsoftware.com/2002/11/11/the-law-of-leaky-abstractions/),
Joel on Software, 11 November 2002: "All non-trivial abstractions, to
some degree, are leaky."

[^box]: George E. P. Box. The famous short form appears in Box & Draper,
*Empirical Model-Building and Response Surfaces* (1987); [the 1976 paper
everyone cites](https://en.wikipedia.org/wiki/All_models_are_wrong)
("Science and Statistics," JASA) contains the long form.

[^kay]: Attributed to Alan Kay.

[^kernighan]: Cf. Brian Kernighan, *The Elements of Programming Style*
(2nd ed., with P. J. Plauger), ch. 2: "Everyone knows that debugging is
twice as hard as writing a program in the first place. So if you're as
clever as you can be when you write it, how will you ever debug it?"

[^knuth]: Donald Knuth, "Structured Programming with go to Statements,"
ACM Computing Surveys, 1974: "We should forget about small efficiencies,
say about 97% of the time: premature optimization is the root of all
evil. Yet we should not pass up our opportunities in that critical 3%."

[^tesler]: Larry Tesler (Xerox PARC, Apple) — the [law of conservation
of complexity](https://en.wikipedia.org/wiki/Law_of_conservation_of_complexity).

[^karlton]: Attributed to Phil Karlton (Netscape). The folk extension
adds "…and off-by-one errors."

[^hyrum]: Cf. [Hyrum's Law](https://www.laws-of-software.com/laws/hyrum/),
Hyrum Wright: "With a sufficient number of users of an API, it does not
matter what you promise in the contract: all observable behaviors of
your system will be depended on by somebody."

[^woods]: In that spirit: "Always code as if the guy who ends up
maintaining your code will be a violent psychopath who knows where you
live." — John Woods, comp.lang.c++, September 1991. Routinely
misattributed to Martin Golding.

[^bestiary]: Taxonomy per the [Jargon
File](http://www.catb.org/jargon/) and its descendants. The heisenbug
is a pun on Heisenberg's observer effect — the probe is what breaks it.

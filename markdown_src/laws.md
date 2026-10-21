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
to production and lived to be sarcastic about it. Where the record names
an author, credit is given.[^how] The rest belong to folklore, which in
engineering carries the force of law anyway.

## Debugging

- If it can fail, it will fail.[^murphy]
- No matter how well it works, assume it's broken somewhere.
- It's always your fault until it's provably not your fault.
- If you didn't test it, it doesn't work.
- If you only tested it once, it doesn't work.
- If it works on your machine, that's where it belongs.[^docker]
- The bug is never where you first think it is.
- The harder you insist "that can't be the problem," the more likely
  it's the problem.
- Trust, but verify. Then verify the verification.[^reagan]

## Operations

- Everything fails eventually. Design accordingly.[^vogels]
- Every system is a distributed system once enough time passes.
- Every distributed system is eventually a messaging system.
- Every success story is built on a pile of postmortems.
- Production is the world's most expensive test environment.
- There are two kinds of systems: those that are down, and those that
  haven't gone down yet.
- Nothing is temporary. Especially temporary fixes.

## Ownership

- The problem belongs to whoever discovered it until it belongs to
  someone else.
- Don't prove it's someone else's problem. Prove it's not yours.
- Users don't care whose team owns the bug.
- The customer experiences one system, not seventeen microservices.

## Design

- Make it work. Make it right. Make it fast. In that order.[^beck]
- Every abstraction leaks eventually.[^leaky]
- All models are wrong; some are useful.[^box]
- Simple things should be simple. Complex things should be possible.[^kay]
- The cleverer the code, the less likely Future You will understand
  it.[^kernighan]

## Meetings and Process

- Adding people to a late project makes it later.[^brooks]
- The best documentation is the code. The second-best documentation is
  documentation.
- Every process exists because something terrible happened once.
- The most dangerous words in engineering are: "Nobody would ever do
  that."

## Senior Engineer

- Assume the logs are lying. Then check them anyway.
- Read the error message. Actually read it.
- Before building a solution, make sure you understand the problem.
- The issue you've spent six hours chasing is probably a typo.
- The issue that looks like a typo probably isn't.

## Commandments

- It is always your fault until proven otherwise.
- If it isn't monitored, it isn't running.
- If it isn't tested, it doesn't work.
- If it isn't documented, it doesn't exist.
- If it can't fail, you haven't found the failure mode yet.
- If it works perfectly, you're missing something.
- The customer will always find the one workflow you never
  tested.[^hyrum]
- Future You is a different person and deserves kindness.[^woods]
- The root cause is usually human, even when the symptom is technical.
- Production gets a vote.

[^how]: Researched October 2026. "Attributed" below means the saying is
universally associated with the name but no primary source survives —
the usual condition of engineering law.

[^murphy]: [Murphy's Law](https://en.wikipedia.org/wiki/Murphy%27s_law).
Capt. Edward A. Murphy Jr., 1949, after a miswired strain gauge during
the MX981 rocket-sled tests at what is now Edwards Air Force Base.

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

[^brooks]: [Brooks's
Law](https://en.wikipedia.org/wiki/Brooks%27s_law).
Fred Brooks, *The Mythical Man-Month* (1975): "Adding manpower to a late
software project makes it later."

[^hyrum]: Cf. [Hyrum's Law](https://www.laws-of-software.com/laws/hyrum/),
Hyrum Wright: "With a sufficient number of users of an API, it does not
matter what you promise in the contract: all observable behaviors of
your system will be depended on by somebody."

[^woods]: In that spirit: "Always code as if the guy who ends up
maintaining your code will be a violent psychopath who knows where you
live." — John Woods, comp.lang.c++, September 1991. Routinely
misattributed to Martin Golding.

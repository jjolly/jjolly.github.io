---
title: Linus Torvalds on Coding with AI
subtitle: An LKML email, archived verbatim because links rot
author: John Jolly
author-url: "https://selfserving.systems"
date: 2026-11-04
lang: en
toc-title: Contents
---

The kernel mailing list occasionally produces an email that deserves to
survive its thread. This is one. It is preserved here verbatim — byte
for byte, signature spacing included — because external references rot,
and this proprietor does not trust them.

## Headers of Record

| | |
|---|---|
| **From** | Linus Torvalds `torvalds@linux-foundation.org` |
| **Date** | Tue, 13 Oct 2026 13:45:09 -0700 |
| **Subject** | Re: [PATCH] docs: remove Assisted-by references |
| **To** | Laurent Pinchart `laurent.pinchart@ideasonboard.com` |
| **Cc** | 28 recipients — Kees Cook, Jori Koolstra, and the kernel documentation crowd; full list in the raw message |
| **Message-ID** | `CAHk-=whTs09_ozN+e09GU68N1wPP56MUzDjrg9rnKxQUa0A_4Q@mail.gmail.com` |
| **Thread** | A patch to remove Assisted-by references from the kernel documentation |
| **Source** | [lore.kernel.org](https://lore.kernel.org/lkml/CAHk-=whTs09_ozN+e09GU68N1wPP56MUzDjrg9rnKxQUa0A_4Q@mail.gmail.com/) |

## The Message

```text
On Tue, 13 Oct 2026 at 13:16, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> What this is about is setting our expectations, telling what we want and
> what we don't want.

No. What you are about is something entirely different. It has nothing
to do with "expectations", and it has everything to do with your
hangups.

I don't understand this whole idiotic concept of "don't use AI for X".

Here's a new rule just for you: don't use compilers for any of your
kernel submissions.

Because if you can't show that you really understand what the machine
is actually doing by writing your code in assembler, then I don't want
to see your code contribution. You clearly aren't competent if you
can't write it that way.

And btw, you had better not use an editor to write that commit message either.

Because I need you to show me that you can actually write a good
commit message without using tools that make it easy to backspace and
hide the mistakes you made while typing.

Ok?

Because otherwise those tool-assisted commits of yours clearly aren't
showing that you know what you are doing.

Do you not see how UTTERLY STUPID those kinds of rules would be?

So no. We're not going to make stupid rules that say "you can't use
tools for X".

The kind of expectations *I* have is that people do their best and I
expect people to understand what they are doing.

But that understanding has very little to do with what tools they use.

And quite honestly, in my experience, the people I respect and call
intelligent are not the ones that shy away from using new and
interesting tools.

                   Linus

```

## Archivist's Note

Retrieved 4 Nov 2026 from [lore.kernel.org](https://lore.kernel.org/lkml/CAHk-=whTs09_ozN+e09GU68N1wPP56MUzDjrg9rnKxQUa0A_4Q@mail.gmail.com/).
The raw RFC 822 message — full headers, DKIM and ARC signatures and all —
is committed alongside the site sources at `docs/torvalds-ai-email.eml`,
so this archive does not depend on the rendered page alone.

Retrieval required solving the archive's own proof-of-work challenge: a
bot wall, erected against scrapers, standing guard over an email about
not making rules against tools. The irony is noted and, with respect,
appreciated.

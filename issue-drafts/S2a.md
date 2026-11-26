**Epic:** E2 · **Story:** S2a · **Status:** Draft

As a legal reviewer,
I want the assistant to use only disclaimer text from a legal-approved library, word for word,
so that customers never receive wording legal hasn't approved.

## Acceptance criteria

- Disclaimers can only be inserted from the legal-approved library.
- In testing, the model cannot edit or generate disclaimer text.
- Each library entry records who approved it and the approval date.

## Dependencies, assumptions, decisions

- Launch gate: legal sign-off on the library (see `ready-done-agreements.md`).
- [ASSUMPTION] Legal can deliver approved wording within about 2 weeks.

_Source: story-backlog.md and acceptance-criteria.md. [ASSUMPTION] = not validated. [DECISION NEEDED] = a human must set it._

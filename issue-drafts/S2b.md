**Epic:** E2 · **Story:** S2b · **Status:** Draft

As a support team lead,
I want answers on defined sensitive topics or with weak source matches to be held for review,
so that risky answers don't reach customers unchecked.

## Acceptance criteria

- Answers that match the sensitive-topic list **[DECISION NEEDED]** or fall below the retrieval-confidence threshold **[DECISION NEEDED]** are marked as held.
- A held answer cannot be copied or sent until a reviewer decides.

## Dependencies, assumptions, decisions

- Depends on: S1a (retrieval and citations), sensitive-topic list.
- [ASSUMPTION] A usable retrieval-confidence signal exists technically.
- [ASSUMPTION] Someone owns the sensitive-topic list and thresholds.
- [DECISION NEEDED] Sensitive-topic list and retrieval-confidence threshold.

_Source: story-backlog.md and acceptance-criteria.md. [ASSUMPTION] = not validated. [DECISION NEEDED] = a human must set it._

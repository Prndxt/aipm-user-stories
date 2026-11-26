**Epic:** E1 · **Story:** S1a · **Status:** Draft

As a support agent,
I want each suggested answer to cite the policy document, version, and section it came from,
so that I can check it before replying to a customer.

## Acceptance criteria

- Every displayed answer has at least one citation: document title, version/effective date, and section.
- Clicking the citation opens the cited passage.
- If the answer has no supporting passage, no answer is shown.

## Dependencies, assumptions, decisions

- Depends on: approved documents loaded and split into citable sections.
- [ASSUMPTION] Documents carry versions or effective dates that can be read reliably.
- [ASSUMPTION] Documents can be split into citable sections within about 2 weeks.
- [ASSUMPTION] Agents will actually open and check citations.
- [DECISION NEEDED] Citation shows version, effective date, or both.

_Source: story-backlog.md and acceptance-criteria.md. [ASSUMPTION] = not validated. [DECISION NEEDED] = a human must set it._

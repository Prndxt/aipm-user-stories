**Epic:** E1 · **Story:** S1b · **Status:** Draft

As a support agent,
I want the assistant to answer only from approved policy documents and to tell me when no approved source exists,
so that I don't pass on unapproved or made-up information.

## Acceptance criteria

- Only documents on the approved list can be searched.
- In a test of 20 questions whose answers exist only in non-approved material, 0 are answered from that material.
- When nothing is found, the agent sees a standard "no approved source found" message instead of an answer.
- A document removed from the approved list can no longer be cited within **[DECISION NEEDED]** time.

## Dependencies, assumptions, decisions

- Depends on: an approved document list with a named owner.
- [ASSUMPTION] An approved list exists or can be created, with one named owner.
- [ASSUMPTION] Someone is available to write the 20-question test set.
- [DECISION NEEDED] How soon a removed document must stop being citable.

_Source: story-backlog.md and acceptance-criteria.md. [ASSUMPTION] = not validated. [DECISION NEEDED] = a human must set it._

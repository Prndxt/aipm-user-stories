# Acceptance Criteria: Policy Assistant Pilot

Accepted by the group during Phase 2 (see `ai-collaboration-log.md`, row 6).
Values marked **[DECISION NEEDED]** must be set before a story is Ready.

Launch gates (legal sign-off, thresholds, stop conditions) are in
`ready-done-agreements.md`, not here.

## S1a

- Every displayed answer has at least one citation: document title, version/effective date, and section.
- Clicking the citation opens the cited passage.
- If the answer has no supporting passage, no answer is shown.

## S1b

- Only documents on the approved list can be searched.
- In a test of 20 questions whose answers exist only in non-approved material, 0 are answered from that material.
- When nothing is found, the agent sees a standard "no approved source found" message instead of an answer.
- A document removed from the approved list can no longer be cited within **[DECISION NEEDED]** time.

## S2a

- Disclaimers can only be inserted from the legal-approved library.
- In testing, the model cannot edit or generate disclaimer text.
- Each library entry records who approved it and the approval date.

## S2b

- Answers that match the sensitive-topic list **[DECISION NEEDED]** or fall below the retrieval-confidence threshold **[DECISION NEEDED]** are marked as held.
- A held answer cannot be copied or sent until a reviewer decides.

## S2c

- The reviewer sees the question, the draft answer, the citations, and the reason it was flagged.
- Approve or reject is recorded with reviewer, time, and decision.
- The share of answers flagged is reported weekly (to catch over-flagging).

## S3a

- The in-scope ticket types, the definition of handling time, and the quality scoring rubric are written down and approved before baseline collection starts.
- The baseline covers at least **[DECISION NEEDED]** tickets per ticket type. If that is not reachable, the report says so.

## S3b

- The weekly report shows assisted vs. baseline handling time and audited accuracy rate per ticket type, with sample sizes visible.
- Results are labelled "directional" when the sample is below the agreed minimum.
- Success thresholds are recorded before launch and not changed after results come in. Any change is logged with a reason.

## S3c

- Stop conditions are written down and approved before launch (for example, any answer giving materially wrong policy information to a customer).
- When a stop condition is triggered, assisted answers pause within **[DECISION NEEDED]** time.
- The sponsor and legal are notified, and the event is logged.

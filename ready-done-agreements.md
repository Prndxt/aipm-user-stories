# Ready and Done Agreements: Policy Assistant Pilot

Draft. Accepted in principle in `ai-collaboration-log.md` (row 7); the group
should confirm the wording.

## Definition of Ready (per story)

A story can move to **Ready** when:

- role, goal, and benefit are clear, with one role per story;
- acceptance criteria are written and testable;
- every **[DECISION NEEDED]** value in its criteria is set by a named person;
- dependencies are known and not blocked;
- assumptions it relies on have a named owner to validate them;
- source material (policy documents, disclaimer text) is available if needed.

## Definition of Done (per story)

A story is **Done** when:

- all acceptance criteria are met and checked by someone other than the builder;
- tests or checks pass;
- user-facing text is reviewed (and legal-reviewed where it touches disclaimers);
- logging is in place where the criteria require it;
- known limitations are written down.

### AI-specific Done checks

- Only approved data sources are used.
- The "no approved source found" fallback is tested.
- Outputs are checked against an agreed set of example questions.
- The human-review path (hold → review → decision) works end to end.
- Prompt or model changes are documented.
- Evaluation results are labelled as pilot, mock, or validated.

## Launch gates (before any agent uses the pilot with live customers)

Moved here from acceptance criteria (row 7 of the collaboration log).

- [ ] Legal has signed off on the disclaimer library (S2a).
- [ ] Sensitive-topic list and retrieval-confidence threshold are set (S2b).
- [ ] Success thresholds (time saving, acceptable error rate) are recorded (S3b).
- [ ] Stop conditions are written down and approved (S3c).
- [ ] Baseline is collected, or the shortfall is documented (S3a).
- [ ] Approved document list has a named owner (S1b).

# Story Backlog: Policy Assistant Pilot

Source: the three draft stories in `05-session-handout.md`, split during the
Phase 2 review. The group accepted all splits (see `ai-collaboration-log.md`).

Status of every story: **Draft**. None is Ready until its open items are
resolved (see `ready-done-agreements.md`). No GitHub issues have been created.

Legend: **[ASSUMPTION]** = not validated, needs a named owner to confirm.
**[DECISION NEEDED]** = a value or choice a human must set.

---

## Epic E1: Source traceability

### S1a: Cite the source of every answer
**From:** Story 1

As a support agent,
I want each suggested answer to cite the policy document, version, and section it came from,
so that I can check it before replying to a customer.

- Acceptance criteria: see `acceptance-criteria.md#s1a`
- Depends on: approved documents loaded and split into citable sections.
- [ASSUMPTION] Documents carry versions or effective dates that can be read reliably.
- [ASSUMPTION] Documents can be split into citable sections within about 2 weeks.
- [ASSUMPTION] Agents will actually open and check citations.
- [DECISION NEEDED] Citation shows version, effective date, or both.

### S1b: Answer only from approved sources
**From:** Story 1

As a support agent,
I want the assistant to answer only from approved policy documents and to tell me when no approved source exists,
so that I don't pass on unapproved or made-up information.

- Acceptance criteria: see `acceptance-criteria.md#s1b`
- Depends on: an approved document list with a named owner.
- [ASSUMPTION] An approved list exists or can be created, with one named owner.
- [ASSUMPTION] Someone is available to write the 20-question test set.
- [DECISION NEEDED] How soon a removed document must stop being citable.

---

## Epic E2: Legal and human review

### S2a: Legal-approved disclaimer library
**From:** Story 2

As a legal reviewer,
I want the assistant to use only disclaimer text from a legal-approved library, word for word,
so that customers never receive wording legal hasn't approved.

- Acceptance criteria: see `acceptance-criteria.md#s2a`
- Launch gate: legal sign-off on the library (see `ready-done-agreements.md`).
- [ASSUMPTION] Legal can deliver approved wording within about 2 weeks.

### S2b: Hold risky answers for review
**From:** Story 2

As a support team lead,
I want answers on defined sensitive topics or with weak source matches to be held for review,
so that risky answers don't reach customers unchecked.

- Acceptance criteria: see `acceptance-criteria.md#s2b`
- Depends on: S1a (retrieval and citations), sensitive-topic list.
- [ASSUMPTION] A usable retrieval-confidence signal exists technically.
- [ASSUMPTION] Someone owns the sensitive-topic list and thresholds.
- [DECISION NEEDED] Sensitive-topic list and retrieval-confidence threshold.

### S2c: Review queue with decision log
**From:** Story 2

As a reviewer,
I want to approve or reject held answers in one place, with every decision logged,
so that flagged answers are handled fast and decisions can be audited.

- Acceptance criteria: see `acceptance-criteria.md#s2c`
- Depends on: S2b.
- [ASSUMPTION] There are enough reviewers to clear flagged answers without wiping out the time savings.
- [DECISION NEEDED] Who the reviewer is (team lead, legal, senior agent).
- [DECISION NEEDED] Acceptable review wait time for agents and customers.

---

## Epic E3: Pilot evidence

### S3a: Pre-launch baseline
**From:** Story 3

As a pilot sponsor,
I want average handling time and audited answer accuracy for the agreed ticket types recorded before launch,
so that the pilot has a fair baseline to compare against.

- Acceptance criteria: see `acceptance-criteria.md#s3a`
- Must start in week 0–1, alongside E1.
- [ASSUMPTION] Handling time can be extracted per ticket from the current ticket system.
- [ASSUMPTION] Baseline collection fits inside the four-week window without delaying launch.
- [DECISION NEEDED] Baseline vs. control group.
- [DECISION NEEDED] Minimum sample size per ticket type.

### S3b: Weekly assisted vs. baseline report
**From:** Story 3

As a pilot sponsor,
I want a weekly report comparing assisted tickets against the baseline on handling time and audited accuracy,
so that I can decide with evidence to expand, change, or stop the pilot.

- Acceptance criteria: see `acceptance-criteria.md#s3b`
- Depends on: S3a. Can reuse the S2c decision log as audit input.
- [ASSUMPTION] Enough tickets in the in-scope types arrive in four weeks.
- [ASSUMPTION] There is auditor capacity for weekly sampling on top of S2c reviewers.
- [ASSUMPTION] Agents may change behaviour because they know they're measured.
- [DECISION NEEDED] Who the pilot sponsor is (one person with authority to expand, change, or stop).
- [DECISION NEEDED] Success thresholds (time saving, acceptable error rate), set before launch.

### S3c: Stop conditions that pause the pilot
**From:** Story 3

As a support team lead *(or legal; to confirm)*,
I want pre-agreed stop conditions that pause assisted answers when they are triggered,
so that a serious policy error can't keep reaching customers while we investigate.

- Acceptance criteria: see `acceptance-criteria.md#s3c`
- Launch gate: stop conditions approved before launch (see `ready-done-agreements.md`).
- [DECISION NEEDED] Role that owns this story: team lead or legal.
- [DECISION NEEDED] How fast assisted answers must pause after a trigger.

---

## Suggested order (proposal, not agreed)

Based only on the dependencies above:

1. Week 0–1: S1b, S1a, S3a, S2a (legal starts in parallel)
2. Week 2: S2b, S2c, S3c
3. Week 3–4: S3b (weekly from launch)

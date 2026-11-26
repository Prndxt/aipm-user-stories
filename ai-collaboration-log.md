# AI Collaboration Log

Project: Policy Assistant Pilot — User Stories Workshop
Agent: Claude Code (Opus 5.5)

## Decisions

| # | Prompt or request | Accepted | Edited | Rejected | Reason |
|---|---|---|---|---|---|
| 1 | Phase 2 critique prompt: apply INVEST, find unclear roles/goals/benefits, suggest smaller versions, propose ACs, list assumptions. No GitHub issues, no invented research. | ✅ | | | Agent followed the constraints: no issues created, no user research or business evidence invented. Open numbers were marked "needs a human decision". |
| 2 | Split Story 1 into **1a** (cite document, version, section) and **1b** (approved sources only + "no approved source" message) | ✅ | | | The original bundled citation display and source restriction. Splitting makes each one smaller and testable on its own. |
| 3 | Split Story 2 into **2a** (legal-approved disclaimer library), **2b** (flag and hold risky answers), **2c** (reviewer approve/reject with log) | ✅ | | | The original mixed two roles (legal reviewer, team lead) and left out the reviewer role. Each split now has one role and one goal. |
| 4 | Agent noted the handout had only two stories and suggested a third: a pilot sponsor comparing time-to-answer and error/escalation rates against a baseline | | ✅ | | The group wrote Story 3 ("Evidence of time savings without added risk") into the handout. It keeps the suggested role (pilot sponsor) and goal (evidence of time saved without added risk), and adds a pre-launch baseline, a weekly sampled audit, stop conditions, and pre-agreed thresholds. |
| 4b | Phase 2 critique of the group's Story 3: INVEST, unclear role ("pilot sponsor" undefined), goal mismatch ("risk" in title vs. "quality" in story), overlap with 2c, baseline vs. control group choice | ✅ | | | Same critique format as Stories 1 and 2. Led to the 3a/3b/3c split below. |
| 5 | Split Story 3 into **3a** (pre-launch baseline), **3b** (weekly assisted vs. baseline report), **3c** (stop conditions that pause assisted answers) | ✅ | | | The original bundled baseline, comparison, audit, and stop conditions. Stop conditions protect customers rather than serve the sponsor's decision, so they became their own story. |
| 6 | Proposed acceptance criteria for 1a–3c | ✅ | | | Accepted as written. Each criterion is testable and tied to one split story. The values the agent left for a human to decide stay open (see "Open items carried forward"). |
| 7 | Move launch gates (legal sign-off on disclaimers; thresholds and stop conditions agreed before launch) from ACs to `ready-done-agreements.md` | ✅ | | | These are preconditions for going live, not product behaviour, so they belong in the Definition of Ready / launch gates. `ready-done-agreements.md` has not been created yet. |
| 8 | Lists of assumptions needing human validation, per story | ✅ | | | Accepted as the assumptions to validate. No owner or validation date is assigned yet (see "Open items carried forward"). |
| 9 | Phase 4: create the workshop backlog files (story-backlog, acceptance-criteria, epic-map, ready-done-agreements, this log). At least 8 stories, grouped into epics, ACs per story, assumptions marked. No GitHub issues until approved. | ✅ | | | Approved by the group. Agent created the files from the 8 accepted stories only (no new stories), marked [ASSUMPTION] and [DECISION NEEDED] items, and proposed a story order that is labelled "not agreed". No GitHub issues created. |
| 10 | Phase 5 step 1: prepare issue drafts and `gh issue create` commands for the 8 approved stories | ✅ | | | Approved on 2026-11-26 with labels (user-story, epic:E1–E3, status:draft, needs-decision, launch-gate) and dependency order. Backlog files committed and pushed first so in-issue file references resolve. Commands in `issue-drafts/create-issues.sh`. |
| 11 | Phase 5 step 2: run `issue-drafts/create-issues.sh` | ✅ | | | Created 7 labels and issues #1–#8 in `Prndxt/aipm-user-stories` (S1b #1, S1a #2, S2a #3, S2b #4, S2c #5, S3a #6, S3b #7, S3c #8). Verified with `gh issue list`: 8 open, titles and labels match the backlog. |
| 12 | Phase 5 step 4: add issues #1–#8 to GitHub Project #10 "User Stories Workshop" (owner Prndxt) | ✅ | | | Project was empty before (no duplicates). Ran `gh project item-add` for each issue; `gh project item-list` shows 8 items. Custom fields (Status, Work Type, story Quality, Risk area) left blank pending a human decision. |

## Resulting backlog (8 stories)

| Epic (proposed) | Stories |
|---|---|
| Source traceability | 1a, 1b |
| Legal and human review | 2a, 2b, 2c |
| Pilot evidence | 3a, 3b, 3c |

## Open items carried forward

- Named owner of the approved policy document list.
- Owner of the sensitive-topic list and the retrieval-confidence threshold.
- Who the "pilot sponsor" is and who acts as reviewer/auditor.
- Baseline vs. control group decision.
- Success thresholds (time saving, acceptable error rate), agreed before launch.
- Values left open in the accepted acceptance criteria:
  - 1b: how soon a document removed from the approved list stops being citable.
  - 2b: the sensitive-topic list and the retrieval-confidence threshold.
  - 3a: minimum baseline sample size per ticket type.
  - 3c: how fast assisted answers are paused after a stop condition is triggered.
- Owner and validation date for each accepted assumption.

## Corrected or rejected agent output

_Required by "Done Means": add at least one example where the group corrected or rejected the agent._

| Agent output | What we changed or rejected | Why |
|---|---|---|
| | | |

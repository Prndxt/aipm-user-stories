#!/usr/bin/env bash
# Prepared by the agent. Approved by the group on 2026-11-26 (see ai-collaboration-log.md, row 10).
# Requires: gh installed and authenticated (gh auth status).
set -euo pipefail
cd "$(dirname "$0")/.."

# Labels (--force updates an existing label instead of failing)
gh label create user-story     --color 0E8A16 --description "User story from story-backlog.md" --force
gh label create epic:E1        --color 1D76DB --description "Source traceability" --force
gh label create epic:E2        --color 5319E7 --description "Legal and human review" --force
gh label create epic:E3        --color FBCA04 --description "Pilot evidence" --force
gh label create status:draft   --color C5DEF5 --description "Not yet Ready (see ready-done-agreements.md)" --force
gh label create needs-decision --color D93F0B --description "Has [DECISION NEEDED] items" --force
gh label create launch-gate    --color B60205 --description "Must be signed off before go-live" --force

# Issues, in dependency order (S1b -> S1a -> S2b -> S2c)
gh issue create --title "[E1] S1b: Answer only from approved sources"     --body-file issue-drafts/S1b.md --label user-story,epic:E1,status:draft,needs-decision
gh issue create --title "[E1] S1a: Cite the source of every answer"       --body-file issue-drafts/S1a.md --label user-story,epic:E1,status:draft,needs-decision
gh issue create --title "[E2] S2a: Legal-approved disclaimer library"     --body-file issue-drafts/S2a.md --label user-story,epic:E2,status:draft,launch-gate
gh issue create --title "[E2] S2b: Hold risky answers for review"         --body-file issue-drafts/S2b.md --label user-story,epic:E2,status:draft,needs-decision
gh issue create --title "[E2] S2c: Review queue with decision log"        --body-file issue-drafts/S2c.md --label user-story,epic:E2,status:draft,needs-decision
gh issue create --title "[E3] S3a: Pre-launch baseline"                   --body-file issue-drafts/S3a.md --label user-story,epic:E3,status:draft,needs-decision
gh issue create --title "[E3] S3b: Weekly assisted vs. baseline report"   --body-file issue-drafts/S3b.md --label user-story,epic:E3,status:draft,needs-decision
gh issue create --title "[E3] S3c: Stop conditions that pause the pilot"  --body-file issue-drafts/S3c.md --label user-story,epic:E3,status:draft,needs-decision,launch-gate

gh issue list --limit 20

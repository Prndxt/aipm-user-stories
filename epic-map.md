# Epic Map: Policy Assistant Pilot

Goal: a useful pilot of an internal AI assistant for support agents within
four weeks, answering only from approved policy documents.

| Epic | Pilot constraint it covers | Stories |
|---|---|---|
| **E1 Source traceability** | Approved policy documents only; source traceability before customer answers | S1a Cite the source of every answer · S1b Answer only from approved sources |
| **E2 Legal and human review** | Legal review for disclaimer wording; human review for flagged answers | S2a Legal-approved disclaimer library · S2b Hold risky answers for review · S2c Review queue with decision log |
| **E3 Pilot evidence** | Evidence that the pilot saves time without increasing answer risk | S3a Pre-launch baseline · S3b Weekly assisted vs. baseline report · S3c Stop conditions that pause the pilot |

## Dependencies

```text
S1b ──> S1a ──> S2b ──> S2c
                           └──> S3b (reuses decision log)
S3a ───────────────────────────> S3b
S2a (legal sign-off) ──> launch gate
S3c (stop conditions) ─> launch gate
```

## Scope boundaries (from the scenario constraints)

In scope:
- Answers drawn from approved policy documents, with citations.
- Human review of flagged answers before they reach customers.
- Measuring time saved and answer accuracy against a baseline.

Out of scope for the pilot:
- Searching non-approved document sources.
- Sending answers to customers without the agent (or reviewer, for held answers) deciding.
- Generating or editing disclaimer wording.

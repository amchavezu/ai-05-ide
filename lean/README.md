# Artificial Intelligence in the Knowledge Economy — Lean audit

This folder is the `IT25KnowledgeEconomy` paper package generated for
`AppliedModelingLib` and then completed as a deliberately partial formalization.

| Field | Value |
|---|---|
| Paper | Enrique Ide and Eduard Talamás, *Artificial Intelligence in the Knowledge Economy* |
| Source | arXiv `2312.05481v12`, accepted manuscript dated 2025-05-17 |
| Status | **Partially formalized** |
| Lean source lines | 190 across the four `.lean` files |
| Paper-local axioms | None |

## What is checked

Five proof endpoints close without `sorry`:

1. positivity of the span of control on the economic domain;
2. the bottom-worker capability threshold under autonomous AI;
3. the direct-assistance wage advantage of nonautonomous AI;
4. the output gain from deploying otherwise idle autonomous compute; and
5. the match/share wage decomposition.

`PaperInterface.lean` is the compact semantic surface;
`ProofInterface.lean` exposes the exact-type endpoints; and
`MainTheorems.lean` contains the definitions and implementations.

## Formalization boundary

This is a discrete algebraic audit. It does not formalize the continuum
assignment equilibrium, prove equilibrium existence, or certify Propositions 5
and 6 in full. The source-to-Lean v11 semantic closeout is intentionally not
claimed; `status.json` therefore records `partially formalized`.

From the `AppliedModelingLib` root, the required paper-scoped check is:

```bash
python3 scripts/paper_contribution.py check IT25KnowledgeEconomy --fast
```

The course repository retains the successful command output in
`docs/CHECK_FAST_OUTPUT.txt`.

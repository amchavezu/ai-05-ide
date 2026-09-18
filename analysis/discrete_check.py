"""Reproduce the discrete numerical checks used in the repository.

The script uses only the Python standard library. It is an illustration of the
paper's uniform-distribution example, not a solver for the continuum economy.
"""

from math import sqrt


def pre_ai_bottom_wage_uniform_h_half() -> float:
    """Return w(0) from the formula plotted in the paper's pre-AI figure."""
    worker_cutoff = 3.0 - sqrt(5.0)
    numerator = 0.5 * worker_cutoff * (1.0 + 0.25 * worker_cutoff)
    denominator = 1.5 - 0.5 * worker_cutoff
    return worker_cutoff - numerator / denominator


def autonomous_bottom_wage(capability: float, helping_cost: float) -> float:
    return capability * (1.0 - helping_cost)


def nonautonomous_assisted_wage(capability: float) -> float:
    return capability


def main() -> None:
    helping_cost = 0.5
    pre_wage = pre_ai_bottom_wage_uniform_h_half()
    threshold = pre_wage / (1.0 - helping_cost)

    print(f"pre-AI bottom wage: {pre_wage:.10f}")
    print(f"discrete capability threshold: {threshold:.10f}")
    print("capability,autonomous_bottom_wage,nonautonomous_wage,bottom_gains")

    for capability in (0.425, 0.85):
        autonomous = autonomous_bottom_wage(capability, helping_cost)
        nonautonomous = nonautonomous_assisted_wage(capability)
        gains = autonomous > pre_wage
        print(
            f"{capability:.3f},{autonomous:.4f},"
            f"{nonautonomous:.4f},{str(gains).lower()}"
        )

    assert autonomous_bottom_wage(0.425, helping_cost) < pre_wage
    assert autonomous_bottom_wage(0.85, helping_cost) > pre_wage
    assert nonautonomous_assisted_wage(0.85) > autonomous_bottom_wage(
        0.85, helping_cost
    )


if __name__ == "__main__":
    main()


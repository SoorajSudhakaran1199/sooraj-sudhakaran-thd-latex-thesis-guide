"""Fictional teaching example; unrelated to any real thesis or product."""


def arithmetic_mean(values):
    """Return the arithmetic mean of a non-empty sequence."""
    if not values:
        raise ValueError("At least one value is required")
    return sum(values) / len(values)


fictional_durations = [59, 60, 61]
print(arithmetic_mean(fictional_durations))

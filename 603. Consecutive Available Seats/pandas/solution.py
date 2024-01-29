import pandas as pd
from schema import cinema as cin


def consecutive_available_seats(cinema: pd.DataFrame) -> pd.DataFrame:
    df = cinema.query("free == 1")["seat_id"].sort_values()
    return df.loc[(df.diff(1) == 1) | (df.diff(-1) == -1)].to_frame()


def consecutive_available_seats_islands_and_gaps(cinema: pd.DataFrame) -> pd.DataFrame:
    free = cinema.loc[cinema["free"] == 1]
    free = free.sort_values(by="seat_id", ignore_index=True)

    free["island_count"] = free.groupby(free["seat_id"] - free.index)[
        "seat_id"
    ].transform("count")

    return free.loc[free["island_count"] > 1][["seat_id"]]


print(consecutive_available_seats_islands_and_gaps(cin))

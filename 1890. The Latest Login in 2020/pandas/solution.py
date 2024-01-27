import pandas as pd

from schema import logins as log


def latest_login(logins: pd.DataFrame) -> pd.DataFrame:
    logins["time_stamp"] = pd.to_datetime(logins["time_stamp"])
    return (
        logins[logins["time_stamp"].dt.year == 2020]
        .sort_values(by="time_stamp", ascending=False)
        .drop_duplicates(subset="user_id", keep="first")
        .rename(columns={"time_stamp": "last_stamp"})
    )


print(latest_login(log))

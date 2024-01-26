import pandas as pd

from schema import person as pers
from schema import address as addr


def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    df = person.merge(address, on="personId", how="left")
    return df[["firstName", "lastName", "city", "state"]]


print(combine_two_tables(pers, addr))

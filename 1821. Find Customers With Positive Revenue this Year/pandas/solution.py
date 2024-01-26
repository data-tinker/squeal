import pandas as pd

from schema import customers as cust


def find_customers(customers: pd.DataFrame) -> pd.DataFrame:
    df = customers[(customers["year"] == 2021) & (customers["revenue"] > 0)]
    df = df[["customer_id"]].drop_duplicates()
    return df


print(find_customers(cust))

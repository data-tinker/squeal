import pandas as pd

from schema import customers as cust
from schema import orders as ords


def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    df = customers[~customers["id"].isin(orders["customerId"])]
    df = df[["name"]].rename(columns={"name": "Customers"})
    return df


def find_customers_merge(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    df = customers.merge(orders, left_on="id", right_on="customerId", how="left")
    df = df[df["customerId"].isna()]
    df = df[["name"]].rename(columns={"name": "Customers"})
    return df


print(find_customers_merge(cust, ords))

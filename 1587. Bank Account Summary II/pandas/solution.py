import pandas as pd

from schema import transactions as trans
from schema import users as usr


def account_summary(users: pd.DataFrame, transactions: pd.DataFrame) -> pd.DataFrame:
    account_balance = (
        transactions.groupby("account")["amount"]
        .sum()
        .reset_index()
        .rename(columns={"amount": "balance"})
    )

    account_balance = account_balance.merge(users, on="account")[["name", "balance"]]
    return account_balance[account_balance["balance"] > 10000]


print(account_summary(usr, trans))

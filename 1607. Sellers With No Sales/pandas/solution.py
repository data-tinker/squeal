import pandas as pd
from schema import customer as cust
from schema import orders as ords
from schema import seller as sell


def sellers_with_no_sales(
    customer: pd.DataFrame, orders: pd.DataFrame, seller: pd.DataFrame
) -> pd.DataFrame:
    sellers2020 = set(orders.loc[orders.sale_date.dt.year == 2020]["seller_id"])
    return seller.loc[~seller.seller_id.isin(sellers2020)][["seller_name"]].sort_values(
        "seller_name"
    )


print(sellers_with_no_sales(cust, ords, sell))

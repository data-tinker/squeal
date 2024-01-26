import pandas as pd

data = [
    ["1", "2018", "50"],
    ["1", "2021", "30"],
    ["1", "2020", "70"],
    ["2", "2021", "-50"],
    ["3", "2018", "10"],
    ["3", "2016", "50"],
    ["4", "2021", "20"],
]
customers = pd.DataFrame(data, columns=["customer_id", "year", "revenue"]).astype(
    {"customer_id": "Int64", "year": "Int64", "revenue": "Int64"}
)

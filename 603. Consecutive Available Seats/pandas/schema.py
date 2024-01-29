import pandas as pd

data = [[1, 1], [2, 0], [3, 1], [4, 1], [5, 1]]
cinema = pd.DataFrame(data, columns=["seat_id", "free"]).astype(
    {"seat_id": "Int64", "free": "int"}
)

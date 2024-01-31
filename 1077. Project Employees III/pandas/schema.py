import pandas as pd

data = [[1, 1], [1, 2], [1, 3], [2, 1], [2, 4]]
project = pd.DataFrame(data, columns=["project_id", "employee_id"]).astype(
    {"project_id": "Int64", "employee_id": "Int64"}
)
data = [[1, "Khaled", 3], [2, "Ali", 2], [3, "John", 3], [4, "Doe", 2]]
employee = pd.DataFrame(
    data, columns=["employee_id", "name", "experience_years"]
).astype({"employee_id": "Int64", "name": "object", "experience_years": "Int64"})

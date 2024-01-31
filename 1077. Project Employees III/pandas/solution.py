import pandas as pd
from schema import employee as emp
from schema import project as proj


def project_employees(project: pd.DataFrame, employee: pd.DataFrame) -> pd.DataFrame:
    project_and_employee = project.merge(employee, on="employee_id")
    only_max = project_and_employee.groupby(["project_id"], as_index=False)[
        "experience_years"
    ].max()

    df = project_and_employee.merge(only_max, on=["project_id", "experience_years"])[
        ["project_id", "employee_id"]
    ]

    return df


print(project_employees(proj, emp))

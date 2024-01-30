import pandas as pd
from schema import departments as dep
from schema import students as stud


def find_students(departments: pd.DataFrame, students: pd.DataFrame) -> pd.DataFrame:
    df = students.merge(departments, left_on="department_id", right_on="id", how="left")
    return (
        df[df["id_y"].isnull()][["id_x", "name_x"]]
        .rename(columns={"id_x": "id", "name_x": "name"})
        .reset_index(drop=True)
    )


print(find_students(dep, stud))

"""
This is a boilerplate pipeline 'multiply_pipeline'
generated using Kedro 0.19.3
"""
import numpy as np
import pandas as pd


def multiplier(df: pd.DataFrame, multiplier: np.number) -> pd.DataFrame:
    df[df.select_dtypes(np.number).columns] = df.select_dtypes(np.number) * multiplier
    return df
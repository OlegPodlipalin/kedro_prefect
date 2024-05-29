"""
This is a boilerplate pipeline 'multiply_pipeline'
generated using Kedro 0.19.3
"""
import logging
import numpy as np
import pandas as pd

logger = logging.getLogger(__name__)

def multiplier(df: pd.DataFrame, multiplier: np.number) -> pd.DataFrame:
    df[df.select_dtypes(np.number).columns] = df.select_dtypes(np.number) * multiplier
    return df

def checker(df1: pd.DataFrame, df2: pd.DataFrame, multiplier: np.number) -> pd.DataFrame:
    df1[df1.select_dtypes(np.number).columns] = df1.select_dtypes(np.number) * multiplier
    assert df1.equals(df2), "Dataframes are not equal"
    logger.info(df2)
    print(df2)
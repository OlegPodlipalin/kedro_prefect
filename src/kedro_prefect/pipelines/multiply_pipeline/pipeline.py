"""
This is a boilerplate pipeline 'multiply_pipeline'
generated using Kedro 0.19.3
"""

from kedro.pipeline import Pipeline, node, pipeline

from .nodes import multiplier, checker


def create_pipeline(**kwargs) -> Pipeline:
    return pipeline(
        [
            node(
                func=multiplier,
                inputs=["dataframe", "params:multiplier"],
                outputs="multiplied_dataframe",
                name="multiply_by_number",
            ),
            node(
                func=checker,
                inputs=["dataframe", "multiplied_dataframe", "params:multiplier"],
                outputs=None,
                name="check_multiplication",
            ),
        ]
    )

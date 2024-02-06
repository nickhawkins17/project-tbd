"""Main script for this project"""

import argparse
import logging
import os

logging.basicConfig(
    format="%(asctime)s %(levelname)s: %(message)s",
    level=os.environ.get("LOG_LEVEL", "INFO"),
    datefmt="%Y-%m-%d %H:%M:%S",
)

LOGGER = logging.getLogger(__name__)


def run() -> None:
    """
    Example of a high-level management method for a Python project.

    Args:


    Returns:
        None
    """
    LOGGER.info("Running the project")
    LOGGER.info("Done")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run the project.")
    args = parser.parse_args()

    run()

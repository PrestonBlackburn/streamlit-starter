import os

def env_example() -> str:

    open_api_key = os.getenv("OPEN_API_KEY")

    return open_api_key
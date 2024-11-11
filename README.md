# Generic Single Repo Streamlit Starter
A Streamlit repo reference structure to build moderatly complex streamlit apps

## Components
- `app/` - python libraries for streamlit logic
- `app/tests/` - python tests
- `dockerfile` - docker is the prefered way to deploy streamlit as it is easy to test locally
- `docs/` and `mkdocs.yaml` - documentation and documentation serving
- `deployments/` - scripts for deploying to various targets (snowflake, gcp, etc...)
- `data/` - any miscellaneous data needed
- `.env` - env vars to be used with streamlit

## Usage
Install python library
```bash
pip install -r requirements.txt
```

Build docker images
```bash
docker build -t myapp:latest .
```
Run docker images
```bash
docker run --rm -p 8501:8501 --env-file=.env myapp:latest
```

Testing (from `app/`)
```bash
pytest
```

Serve/view docs
```bash
mkdocs serve
```

### Other
I prefer not to use a `.streamlit` and streamlit `config.toml` file in favor of env variables. Env variables can be provided at runtime, so they are not baked in as part of the docker image.




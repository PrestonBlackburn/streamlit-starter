from streamlit_lib.backend.example import env_example
import streamlit as st

def display_env_var() -> None:

    open_api_key = env_example()
    st.text(open_api_key)

    return None
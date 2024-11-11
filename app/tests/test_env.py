from streamlit_lib.backend.example import env_example


def test_env_example():
    assert int(env_example()) == 1234
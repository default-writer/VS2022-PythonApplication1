from datetime import datetime


def get_datetime():
    return datetime.now()


if __name__ == "__main__":
    print(f"Hello, World! {get_datetime()}")

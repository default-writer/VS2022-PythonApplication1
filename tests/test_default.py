# pylint:disable=unnecessary-pass
""" Tests """
from datetime import datetime
import unittest
import pytest

from main import get_datetime

@pytest.mark.freeze_time("2021-01-01 00:00:00")
def test_get_datetime():
    """ Method test """
    expected = datetime.strptime("2021-01-01 00:00:00", '%Y-%m-%d %H:%M:%S')
    actual = get_datetime()
    assert actual == expected

class TestDefault(unittest.TestCase):
    """ Default methods tests """
    def test_get_datetime(self):
        """ Method test """
        pass

if __name__ == '__main__':
    unittest.main()

# coding: utf-8

"""
    OpenAPI Petstore

    This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import petstore_api
from petstore_api.model.mammal import Mammal


class TestMammal(unittest.TestCase):
    """Mammal unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testMammal(self):
        """Test Mammal"""

        # tests that we can make a BasquePig by traveling through discriminator in Pig
        m = Mammal(className="BasquePig")
        from petstore_api.model import pig
        from petstore_api.model import basque_pig
        assert isinstance(m, Mammal)
        assert isinstance(m, basque_pig.BasquePig)
        assert isinstance(m, pig.Pig)

        # can make a Whale
        m = Mammal(className="whale")
        from petstore_api.model import whale
        assert isinstance(m, whale.Whale)

        # can use the enum value
        m = Mammal(className=whale.Whale.className.WHALE)
        assert isinstance(m, whale.Whale)

        from petstore_api.model import zebra
        m = Mammal(className='zebra')
        assert isinstance(m, zebra.Zebra)


if __name__ == '__main__':
    unittest.main()

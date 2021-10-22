<?php

namespace AndreMoura\Tests\DatabaseTesting\Database;

use PHPUnit_Extensions_Database_DataSet_CompositeDataSet;

class CompositeTest extends MyGuestbookTest
{
    public function getDataSet()
    {
        $ds1 = $this->createFlatXmlDataSet(dirname(__FILE__).'/../files/fixture1.xml');
        $ds2 = $this->createFlatXmlDataSet(dirname(__FILE__).'/../files/fixture2.xml');

        $compositeDs = new PHPUnit_Extensions_Database_DataSet_CompositeDataSet();
        $compositeDs->addDataSet($ds1);
        $compositeDs->addDataSet($ds2);

        return $compositeDs;
    }

    public function testComposite()
    {
        self::assertTrue(true);
    }
}

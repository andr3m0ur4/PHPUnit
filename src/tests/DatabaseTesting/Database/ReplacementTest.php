<?php

namespace AndreMoura\Tests\DatabaseTesting\Database;

use PHPUnit_Extensions_Database_DataSet_ReplacementDataSet;

class ReplacementTest extends MyGuestbookTest
{
    public function getDataSet()
    {
        $dataSet = $this->createFlatXmlDataSet(dirname(__FILE__).'/../files/myFlatXmlFixtureNull.xml');
        $replacementDataSet = new PHPUnit_Extensions_Database_DataSet_ReplacementDataSet($dataSet);
        $replacementDataSet->addFullReplacement('##NULL##', null);
        return $replacementDataSet;
    }

    public function testReplacement()
    {
        self::assertTrue(true);
    }
}

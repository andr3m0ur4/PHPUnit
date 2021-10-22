<?php

namespace AndreMoura\Tests\DatabaseTesting;

use AndreMoura\Tests\DatabaseTesting\Database\MyGuestbookTest;
use PHPUnit_Extensions_Database_DataSet_QueryDataSet;

class DataSetAssertionsTest extends MyGuestbookTest
{
    public function testCreateDataSetAssertion()
    {
        $dataSet = $this->getConnection()->createDataSet(['guestbook']);
        $expectedDataSet = $this->createFlatXmlDataSet(dirname(__FILE__).'/files/guestbook.xml');
        $this->assertDataSetsEqual($expectedDataSet, $dataSet);
    }

    public function testManualDataSetAssertion()
    {
        $dataSet = new PHPUnit_Extensions_Database_DataSet_QueryDataSet($this->getConnection());
        $dataSet->addTable('guestbook', 'SELECT id, content, user FROM guestbook'); // additional tables
        $expectedDataSet = $this->createFlatXmlDataSet(dirname(__FILE__).'/files/guestbook.xml');

        $this->assertDataSetsEqual($expectedDataSet, $dataSet);
    }
}

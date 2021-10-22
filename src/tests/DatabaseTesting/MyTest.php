<?php

namespace AndreMoura\Tests\DatabaseTesting;

use AndreMoura\Tests\DatabaseTesting\Database\MyGuestbookTest;
use PHPUnit\Framework\TestCase;
use PHPUnit_Extensions_Database_DataSet_QueryDataSet;

class MyTest extends MyGuestbookTest
{
    public function setUp()
    {

    }

    public function testCalculate()
    {
        $dataSet = new PHPUnit_Extensions_Database_DataSet_QueryDataSet($this->getConnection());
        $dataSet->addTable('guestbook', "SELECT id, content FROM guestbook ORDER BY created DESC");

        $this->assertEquals(2, 1 + 1);
    }

    public function testGuestbook()
    {
        $dataSet = $this->getConnection()->createDataSet();
    }

    public function testFilteredGuestbook()
    {
        $tableNames = ['guestbook'];
        $dataSet = $this->getConnection()->createDataSet($tableNames);
    }
}

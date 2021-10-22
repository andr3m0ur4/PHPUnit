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
        $this->assertEquals(2, 1 + 1);
    }

    public function testDataSet()
    {
        $dataSet = new PHPUnit_Extensions_Database_DataSet_QueryDataSet($this->getConnection());
        $dataSet->addTable('guestbook');

        self::assertTrue(true);
    }

    public function testDataTable()
    {
        $dataSet = new PHPUnit_Extensions_Database_DataSet_QueryDataSet($this->getConnection());
        $dataSet->addTable('guestbook', 'SELECT * FROM guestbook');

        self::assertTrue(true);
    }

    public function testQuery()
    {
        $dataSet = new PHPUnit_Extensions_Database_DataSet_QueryDataSet($this->getConnection());
        $dataSet->addTable('guestbook', "SELECT id, content FROM guestbook ORDER BY created DESC");

        self::assertTrue(true);
    }

    public function testGuestbook()
    {
        $dataSet = $this->getConnection()->createDataSet();

        self::assertTrue(true);
    }

    public function testFilteredGuestbook()
    {
        $tableNames = ['guestbook'];
        $dataSet = $this->getConnection()->createDataSet($tableNames);

        self::assertTrue(true);
    }
}

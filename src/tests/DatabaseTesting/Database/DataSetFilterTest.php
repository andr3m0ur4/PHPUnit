<?php

namespace AndreMoura\Tests\DatabaseTesting\Database;

use PHPUnit_Extensions_Database_DataSet_DataSetFilter;

class DataSetFilterTest extends MyGuestbookTest
{
    public function setUp()
    {

    }

    public function testIncludeFilteredGuestbook()
    {
        $tableNames = ['guestbook'];
        $dataSet = $this->getConnection()->createDataSet();

        $filterDataSet = new PHPUnit_Extensions_Database_DataSet_DataSetFilter($dataSet);
        $filterDataSet->addIncludeTables($tableNames);
        $filterDataSet->setIncludeColumnsForTable('guestbook', ['id', 'content']);
        self::assertTrue(true);
        // ..
    }

    public function testExcludeFilteredGuestbook()
    {
        $tableNames = ['guestbook'];
        $dataSet = $this->getConnection()->createDataSet();

        $filterDataSet = new PHPUnit_Extensions_Database_DataSet_DataSetFilter($dataSet);
        $filterDataSet->addExcludeTables(['foo', 'bar', 'baz']); // only keep the guestbook table!
        $filterDataSet->setExcludeColumnsForTable('guestbook', ['user', 'created']);
        self::assertTrue(true);
        // ..
    }
}

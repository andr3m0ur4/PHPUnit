<?php

namespace AndreMoura\Tests\DatabaseTesting;

use AndreMoura\Tests\DatabaseTesting\Database\MyGuestbookTest;

class ConnectionTest extends MyGuestbookTest
{
    public function testCreateDataSet()
    {
        $tableNames = ['guestbook'];
        $dataSet = $this->getConnection()->createDataSet();

        self::assertTrue(true);
    }

    public function testCreateQueryTable()
    {
        $tableNames = ['guestbook'];
        $queryTable = $this->getConnection()->createQueryTable('guestbook', 'SELECT * FROM guestbook');

        self::assertTrue(true);
    }

    public function testGetRowCount()
    {
        $this->assertEquals(2, $this->getConnection()->getRowCount('guestbook'));
    }
}

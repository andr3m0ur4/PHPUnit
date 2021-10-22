<?php

namespace AndreMoura\Tests\DatabaseTesting;

use AndreMoura\Tests\DatabaseTesting\Database\MyGuestbookTest;
use AndreMoura\Tests\DatabaseTesting\Model\Guestbook;

class GuestbookTest extends MyGuestbookTest
{
    public function testAddEntry()
    {
        $this->assertEquals(2, $this->getConnection()->getRowCount('guestbook'), "Pre-Condition");

        $guestbook = new Guestbook();
        $guestbook->addEntry("suzy", "Hello world!");

        $this->assertEquals(3, $this->getConnection()->getRowCount('guestbook'), "Inserting failed");
    }

    public function testAddEntryTable()
    {
        $guestbook = new Guestbook();
        $guestbook->addEntry("suzy", "Hello world!");

        $queryTable = $this->getConnection()->createQueryTable(
            'guestbook', 'SELECT id, content, user FROM guestbook'
        );

        $expectedTable = $this->createFlatXmlDataSet(
            dirname(__FILE__) . '/files/expectedBook.xml'
        )->getTable("guestbook");

        $this->assertTablesEqual($expectedTable, $queryTable);
    }
}

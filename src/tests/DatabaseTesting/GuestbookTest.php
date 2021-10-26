<?php

namespace AndreMoura\Tests\DatabaseTesting;

use AndreMoura\Tests\DatabaseTesting\Database\MyGuestbookTest;
use AndreMoura\Tests\DatabaseTesting\Model\Guestbook;

class GuestbookTest extends MyGuestbookTest
{
    public function getDataSet()
    {
        return $this->createFlatXMLDataSet(dirname(__FILE__).'/files/myFlatXmlFixture.xml');
    }

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

    public function testUpdateTable()
    {
        $this->assertEquals(2, $this->getConnection()->getRowCount('guestbook'), "Pre-Condition");

        $guestbook = new Guestbook();
        $guestbook->updateEntry(1, 'joe', 'Hello buddy! I\'m joe');

        $conn = self::getPDO();
        $stmt = $conn->prepare("SELECT * FROM guestbook");
        $stmt->execute();

        var_dump($stmt->fetch(\PDO::FETCH_OBJ));
    }
}

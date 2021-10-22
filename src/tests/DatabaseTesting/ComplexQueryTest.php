<?php

namespace AndreMoura\Tests\DatabaseTesting;

use AndreMoura\Tests\DatabaseTesting\Database\MyGuestbookTest;

class ComplexQueryTest extends MyGuestbookTest
{
    public function testComplexQuery()
    {
        $queryTable = $this->getConnection()->createQueryTable(
            'myComplexQuery', 'SELECT complexQuery...'
        );
        
        $expectedTable = $this->createFlatXmlDataSet("complexQueryAssertion.xml")
                              ->getTable("myComplexQuery");
        $this->assertTablesEqual($expectedTable, $queryTable);
    }
}

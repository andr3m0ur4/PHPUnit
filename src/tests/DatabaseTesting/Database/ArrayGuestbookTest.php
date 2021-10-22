<?php

namespace AndreMoura\Tests\DatabaseTesting\Database;

use PHPUnit_Extensions_Database_TestCase;

class ArrayGuestbookTest extends PHPUnit_Extensions_Database_TestCase
{
    protected function getDataSet()
    {
        return new MyApp_DbUnit_ArrayDataSet(
            [
                'guestbook' => [
                    [
                        'id' => 1,
                        'content' => 'Hello buddy!',
                        'user' => 'joe',
                        'created' => '2010-04-24 17:15:23'
                    ],
                    [
                        'id' => 2,
                        'content' => 'I like it!',
                        'user' => null,
                        'created' => '2010-04-26 12:14:20'
                    ],
                ],
            ]
        );
    }

    // only instantiate pdo once for test clean-up/fixture load
    static private $pdo = null;

    // only instantiate PHPUnit_Extensions_Database_DB_IDatabaseConnection once per test
    private $conn = null;

    /**
     * @return PHPUnit_Extensions_Database_DB_IDatabaseConnection
     */
    final public function getConnection()
    {
        if ($this->conn ===  null) {
            if (self::$pdo == null) {
                self::$pdo = new \PDO($GLOBALS['DB_DNS'], $GLOBALS['DB_USER'], $GLOBALS['DB_PASSWD']);
            }

            $this->conn = $this->createDefaultDBConnection(self::$pdo, $GLOBALS['DB_DBNAME']);
        }

        return $this->conn;
    }

    public function setUp()
    {

    }
    
    public function testCalculate()
    {
        $this->assertEquals(2, 1 + 1);
    }
}

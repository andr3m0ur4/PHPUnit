<?php

namespace AndreMoura\Tests\DatabaseTesting\Database;

use PHPUnit_Extensions_Database_DataSet_CsvDataSet;
use PHPUnit_Extensions_Database_DataSet_YamlDataSet;
use PHPUnit_Extensions_Database_TestCase;

abstract class MyGuestbookTest extends PHPUnit_Extensions_Database_TestCase
{
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

            $this->conn = $this->createDefaultDBConnection(self::$pdo, $GLOBALS['DB_DBNAME_TEST']);
        }

        return $this->conn;
    }

    /**
     * @return PHPUnit_Extensions_Database_DataSet_IDataSet
     */
    public function getDataSet()
    {
        return $this->createFlatXMLDataSet(dirname(__FILE__).'/../files/myFlatXmlFixture.xml');
        // return $this->createXMLDataSet(dirname(__FILE__).'/../files/myXmlFixture.xml');
        // return new PHPUnit_Extensions_Database_DataSet_YamlDataSet(
        //     dirname(__FILE__) . '/../files/guestbook.yml'
        // );
        // $dataSet = new PHPUnit_Extensions_Database_DataSet_CsvDataSet();
        // $dataSet->addTable('guestbook', dirname(__FILE__) . '/../files/guestbook.csv');
        // return $dataSet;
    }
}

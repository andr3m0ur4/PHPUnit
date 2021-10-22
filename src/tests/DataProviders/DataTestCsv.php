<?php

namespace AndreMoura\Tests\DataProviders;

use PHPUnit\Framework\TestCase;

require 'CsvFileIterator.php';

class DataTest extends TestCase
{
    /**
     * @dataProvider additionProvider
     */
    public function testAdd($a, $b, $expected)
    {
        var_dump($expected, $a, $b . PHP_EOL);
        $this->assertEquals($expected, $a + $b);
    }

    public function additionProvider()
    {
        return new CsvFileIterator(__DIR__ . '/data.csv');
    }
}

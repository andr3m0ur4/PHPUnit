<?php

namespace AndreMoura\Tests\DatabaseTesting\Model;

class Guestbook
{
    private $id;
    private $content;
    private $user;
    private $created;
    private $conn = null;

    public function __construct()
    {
        if ($this->conn ===  null) {
            $this->conn = new \PDO($GLOBALS['DB_DNS'], $GLOBALS['DB_USER'], $GLOBALS['DB_PASSWD']);
        }

        return $this->conn;
    }

    public function addEntry($user, $content)
    {
        $this->user = $user;
        $this->content = $content;

        $this->save();
    }

    private function save()
    {
        $sql = "INSERT INTO guestbook (user, content) VALUES (:user, :content)";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue(':user', $this->user);
        $stmt->bindValue(':content', $this->content);
        $stmt->execute();
    }
}

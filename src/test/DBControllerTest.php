<?php
namespace Test;
/**
* Unit Test for DB Controller
* Depends on test data stored in sql/data.sql
*/

use PHPUnit\Framework\TestCase;

use DAO\DBController;

class DBControllerTest extends TestCase	
{
	
	public function testCanLogin()
    {
    	$dbController = new DBController();

        $this->assertEquals(
            true,
            $dbController->login('admin@toto.fr', 'azerty'));
        
    }

	public function testCantLogin()
    {
    	$dbController = new DBController();

        $this->assertEquals(
            false,
            $dbController->login('admin@unknown.fr', 'azerty'));
        
    }

    public function testCanLogout()
    {
        
        $dbController = new DBController();

        $this->assertEquals(
            true,
            $dbController->logout('admin@toto.fr', 'azerty'));
        
    }

    public function testCantLogout()
    {
        $dbController = new DBController();

        $this->assertEquals(
            false,
            $dbController->logout('admin@unknown.fr', 'azerty'));
        
    }

    public function testGetDebts(){
        $dbController = new DBController();
        $debts = $dbController->getDebts();
        $this->assertEquals(
            5,
            count($debts));

        $debt_record = $debts[0];
        $nbKeys = count(array_keys($debt_record));
        $this->assertEquals(
            6,
            $nbKeys);
    }

}
?>
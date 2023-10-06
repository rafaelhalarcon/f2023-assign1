<?php 

class DatabaseHelper
{

    /* Returns a connection object to a database */
    public static function createConnection($values = array())
    {
        $connString = $values[0];
        $user = $values[1];
        $password = $values[2];
        $pdo = new PDO($connString, $user, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $pdo;
    }
    /*Runs the specified SQLquery using the passed connection and the passed
    passed array of parameter (null if none) */

    public static function runQuery($connection, $sql, $parameters)
    {
        $statement = null;

        //If there are parameters then do a prepared statement
        if (isset($parameters)) {
            //ensure parameters are in an array
            if (!is_array($parameters)) {
                $parameters = array($parameters);
            }
            // Use a prepared statement if parameters
            $statement = $connection->prepare($sql);
            $executedOK = $statement->execute($parameters);
            if (!$executedOK) throw new PDOException;
        } else {
            //execute a normal query
            $statement = $connection->query($sql);
            if (!$statement) throw new PDOException;
        }
        return $statement;
    }
}

?>
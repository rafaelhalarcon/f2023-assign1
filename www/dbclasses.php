<?php
function getAllSongs($connection)
{

    $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));

    $songsCollection = new SongsDB($conn);
    return $songs = $songsCollection->getAll();
}

function getAllArtist($connection)
{
}

function getAllGenre($connection)
{
}

function getAllTypes($connection)
{
}

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
            // error_log("Parameters\n", 3, SongsDB::$logfile);
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

class SongsDB extends stdClass
{


    private static $baseSQL = "SELECT s.song_id, s.title, s.artist_id, s.genre_id, s.year, s.bpm, s.energy, s.danceability, s.loudness, s.liveness, s.valence , SUBSTR(SEC_TO_TIME(s.duration),4,5) as duration, s.acousticness, s.speechiness, s.popularity, a.artist_name, a.artist_type_id, g.genre_name, t.type_name
    FROM songs s
       JOIN artists a ON s.artist_id=a.artist_id
       JOIN genres g ON s.genre_id=g.genre_id
       JOIN types t ON a.artist_type_id=t.type_id;";

    public function __construct($connection)
    {
        $this->pdo = $connection;
    }

    public function getAll()
    {
        $sql = self::$baseSQL;
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }

    function findSongsTitle($search)
    {
        $sql = self::$baseSQL . " WHERE title LIKE " . "'" . "%" . "?" . "% ;";
        var_dump($sql);
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, Array($search));

        return $statement->fetchAll();
    }
}

class ArtistDB
{
}

class GenreDB
{
}

class TypeDB
{
}

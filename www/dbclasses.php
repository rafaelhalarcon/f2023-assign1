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

function outputSongs($array)
{
}

function outputSingleSong()
{
}

function truncateTitle25($string)
{
    if (strlen($string) >= 25) {
        return substr($string, 0, 25) . "...";
    } else {
        return $string;
    }
}

function addToFav($song)
{
    session_start();
    if (isset($_POST['song_id'])) {
        $_SESSION['favourites'] = $song;
    }
}

function search()
{
    try {
        $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
        $songsCatalog = new SongsDB($conn);
        $songs = $songsCatalog->getAll();
    } catch (Exception $e) {
        die($e->getMessage());
    }

    $songsCollection = new SongsDB($conn);

    if (isset($_GET['searchField'])) {
        if (!empty($_GET['searchField'])) {
            switch ($_GET['searchField']) {
                case "title":
                    echo "I am on title ";
                    if (isset($_GET['title']) && !empty($_GET['title'])) {
                        foreach ($songs as $song) {
                            return $songsCollection->findSongsTitle($_GET['title']);
                        }
                    }
                    break;
                case "artist":
                    echo "I am on artist ";
                    if (isset($_GET['artist_name']) && !empty($_GET['artist_name'])) {
                        foreach ($songs as $song) {
                            if ($song['artist_name'] == $_GET['artist_name']) {
                                return $songsCollection->findSongArtist($_GET['artist_name']);
                            } else "No song found with that artist!";
                        }
                    }
                    break;
                case "genre_name":
                    echo "I am on genre ";
                    if (isset($_GET['genre_name']) && !empty($_GET['genre_name'])) {
                        foreach ($songs as $song) {
                            if ($song['genre_name'] == $_GET['genre_name']) {
                                return $songsCollection->findSongGenre($_GET['genre_name']);
                            } else "No song found with that genre!";
                        }
                    }
                    break;
                case "date":
                    echo "I am on date";
                    if ((isset($_GET['date1']) && isset($_GET['date2'])) && (!empty($_GET['date1']) && !empty($_GET['date2']))) {
                        foreach ($songs as $song) {
                            //         if () {

                            //             return $songsCollection->findSongDate($_GET['date1'], $_GET['date2']);
                            //         }
                            //     } else "No song found with that time period!";
                            // }
                        }
                    }
                    break;
                default:
                    echo "you exited the switch case";
            }
        }
    }
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
       JOIN types t ON a.artist_type_id=t.type_id";

    public function __construct($connection)
    {
        $this->pdo = $connection;
    }

    public function getAll()
    {
        $sql = self::$baseSQL;
        $statement = DatabaseHelper::runQuery($this->pdo, $sql . ";", null);

        return $statement->fetchAll();
    }

    function findSongsTitle($search)
    {
        $sql = self::$baseSQL . " WHERE s.title LIKE "  . "%?%;";
        // $sql = "SELECT s.song_id, s.title, s.artist_id, s.genre_id, s.year, s.bpm, s.energy, s.danceability, s.loudness, s.liveness, s.valence , SUBSTR(SEC_TO_TIME(s.duration),4,5) as duration, s.acousticness, s.speechiness, s.popularity, a.artist_name, a.artist_type_id, g.genre_name, t.type_name
        // FROM songs s
        //    JOIN artists a ON s.artist_id=a.artist_id
        //    JOIN genres g ON s.genre_id=g.genre_id
        //    JOIN types t ON a.artist_type_id=t.type_id WHERE a.artist_name LIKE %" . "?" . "%;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, array($search));

        return $statement->fetchAll();
    }

    function findSongArtist($search)
    {
        $sql = self::$baseSQL . " WHERE a.artist_name = " . "?;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, array($search));

        return $statement->fetchAll();
    }

    function findSongGenre($search)
    {
        $sql = self::$baseSQL . " WHERE g.genre_name = " . "?;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, array($search));
        return $statement->fetchAll();
    }

    function findSongDate($date1, $date2)
    {
        $sql = self::$baseSQL . " WHERE s.year BETWEEN" . "?" . "AND" . "?;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, array($date1, $date2));

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

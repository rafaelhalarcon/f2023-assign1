<?php
function getAllSongs($connection)
{
    $conn = DatabaseHelper::connect(DBCONNSTRING);
    // $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));

    $songsCollection = new SongsDB($conn);
    return $songs = $songsCollection->getAll();
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
    if (isset($_POST['song_id'])) {
        $_SESSION['favourites'] = $song;
    }
}

function search()
{
    try {
        $conn = DatabaseHelper::connect(DBCONNSTRING);
        // $conn = DatabaseHelper::createConnection(array(DBCONNSTRING, DBUSER, DBPASS));
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
                    // echo "I am on title ";
                    if (isset($_GET['title']) && !empty($_GET['title'])) {
                        foreach ($songs as $song) {
                            return $songsCollection->findSongsTitle($_GET['title']);
                        }
                    }
                    break;
                case "artist":
                    // echo "I am on artist ";
                    if (isset($_GET['artist_name']) && !empty($_GET['artist_name'])) {
                        foreach ($songs as $song) {
                            if ($song['artist_name'] == $_GET['artist_name']) {
                                return $songsCollection->findSongArtist($_GET['artist_name']);
                            } else "No song found with that artist!";
                        }
                    }
                    break;
                case "genre_name":
                    // echo "I am on genre ";
                    if (isset($_GET['genre_name']) && !empty($_GET['genre_name'])) {
                        foreach ($songs as $song) {
                            if ($song['genre_name'] == $_GET['genre_name']) {
                                return $songsCollection->findSongGenre($_GET['genre_name']);
                            } else "No song found with that genre!";
                        }
                    }
                    break;
                case "date":
                    // echo "I am on date";
                    if ((isset($_GET['date1']) && isset($_GET['date2'])) && (!empty($_GET['date1']) && !empty($_GET['date2']))) {
                        foreach ($songs as $song) {
                            return $songsCollection->findSongDate($_GET['date1'], $_GET['date2']);
                        }
                    } else "No song found with that time period!";

                    break;
                default:
                    echo "you exited the switch case";
            }
        }
    }
}

class DatabaseHelper extends stdClass
{
    /* Returns a connection object to a database */
    public static function connect($string)
    {

        $pdo = new PDO($string);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $pdo;
    }

    // public static function createConnection($values = array())
    // {

    // $connString = $values[0];
    // $user = $values[1];
    // $password = $values[2];
    // $pdo = new PDO($connString, $user, $password);
    // $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    // return $pdo;
    // }
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


    private static $baseSQL = "SELECT s.song_id, s.title, s.artist_id, s.genre_id, s.year, s.bpm, s.energy, s.danceability, s.loudness, s.liveness, s.valence , strftime('%M:%S', s.duration, 'unixepoch') as duration, s.acousticness, s.speechiness, s.popularity, a.artist_name, a.artist_type_id, g.genre_name, t.type_name   
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

    public function getArtistAll()
    {
        $sql = "SELECT DISTINCT s.artist_id, a.artist_name
        FROM songs s
        JOIN artists a ON s.artist_id=a.artist_id;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql . ";", null);

        return $statement->fetchAll();
    }

    public function getGenreAll()
    {
        $sql = "SELECT DISTINCT s.genre_id, g.genre_name
        FROM songs s
        JOIN genres g ON s.genre_id=g.genre_id;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql . ";", null);

        return $statement->fetchAll();
    }

    function findSongsTitle($search)
    {
        $sql = self::$baseSQL . " WHERE s.title LIKE " . "?;";
        $search = "%" . $search . "%";
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

    public function topGenre()
    {
        $sql = "SELECT g.genre_name, COUNT(*) as song_count
        FROM genres g
        INNER JOIN songs s ON g.genre_id = s.genre_id
        GROUP BY g.genre_name
        ORDER BY song_count DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }

    public function topArtist()
    {
        $sql = "SELECT a.artist_name, COUNT(*) as song_count
        FROM artists a
        INNER JOIN songs s ON a.artist_id = s.artist_id
        GROUP BY a.artist_name
        ORDER BY song_count DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }

    public function mostPopularSongs()
    {
        $sql = "SELECT s.title, a.artist_name, s.song_id
        FROM songs s
        INNER JOIN artists a ON s.artist_id = a.artist_id
        ORDER BY s.popularity DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }

    public function oneHitWonders()
    {
        $sql = "SELECT s.title, a.artist_name, s.song_id
        FROM songs s
        INNER JOIN artists a ON s.artist_id = a.artist_id
        WHERE a.artist_id IN (
            SELECT artist_id
            FROM songs
            GROUP BY artist_id
            HAVING COUNT(*) = 1
        )
        ORDER BY s.popularity DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }

    public function longestAcoustic()
    {
        $sql = "SELECT s.title, a.artist_name, s.song_id
        FROM songs s
        INNER JOIN artists a ON s.artist_id = a.artist_id
        WHERE s.acousticness > 40
        ORDER BY s.duration DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }

    public function atTheClub()
    {
        $sql = "SELECT s.title, a.artist_name, s.bpm, s.song_id
        FROM songs s
        INNER JOIN artists a ON s.artist_id = a.artist_id
        WHERE (s.danceability * 1.6 + s.energy * 1.4) > 80
        ORDER BY (s.danceability * 1.6 + s.energy * 1.4) DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }
    public function runningSongs()
    {
        $sql = "SELECT s.title, a.artist_name, s.bpm, s.song_id
        FROM songs s
        INNER JOIN artists a ON s.artist_id = a.artist_id
        WHERE (s.bpm >= 120 AND s.bpm <= 125)
        ORDER BY (s.energy * 1.3 + s.valence * 1.6) DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }
    public function studyingSongs()
    {
        $sql = "SELECT s.title, a.artist_name, s.bpm, s.song_id
        FROM songs s
        INNER JOIN artists a ON s.artist_id = a.artist_id
        WHERE (s.bpm >= 100 AND s.bpm <= 115) AND (s.speechiness >= 1 AND s.speechiness <= 20)
        ORDER BY (s.acousticness * 0.8 + (100 - s.speechiness) + (100 - s.valence)) DESC
        LIMIT 10;";
        $statement = DatabaseHelper::runQuery($this->pdo, $sql, null);

        return $statement->fetchAll();
    }
}

<?php
require_once('./dep/lib/bootstrap.php');
class Factory
{
    private static $dbcWorker;
    private static $dbHandler;

    private static $hostName = 'localhost';
    private static $username = 'root';
    private static $password = '123';
    private static $port     = '3306';
    private static $dbName   = 'trinitydb335';
    
    private static $_isDbcOn = true;

    private function __construct() { }

    public static function createOrGetDBCWorker()
    {
        if (!self::$_isDbcOn)
            return null;
    
        if (!isset(self::$dbcWorker))
            self::$dbcWorker = new DBC('./dep/dbcs/Spell.dbc', DBCMap::fromINI('./dep/maps/Spell.ini'));
        
        return self::$dbcWorker;
    }

    public static function createOrGetDBHandler() {
        if (!isset(self::$dbHandler))
        {
            // Overwrite settings with OpenShift
            if (getenv('OPENSHIFT_APP_NAME') !== false)
            {
                self::$dbName   = getenv('OPENSHIFT_APP_NAME');
                self::$hostName = getenv('OPENSHIFT_MYSQL_DB_HOST');
                self::$port     = getenv('OPENSHIFT_MYSQL_DB_PORT');
                self::$username = getenv('OPENSHIFT_MYSQL_DB_USERNAME');
                self::$password = getenv('OPENSHIFT_MYSQL_DB_PASSWORD');
            }
            
            $pdoOptions[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
            self::$dbHandler = new PDO('mysql:host='.self::$hostName.';port='.self::$port.';dbname='.self::$dbName, self::$username, self::$password, $pdoOptions);
        }
        return self::$dbHandler;
    }

    public static function setDbData($host, $nick, $pass, $portId, $database)
    {
        self::$hostName = $host;
        self::$username = $nick;
        self::$password = $pass;
        self::$port     = $portId;
        self::$dbName   = $database;
    }
    
    public static function getSpellNameForLoc($spellId, $locIndex)
    {
        if (!self::$_isDbcOn)
            return $spellId;
        
        return self::$dbcWorker->getRecordById($spellId)->get('SpellNameLang'.$locIndex, DBC::STRING);
    }
    
    public static function toggleDbcWorker($apply) { self::$_isDbcOn = $apply; }
    public static function hasDbcWorker() { return self::$dbcWorker !== null; }
};

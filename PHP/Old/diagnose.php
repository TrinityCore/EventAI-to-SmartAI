<?php
// ini_set('memory_limit', "150M"); // That shouldnt be a problem, default is 128MB and the script peakes at around 125M

set_error_handler('exceptions_error_handler');

function exceptions_error_handler($severity, $message, $filename, $lineno) {
  if (error_reporting() == 0) {
    return;
  }
  if (error_reporting() & $severity) {
    throw new ErrorException($message, 0, $severity, $filename, $lineno);
  }
}
#x

define('DEBUG', false);

require_once('./utils.php');
require_once('./factory.php');

# ############# DO NOT EDIT PAST THIS LINE, UNLESS YOU KNOW WHAT YOU ARE DOING ############# #

// Cosmetic useless shit at different places here
ob_start();
echo PHP_EOL . " ______                       __" . PHP_EOL;
echo "/\\__  _\\       __          __/\\ \\__" . PHP_EOL;
echo "\\/_/\\ \\/ _ __ /\\_\\    ___ /\\_\\ \\, _\\  __  __" . PHP_EOL;
echo "   \\ \\ \\/\\`'__\\/\\ \\ /' _ `\\/\\ \\ \\ \\/ /\\ \\/\\ \\" . PHP_EOL;
echo "    \\ \\ \\ \\ \\/ \\ \\ \\/\\ \\/\\ \\ \\ \\ \\ \\_\\ \\ \\_\\ \\" . PHP_EOL;
echo "     \\ \\_\\ \\_\\  \\ \\_\\ \\_\\ \\_\\ \\_\\ \\__\\\\/`____ \\" . PHP_EOL;
echo "      \\/_/\\/_/   \\/_/\\/_/\\/_/\\/_/\\/__/ `/___/> \\" . PHP_EOL;
echo "                                 C O R E  /\\___/" . PHP_EOL;
echo "http://TrinityCore.org                    \\/__/\n" . PHP_EOL;
ob_end_flush();

if ($iniFile = parse_ini_file('config.ini')) {
    Factory::setDbData($iniFile['hostname'], $iniFile['userName'], $iniFile['password'], $iniFile['worldDatabase']);

    echo '>> Config file found and parsed sucessfully.' . PHP_EOL;
}

ob_start();
echo PHP_EOL . 'Selecting all SmartAIs from the database ...' . PHP_EOL;
ob_end_flush();

$oldDate = microtime(true);
$SAIDataSet = Factory::createOrGetDBHandler()->query("SELECT a.* FROM smart_scripts a")->fetchAll(PDO::FETCH_OBJ);

ob_start();
echo '>> Gotten ' . count($SAIDataSet) . ' entries in ' . round(microtime(true) - $oldDate, 4) . ' ms' . PHP_EOL;
echo PHP_EOL . 'Grouping entries by NPC ...' . PHP_EOL;
ob_end_flush();

$entryorguid     = 0;   // Last iterated entry

$npcStore  = array();
$oldDate   = microtime(true);

foreach ($SAIDataSet as &$saiItem) {
    if ($entryorguid != $saiItem->entryorguid) {
        # New NPC. Create a corresponding NPC class instance.
        $entryorguid     = $saiItem->entryorguid;
        $npcStore[$entryorguid] = array();
    }

    $npcStore[$entryorguid][$saiItem->id] = array('link' => intval($saiItem->link), 'eventType' => intval($saiItem->event_type));
}

unset($saiItem, $entryorguid, $SAIDataSet); // Save some memory

ob_start();
echo '>> ' . count($npcStore) . ' different NPC SAIs detected in ' . round(microtime(true) - $oldDate, 4) . ' ms !' . PHP_EOL . PHP_EOL;
ob_end_flush();

foreach ($npcStore as $entryorguid => $npcObj) {
    try {
        $l = count($npcObj) - 1;
        $max = array_pop(array_keys($npcObj));
        for ($i = 0; $i < $l; ++$i) {
            if (!array_key_exists($i, $npcObj))
                echo "SmartAI `entryorguid` " . $entryorguid . " has no event with id " . $i . " while max. is " . $max . "!" . PHP_EOL;
            else if ($npcObj[$i]['link'] != 0)
                if ($npcObj[$npcObj[$i]['link']]['eventType'] != 61)
                    echo "SmartAI `entryorguid` " . $entryorguid . " has event " . $i . " linked to event " . $npcObj[$i]['link'] . " which is not SMART_EVENT_LINK!" . PHP_EOL;
        }
    } catch (Exception $e) {
        echo "An exception has been caught." . PHP_EOL;
    }
}

unset($npcObj, $entryorguid, $npcStore, $oldDate);

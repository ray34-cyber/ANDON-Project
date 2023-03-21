<?php

require 'functions.php';
$datas = query("SELECT sma_itx_t_data.*, sma_itx_m_line.description AS line_description, sma_itx_m_process.initial AS process_initial, sma_itx_m_call.name AS call_name, sma_itx_m_call.bootstrap_bg AS call_bootstrap_bg, sma_itx_m_status.description AS status_description, sma_itx_t_data.datetime 
                FROM sma_itx_t_data 
                INNER JOIN sma_itx_m_line ON sma_itx_t_data.line_id = sma_itx_m_line.id 
                INNER JOIN sma_itx_m_process ON sma_itx_t_data.process_id = sma_itx_m_process.id 
                INNER JOIN sma_itx_m_call ON sma_itx_t_data.call_id = sma_itx_m_call.id 
                INNER JOIN sma_itx_m_status ON sma_itx_t_data.status_id = sma_itx_m_status.id");
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Progress</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/bootstrap-utilities.css">
</head>

<body>
    <div id="header" class="sticky top-0 left-0">
      <div class="flex justify-around items-center py-[1vh] pr-[1.5vw] pl-[2.5vw] bg-[#222a35] border-b-[0.1vw]">
        <div class="bg-black py-[0.4vh] mr-[2vw] pl-[0.5vw] pr-[6vw] ml-[1vw]">
          <p class="text-[#fafa06] font-bold text-[3vw] font-[arial]">HIJAU</p>
        </div>
        <p class="text-white font-bold text-[5.5vw] mr-[1.8vw] font-[arial]">ANDON</p>
        <p class="text-white font-bold text-[5.5vw] mr-[3.9vw] ml-[2.9vw] font-[arial]">PROGRESS</p>
        <div class="bg-black p-[0.5vw] ml-[0.8vw]">
          <p id="current-time" class="text-[#fafa06] font-bold text-center text-[3vw] font-[arial]"></p>
        </div>
      </div>
      <div class="flex bg-[#404040] px-[1.5vw] pl-[1.7vw] justify-between">
        <p class="text-white text-[5.5vw] font-bold text-center font-[arial]">PRO.</p>
        <p class="text-white text-[5.5vw] font-bold text-center font-[arial] -ml-[0.5vw]">LINE</p>
        <p class="text-white text-[5.5vw] font-bold text-center font-[arial] pl-[2vw] ml-[1vw]">CALL</p>
        <p class="text-white text-[5.5vw] font-bold text-center font-[arial] ml-[3vw] mr-[1vw]">STATE</p>
        <p class="text-white text-[5.5vw] font-bold text-center font-[arial] mr-[0.5vw]">TIME</p>
      </div>
    </div>

    <table class="w-full">
      <?php foreach($datas as $data ) : ?>
      <tr class="bg-<?= $data["call_bootstrap_bg"] ?>">
        <td class="text-white font-bold text-[5vw] font-[arial] text-center pl-[4vw]"><?= $data["process_initial"] ?></td>
        <td class="text-white font-bold text-[5vw] font-[arial] text-center pl-[10.5vw]"><?= $data["line_description"] ?></td>
        <td class="text-white font-bold text-[5vw] font-[arial] text-left pl-[9vw]"><?= $data["call_name"] ?></td>
        <td class="text-white font-bold text-[5vw] font-[arial] text-center pr-[6vw]"><?= $data["status_description"] ?></td>
        <td id="<?= $data["id"] ?>" class="text-white font-bold text-[5vw] font-[arial] pr-[2vw]"></td>
      </tr>
      <?php endforeach; ?>
    </table>
</body>
</html>
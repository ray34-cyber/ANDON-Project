<?php

require 'functions.php';
$datas = query("SELECT sma_itx_m_device_list.rf_address, sma_itx_m_call.bootstrap_bg 
                FROM sma_itx_m_device_list
                INNER JOIN sma_itx_m_call ON sma_itx_m_device_list.id_call_01 = sma_itx_m_call.id");


?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Normal</title>
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
  <div class="bg-[#0071c1] w-[100%] h-[7vh] relative flex justify-center items-center">
    <h1 class="text-white text-center text-[2.3vw] font-bold font-[arial]">
      PT.HIJAU MES SYSTEM
    </h1>
    <div class="w-[11vw] h-[6vh] border-[0.1vw] absolute top-[0.5vh] right-[2.5vw]">
      <h3 class="bg-[#00b04d] text-black text-center font-semibold text-[0.72vw] font-[arial]">
        Normal
      </h3>
      <h3 class="bg-[#ffc000] text-black text-center font-semibold text-[0.72vw] font-[arial]">
        Trial Run
      </h3>
      <h3 class="bg-[#fe0001] text-black text-center text-[0.72vw] font-semibold font-[arial]">
        Stop
      </h3>
    </div>
  </div>
  <div class="bg-black w-full min-h-[93vh] p-[0.9vw]">
    <div class="grid grid-cols-9 grid-rows-[1,minmax(0,1fr)] gap-[0.8vw] content-center">
      <?php foreach($datas as $data) : ?>
      <div class="bg-<?= $data["bootstrap_bg"] ?> px-[3.5vw] py-[2.7vh] rounded-[0.5vw] flex justify-center items-center">
        <h4 class="text-[1.5vw] text-black text-center font-bold font-[arial] uppercase">
          <?= $data["rf_address"] ?>
        </h4>
      </div>
      <?php endforeach; ?>
    </div>
  </div>
</body>
</html>
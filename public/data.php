<?php 

require 'functions.php';
$datas = query("SELECT sma_itx_t_data.*, sma_itx_m_line.description AS line_description, sma_itx_m_process.initial AS process_initial, sma_itx_m_call.name AS call_name, sma_itx_m_call.bootstrap_bg AS call_bootstrap_bg, sma_itx_m_status.description AS status_description, sma_itx_t_data.datetime 
                FROM sma_itx_t_data 
                INNER JOIN sma_itx_m_line ON sma_itx_t_data.line_id = sma_itx_m_line.id 
                INNER JOIN sma_itx_m_process ON sma_itx_t_data.process_id = sma_itx_m_process.id 
                INNER JOIN sma_itx_m_call ON sma_itx_t_data.call_id = sma_itx_m_call.id 
                INNER JOIN sma_itx_m_status ON sma_itx_t_data.status_id = sma_itx_m_status.id");

echo json_encode($datas);

?>
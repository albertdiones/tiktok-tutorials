<?php
    sleep(1);
    $developers = [
        'DMCI',
        'Cityland',
        'SMDC',
        'Caliraya'
    ];
?>
<div class="listing">
    <img src="CondoUnits/<?= mt_rand(1,5) ?>.jpeg" width="270px" height="auto" />
    <h3><?= $developers[mt_rand(0,count($developers)-1)] ?> Condo in Makati</h3>
    <p>This condo is in the middle of nowhere that is good for your health</p>
    <small>PHP 13,000,0000</small>
</div>
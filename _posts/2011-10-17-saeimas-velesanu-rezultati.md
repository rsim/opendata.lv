---
layout: post
title: Saeimas vēlēšanu rezultāti
author: Raimonds Simanovskis
tags: Saeima CVK
---

Ar nelielu novēlošanos publicēju pirms mēneša notikušo Saeimas vēlēšanu rezultātu analīzi:

* [Vēlētāju aktivitāte](https://eazybi.com/accounts/113/dashboards/aktivitate)
* [Vēlēšanu rezultāti](https://eazybi.com/accounts/113/dashboards/rezultati)
* [Kandidātu individuālie reitingi](https://eazybi.com/accounts/113/dashboards/kandidati)

<div style="text-align:center">
<iframe width="700" height="490" src="https://eazybi.com/accounts/113/embed/report/195?dashboard_id=20" frameborder="0"></iframe>
</div>

Šoreiz datu apstrādi atvieglināja tas, ka bija jau pieredze apstrādāt [CVK tautas nobalsošanas datus](http://opendata.lv/2011/08/05/tautas-nobalsosana-par-saeimas-atlaisanu/) un Saeimas rezultātu XML faili bija līdzīgi iepriekšējiem. Problēma vienīgi bija ar to, ka vēlēšanu rezultāti [CVK vēlēšanu rezultātu lapā](http://www.velesanas2011.cvk.lv/) vispirms parādījās tikai HTML veidā, XML faili parādījās tikai vēlāk nakts vidū un kā rezultātā bija jāpastrādā tonakt mazliet ilgāk :)

Kā arī nav īsti skaidrs, kādēļ [kandidātu plusu un svītrojumu dati](http://www.cvk.lv/cgi-bin/wdbcgiw/base/Saeima11.GalRez_s11) ir pieejami tikai HTML lapu veidā un netiek piedāvāts pilns XML rezultātu fails. Tādēļ, lai ielādētu šos rezultātus, nācās atkal tos savākt ar *web crawling* palīdzību, vispirms saprotot web lapu viltīgo URL struktūru - piemēram, <code><a href="http://www.cvk.lv/cgi-bin/wdbcgiw/base/Saeima11.galrez11.kandid?NR1=110100001">www.cvk.lv/cgi-bin/wdbcgiw/base/Saeima11.galrez11.kandid?NR1=110100001</a></code> mistiskajā `NR1` parametrā ir apvienots kopā partijas numurs `1` un iecirkņa numurs `10100001`.

Attiecībā par CVK operatīvo datu interpretāciju es ievēroju, ka pārsvarā visi mēdiji [vēlēšanu aktivitātes lapā](http://www.velesanas2011.cvk.lv/activities.html) ignorēja kolonnu *Atrašanās vietās* un kā rezultātā ziņoja kopējo vēlētāju aktivitāti par kādu pusotru procentu zemāk. Bet visi mēdiji cītīgi ziņoja nepareizos kopējos aktivitātes procentus ar precizitāti līdz divām zīmēm aiz komata. Bet tā laikam cilvēka smadzenes ir uzbūvētas, ka mums ir lielāka ticība nepareiziem, bet precīziem datiem, nevis pareiziem, bet neprecīziem datiem :)

Tā ka CVK vēl ir iespējas uzlabot savu sniegto servisu :) un publicēt pilnībā visus datus XML failu veidā, kā arī sniegt īsu aprakstu, kā šos datus pieprasīt un ko katrs rādītājs nozīmē un kā tos visus vajag pareizi summēt kopā.

Pēc vēlēšanu nakts saites uz rezultātu grafikiem kādu laiku ceļoja pa Twitter un citiem saziņas līdzekļiem un man bija prieks, ka cilvēkiem patika apskatīt vēlēšanu rezultātus smukākā vizuālā veidā. Vienai no partijām tik ļoti iepatikās publicētie grafiki, ka viņi [nopublicēja savā mājas lapā](http://visulatvijai.lv/news.php?readmore=1156319839) kartes grafiku ar saviem vēlēšanu rezultātiem pa pilsētām un novadiem. Ja kādam citam ir interese par eazyBI publisko grafiku ievietošanu savās mājās lapās, tad droši to dariet un vajadzības gadījumā vaicājiet man palīdzību.

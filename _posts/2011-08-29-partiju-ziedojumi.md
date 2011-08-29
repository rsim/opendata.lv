---
layout: post
title: Partiju ziedojumi
author: Raimonds Simanovskis
tags: KNAB
---

Nākamais *open data* piemērs ir arī par šī brīža aktuālo vēlēšanu tēmu &ndash; partiju ziedojumiem. Kā zināms, partiju saņemtie ziedojumi un arī konkrētie ziedotāji ir publiska informācija, kas ir publicēti [KNAB mājas lapā](http://www.knab.gov.lv/lv/finances/db/donations). Diemžēl atšķirībā no CVK, kas izejas datus publicē XML failu formātā, partiju ziedojumu dati ir pieejami tikai izmantojot KNAB web aplikāciju, kura paredzēta konkrētu ziedojumu atlasīšanai pēc partijas, ziedotāja vai laika perioda, bet galīgi nav paredzēta, lai veiktu kopsavilkuma datu analīzi, kā arī nenodrošina veidu, kā lejuplādēt visus izejas datus.

Lai iegūtu visus izejas datus, nākas nodarboties ar *web crawling* un pēc kārtas pieprasīt katru rezultāta lapu un no HTML rezultāta izvilkt ārā nepieciešamos datus. Šim nolūkam izveidoju nelielu [Ruby programmu](https://github.com/rsim/opendata.lv/blob/master/_examples/ziedojumi/ziedojumi.rb), kas apstaigā visus rezultātus un izdot rezultātu CSV faila formātā. Šodien visu rezultātu iegūšana prasīja kādu stundu &ndash; ja tiktu nodrošināta izejas datu lejupielāde vienā failā, tad to varētu izdarīt daudz, daudz īsākā laikā un arī mazāk noslogotu serveri, kuram tagad nākas sagatavot vairāk kā 800 pilnās web lapas. Tādēļ es rekomendētu visiem publisko datu publicētājiem tomēr pacensties un vienmēr nodrošināt izejas datu lejupielādi, lai nevajadzētu nodarboties ar šādiem apejas risinājumiem.

Apstrādājot rezultātus arī nācās konstatēt problēmas ar datu kvalitāti &ndash; izskatās, ka ziedotāju vārdi, uzvārdi un personas kodu fragmenti tiek katru reizi no jauna ievadīti ar roku un dažkārt viena un tā pati persona tiek ievadīta dažādā veidā (pamatā atsķiras, kur tiek vai netiek lietotas atstarpes). Kā rezultātā nācās atpazīt formātu, kādā ievadīta katra personas, lai pēc tam pārveidotu atstarpju lietošanu vienotā formātā (jo savādāk daži top ziedotāji sākotnēji neparādījās topā, jo bija sadalījušies pa dažādām personām :)).

Šajā sakarā arī paceļas jautājums par to, kāda jēga ir no pilna personas koda nepublicēšanas. Potenciāli sensitīvā personas koda daļa (dzimšanas datums) jau tāpat tiek publicēts un otrā personas koda daļa ir tikai kārtas numurs, kurš nekādu citu personiski sensitīvu informāciju neietver. Un ja kāds ļoti gribēs uzzināt kāda svarīga cilvēka pilnu personas kodu, tad ir pietiekoši daudz citu avotu kur to iegūt. Tādēļ, manuprāt, tajos gadījumos, kad ir paredzēts, ka tiek publicēts personas vārds un uzvārds, vajadzētu vienmēr publicēt arī personas kodu, kas nodrošinātu viennozīmīgu personas identifikāciju un nodrošinātu vienkāršākas datu integritātes pārbaudes.

Partiju ziedojumu datus ielādēju [eazyBI un izveidoju pāris kopsavilkuma atskaites](https://eazybi.com/accounts/7/dashboards/partiju-ziedojumi). Centīšos datus regulāri atjaunot, lai priekšvēlēšanu sprintā varētu apskatīt, kurš šoreiz uzvarēs naudiskajā balsojumā :)

<div style="text-align:center">
<iframe width="615" height="473" src="https://eazybi.com/accounts/7/embed/report/108?dashboard_id=3" frameborder="0"></iframe>
<iframe width="615" height="473" src="https://eazybi.com/accounts/7/embed/report/14?dashboard_id=3" frameborder="0"></iframe>
</div>


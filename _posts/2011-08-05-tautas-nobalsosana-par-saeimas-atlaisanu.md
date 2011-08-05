---
layout: post
title: Tautas nobalsošanas par Saeimas atlaišanu rezultāti
author: Raimonds Simanovskis
tags: CVK
---

Sākšu ar pirmo *open data* piemēru par neseno aktualitāti &ndash; tautas nobalsošanu par Saeimas atlaišanu. Kopumā jāsaka, ka [Centrālā vēlēšanu komisija](http://www.cvk.lv) labi atbilst atvērto datu principiem un tautas nobalsošanas rezultāti bija gan operatīvi pieejami, gan labi apstrādājami.

Gan [balsotāju aktivitātes lapā](http://www.tn2011.cvk.lv/activities.html), gan [rezultātu lapā](http://www.tn2011.cvk.lv/results.html) bija viegli pamanāmas saites uz XML failiem ar izejas datiem. Nekādi apraksti gan par XML struktūru nebija, bet tā kā uzreiz bija redzami arī apkopotie balsošanas aktuāli dati, tad viegli varēja saprast, kas ko nozīmē. Kā rezultātā kādas stundas laikā sestdienas rītā varēju uztaisīt XML faila pārveidošanu CSV faila formātā, lai to varētu ielādēt eazyBI. Līdzīgi arī svētdienas rītā bija pieejams rezultātu XML fails, kuru arī varēja viegli saprast un apstrādāt. Protams ideāli būtu, ja XML failu struktūra un piemēri būtu bijuši publicēti agrāk un tad jau laikus varētu uztaisīt failu apstrādes programmu.

Interesanti sestdienas laikā bija pamanīt pagaidu publicētajos balsošanas rezultātos gan pāris iztrūkstošus novadus, gan arī aritmētiskās kļūdas, kuras pamanīju, kad pārbaudīju savu ielādēto datu kopsummas. Tas laikam nozīmē, ka CVK pusē datu publicēšanas laikā pastāv vēl kaut kāds "cilvēciskais faktors", kas datus no vienas sistēmas pārkopē publiskajā web lapā, un tā rezultātā rodas "cilvēciskās" kļūdas :)

Rezultātā no tautas nobalsošanas datiem ar [eazyBI](https://eazybi.com/accounts/83/dashboards/balsosanas-aktivitate) uztaisīju dažas smukas datu vizualizācijas:

<div style="text-align:center">
<iframe width="700" height="400" src="https://eazybi.com/accounts/83/embed/report/116?dashboard_id=7" frameborder="0"></iframe>
<iframe width="700" height="450" src="https://eazybi.com/accounts/83/embed/report/115?dashboard_id=7" frameborder="0"></iframe>
</div>
<div style="text-align:center">
<iframe width="400" height="300" src="https://eazybi.com/accounts/83/embed/report/119?dashboard_id=7" frameborder="0"></iframe>
<iframe width="400" height="300" src="https://eazybi.com/accounts/83/embed/report/120?dashboard_id=7" frameborder="0"></iframe>
</div>

Ja datu formāts būtu zināms savlaicīgi, tad šādus smukus grafikus varētu jau sataisīt pirms tam un automātiski uzreiz attēlot jaunākos datus, kad tie tiek publicēti. Un tad LTV Panorāma tā vietā, lai nolasītu garus sarakstus ar garlaicīgiem procentiem, varētu uzreiz parādīt šādus grafikus, kur uzreiz viss ir skaidrs :) Varbūt pirms nākamajām Saeimas vēlēšanām varētu šos formātus nopublicēt savlaicīgi?

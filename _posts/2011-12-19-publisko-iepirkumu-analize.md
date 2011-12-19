---
layout: post
title: Publisko iepirkumu analīze
author: Raimonds Simanovskis
tags: IUB iepirkumi
---

Vieni no biežākajiem _open data_ projektiem pasaulē ir valsts un pašvaldību publisko iepirkumu datu analīze. Arī Latvijā publisko iepirkumu dati it kā ir atvērti un tos var sameklēt [Iepirkumu uzraudzības biroja datubāzē](http://www.iub.gov.lv/iubsearch/pt/_pp/). Bet realitātē, tas, kas tur atrodas, izskatās pēc MS Word formām, kas saglabātas HTML formātā, un nekādu kopsavilkuma analīzi par to, kurš no kā un kad un par cik ir pircis, izdarīt nevar.

Jau kādu laiku brieda doma par to, ka būtu ļoti vērtīgi pārvērst šos iepirkuma rezultātu paziņojumus analizējamos datos. Motivācija sākt darbu pie šī projekta radās, satiekot [Ingu Spriņģi](http://twitter.com/IngaSpringe) no [Baltijas pētnieciskās žurnālistikas centra Re:Baltica](http://www.rebaltica.lv) un šīs sadarbības rezultātā radās [Re:Baltica pētījums par būvniekiem, partijām, iepirkumiem](http://www.rebaltica.lv/lv/petijumi/buvnieki_partijas_iepirkumi). Par šo pētījumu vakardien bija arī [TV3 raidījuma Nekā Personīgi sižets](http://www.tv3.lv/content/view/15034/282/), kur parādos arī es un pastāstu par atvērto datu kustību :)

IUB rezultātu publikāciju apstrāde tehnoloģiski bija diezgan sarežģīta problēma:

* Vispirms vajadzēja savākt visas IUB publikācijas - kopš 2010. gada sākuma to bija ap 200 000.
* No HTML dokumentiem vajadzēja atpazīt, kuras ir rezultātu publikācijas (tika apstrādāti dokumenti ar virsrakstiem INFORMATĪVS PAZIŅOJUMS PAR NOSLĒGTO LĪGUMU, PAZIŅOJUMS PAR IEPIRKUMA PROCEDŪRAS REZULTĀTIEM, PAZIŅOJUMS PAR LĪGUMA SLĒGŠANAS TIESĪBU PIEŠĶIRŠANU SABIEDRISKIE PAKALPOJUMI, BRĪVPRĀTĪGS PAZIŅOJUMS PAR IEPIRKUMA REZULTĀTIEM).
* Tālāk katrā dokumentā vajadzēja atpazīt lēmuma pieņemšanas un publicēšanas datumus, pasūtītājus, to adreses un kontaktpersonas, CPV kodu (vienotā iepirkumu klasifikācija pa nozarēm), noslēgtos līgumus (vienā paziņojumā var būt minēti vairāki līgumi), katrā līgumā jāatpazīst piegādātājs, ar ko tiek slēgts līgums, piedāvātā cena un līguma summa, valūta, līguma nosaukums, kopējais piedāvājumu skaits.
* Visu to apgrūtināja tas, ka kaut kad 2009./2010.gadā mainījas rezultātu publikācijas formas un daži apzinīgie pasūtītāji izmantoja jaunās formas, bet daži slinkākie turpināja copy/paste no vecajām formām.
* Rezultātu publikāciju formās nav nekādas kontroles par datu kvalitāti, tā ka nācās identificēt biežākās formu aizpildītāju jaunrades idejas un tās salabot.
* Pēc visu dokumentu sākotnējās apstrādes nācās strādāt pie vienādo pasūtītāju un piegādātāju identificēšanas. Izskatās, ka IUB neveic nekādu iesniegto dokumentu datu kvalitātes kontroli, kā rezultātā viena un tā paša pasūtītāja vai piegādātāja nosaukums var parādīties daudzās dažādās variācijās. Tādēļ centos identificēt vienādos pasūtītājus un piegādātājus pēc viņu reģistrācijas numuriem un izvēlēties biežāk lietoto nosaukumu (jo diemžēl Uzņēmuma reģistra dati pie mums nav atvērti, lai jebkurš varētu masveidā pārbaudīt uzņēmumu reģistrācijas numurus).
* Bet tad sekoja nākamā problēma, ka nav arī nekādas datu kvalitātes kontroles par ievadītajiem reģistrācijas numuriem - sākot no tā, ka dažkārt ir ievadīts pilnais numurs ar 11 cipariem, dažreiz 9 cipari bez pirmā un pēdējā cipara, dažreiz ievadīts PVN reģistrācijas numurs. Bet dažkārt bija vēl sliktāk, ka no reģistrācijas numura vispār kāds cipars pazudis un dažreiz ir ievadīts pilnīgi cita uzņēmuma reģistrācijas numurs (droši vien pēc copy/paste no iepriekšējās publikācijas piegādātāja nosaukumu nomainīja, bet reģistrācijas numuru nē). Šadas problēmas ar lielākajiem piegādātājiem varēja pamanīt veicot tikai sākontējo datu analīzi un tad vajadzēja manuāli tos labot, lai saliktu kopā vienu un to pašu piegādātāju vai pasūtītāju.
* Visbeidzot arī nācās identificēt pārsūdzētos un atkārtoti izsludinātos iepirkumu rezultātus un atstāt tikai pēdējo rezultātu publikāciju pēc atbilstošā pasūtītāja norādītā iepirkuma identifikācijas numura. Tā kā par atkārtotām publikācijām diemžēl ir grūti identificēt, vai tās papildina vai aizstāj agrākas publikācijas, tad šeit var būt kļūdas, ka kādās iepriekšējās publikācijas tiek nepareizi aizstātas ar jaunākām.
* Izskatās, ka dažiem formu aizpildītājiem arī trūkst elementāras datorprasmes. Atceros no skolas laikiem, kā mums mācīja likt pēdiņas - sākumā divas apakšā un beigās divas augšā. Daži tā raksta arī uz datora - tā kā nevar atrast apakšējās pēdiņas, tad sākumā liek divus komatus un beigās divus apostrofus, piemēram SIA ,,Sviests'' :)


Bet rezultātā veiksmīgi izdevās izveidot analizējamu datu kopu un ielādēt to [eazyBI analīzes rīkā](https://eazybi.com/accounts/214/cubes). Sadarbībā ar Re:Baltica tika izveidota papildus iepirkumu datu analīze sasaistot to ar [agrāk apstrādātajiem partiju ziedotāju datiem](http://opendata.lv/2011/08/29/partiju-ziedojumi/). Tika identificēti, kuru būvfirmu īpašnieki vai amatpersonas ir ziedojuši partijām 2010. un 2011. gadā un attiecīgi kādos publiskajos iepirkumos šīs būvfirmas ir uzvarējušas. [Lasiet vairāk par šo pētījumu Re:Baltica lapā](http://www.rebaltica.lv/lv/petijumi/buvnieki_partijas_iepirkumi). Šeit ievietoju vienu kopsavilkuma grafiku par iepirkuma publikāciju kopējo summu pa mēnešiem un cik no šīs summas sastāda ar būvniecību saistītie iepirkumi:

<div style="text-align:center">
<iframe width="650" height="470" src="https://eazybi.com/accounts/214/embed/report/1110?dashboard_id=91" frameborder="0"></iframe>
</div>

Līdzīgu analīzi var veikt arī par iepirkumiem citās nozarēs (nozaru klasifikācija tiek veikta pēc norādītā CPV klasifikācijas koda, kas arī diemžēl bieži ir norādīts kļūdaini). Piemēram, izveidoju [top IT projektu](https://eazybi.com/accounts/214/cubes/Iepirkumi#/report/Top%20IT%20projekti) atskaiti, kurā redzami lielākie IT pakalpojumu nozares projekti, sagrupēti pēc piegādātjiem un pasūtītājiem.

Rezultātā pēc visas šīs ņemšanās ar iepirkumu rezultātu publikācijām radās dažas pārdomas:

* Dati ir vērtīgi tikai tad, ja tie ir kvalitatīvi. Redzot, par kādām summām tiek veikti publiskie iepirkumu, es domāju, ka varētu veltīt mazliet vairāk laika, lai pārbaudītu iesniegto datu kvalitāti - vismaz pārbaudītu, lai pasūtītāju un piegādātāju reģistrācijas numuri un nosaukumi atbilstu uzņēmumu reģistram, lai CPV nozaru klasifikācijas kods būtu norādīts pareizi, lai kopsummas sakristu ar detalizētajām summām.
* Ideālajā variantā vēlētos, lai IUB nevis tikai pārpublicētu iesniegtās rezultātu publikāciju MS Word formas, kas saglabātas HTML formātā, bet gan uzkrātu savā datubāzē strukturētu informāciju par to, kas no kā un kad un par cik ir iepircis. Ja šos datus saglabātu un pārbaudītu jau pie datu saņemšanas un ievades, tad datu kvalitāte būtu daudz augstāka un tad arī tie būtu daudz vieglāk pieejami analīzei.
* Vajadzētu arī vienotas rekomendācijas par to, cik detalizēti pa pozīcijām ir jāizsludina iepirkumu un jāpublicē to rezultāti. Piemēram var salīdzināt [medicīnas materiālu iepirkumu ar 172 pozīcijām par 367 tūkstošiem latu](http://www.iub.gov.lv/pvs/show/201919) ar [būvniecības iepirkumu ar vienu pozīciju par 88 miljoniem latu](http://www.iub.gov.lv/pvs/show/200011).
* Tā kā par vienu iepirkumu var būt daudzas publikācijas, tad patreizējā brīdī ir grūti automātiski identificēt, kuras publikācijas (vai arī publikāciju atsevišķas pozīcijas) ir galējās un neapstrīdētās/neatceltās. To laikam var risināt tikai uzkrājot datus strukturētākā formā.

Ja jums rodas idejas, kā vēl varētu izmantot publisko iepirkumu datus vai arī kā uzlabot to pieejamību un kvalitāti, tad rakstiet to komentāros.

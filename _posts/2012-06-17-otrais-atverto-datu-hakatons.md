---
layout: post
title: Otrais atvērto datu hakatons
author: Raimonds Simanovskis
tags: hakatons
---

Vakardien notika otrais [Latvijas atvērto datu "hakatons"](http://www.meetup.com/opendata-latvia/events/66621682/), kurš, neskatoties uz vasarīgo laiku, bija divreiz vairāk apmeklēts nekā [pirmais](http://opendata.lv/2011/12/10/pirmais-open-data-day-hackathon-ir-noticis/) – kopā piedalījās 20 dalībnieki.

<img src="http://photos2.meetupstatic.com/photos/event/4/8/3/c/event_130038492.jpeg" />
<img src="http://photos2.meetupstatic.com/photos/event/4/8/3/2/event_130038482.jpeg" />

Iesākumā pastāstījām par pēdējā laika jaunumiem, ko katrs darījis vai plāno darīt atvērto datu jomā. Iesākumā es pastāstīju un parādīju jauno [data.opendata.lv](http://data.opendata.lv) atvērto datu portālu, kuru šoreiz plānojām papildināt ar jaunām datu kopām. Kā arī īsumā pastāstīju par nesen notikušo "Rīga – averies!" forumu.

Pēteris Ručevskis no LU MII parādīja Saeimas balsojumu grafu analīzes vizualizācijas, izmantojot viņu izstrādāto SNA rīku. Linda Vītuma pastāstīja par dzemdību statistikas datiem, ko viņa vēlētos iegūt, lai labāk saprastu situāciju šajā jomā dažādos Latvijāas reģionos un palīdzētu citiem veikt informētu izvēli. Ģirts Karnītis no LU Datorikas fakultātes pastāstīja par to, kas ir veikts kopā stundentiem specsemināros, kur viņi apkopoja dažādus Latvijas attīstības plānus, valdības deklarācijas un valsts institūciju budžetus un mēģināja tos sasaistīt kopā. Uldis Bojārs pastāstīja par atvērto datu izmantošanas konferenci, uz kuru viņs dosies, kā arī par nesen notikušo [Europeana](http://www.europeana.eu/) hakatonu, kurā viņa pārstāvētā komanda izveidoja [europ.in](http://europ.in) Europena datu meklēšanas servisu. Savukārt Toms Ceļmillers no [VARAM](http://www.varam.gov.lv/) pastāstīja par Eiropas Savienības pēdējām iniciatīvām atvērto datu jomā, kā arī uzklausīja viedokli, ko vajadzētu iekļaut nākamajos [latvija.lv](http://www.latvija.lv) papildinājumos. Par šo tēmu bija vienots viedoklis – visiem publiskajiem latvija.lv e-pakalpojumiem jānodrošina, ka var iegūt pilnas pirmdatu kopas mašīnlasāmā CSV vai XML formātā.


Pēc tam sadalījāmies pa interešu grupām un ķērāmies klāt pie "kodēšanas" un jaunu atvērto datu kopu sagatavošanas, lai tos varētu publicēt [data.opendata.lv](http://data.opendata.lv).

<img src="http://photos4.meetupstatic.com/photos/event/2/4/6/event_130020582.jpeg" />
<img src="http://photos4.meetupstatic.com/photos/event/4/8/5/a/event_130038522.jpeg" />

<img src="http://photos4.meetupstatic.com/photos/event/4/8/5/0/event_130038512.jpeg" />
<img src="http://photos4.meetupstatic.com/photos/event/2/6/4/event_130020612.jpeg" />

Hakatona rezultātā izveidojām un nopublicējām vairākas jaunas datu kopas un to izmantošanas piemērus:

* Gatavojoties hakatonam es pats biju nopublicējis [Rīgas skolu kataloga un skolēnu skaita datus](http://data.opendata.lv/rsim/rigas-skolas/), kā arī [izveidoju JavaScript programmas piemēru, kā  data.opendata.lv datus attēlot ar Google Maps palīdzību](http://jsfiddle.net/rsim/gkLhr/).
* Jau iepriekšējā hakatonā izveidojām sākotnējo versiju, kā savākt Saeimas balsojumu datus. Šoreiz šī datu savākšana tika papildināta ar papildus nepieciešamajiem datiem, kā rezultātā tika nopublicēti [9. Saeimas](http://data.opendata.lv/jbaiza/9-saeimas-balsojumi), [10. Saeimas](http://data.opendata.lv/jbaiza/10-saeimas-balsojumi) un [11. Saeimas](http://data.opendata.lv/jbaiza/11-saeimas-balsojumi) deputātu saraksti, lēmumprojektu saraksti un deputātu balsojumi par lēmumprojektiem. Vienu šo datu pielietojumu jau redzējām no rīta, kā ar grafu analīzes palīdzību var identificēt, kuras deputātu grupas balso līdzīgi vai atšķirīgi. Ja kādam ir vēlme veikt līdzīgus vai cita veida pētījumus par Saeimas deputātu balsojumiem, tad dodiet ziņu, ja ir vajadzīga kāda palīdzība.
* Tika nopublicētas pirmās datu kopas, no LU Datorikas fakultātes specseminārā savāktajiem datiem par [valdības rīcības plānu un valsts institūciju budžetu](http://data.opendata.lv/martinsbalodis/valsts-instituciju-dati). Tālāk domāsim, kā šos datus labāk vizualizēt un attēlot savstarpējās saistības.
* Tika izveidota [sākotnējā versija programmai](https://github.com/torbjon/csb2open), kas pārkonvertē [Centrālās statistikas pārvaldes pirmdatus](http://www.csb.gov.lv/dati/statistikas-datubazes-28270.html) no viņu specifiskā PX failu formāta, uz plašākām atkalizmantošanas vajadzībām ērtāku CSV formātu. Kā pirmais piemērs tika nopublicēts viens no [CSB publicētajiem banku rādītājiem](http://data.opendata.lv/ugisozols/banku-raditaji/brg01).

Hakatonā tika identificētas arī vairākas jaunas idejas, pie kurām varētu strādāt, tādēļ noteikti būs nākamais hakatons - droši vien kaut kad rudenī. Vēlējos aicināt iesaistīties atvērto datu aktivitātēs arī dažādu augstskolu pārstāvjus – ir projekti, kur var iesaistīties IT nozares studenti, lai apstrādātu un sagatavotu dažādus datus, gan arī pēc tam šos datus var izmantot žurnālistikas un dažādu sociālu zinātņu nozaru studenti, lai balstoties uz tiem veiktu pētījumus. Ja ir kādas idejas, tad lūdzu kontaktējiet mūs [Google diskusiju grupā](https://groups.google.com/forum/?fromgroups#!forum/opendata_lv).

Nobeigumā gribēju pateikties uzņēmumam [eBIT](http://www.ebit.lv/), kas arī šoreiz nodrošināja telpas hakatonam, kā arī bija plaši pārstāvēts dalībnieku vidū. Kā arī pateikties [Providus](http://providus.lv/) un Lindai Austerei par atbalstu [data.opendata.lv](http://data.opendata.lv) portāla tapšanā.

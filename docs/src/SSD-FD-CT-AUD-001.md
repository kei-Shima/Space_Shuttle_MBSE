# 音声分配（ACCU・ATU）（AUD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-AUD-001 |
| 表題 | 音声分配（ACCU・ATU）（AUD）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

ACCUを中心に、ATU・スピーカユニット・CCU・音声センタパネル・携帯通信機器で、乗員どうしと外部（S帯PM・Ku帯・UHF・SSOR経由のMCC、ISS）との音声を分配し、C/Wのトーンを配る機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-AUD-01 | 音声分配系（ADS）は機内に音声信号を配り、乗員どうしとS帯PM・Ku帯・UHF・SSOR経由のMCCなど外部との通信の手段となり、C/W系のトーン信号と3台のTACANの識別符号の音声も扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/185） |
| F-CT-AUD-02 | 主な要素は、内部冗長のLRUで中央交換台として働くACCU、乗員通信局のATU、スピーカユニット、音声センタパネル、携帯通信機器、CCUジャックである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/185） |
| F-CT-AUD-03 | 音声系には、A/G 1、A/G 2、A/A（UHF SPLX）、ICOM A、ICOM B、PAGE、C/W、TACANの8つのループがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/186） |
| F-CT-AUD-04 | A/G 1・2はS帯PM・Ku帯系で地上と、EVA中はSSORでEV乗員と通信し、A/AはUHFに対応する地上局の上空でUHF（ATC）系によりMCCと通信する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/186） |
| F-CT-AUD-05 | ACCUはミッドデッキの前方アビオニクスベイにあり、同じ筐体に冗長な2台を持つが、一度に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/186） |
| F-CT-AUD-06 | パネルC3のAUDIO CENTERスイッチを1にするとESS 2CA AUD CTR 1、2にするとMN C AUD CTR 2の遮断器（パネルR14）から給電され、OFFではACCUの電力がすべて断たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/187） |
| F-CT-AUD-07 | ACCUは打上げアンビリカルのICOM A・Bのチャネルも働かせ、どの乗員局のATUも打上げ管制センター（LCC）とインターコムで通話でき、アンビリカルで扱うのはインターコムだけである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/187） |
| F-CT-AUD-08 | ATUは乗員室の6か所（パネルO5、O9、R10、L9、MO42F、AW18D）にあって各音声ループの選択と音量を制御し、電源スイッチはAUD/TONE、AUD、OFFの3位置である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/188） |
| F-CT-AUD-09 | 4台のATU（パネルO5、O9、AW18D、R10）は、故障したATUの乗員がCONTROLノブで別のATUへ切り替えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/191） |
| F-CT-AUD-10 | スピーカユニットはパネルA2とMO29Jにあり、上のスピーカは音声用、下はクラクソン・サイレン専用である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/192） |
| F-CT-AUD-11 | パネルA1Rの音声センタは、SSOR（UHFスイッチ）・ドッキングしたISS（Spacelabスイッチ）との音声と記録するループを選び、VOICE RECORD SELECTの2つのノブで選んだ音声をNSP経由で記録器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/192） |
| F-CT-AUD-12 | 打上げ・再突入では、各乗員が騒音を和らげA/G通信を明瞭にするため打上げ・再突入用ヘルメットを着け、CCAのヘッドセットをHIU・通信ケーブル・CCUを介してATUにつなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/193） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-09 | 警報系（C/W） | データ・指令 | 受信 | C&W電子ユニットの2台のトーン発生器（A・B）は、クラクソン・サイレン・C&Wトーン・アラートトーンをパネルR13Uの音量調整器を通してACCUへ送り、ACCUがヘッドセットと各スピーカユニットの1基のスピーカへ配る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119）クラクソン（乗員室の圧力）とサイレン（火災）のC/W信号は、スピーカの電源が切れていても直接スピーカユニットへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/189） | 上位: IF-ORB-43 |
| IF-CT-12 | 電力系（EPS）：直流配電 | 電力（28 VDC） | 受信 | ACCUの主系にはパネルR14のESS 2CA AUD CTR 1、副系にはMN C AUD CTR 2の遮断器から、パネルC3のAUDIO CENTERスイッチの選択に応じて直流電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/187）音声の各パネルには、パネルR14のMNA・MNB・MNC・ESS 1BC・ESS 2CAの遮断器（AUD L、AUD Rなど）から給電する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=52） | 上位: IF-ORB-14 |
| IF-CT-15 | S帯PM・FM通信 | データ・指令 | 双方向 | 働いているNSPはACCUから1本（低データレート）または2本（高データレート）のA/Gのアナログ音声を受けてデジタル化し、フォワードリンクでは逆に1本または2本のアナログ音声をACCUへ出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167）パネルA1RのVOICE RECORD SELECTで選んだ音声は、NSPを経て記録器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/192） | — |
| IF-CT-17 | UHF（SPLX・SSOR） | データ・指令 | 双方向 | UHF MODEでSPLX・SPLX + G RCV・G T/Rのいずれかを選ぶと、UHF（ATC）送受信機は自動でACCUのA/A音声ループにつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181）SSORは、パネルA1Rの音声センタのUHFスイッチを通してオービタの音声系につながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Audio Distribution System（PDF p185〜196）：ACCU・ATU・スピーカユニット・音声センタパネル・携帯通信機器・CCUの構成と8つの音声ループ、ATUの操作と冗長の切替を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/185） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-65〜68（PDF p1699〜1701）：ACCUの喪失の定義、ACCUバイパスIFM、PLTとMSのATUの喪失、インターコムの喪失を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1699） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.1a NO AUDIO（PDF p52）：複数の音声パネルやUHF・NSPの音声を失ったときの、ATUの電源とAUD CTRスイッチによる切り分けとACCUの切替を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=52） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-1 ACCU BYPASS CONNECTOR INSTALLATION（PDF p111〜114）：ACCUの片方または両方の全故障後にA/G通信を回復するバイパスコネクタの取付け（25分）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=111） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-12 PRE-SLEEP AUD CONFIG (UNDOCKED)（PDF p56）：睡眠前にミッドデッキのスピーカのATUをA/G 1送受信・A/G 2受信などに構成する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=56） |
| CT-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 9.3節 Audio Annunciation Control（PDF p119）：2台のトーン発生器の4つの警報トーンを、ACCU経由、専用のスピーカ、ACCUのバイパス、睡眠ステーションのヘッドセットへ出す3つの出力を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） |
| CT-09 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | 3-2 EMU POWERUP AND COMM CHECK（PDF p68〜69）：音声センタのUHF A/A・A/G、IVAのATUの構成と、EMUとの機上A/A通話の点検の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=69） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4.3節（PDF p39）：ミニヘッドセットと無線送受信機の使用で音声品質が良好で、STS-1で見られた音響帰還がなかったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39） |
| CT-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.4.3節（PDF p24）：乗員がWCCU（無線乗員通信装置）とミニヘッドセットを使ったことを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 音声の各パネルには、パネルR14のMNA・MNB・MNC・ESS 1BC・ESS 2CAの遮断器（AUD L、AUD R、AUD MSなど）から給電される（MAL 2.1aの公称構成）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=52）

> **注記** STS-2では、ミニヘッドセットと無線送受信機を使い、音声品質は良好で、STS-1で見られた音響帰還（ハウリング）は起きなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p185） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/185
2. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p186） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/186
3. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p187） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/187
4. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p188） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/188
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.4節 Communications（Audio Terminal Unit）（PDF p191） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/191
6. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p192） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/192
7. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p193） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/193
8. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 9.3 Audio Annunciation Control（PDF p119） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119
9. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p189） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/189
10. JSC-48027 Rev. F Malfunction Procedures（MAL） 2.1a NO AUDIO（PDF p52） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=52
11. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p167） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167
12. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p181） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181
13. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p184） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184
14. STS-2 Orbiter Mission Report 2.3.4.3 Audio Distribution（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39
15. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |

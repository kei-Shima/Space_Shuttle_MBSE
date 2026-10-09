# 推進薬供給（PMS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-PMS-001 |
| 表題 | 推進薬供給（PMS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図50 MPS 機能構成 |

## 1. 目的

外部タンクのLO2・LH2を17インチの切離し弁、供給配管マニホールド、12インチの供給ライン、プリバルブを通して3基のSSMEへ送る機能と、ETタンクのアレージ加圧（GO2・GH2）、マニホールドの圧力逃がし、推進薬の低液位検知、MPSの弁の形式を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-PMS-01 | 推進薬管理系（PMS）はマニホールド・分配ライン・弁から成り、ETのLO2・LH2をエンジンへ送るとともに、エンジンからETへ加圧ガスを送るラインを含む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/590） |
| F-MPS-PMS-02 | 後部胴体にはLO2用とLH2用の2本の直径17インチの供給配管マニホールドがあってそれぞれETの対応するラインにつながり、オービタ内で各エンジンへの3本の12インチ供給ラインに分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/591） |
| F-MPS-PMS-03 | 各供給ラインのオービタとETの境界には切離し弁が2個（マニホールドのオービタ側とET側に1個ずつ）あり、4個ともET分離の前に自動で閉じられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/592） |
| F-MPS-PMS-04 | 3本の12インチ供給ラインには各エンジンへのLO2・LH2を遮断または通すプリバルブがあり、大部分は自動で動作するが、パネルR4のLO2・LH2 PREVALVE LEFT・CTR・RIGHTスイッチ（OPEN・GPC・CLOSE）でも操作できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） |
| F-MPS-PMS-05 | LH2・LO2の各マニホールドには直径1インチのラインが供給ライン逃がし遮断弁と逃がし弁へつながり、遮断弁がMECO後に自動で開くとマニホールドの過大な圧力を逃がし弁から船外へ逃がす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/592） |
| F-MPS-PMS-06 | アレージ加圧系はGO2用とGH2用の2本のET加圧マニホールドから成り、各マニホールドには各エンジンから1本ずつ計3本の直径0.63インチの加圧ラインがあって、ETに入る前に共通のマニホールドに合流する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） |
| F-MPS-PMS-07 | 上昇中のLO2タンク圧は固定オリフィスで20〜25 psigに保たれ、30 psigを超えるとLO2タンクのベント・逃がし弁から逃がされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） |
| F-MPS-PMS-08 | LH2タンク圧は各SSMEの可変・固定オリフィスで32〜34 psiaに保たれ、流量制御弁は3個のLH2圧力トランスデューサの1つで制御されて32 psia未満で開き33 psiaで閉じ、28 psiaを下回るとパネルR2のMPS LH2 ULL PRESSスイッチをOPENにして3個の流量制御弁を全開にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/594） |
| F-MPS-PMS-09 | 流量制御弁の制御系は単一系統で、アレージ圧センサ1は中央、2は左、3は右のSSMEの電子回路だけにつながり、流量制御弁1個の閉故障ではアレージ圧は28.0 psiaを下回らないが、2個が閉故障すると28.0 psia以上に保てない（A5-154）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091） |
| F-MPS-PMS-10 | 推進薬の低液位による停止のため、LO2の枯渇は供給配管マニホールド内の4個のセンサで、LH2の枯渇はLH2タンク底部の4個のセンサで検知し、いずれかの系で4個のうち2個が乾きを示すとGPCが制御器にMECOを指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608） |
| F-MPS-PMS-11 | MPSの弁は電気式か空圧式で、大きな荷重のかかる液体推進薬の流れの制御には空圧弁を、気体推進薬の流れのような軽い荷重には電気弁を用いる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/594） |
| F-MPS-PMS-12 | 空圧弁のうちタイプ1（開閉ともに空圧を要する双安定弁）は17インチ切離し弁・プリバルブ・充填排出弁・LH2の4インチ再循環切離し弁に、タイプ2（ばねで一方の位置に戻る弁）はLH2 RTLSダンプ弁・逃がし遮断弁・トッピング弁などに使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/595） |
| F-MPS-PMS-13 | LO2・LH2のマニホールド圧は、OMS/MPS MEDS表示の2個のMPS PRESS ENG MANFメータとBFS GNC SYS SUMM 1（MANF P LH2・LO2）で監視できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/591） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MPS-01 | 外部タンク（ET） | 推進薬・流体 | 双方向 | LO2・LH2は、外部タンクから17インチのET/オービタ切離し弁を通ってオービタの供給配管マニホールドへ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）打上げ前の充填では、推進薬はマニホールドから供給配管アンビリカル切離し部を通ってETのタンクへ入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605） | 上位: IF-ORB-15 |
| IF-MPS-02 | 外部タンク（ET） | 推進薬・流体 | 送信 | 各エンジンからのGO2・GH2を2本のET加圧マニホールドで集めて外部タンクへ送り、運転中の推進薬タンクの圧力を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593）GH2は各SSMEの加圧系統から2インチの加圧ラインを通ってETのLH2タンクのアレージへ送られる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1093） | 上位: IF-ORB-15 |
| IF-MPS-04 | 打上げ処理システム（KSC） | 推進薬・流体 | 受信 | 打上げ前は、T-0アンビリカルから送る地上のヘリウムでET加圧マニホールドを通してETを加圧し、T-0のセルフシール式迅速継手は離昇時に切り離される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593）T-2分55秒にLPSがLO2タンクのベント弁を閉じ、地上支援設備のヘリウムでLO2タンクを21 psigに加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） | 上位: IF-ORB-29 |
| IF-MPS-08 | 警報系（C/W） | データ・指令 | 送信 | LH2マニホールド圧が65 psiaを、LO2マニホールド圧が249 psiaを超えるとMPSライトとBACKUP C/W ALARMが点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603）軌道上（OPS 2）ではMPSのソフトウェアC&Wがないため、マニホールド圧の限界逸脱はハードウェアC&W（MPSライトとマスタアラーム）だけで知らされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/604） | 上位: IF-ORB-41 |
| IF-MPS-10 | 主エンジン本体 | 推進薬・流体 | 送信 | 各12インチ供給ラインの推進薬はプリバルブを通り、LH2は低圧燃料ターボポンプ、LO2は低圧酸化剤ターボポンプの入口からエンジンに入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）LO2はLO2供給配管マニホールドから3本のエンジン用LO2供給ラインでエンジンへ分配される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） | — |
| IF-MPS-11 | 主エンジン本体 | 推進薬・流体 | 受信 | 各SSMEでは、高圧酸化剤ターボポンプの主ポンプからのLO2の一部を酸化剤熱交換器で気化したGO2と、低圧燃料ターボポンプからのGH2の一部を加圧ラインへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593）GH2は逆止弁2個・オリフィス2個・流量制御弁を通ってからETへ入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） | — |
| IF-MPS-13 | ヘリウム・空圧 | 推進薬・流体 | 受信 | 空圧ヘリウム供給タンクは、推進薬管理系のすべての空圧作動弁を動かす圧力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）タイプ1の弁では、開・閉の各ポートの電磁弁に通電するとヘリウムの圧力で空圧弁が開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/595） | — |
| IF-MPS-15 | 充填・ダンプ・不活性化 | 推進薬・流体 | 双方向 | LO2・LH2の各マニホールドには、内側と外側の充填排出弁を直列に持つ8インチの充填排出ラインがつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/591）MECO後のダンプでは、マニホールドのLH2が内側・外側の充填排出弁とトッピング弁から2分間船外へ流れ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Propellant Management System」（PDF p590〜596）：マニホールド、切離し弁、プリバルブ、逃がし弁、アレージ加圧系、MPSの弁の形式を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/590） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-9・A5-154〜A5-157（PDF p1027〜1098）：LH2アレージの漏れの判定、LH2タンク加圧の手動制御、低LH2 NPSPのリミット管理と手動絞り、アボートの選択、ETの低液位センサの故障を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1027） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p100）：最小運転NPSPの要件、流量制御弁2個の閉故障を想定した予測、LH2アレージ圧スイッチを開ける最も早い時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=100） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-209X（PDF p240）：LO2の17インチ切離し弁の位置表示の故障について、RI/NASAの臨界度2/1R（PFP）をIOAが受け入れたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=240） |
| MP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 図C.25（PDF p96）：MPSのFMEA/CIL評価の件数と、LH2充填排出弁・ET/オービタのLO2・LH2切離し・LO2プリバルブの図を示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=96） |
| MP-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：ハードウェアC&WのチャネルにMPSのLH2・LO2マニホールド圧（79・69）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：打上げ前の加圧でアレージ圧がLO2タンク20〜22 psig、LH2タンク41〜44 psiaの制御帯に収まったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：上昇中の供給ラインの温度・圧力はICDの要件内で、飛行後の点検でLO2の17インチ切離し部の流路管（ライナ）の損傷が見つかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p22：加圧系がエンジン始動と飛行の間正常に働き、アレージ圧の一時的な落込みの最小値を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p38：GH2流量制御弁が正常に作動して弁ごとの作動回数を記し、ポペットの割れの件で次の整備で取り外して点検するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=38） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOM（PDF p592）は逃がしラインを「各8インチのLH2・LO2マニホールド」に設けるとするが、同じ節（PDF p591）は供給配管マニホールドを直径17インチとし、8インチは充填排出ラインの径である。本書は17インチの供給配管マニホールドに逃がしラインがあると解した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/592）

> **注記** 検証メモ：上昇中のLH2タンク圧を、SCOMの加圧系の記述（PDF p594）は32〜34 psia、運用の記述（PDF p607）は32〜34 psigとする。運用飛行規則A5-154（PDF p1091）は流量制御弁でLH2タンクのアレージ圧を32〜34 psiaに保つとしており、本書はpsiaとした。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091）

> **注記** IOA（1988年）は、LO2の17インチ切離し弁（PD1）の位置表示の故障（開の表示が点いたまま）にRI/NASAが付けた臨界度2/1R（PFP）を受け入れた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=240）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p590） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/590
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p591） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/591
3. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p592） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/592
4. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p593） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p594） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/594
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-154 LH2 TANK PRESSURIZATION [CIL]（PDF p1091） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1091
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p608） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/608
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p595） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/595
9. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
10. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p605） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-155 LIMIT SHUTDOWN CONTROL AND MANUAL THROTTLING FOR LOW LH2 NPSP（PDF p1093） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1093
12. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p603） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603
13. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p604） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/604
14. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p598） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598
15. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p610） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610
16. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.16 MPS-209X LO2 Feed Disconnect (PD1)（PDF p240） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=240
17. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |

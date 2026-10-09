# 空気回収・均圧（USC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-RCRS-USC-001 |
| 表題 | 空気回収・均圧（USC）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-RCRS-001 |
| 関連図 | SSD-SYS-ARC-001 図28 再生式CO2除去装置 機能構成 |

## 1. 目的

6個の均圧弁（PEV）とullage-save圧縮機（USC）で、再生に入るベッドの空気を吸い出して乗員室へ戻し、両ベッドの圧力をそろえて真空サイクル弁を開ける状態にし、真空へ失うキャビン空気を減らす機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-RCRS-USC-01 | 6個の均圧弁（PEV）は、化学ベッドの圧力をそろえたり調整したりし、ullage-save圧縮機がベッドを排気できるようにする（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| F-ARS-RCRS-USC-02 | 各PEVは通電で開く2つのコイルを持つソレノイド弁で、2台の制御器がそれぞれ一方のコイルを動かすため、コイル1つや制御器1台を失っても系統は失われない。電源を失うと弁は自動で閉じる（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| F-ARS-RCRS-USC-03 | ullage-save圧縮機は各脱着工程の始めに脱着するベッドを排気し、抜いた空気を乗員室へ戻して、真空へ捨てるキャビン空気を減らす。元のキャビン圧に応じてベッド内の空気の70〜80%を回収し、圧縮機出口の消音器が騒音を下げる（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| F-ARS-RCRS-USC-04 | ステート4では、圧縮機がPEV 2を通して75秒間ベッドAの空気を吸い出し、14.7 psiaから約3 psiaまで下げる（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=220） |
| F-ARS-RCRS-USC-05 | ステート5ではPEV 2と5を開いて両ベッドの圧力をそろえ、再生に入るベッドに残る空気の半分を他方のベッドへ移す（ベッドの空気量の約10%を回収）。ステート4・5で再生するベッドの空気の最大90%を回収し、真空へ失う空気を約1.6 lb/日に抑える（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） |
| F-ARS-RCRS-USC-06 | ステート6では、PEV 1でベッドAを真空側へ減圧し、PEV 6でベッドBをキャビン空気で再加圧する30秒の工程で、ポペットの両側の圧力をそろえる。VCVは3.4 psiを超える差圧に逆らって動けず、これはベッドがキャビン空気と真空の両方に開くのを防ぐための制限である（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） |
| F-ARS-RCRS-USC-07 | 半周期の最後（ステート12）では、PEV 3でベッドAをキャビン空気で再加圧し、PEV 4でベッドBを真空へ排気して、26分の周期を終える（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224） |
| F-ARS-RCRS-USC-08 | 圧縮機が故障してもRCRSは運転を続けるが、再生のたびに真空へ失うキャビン空気が増え、この事象は飛行中にも起きている（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| F-ARS-RCRS-USC-09 | 圧縮機は起動30秒後に、排気中のベッドの圧力が開始時の2/3未満に下がったかを確かめ、下がらなければ制御器を入れ直すか他方の制御器を選ぶまで止められる。この故障では故障灯もテレメトリも出ず、ullage-saveの工程でベッド圧が下がらないことだけが手がかりになる（訓練マニュアル付録C.5）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） |
| F-ARS-RCRS-USC-10 | RCRSの運転は船外へのベント工程で窒素（N2）を消費し、長期飛行でN2の必要量が増える要因の一つとなる（訓練マニュアル2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） |
| F-ARS-RCRS-USC-11 | SCOMのRCRS系統図は、6個の均圧弁（PEV 1〜6）の弁組立と圧縮機を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCRS-04 | 吸着・再生ベッド（A・B） | 推進薬・流体 | 受信 | 再生に入るベッドの空気をullage-save圧縮機が均圧弁（PEV）を通して75秒間吸い出し、初めの14.7 psiaから約3 psiaまで下げる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=220）その後、均圧弁で両ベッドをつないで圧力をそろえ、再生に入るベッドに残る空気の半分を他方のベッドへ移す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） | — |
| IF-RCRS-06 | 制御器・運転シーケンス | データ・指令 | 受信 | 2台の制御器が6個の均圧弁それぞれの2つのコイルを1つずつ受け持ち、作動中の制御器が工程に応じて均圧弁を開閉し、ullage-save圧縮機を動かす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217）圧縮機は起動30秒後にベッド圧が開始時の2/3未満に下がったかを確かめ、下がらなければ制御器を入れ直すか他方を選ぶまで止められる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.2〜C.2.3（PDF p217〜224）：6個の均圧弁とullage-save圧縮機でベッドの空気を回収する仕組みを示し、ステート4・5で最大90%を回収して真空へ失う空気を約1.6 lb/日にすると述べる。2.2節（p23）はRCRSの運転がN2を消費するとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節の系統図（PDF p373）：6個の均圧弁（PEV 1〜6）の弁組立と圧縮機を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） |

## 5. 注記（出典間の相違・構成変更）

> **注記** ullage-save圧縮機が吸い出した空気は乗員室へ戻る（訓練マニュアル付録C.2.2）が、戻る位置は本文と系統図の抽出テキストからは確かめられないため、図28では独立のIFとして描いていない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）

> **注記** PEV 1・4を開いてベッドを真空へ排気する流れ（起動時とステート6・12）は、図28では吸着・再生ベッドから船外へのIF（IF-RCRS-03）に含めた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2 RCRS Hardware（続き）（PDF p217） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（ステート2〜4）（PDF p220） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=220
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（ステート5〜6）（PDF p221） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3（ステート12）・C.3 Controls（PDF p224） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.5 Fault Detection・C.6 Fault Messages（PDF p229） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.2節 Nitrogen System（PDF p23） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23
8. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 図 Regenerable Carbon Dioxide Removal System (RCRS)（PDF p373） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（図C-5・Startup）（PDF p219） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |

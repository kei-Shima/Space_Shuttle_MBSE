# 主C/W（ハードウェア）（PRI）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CW-PRI-001 |
| 表題 | 主C/W（ハードウェア）（PRI）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CW-001 |
| 関連図 | SSD-SYS-ARC-001 図62 C/W 機能構成 |

## 1. 目的

警報系のうちハードウェアで限界を監視する主C/W（クラス2）の入力・限界値・電源・自己試験を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CW-PRI-01 | 主C/Wは120の入力を監視でき、入力は変換器から信号調整器または前方MDMを経て受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-PRI-02 | 120入力のうち95は変換器から直接、5はGPCの入出力処理装置から、18はGPCソフトウェアからMDMを経て入り、2は予備である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124） |
| F-CW-PRI-03 | 入力はアナログ（0〜5 V DC）または2値の離散信号で、すべて上限・下限の検出ができるように作られている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124） |
| F-CW-PRI-04 | 各入力は80 Hzで標本化され、連続8標本（100 ms）限界を外れるとC/Wトーン・MASTER ALARM灯・F7の表示灯が作動し、パラメータ番号が記憶される。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） |
| F-CW-PRI-05 | 基準の限界値はアビオニクスベイ3のC/W電子装置に格納され、パネルR13Uで変えられるが、電源を失って回復すると元の値に戻る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-PRI-06 | C/W電子装置は内部の電源A・Bで給電され、電源AはESS 1BCからC/W A遮断器、電源BはESS 2CAからC/W B遮断器（パネルO13）を経て受電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-PRI-07 | 電源Aを失うと、BACKUP C/W ALARMを除くF7の全灯が点灯し、R13Uの状態灯・機能や主C/Wの限界監視を失う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-PRI-08 | C/W系Aには自己試験専用の8パラメータ（120〜127）があり、自己試験に失敗するとPRI C&W灯・MASTER ALARM灯・C/Wトーンが出る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-20 | 舵面・推力方向制御駆動 | データ・指令 | 受信 | ASAがサーボ弁をバイパスするとパネルF7の黄色のFCS CHANNEL警報灯が、エレボンの位置またはヒンジモーメントが飽和すると赤のFCS SATURATION警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512）主C&Wのハードウェアの表には、FCS SATURATION・FCS CH BYPASSのほか、IMU・ADTA・RGA/AA・L RHC・R/AFT RHC・OMS TVCのチャネルがある。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-DPS-11 | データバス網・MDM | データ・指令 | 受信 | 主C&Wの120入力のうち、5入力はGPCの入出力プロセッサから、15入力はMDMから受け、98入力はトランスデューサから直接受ける。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57）一部の入力は、GPCから飛行前方（FF）MDMを経由して主C&Wに入る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） | 上位: IF-ORB-41 |
| IF-MPS-07 | ヘリウム・空圧 | データ・指令 | 受信 | ヘリウムのタンク圧（1,150 psia未満）と調圧器Aの圧力（680 psia未満・810 psia超）の限界逸脱は、パネルF7のC/WマトリクスのMPSライト（赤）を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603）ハードウェアC&Wでは、中央・左・右のヘリウムのタンク圧と調圧器圧がそれぞれ別のチャネルに割り当てられている。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-MPS-08 | 推進薬供給 | データ・指令 | 受信 | LH2マニホールド圧が65 psiaを、LO2マニホールド圧が249 psiaを超えるとMPSライトとBACKUP C/W ALARMが点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603）軌道上（OPS 2）ではMPSのソフトウェアC&Wがないため、マニホールド圧の限界逸脱はハードウェアC&W（MPSライトとマスタアラーム）だけで知らされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/604） | 上位: IF-ORB-41 |
| IF-OMS-14 | OMSエンジン・GN2系 | データ・指令 | 受信 | エンジンを点火すべきときに燃焼室圧が80%未満か、停止すべきときに80%超になると、パネルF7のLEFT・RIGHT OMS警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/646）C/Wのハードウェアのチャネルは、OMS ENG-Lが27、OMS ENG-Rが57である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-OMS-15 | 推進薬貯蔵・分配 | データ・指令 | 受信 | 推進薬タンク圧が232 psia未満か284 psia超になると、パネルF7のLEFT・RIGHT OMS警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653）C/Wのチャネルは、酸化剤タンク圧が7（左）・37（右）、燃料タンク圧が17（左）・47（右）である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-OMS-16 | 推力方向制御（ジンバル） | データ・指令 | 受信 | OMSのピッチまたはヨーのジンバル故障を検知するとパネルF7のOMS TVC警報灯（ハードウェアのチャネル67）が点灯し、LEFTまたはRIGHT OMS灯も点くことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/134）指令位置とフィードバック位置に2°の差があると、L（R） OMS GMBLの故障メッセージが出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/664） | 上位: IF-ORB-41 |
| IF-RCS-12 | 推進薬貯蔵・分配 | データ・指令 | 受信 | 推進薬タンクのアレージ圧が200 psia未満か312 psia超になると、該当するLEFT RCS・FWD RCS・RIGHT RCSの赤色灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）燃料と酸化剤の量の差が9.5%を超えた場合も同じ灯を点灯させ、BACKUP C/W ALARMを作動させてDPSの表示に故障メッセージを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735） | 上位: IF-ORB-41 |
| IF-RCS-13 | 噴射器冗長管理 | データ・指令 | 受信 | RMが検知した噴射器の故障は、黄色のRCS JET灯と赤色のBACKUP C/W ALARM灯を点灯させ、DPSの表示に故障メッセージを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）PASSでは、噴射器のfail-on・fail-off・fail-leakでF(L,R) RCS X JETの故障メッセージを表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735） | 上位: IF-ORB-41 |
| IF-RCS-14 | ヘリウム加圧 | データ・指令 | 受信 | ポッドのヘリウム圧（燃料か酸化剤）が500 psi未満になると、F(L,R) He Pの故障メッセージを出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）このメッセージには、ポケットチェックリストのRCS LEAK ISOLの手順で対処する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=92） | 上位: IF-ORB-41 |
| IF-APU-15 | APU制御器 | データ・指令 | 受信 | APU制御器が監視する回転数が80%未満または129%超になると、自動停止の有効・禁止によらずF7のAPU UNDERSPEED・APU OVERSPEEDの警報灯が点灯し、警報音が出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）主C/WのハードウェアにはAPU 1〜3のOVERSPEED（チャンネル68・78・88）とUNDERSPEED（98・108・118）が割り当てられている。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-APU-16 | 主油圧ポンプ・供給 | データ・指令 | 受信 | 各油圧系のフィルタモジュールの圧力センサAは、系統1・2・3のいずれかの圧力が2,400 psi未満になるとF7の黄色のHYD PRESS灯へ入力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100）油圧が2,400 psi未満になると、赤のBACKUP C/W ALARMも点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106） | 上位: IF-ORB-41 |
| IF-CW-01 | 電力系：直流配電（EPS） | 電力（28 VDC） | 受信 | C/W電子装置の電源AはESS 1BCからC/W A遮断器、電源BはESS 2CAからC/W B遮断器（パネルO13）を経て受電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 上位: IF-ORB-14 |
| IF-CW-02 | 環境制御・生命維持（ECLSS） | データ・指令 | 受信 | 主C/Wの入力には、客室圧力・PPO2・O2/N2流量・フレオンループ流量・水ループのポンプ出口圧などのECLSSのパラメータがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/116） | 上位: IF-ORB-41 |
| IF-CW-04 | 表示・警報音 | データ・指令 | 送信 | 主C/Wの警報ではF7の該当灯・4つのMASTER ALARM灯・C/Wトーンが作動し、GPCの故障メッセージは出ない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | — |
| IF-CW-07 | C/W運用管理 | データ・指令 | 受信 | パネルR13UのPARAMETER SELECTのつまみが、パラメータの有効化・抑止と限界の設定・読出しのためにC/W電子装置へ信号を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/125） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Operations（PDF p124〜126）：主C/Wの120入力の内訳、通常・上昇・確認の3モード、R13Uの操作を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 4.3〜4.4節（PDF p57〜70）：主C&Wの入力・標本化・限界の比較、R13U、電源、自己試験を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-160 A（PDF p1474）：運用していない主C&Wのパラメータの抑止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.1a PRIMARY C/W（PDF p116〜118）：PRIMARY C/W灯の点灯条件と、C/W A遮断器を開いて冗長を確かめる手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=116） |
| CW-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | ORBIT OPS CUE CARDS（PDF p31）：R11 の裏面に主C/Wパラメータの対照表のカードがあることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=31） |
| CW-06 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | C-1 CAUTION AND WARNING ELECTRONICS UNIT CONTINGENCY PWR（PDF p137）：電源A・Bの故障時にC/W電子装置へ電源を与える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=137） |
| CW-09 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | ECLSS の計装（PDF p16）：ECLSSのセンサが主C/Wの入力になることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=16） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 資料間の相違：主C/Wの120入力の内訳は、SCOM（2008年）では変換器95・GPCの入出力処理装置5・GPCソフトウェア18・予備2、C&W 訓練マニュアル（USA006019）では変換器98・入出力処理装置5・MDM 15・予備2である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
2. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p124） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124
3. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.3節 Primary C&W（PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57
4. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.5節 Backup C&W（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p512） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/512
6. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p603） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p604） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/604
9. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p646） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/646
10. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p653） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653
11. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p134） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/134
12. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p664） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/664
13. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
14. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 7.3 Fault message table（Comments）（PDF p92） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=92
15. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p90） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90
16. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p100） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100
17. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p106） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106
18. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Hardware Caution and Warning Table（PDF p116） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/116
19. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p125） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/125
20. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |

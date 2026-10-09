# C/W運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CW-OPS-001 |
| 表題 | C/W運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CW-001 |
| 関連図 | SSD-SYS-ARC-001 図62 C/W 機能構成 |

## 1. 目的

警報系の限界の設定・抑止の運用と、喪失の定義・Go/No-Goなどの飛行規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CW-OPS-01 | パネルR13Uは主C&Wとの乗員のインタフェースで、限界の確認・変更、パラメータの有効化・抑止、状態の確認、記憶の読出しを行う。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=62） |
| F-CW-OPS-02 | 一部の限界と監視するパラメータの一覧は飛行段階で変わり、乗員はR13UのPARAM ENABLE/INHIBITとLIMITのスイッチで現在の構成に合わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/125） |
| F-CW-OPS-03 | SPEC 60 SM TABLE MAINTはPASS SMのパラメータとの乗員のインタフェースで、バックアップC/W・アラートの各パラメータの上下限・ノイズフィルタ値・有効/抑止を読み、変えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127） |
| F-CW-OPS-04 | 限界の変更はSPEC 60で乗員が入力するか、地上からテーブル保守ブロック更新（TMBU）でアップリンクする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127） |
| F-CW-OPS-05 | 運用していない主C&Wのパラメータは、同じ灯を使うほかのパラメータを隠さないよう抑止し、迷惑警報を出すバックアップC&Wのパラメータも抑止する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| F-CW-OPS-06 | 主C&WとバックアップC&Wの限界値は、安全化の再構成を促す警報をフェイルセーフに行うため同じ値に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| F-CW-OPS-07 | 電源A・Bの両方を失うと主・バックアップ・SMのすべてのC&W灯とトーンを失ったとみなし、電源Aの喪失や自己試験の失敗では主C&Wを失ったとみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1437） |
| F-CW-OPS-08 | 軌道上の系統Go/No-Go基準では、主C&WとバックアップC&Wの両方を失うと次のPLSで帰還する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=803） |
| F-CW-OPS-09 | R13Uを使わないときは、PARAMETER SELECTのつまみを119より大きい値にしておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/131） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EVA-15 | 合図と運用管理 | データ・指令 | 受信 | 10.2 psiへの減圧、10.2 psiでの運用、14.7 psiへの再与圧の各段階でキャビン圧・PPO2などのC/W・FDAの限界値を設定し直し、MCCがB/U C/WとSMアラートの限界値を送る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=56） | — |
| IF-CW-07 | 主C/W（ハードウェア） | データ・指令 | 送信 | パネルR13UのPARAMETER SELECTのつまみが、パラメータの有効化・抑止と限界の設定・読出しのためにC/W電子装置へ信号を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/125） | — |
| IF-CW-08 | バックアップC/W（ソフト） | データ・指令 | 送信 | SPEC 60では、PASS SMのバックアップC/W・アラートの各パラメータの上下限・ノイズフィルタ値・有効/抑止を読み、変えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127） | — |
| IF-CW-09 | アラート・限界表示 | データ・指令 | 送信 | アラートの前提条件付けに使う定数は、乗員またはMCCがSPEC 60で変えられるが、変えることはまれである。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=81） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 SPEC 60・Summary Data・Rules of Thumb（PDF p127〜131）：限界の保守の操作と運用の要点を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/131） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 4.4.1節（PDF p62〜66）：R13Uでの限界の確認・変更と有効化・抑止の操作を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=62） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A2-1001（PDF p803）：主・バックアップC&Wの両方の喪失を次のPLSとする基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=803） |
| CW-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | O2 REPRESS（PDF p172）：作業の前後でC/W・FDAの限界を表のとおりに設定し直す手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=172） |
| CW-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | ARPCS（PDF p48）：既知の誤指示に対して警報を抑止する運用の実例を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| CW-08 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.18.4節（PDF p501）：全員が眠るときは1人のヘッドセットを睡眠区画のトーン接続口につなぎ、C&W警報を受けられるようにすることを述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=501） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.4.1 Panel R13U（PDF p62） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=62
2. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p125） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/125
3. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p127） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-160 Caution and Warning (C&W)（PDF p1474） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-4 CAUTION AND WARNING (C&W)（PDF p1437） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1437
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（PDF p803） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=803
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 C/W Summary Data・Rules of Thumb（PDF p131） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/131
8. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 1-6 10.2 PSI CABIN CONFIG（PDF p56） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=56
9. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 5.2.2.2 Preconditioning（PDF p81） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=81
10. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |

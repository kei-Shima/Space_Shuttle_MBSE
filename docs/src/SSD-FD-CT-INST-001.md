# 計装・ペイロード通信（INST）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-INST-001 |
| 表題 | 計装・ペイロード通信（INST）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

OIの変換器・DSC・OI MDM・PCMMUによる3,000を超えるパラメータの収集・形式化・分配と、SSRによる記録、PDI・PI・PSPによるペイロードとのデータ・コマンドの受け渡しを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-INST-01 | オービタのOIは機体とペイロードの変換器・センサの情報を収集・処理・分配し、監視するパラメータは3,000を超える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196） |
| F-CT-INST-02 | 計装系は変換器、DSC 14台、MDM 7台、PCMMU 2台、記録器2台、主時刻装置、機上点検装置から成り、センサと一部のDSCを除き前方・後方のアビオニクスベイにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196） |
| F-CT-INST-03 | DSCは周波数・温度・角速度・電圧・電流などのセンサの信号をMDMが受け付ける0〜5 V dcに変換し、14台は前方4、後方3、ペイロードベイ下3、左右の尾部4に分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196） |
| F-CT-INST-04 | OI MDMは多重化器としてだけ働き、PCMMUの要求に応じてデータを選び・デジタル化してOIデータバスで送り（要求・応答方式）、前方4台（OF）・後方3台（OA）がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） |
| F-CT-INST-05 | PCMMUはOI MDMのデータ、GPCのダウンリスト、PDIのペイロードテレメトリを受け、テレメトリ形式ロード（TFL）に従ってインタリーブ・形式化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） |
| F-CT-INST-06 | PCMMUのテレメトリはNSPを経てSSRにも送られて記録され、後でS帯FMまたはKu帯でダウンリンクされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） |
| F-CT-INST-07 | PCMMUはPROMとRAMの2つの形式メモリを持ち、電源を切ると（予備への切替時など）TFLはPROMの固定形式に変わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/198） |
| F-CT-INST-08 | 各MDMの主ポートはPCMMU 1、副ポートはPCMMU 2と働き、PCMMUはMTUから同期クロックを受け、それが無いときは自らの時刻で同期信号をPDIとNSPへ送り続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/198） |
| F-CT-INST-09 | 2台のSSRはOI系のデジタル音声とPCMデータを記録・ダンプし、MMUに内蔵されているためパネルA1ではMMU1・MMU2と表示され、乗員の操作器はなく地上指令だけで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199） |
| F-CT-INST-10 | ペイロード通信系のPI、PSP、PDI、PCMMUは前方アビオニクスベイにあり、ペイロード通信系への指令はペイロードMDM 1・2からGCILCを経て送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/180） |
| F-CT-INST-11 | PIは分離したペイロードとの全二重のRF通信を行う送受信機・トランスポンダで、PSPと互換のテレメトリはPSPが副搬送波から復調してPDIへ送り、互換でないものはKu帯系へ直接送る（ベントパイプ）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/180） |
| F-CT-INST-12 | PDIは付属・分離したペイロードからの最大6入力と地上支援装置の1入力を受け、4台のデコミュテータで最大4つのデータ流を処理してPCMMUへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-06 | DPS：データバス網・MDM | データ・指令 | 双方向 | 各GPCは専用の計装/PCMMUデータバスで自らのダウンリストを働いているPCMMUへ送り、PCMMUはこれをTFLに従って計装・ペイロードのデータとインタリーブする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234）PCMMUはOIとPDIのデータを、機上の表示と故障検知（クラス3アラーム）のためにSMとBFSのGPCへ供給する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1705） | 上位: IF-ORB-01 |
| IF-CT-14 | S帯PM・FM通信 | データ・指令 | 送信 | PCMMUはインタリーブ・形式化したデータをNSPへ送り、NSPがACCUからのA/G音声と合わせてS帯PMのダウンリンクとKu帯のリターンリンクのチャネル1で送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197）PCMMUのテレメトリはNSPを経てSSRへも送られて記録され、後でS帯FMまたはKu帯でダウンリンクされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） | — |
| IF-CT-22 | DPS：マスタタイミングユニット | データ・指令 | 受信 | MTU は PCMMU・COMSEC・ペイロード信号処理器・FM 信号処理器と各種ペイロードへ信号を出す。GPC は毎秒累算器の時刻と自分の時刻を比べ、差が 1 ミリ秒未満なら累算器の時刻に合わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241）各 MDM の主ポートは PCMMU 1、副ポートは PCMMU 2 と働く。PCMMU は MTU から同期クロックを受け、無いときは自分の時刻で動き続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/198） | 上位: IF-ORB-01 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Instrumentation（PDF p196〜199）：OIの構成（変換器・DSC 14台・OI MDM 7台・PCMMU 2台・記録器2台）、PCMMUのTFLと冗長、MTUの同期、SSRを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-9・A11-71・A11-74〜77（PDF p1677〜1706）：記録器の使い方と喪失、PCMMUの喪失の定義と扱い、OI MDM・OI DSCの喪失時の継続を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1706） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.4 S62 BCE BYP（PDF p66〜78）：OI MDM・PDI・PSPとPCMMUの間のデータ経路の故障時のPCMMUの切替、I/O RESET、TFLの再ロードを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=67） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | P-49 PDI REPLACEMENT（PDF p319〜）：故障したPDIを予備品と交換する手順（2時間30分）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=319） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | PGSCの章の目次（PDF p36）：OCAとPCMMUのドッキングステーションカード、PCMMUを使わないPGSCの状態ベクトル更新などの手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=36） |
| CT-08 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 表1-1（PDF p13）：計装（INST）のFMEAをIOA 107件・NASA 96件（論点25件）、CILをIOA 22件・NASA 18件（論点5件）と集計する。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| CT-13 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | Communications and Tracking Subsystem（PDF p20）：OIが異常や問題なく公称に動作したことを報告する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20） |

## 5. 注記（出典間の相違・構成変更）

> **注記** ISSミッションでは、OIUがペイロード通信系とISSのMS 1553B機器の間の変換を行い、SSORへのMS 1553Bインタフェースも持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181）

> **注記** 検証メモ：運用飛行規則（2002年）はOps記録器（テープ）とSSRの両方を扱い、SSRを飛ばす場合はSSR 2が主エンジンとOpsのデータを同時に記録するとする。SCOM（OI-33）はMMUに内蔵したSSR 2台だけを記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1704）

> **注記** IOAの中間報告（1988年）は、計装（INST）のFMEAをIOA 107件・NASA 96件、CILをIOA 22件・NASA 18件と集計した。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p196） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196
2. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p197） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197
3. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p198） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/198
4. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p199） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199
5. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p180） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/180
6. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p181） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181
7. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p234） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-74 PCM MASTER UNIT (PCMMU)（PDF p1705） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1705
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-71 LOSS OF RECORDERS（PDF p1704） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1704
10. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
11. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
12. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p241） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-CT-22 を足した（GAP-09 の解消）（Rev. AU） |

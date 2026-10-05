# 主エンジン制御器（CTL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-CTL-001 |
| 表題 | 主エンジン制御器（CTL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図50 MPS 機能構成 |

## 1. 目的

各SSMEに取り付けた主エンジン制御器（DCU A・B）によるエンジンの点検・始動・推力と混合比の閉ループ制御・監視・停止の機能と、EIUを経るGPCとの指令・データの経路、交流電源の割当て、レッドライン監視、指令経路・データ経路の故障と電気的ロックアップを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-CTL-01 | 制御器は低圧燃料ターボポンプ側の推力室・ノズル冷却材出口マニホールドに取り付けた与圧・温度調節された電子機器で、2台の冗長なディジタル計算機ユニット（DCU A・B）を持ち、通常はDCU Aが制御しDCU Bは作動しているが制御はしない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585） |
| F-MPS-CTL-02 | エンジン制御要素への指示は毎秒50回（20ミリ秒ごと）更新され、二重冗長の構成により1つ目の故障の後も通常の運転を続け、2つ目の故障でフェイルセーフに停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585） |
| F-MPS-CTL-03 | 制御器はエンジンのセンサ・弁・アクチュエータ・スパーク点火器とともに自己完結した制御・点検・監視の系を成し、飛行準備の確認、始動・停止の順序制御、推力と混合比の閉ループ制御、センサ励起、性能限界の監視、性能・保守データを受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585） |
| F-MPS-CTL-04 | 制御器の電力は3系統の交流母線から冗長性を保つように供給され、各DCUは別々の母線から受電し、どの2母線を失っても失うエンジンは1基だけになるよう母線が割り当てられ、パネルR2には制御器ごとに2個（上がDCU A、下がDCU B）のMPS ENGINE POWERスイッチがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/586） |
| F-MPS-CTL-05 | 各制御器は専用のEIU（GPCおよび制御器とつながる特殊なMDM）を通じてGPCの指令を受け、各EIUは1基のSSMEだけに専用で、3台のEIUは互いにつながらない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） |
| F-MPS-CTL-06 | 冗長セットの各GPCは割り当てられた飛行重要データバスにエンジン指令を出し（通常はGPC 1〜4がFC 5〜8）、各EIUは4つの指令を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） |
| F-MPS-CTL-07 | EIUは受けた指令の伝送誤りを検査し、CIA 3のデータ選択論理で4つの指令を3つに減らして制御器へ送り、制御器は3つのうち2つ以上の有効な入力がないと指令経路故障とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588） |
| F-MPS-CTL-08 | 制御器はエンジンのセンサが与える圧力・温度・流量・ターボポンプ回転数・弁位置などを車両データテーブルにまとめ、3つの指令経路に対してデータは一次・二次の2経路でEIUへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588） |
| F-MPS-CTL-09 | 一次・二次のデータをともに失うとデータ経路故障となり、GPCは「MPS DATA C(L,R)」の故障メッセージを出してパネルF7の黄色のMAIN ENGINE STATUSライトを点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/589） |
| F-MPS-CTL-10 | 制御器がLH2流量計または主燃焼室圧力センサのデータを失うと混合比を制御できないため弁を最後の指令位置に保持する電気的ロックアップとなり、エンジンは推力を変えられないが停止の指令には従う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/589） |
| F-MPS-CTL-11 | 制御器は安全運転に重要な運転パラメータを監視し、高圧燃料ターボポンプ吐出温度1,860°R超、高圧酸化剤ターボポンプ吐出温度1,660°R超または720°R未満、中間シールパージ圧159 psia未満などのレッドラインを超えると、リミットが有効なら自動でエンジンを停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| F-MPS-CTL-12 | 制御器は、レッドラインのパラメータが限界または妥当性の基準を60ミリ秒（制御器の20ミリ秒周期で3回連続）超えたときに限り処置し、データの一時的な乱れでは動作しない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1012） |
| F-MPS-CTL-13 | 制御器の動作には交流の3相すべてと100 Vrms以上の電圧が必要で、500ミリ秒を超えて100 Vrmsを下回るとチャネルの切替え（AからB）またはエンジン停止となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/796） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-17 | 誘導・航法演算 | データ・指令 | 受信 | 第1段の誘導は、姿勢の指令に加えて、事前に定めたスロットル計画に従ってMPSのスロットルへ指令を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523）第2段では、誘導が主エンジンのスロットル指令を3 gを超えないように調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/524） | 上位: IF-ORB-21 |
| IF-DPS-05 | 上昇系インタフェース | データ・指令 | 双方向 | EIUは冗長セットのGPCから受けたエンジン指令を検証し、制御器インタフェース組立（CIA）を通じて担当するSSMEの制御器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588）エンジン制御器は全エンジンデータを車両データ表にまとめてEIUへ送り、EIUはGPCが要求するまで主・副のデータをバッファに保持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/589） | 上位: IF-ORB-06 |
| IF-MPS-05 | 電力系（EPS） | 電力（28 VDC） | 受信 | 各制御器のDCU A・Bは別々の交流母線から受電し、どの2母線を失っても失うエンジンは1基だけになるよう3基の制御器に母線を割り当てる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/586）各制御器は3系統の交流母線のうち2系統から受電し、1母線を失うと2基の制御器の冗長性を失う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） | 上位: IF-ORB-14 |
| IF-MPS-09 | 主エンジン本体 | データ・指令 | 双方向 | 制御器はエンジンのセンサ・弁・アクチュエータ・スパーク点火器とともに動作し、エンジンの制御・点検・監視を行う自己完結の系を成す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585）エンジンのセンサは圧力・温度・流量・ターボポンプ回転数・弁位置・サーボ弁アクチュエータ位置を制御器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588） | — |
| IF-MPS-17 | MPS運用管理 | データ・指令 | 双方向 | 乗員はパネルC3のMAIN ENGINE SHUT DOWN押しボタン（両接点が健全であること）でエンジンを手動停止し、指令経路故障のエンジンは交流電源スイッチと押しボタンで停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618）パネルF7のMAIN ENGINE STATUSライトは、停止・停止後の段階かレッドライン超過で赤、指令経路故障・油圧ロックアップ・電気的ロックアップ・データ経路故障で黄が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Space Shuttle Main Engine Controllers」（PDF p585〜590）：DCUの冗長、交流電源、EIUを経る指令・データの流れ、電気的ロックアップ、制御器のソフトウェアを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-2〜A5-7（PDF p1007〜1025）：エンジン停止の手がかり、レッドラインと妥当性検査の限界、制御器の電子回路の故障の組合せ、推力の固着、データ経路故障、レッドラインセンサの故障を定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1017） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p105）：上昇中に制御器の故障があった場合の軌道上の通電の禁止と、制御器電源の温度の上限を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=105） |
| MP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p22：打上げ前にSSME 2の60キロビットのデータにパリティ誤りが出たが、GPCと制御器をつなぐEIUの回路ではなく地上への伝送回路が原因とみられ、制御器とソフトウェアの性能は異常なしだったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p37：始動準備からダンプまで全エンジンで車両データテーブルに故障識別子（FID）が報告されなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 本書の解釈：EIUはSCOM 2.16節（PDF p587）でMPSの指令経路として述べられるが、SCOM 2.6節（PDF p225）はDPSに含まれる3台のSSMEインタフェースユニットとして挙げ、親文書のIF-ORB-06もDPS側の機器とする。本書はEIUをDPSの機器とし、制御器とEIUの間をIF-ORB-06（所有DPS）で扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）

> **注記** パネルR4のエンジン制御器ヒータのスイッチは機能せず、ヒータは不要と判明したため取り付けられていない（構成の変更）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/586）

> **注記** SODBは、上昇中に制御器の故障があった場合は故障の切り分けに要る記憶を失わないよう軌道上で制御器に通電せず、制御器電源の温度は175°Fを超えないこと（地上監視で150°Fに達したら電源を切る）を制約とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=105）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p585） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p586） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/586
3. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p587） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587
4. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p588） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p589） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/589
6. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p602） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-2 SPACE SHUTTLE MAIN ENGINE OUT（PDF p1012） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1012
8. Shuttle Crew Operations Manual 4.2 Engine Limitations（USA007587 Rev. A CPN-1、PDF p796） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/796
9. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p523） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523
10. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p524） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/524
11. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
12. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p618） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618
13. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p225） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225
14. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.1 Main Propulsion Subsystem（制御器）（PDF p105） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=105
15. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |

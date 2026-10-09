# 主エンジン本体（SSME）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-SSME-001 |
| 表題 | 主エンジン本体（SSME）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図50 MPS 機能構成 |

## 1. 目的

3基のSSME（中央・左・右）の構成と性能、ターボポンプ・プリバーナ・主燃焼室・ノズル・酸化剤熱交換器・ポゴ抑制系・推進薬弁から成るエンジン本体の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-SSME-01 | 3基のSSMEは再使用可能な高性能の可変推力液体ロケットエンジンで、液体水素を燃料兼冷却材、液体酸素を酸化剤とし、2基のプリバーナで高圧・比較的低温の部分燃焼を行ってから主燃焼室で高圧・高温の完全燃焼を行う二段燃焼サイクルを用いる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| F-MPS-SSME-02 | エンジンは中央（1番）・左（2番）・右（3番）と呼ばれ、各エンジンは30回の始動で15,000秒の運転に耐えるよう設計され、混合比は絞り範囲全体で6:1、ノズル面積比は77.5:1、長さ14 ft・ノズル出口径7.5 ft、質量は約7,000 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| F-MPS-SSME-03 | 推力は定格の67〜109%の範囲を1%刻みで絞ることができ、100%は海面375,000 lb・真空470,000 lb、104%は海面393,800 lb・真空488,800 lb、109%は海面417,300 lb・真空513,250 lbに相当する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| F-MPS-SSME-04 | 3基のエンジンには同じ推力指令が同時に与えられ、通常はGPCからエンジン制御器を通じて自動で与えられるが、一部の非常時には操縦士のスピードブレーキ/推力制御器で手動で絞ることができる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| F-MPS-SSME-05 | SSMEの主要構成要素は、燃料・酸化剤のターボポンプ、プリバーナ、高温ガスマニホールド、主燃焼室、ノズル、酸化剤熱交換器、推進薬弁である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| F-MPS-SSME-06 | 低圧燃料ターボポンプは液体水素を30 psiaから276 psiaへ、高圧燃料ターボポンプは276 psiaから6,515 psiaへ昇圧し、高圧ポンプの吐出は主燃料弁の後で主燃焼室の冷却・プリバーナ供給・ノズル冷却の3経路に分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/580） |
| F-MPS-SSME-07 | 低圧酸化剤ターボポンプは液体酸素を100 psiaから422 psiaへ、高圧酸化剤ターボポンプの主ポンプは422 psiaから4,300 psiaへ昇圧し、その吐出の一部は低圧酸化剤ターボポンプのタービン駆動と主酸化剤弁経由の主燃焼室への供給に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/581） |
| F-MPS-SSME-08 | 高圧酸化剤ターボポンプのタービンとポンプは同じ軸にあるため、両者の間の空洞をMPSのエンジン用ヘリウムで運転中連続してパージし、空洞のヘリウム圧が運転限界を下回ると主エンジン制御器がエンジンを自動停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/582） |
| F-MPS-SSME-09 | 主噴射器の中心には二重冗長の点火器を持つ小さな点火室があり、始動時に燃焼を始めさせて、燃焼が自立する約3秒後に切られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/583） |
| F-MPS-SSME-10 | 酸化剤熱交換器は高圧酸化剤ターボポンプ吐出の液体酸素を気化してタンク加圧とポゴ抑制に供し、ポゴ抑制系は高圧酸化剤ターボポンプ入口ダクトに取り付けた0.6 ft3のアキュムレータで機体からの低周波の流れの振動を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/583） |
| F-MPS-SSME-11 | エンジン停止時にはポゴアキュムレータをMPSヘリウムで加圧して高圧酸化剤ターボポンプ入口に正圧を与え、MECOに伴う加速度の急減によるタービンのキャビテーションと破損を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/584） |
| F-MPS-SSME-12 | 各エンジンの5個の推進薬弁（酸化剤プリバーナ酸化剤弁・燃料プリバーナ酸化剤弁・主酸化剤弁・主燃料弁・冷却材制御弁）は油圧で駆動されて制御器の電気信号で制御され、バックアップとしてMPSエンジン用ヘリウムで全閉できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/584） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MPS-09 | 主エンジン制御器 | データ・指令 | 双方向 | 制御器はエンジンのセンサ・弁・アクチュエータ・スパーク点火器とともに動作し、エンジンの制御・点検・監視を行う自己完結の系を成す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585）エンジンのセンサは圧力・温度・流量・ターボポンプ回転数・弁位置・サーボ弁アクチュエータ位置を制御器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588） | — |
| IF-MPS-10 | 推進薬供給 | 推進薬・流体 | 受信 | 各12インチ供給ラインの推進薬はプリバルブを通り、LH2は低圧燃料ターボポンプ、LO2は低圧酸化剤ターボポンプの入口からエンジンに入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）LO2はLO2供給配管マニホールドから3本のエンジン用LO2供給ラインでエンジンへ分配される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） | — |
| IF-MPS-11 | 推進薬供給 | 推進薬・流体 | 送信 | 各SSMEでは、高圧酸化剤ターボポンプの主ポンプからのLO2の一部を酸化剤熱交換器で気化したGO2と、低圧燃料ターボポンプからのGH2の一部を加圧ラインへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593）GH2は逆止弁2個・オリフィス2個・流量制御弁を通ってからETへ入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） | — |
| IF-MPS-12 | ヘリウム・空圧 | 推進薬・流体 | 受信 | 各タンク群のヘリウムは担当のエンジンへ送られ、飛行中のパージと緊急の空圧停止でのエンジン弁の作動に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）各SSMEの空圧制御組立はエンジン系統のヘリウムで加圧され、制御器の指令で中間シール空洞のパージ、ポゴ系のポストチャージ、空圧停止を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） | — |
| IF-MPS-16 | 油圧・推力方向制御 | 油圧 | 受信 | MPS/TVC遮断弁を開くと、5個の油圧作動エンジン弁（主燃料弁・主酸化剤弁・燃料プリバーナ酸化剤弁・酸化剤プリバーナ酸化剤弁・冷却材制御弁）に油圧がかかる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600）各SSMEのピッチ・ヨーのサーボアクチュエータはオービタの推力構造とSSMEのパワーヘッドに取り付けられ、エンジンを首振りさせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） | — |
| IF-MPS-22 | STR：後胴・推力構造・ポッド | 構造・荷重 | 送信 | 定格出力100%は海面で375,000ポンド、真空で470,000ポンド、104%は海面で393,800ポンド、真空で488,800ポンド、109%は海面で417,300ポンド、真空で513,250ポンドの推力に当たる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579）SSME 1基にヨー用とピッチ用の2台のサーボアクチュエータがあり、オービタの推力構造と SSME のパワーヘッドに取り付けられ、各々3系統の油圧のうち2系統（主・予備）から受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Space Shuttle Main Engines」（PDF p579〜585）：二段燃焼サイクル、推力レベル、ターボポンプ・プリバーナ・主燃焼室・ポゴ抑制系・推進薬弁・ダンプを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-8（PDF p1026）：SSMEの形式（Phase II・Block I/IA・Block IIA・Block II）と、ターボポンプ・主燃焼室の変更によるレッドラインの違いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1026） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p100）：エンジン始動時のLO2・LH2入口の温度・圧力の範囲と、範囲外のときに制御器またはGLSが始動を禁止することを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=100） |
| MP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.25節（PDF p95）：RI/NASAは主エンジンの順次の故障を冗長性の喪失とみなし、IOAはエンジンは互いに冗長でないとしたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95） |
| MP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p22：エンジンの始動・メインステージ・停止の性能が予測どおりで、停止時刻がSSME 1〜3で511.85〜512.07秒だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| MP-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p37：SSMEの性能は過去の飛行と同様で、最大動圧の絞りは72%の1段、比推力は104.5%で452.01秒だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| MP-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p33：最大動圧の絞りが72%の1段で、MECOはエンジン始動から512秒だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=33） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：104%の真空推力を、SCOMの本文（PDF p579）は488,800 lb、同じ節のMPS Summary Data（PDF p615）は488,000 lbとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/615）

> **注記** 運用飛行規則A5-112の根拠は1基の104%の推力を488,800 lbfとしており、本書はSCOMの本文の値（488,800 lb）を採った。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1062）

> **注記** 運用飛行規則A5-8はSSMEの形式をPhase II・Block I/IA・Block IIA・Block IIに分け、P&W製の高圧酸化剤ターボポンプ・大スロートの主燃焼室・P&W製の高圧燃料ターボポンプの導入でレッドラインが変わったとする（エンジンの形式による違い）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1026）

> **注記** SODBは、MPSの飛行性能は104%を超える出力では検証されておらず、104%を超える出力のデータは参考であって通常・インタクトアボートの計画には使わないと注記する。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=103）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p579） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p580） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/580
3. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p581） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/581
4. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p582） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/582
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p583） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/583
6. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p584） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/584
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p585） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p588） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588
9. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
10. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p593） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593
11. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p598） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598
12. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p600） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600
13. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p601） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601
14. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p615） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/615
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-112 MANUAL THROTTLEDOWN FOR LO2 NPSP PROTECTION AT SHUTDOWN（PDF p1062） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1062
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-8 SPACE SHUTTLE MAIN ENGINE TYPES（PDF p1026） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1026
17. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.1 Main Propulsion Subsystem（ヘリウムタンク・推力レベル）（PDF p103） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=103
18. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-MPS-22 を足した（GAP-09 の解消）（Rev. AU） |

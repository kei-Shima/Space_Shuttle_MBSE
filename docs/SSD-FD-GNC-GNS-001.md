# 誘導・航法演算（GNS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-GNS-001 |
| 表題 | 誘導・航法演算（GNS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

IMUと航法センサのデータで状態ベクトルを伝播・更新する航法と、上昇・軌道投入・軌道上・軌道離脱・再突入の各段階で目標の状態への操舵・スロットル指令を計算する誘導のソフトウェア機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-GNS-01 | 航法の基本機能は機体の慣性位置と速度（状態ベクトル）を時間に対して正確に推定することで、ランデブ時には目標の位置と速度も推定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469） |
| F-GNC-GNS-02 | 状態ベクトルはM50座標系の位置（X・Y・Z、ft）と速度（ft/s）の6要素とGMTの時刻タグで表される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469） |
| F-GNC-GNS-03 | 航法はIMU・航法センサのデータと重力・抗力・ベントのモデルで状態ベクトルを伝播し、時間とともに増える誤差は、地上のレーダ追跡に基づく新しい状態ベクトルまたは差分のアップリンクで修正される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469） |
| F-GNC-GNS-04 | 航法はSuper-G積分方式で状態ベクトルを伝播し、惰行中は大気抗力の加速度のモデルを使い、REL NAVでランデブ航法を有効にすると目標の状態ベクトルも伝播する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/526） |
| F-GNC-GNS-05 | 軌道離脱・再突入では3台のIMUそれぞれに基づく3つの状態ベクトルを伝播し、交換可能な中間値選択で1つの状態ベクトルを誘導・飛行制御・表示に渡す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/528） |
| F-GNC-GNS-06 | 再突入では外部センサのデータを期待誤差の範囲と照合して取り込み（カルマンフィルタ）、HORIZ SIT表示の操作で取り込みの強制・禁止・自動を選べ、悪いセンサデータによる航法の汚染を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530） |
| F-GNC-GNS-07 | 3系統GPSの機体では、軌道離脱・再突入の間は42秒ごと（17,000 ft以下は9秒ごと）に選択したGPSのベクトルを取り込み、MLSが使えるときはGPSの更新を自動で禁止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/531） |
| F-GNC-GNS-08 | 第1段の誘導は事前に計画した相対速度に対するロール・ピッチ・ヨーの姿勢表を使い、MPSのスロットルへも事前に定めたスロットル計画に従って指令を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523） |
| F-GNC-GNS-09 | 第2段の誘導はPEG 1の周期的な閉ループ方式で、MECOの目標条件（速度・半径・経路角・軌道傾斜角・昇交点経度）へ機体を導き、主エンジンのスロットル指令を3 gを超えないように調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/524） |
| F-GNC-GNS-10 | 軌道上の誘導は、UNIV PTGで指定した機体軸を目標に向ける姿勢変化を計算し、PEG 7（外部ΔV）で点火時刻と速度変化を指定したOMSまたはRCSの噴射を指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/526） |
| F-GNC-GNS-11 | 再突入の誘導は温度・動圧・垂直加速度の制限から機体を守る抗力加速度のプロファイルを飛び、迎角とバンク角で抗力を調整し、方位誤差に応じてロールリバーサルを指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/529） |
| F-GNC-GNS-12 | TAEMの誘導はエネルギー対距離のプロファイルに従ってHACを回り、A/Lの誘導は外側グライドスロープからプレフレアと最終フレア（30〜80 ft）を経て接地まで滑走路中心線へ導く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-01 | 慣性計測・アライメント | データ・指令 | 受信 | IMUは慣性姿勢と速度のデータをGNCソフトウェアへ送り、航法はそれで状態ベクトルを伝播し、誘導は姿勢データと状態ベクトルから操舵指令を作る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474）IMU SOPは、速度のM50座標への変換、レゾルバ出力のジンバル角への変換、表示用の加速度の計算などを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/479） | — |
| IF-GNC-02 | 航法援助・エアデータ | データ・指令 | 受信 | TACANの斜距離・磁方位、MLSの斜距離・方位角・仰角、ADTAの気圧高度を再突入の航法ソフトウェアへ送り、期待誤差の範囲内のデータを状態ベクトルの更新に取り込む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530）各航法装置は、5台のGPCにつながる8台の飛行重要MDMの1台に配線される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474） | — |
| IF-GNC-04 | DAP・飛行制御センサ | データ・指令 | 送信 | 誘導は航法の状態ベクトルと姿勢データから飛行制御への操舵指令を作り、飛行制御はIMUの姿勢データを使って舵面・エンジンジンバル・RCSジェットの指令に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474）制御ソフトウェアは状態ベクトルの情報で舵効を選び、制御ゲインを設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/470） | — |
| IF-GNC-07 | 乗員操縦・表示 | データ・指令 | 送信 | 機体と目標の状態ベクトルの情報は、専用表示とGNCのDPS表示で乗員に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469）HSIのSOURCEスイッチをNAVにすると、HSIには航法処理部のデータが表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/291） | — |
| IF-GNC-17 | 主推進系（MPS） | データ・指令 | 送信 | 第1段の誘導は、姿勢の指令に加えて、事前に定めたスロットル計画に従ってMPSのスロットルへ指令を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523）第2段では、誘導が主エンジンのスロットル指令を3 gを超えないように調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/524） | 上位: IF-ORB-21 |
| IF-DPS-03 | データバス網・MDM | データ・指令 | 双方向 | 各MDMは指令を割り当てられたGPCから受け、配線されたGNC機器から要求されたデータを取得してGPCへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235）同種のGNC機器は複数台が別々のMDMと飛行重要バスに配線され、冗長な機器は別々のストリングにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） | 上位: IF-ORB-02 |
| IF-CT-08 | Ku帯通信・レーダ | データ・指令 | 受信 | 自動追尾モードでは、Ku帯系がアンテナの角度・角速度・距離・距離変化率をMDMを通してランデブ・近傍運用のために送り、GNC計算機のランデブ航法データの更新に使わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177）自動の角度追尾は航法データの更新に使える角度データを与える唯一の角度追尾モードで、パネルA2の表示器へのデータはGPCで処理しない配線の信号である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177） | 上位: IF-ORB-24 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節 Operations（PDF p523〜532）：各飛行段階の航法（Super-G、3つの状態ベクトル、カルマンフィルタ、GPSの取り込み）と誘導（PEG 1・4・7、UNIV PTG、再突入・TAEM・A/L）を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/528） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第4章 A4-57（PDF p888）・A4-203〜206（p963〜977）：上昇・再突入の航法の更新、GPSによる修正、デルタステートの更新、航法フィルタのAIF管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=971） |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 3章（PDF p36〜46）：REFSMMATと恒星・IMU間・マトリクスの3種のアラインメント、上昇・軌道上・再突入での航法へのIMUデータの使い方を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=39） |
| GN-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.2.1節（PDF p23）：オートランドの作動（約9,600 ftで作動、50秒間制御）と外側グライドスロープの追従を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23） |
| GN-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | GPS航法（PDF p46）：単一系統GPSの飛行の計画どおり、高速Cバンド追跡で確かめた後にMM 304でGPSの状態ベクトルをPASSとBFSに取り込み、航法の残差が大きく減ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 単一系統GPSの機体では、MCCからの定期的な更新で機上の航法の誤差を修正し、通信が途絶したときはGPSを取り込める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/526）

> **注記** ランデブ航法はスタートラッカ・ランデブレーダ・COASのデータで相対状態ベクトルを計算し、Ku帯レーダとのデータのやり取りは所有側（C&T）の下位IFで扱う（IF-ORB-24）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/526）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p469） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p526） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/526
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p528） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/528
4. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p530） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p531） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/531
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p523） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p524） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/524
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p529） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/529
9. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p474） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474
10. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p479） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/479
11. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p470） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/470
12. Shuttle Crew Operations Manual 2.7 Dedicated Display Systems（USA007587 Rev. A CPN-1、PDF p291） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/291
13. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p235） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235
14. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p232） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232
15. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p177） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177
16. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |

# 推力方向制御（ジンバル）（TVC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-TVC-001 |
| 表題 | 推力方向制御（ジンバル）（TVC）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

各OMSエンジンのジンバルリングとピッチ・ヨーの電動アクチュエータ（一次・二次の冗長）、作動・待機のアクチュエータ制御器によって推力の方向を制御する機能と、TVCのソフトウェア（SOP）、ジンバルの故障検知を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-TVC-01 | OMSエンジンはジンバル架台に取り付けられ、2基の電気機械式アクチュエータでヨーとピッチに振られ、デジタルオートパイロットまたは手動操縦の指令で推力の向きを制御して噴射中の機体を操舵する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-TVC-02 | 1基で噴射するときは推力を重心に向け、2基のときは両方の推力をX軸に平行にし、1基の噴射ではRCSによるロール制御が必要になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-TVC-03 | TVC系はジンバルリング組立、ジンバルアクチュエータ組立2組、ジンバルアクチュエータ制御器2台から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） |
| F-OMS-TVC-04 | 各アクチュエータは冗長な2台のブラシレス直流電動機と歯車列、1本のジャッキねじとナットチューブ、冗長な直線位置フィードバック変換器を持ち、一次・二次の駆動系は分離されて同時には運転されない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） |
| F-OMS-TVC-05 | 一次の電子制御器からのGPCの位置指令で一次の直流電動機が動き、一次が働かないときは二次の電子制御器からの指令で二次の電動機が動き、各駆動系のノーバック装置が待機系の逆駆動を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/661） |
| F-OMS-TVC-06 | 作動・待機の制御チャネルの電気インタフェース・電源・電子制御要素は別々の筐体（作動・待機アクチュエータ制御器）に収められてOMS/RCSポッドの構造に取り付けられ、両者は電気的・機械的に互換である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/661） |
| F-OMS-TVC-07 | ジンバルの可動範囲はピッチ±6°・ヨー±7°である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671） |
| F-OMS-TVC-08 | TVC指令SOPはピッチ・ヨーのアクチュエータ指令とアクチュエータ電源選択の離散信号を出し、OMS-1・OMS-2、軌道巡航、軌道離脱、軌道離脱巡航、RTLSアボート（MM 104、105、201、301、302、303、601）で働く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/661） |
| F-OMS-TVC-09 | 乗員はMNVR表示の項目入力（PRI 28・29、SEC 30・31）でピッチ・ヨーのアクチュエータの一次・二次の電動機を選ぶか、電動機を切ることができる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/661） |
| F-OMS-TVC-10 | ジンバルの故障検知は動くべきときに閾値以上動いたかを確かめ、故障の計数がIロード値の4に達するとアクチュエータを故障と宣言し、乗員はMNVR表示の項目入力で二次のアクチュエータ電子回路を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663） |
| F-OMS-TVC-11 | OMS TVCにはFF MDMからのイネーブル離散信号とFA MDMからの指令が必要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671） |
| F-OMS-TVC-12 | 上昇中の高動圧域でTVCの動きが2つの情報源で確認された場合は、エンジンベルが空力で損傷したおそれがあるため、アボートの推進薬投棄を含むすべての用途でそのエンジンを故障とし、OMS ENGスイッチを直ちにOFFにする（A6-101A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1203） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-15 | DAP・飛行制御センサ | データ・指令 | 受信 | OMS TVC DAPは誘導の要求速度をOMSのジンバル指令に変換し、OMSの点火・停止の指令も生成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/520）OMS処理部は指定した推力方向を得るジンバルアクチュエータの指令を生成し、OMSの推力は重心を通るように加える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519） | 上位: IF-ORB-04 |
| IF-OMS-05 | OMSエンジン・GN2系 | 構造・荷重 | 受信 | ジンバルリング組立の2つの取付けパッドにエンジンを取り付け、エンジンの推力をリングで受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） | — |
| IF-OMS-13 | 電力系（EPS） | 電力（28 VDC） | 受信 | ジンバルアクチュエータの駆動系には主母線から給電され、MNA DA1を失うと左エンジンの一次TVCと右エンジンの二次TVCが失われる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=467）このときはMNVR表示で左エンジンを二次、右エンジンを一次のジンバルに切り替える。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=467） | 上位: IF-ORB-14 |
| IF-OMS-16 | 警報系（C/W） | データ・指令 | 送信 | OMSのピッチまたはヨーのジンバル故障を検知するとパネルF7のOMS TVC警報灯（ハードウェアのチャネル67）が点灯し、LEFTまたはRIGHT OMS灯も点くことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/134）指令位置とフィードバック位置に2°の差があると、L（R） OMS GMBLの故障メッセージが出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/664） | 上位: IF-ORB-41 |
| IF-OMS-18 | 構造（STR） | 構造・荷重 | 送信 | ジンバルリングの2つのパッドでリングをオービタに取り付け、エンジンの推力をポッドとオービタへ伝える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660）OMS/RCSポッドは軽微な修理で最大100回の飛行に再使用でき、オービタの整備のために取り外せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Thrust Vector Control・Fault Detection（PDF p660〜663）：ジンバルリング、アクチュエータ、制御器、TVC SOP、ジンバルの故障検知を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/662） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-101（上昇中のエンジンベルの動き）を規定し、TVCの喪失はGNCの章のA8-53を参照する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1203） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-10（PDF p466〜467）：MNA DA1の喪失で左エンジンの一次・右エンジンの二次のTVCを失ったときにジンバルを切り替える処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=467） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.3.1節（PDF p106・p112〜114）：SSME 1とOMSエンジンのノズルが接触するジンバル角の組合せと間隔を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=112） |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | OMS-363・367（PDF p768〜769）：ジンバルリング軸受とACMEねじの故障でエンジンが位置を外れた場合のRCSの消費を評価する。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=769） |
| OM-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 9-3（PDF p235）：噴射後に必要に応じてOMS TVCのジンバル点検を行い、故障表示があれば良好なジンバルを選ぶ手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=235） |
| OM-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：OMS TVCをチャネル67とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：IOA（1988年）は、ジンバルリング軸受やACMEねじ・ナットチューブの故障でエンジンが位置を外れて止まると、TALの間のRCSの消費が増えることを懸念したが、約3,000 lb以上のRCS推進薬の余裕があるとの簡易解析で指摘を取り下げ、詳しい解析を勧めた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=768）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p660） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660
3. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p661） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/661
4. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p671） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671
5. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-101 OMS ENGINE BELL MOVEMENT DURING ASCENT（PDF p1203） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1203
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p520） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/520
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p519） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519
9. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-10 BUS LOSS: MNA DA1（PDF p467） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=467
10. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p134） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/134
11. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p664） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/664
12. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
13. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.17-42 OMS-363 Bearing-Gimbal Ring（PDF p768） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=768
14. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |

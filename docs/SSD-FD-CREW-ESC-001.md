# 脱出系（ESC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CREW-ESC-001 |
| 表題 | 脱出系（ESC）機能説明書 |
| 版・日付 | Rev. A／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CREW-001 |
| 関連図 | SSD-SYS-ARC-001 図64 CREW 機能構成 |

## 1. 目的

射点・飛行中・着陸後の非常脱出のための乗員の装備、オービタの機器、射点の設備を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CREW-ESC-01 | 脱出系は乗員が着る装備、オービタに組み込んだ機器、射点の外部設備から成り、脱出の形態は打上げ前・飛行中・着陸後で異なる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421） |
| F-CREW-ESC-02 | 飛行中の脱出は高度30,000 ft以下の制御された滑空中に行い、与圧服・酸素ボトル・パラシュート・救命いかだ・キャビンベントと側面ハッチ投棄の火工品・脱出ポールを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421） |
| F-CREW-ESC-03 | 先進乗員脱出服（ACES）は全与圧服で、2重の服制御器が圧力を保ち、全膨張で絶対圧3.67 psiaを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/424） |
| F-CREW-ESC-04 | ACESの酸素マニホールドは、オービタの酸素供給ホース、パラシュートハーネスの非常用酸素ボトル、呼吸用の調整器をつなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/425） |
| F-CREW-ESC-05 | 側面ハッチの3組の火工品は前方のT字ハンドルで同時に作動し、ヒンジを切る線形成形爆薬4個、70本の破断ボルトを割る膨張チューブ2組、ハッチを約45 ft/sで離すスラスタパック3個から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433） |
| F-CREW-ESC-06 | 脱出ポールは、側面ハッチから出る乗員を左翼に当たらない軌道に導く、ばね式の伸縮する湾曲した筒である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433） |
| F-CREW-ESC-07 | 側面ハッチから出られないときは左舷の頭上窓（窓8）が2次の非常脱出口となり、各乗員は降下器（Sky Genie）で右舷側の地上へ降りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438） |
| F-CREW-ESC-08 | 射点の非常脱出では乗員はスライドワイヤのバスケットで安全な区域へ降り、その終点の近くにM-113装甲車が待機する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/422） |
| F-CREW-ESC-09 | キャビンベントとハッチ投棄の火工品はオービタの電力を要さず、電力を失っても作動できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/441） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CREW-03 | ECLSS：酸素供給 | 推進薬・流体 | 受信 | ACESの酸素マニホールドのホース継手を、オービタの酸素供給ホースにつなぐ（素早く離れる継手付き）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/425） | — |
| IF-CREW-07 | STR：乗員室（与圧）・窓 | 構造・荷重 | 送信 | 側面ハッチの投棄では、膨張チューブ組立がハッチのアダプタリングをオービタに留める70本の破断ボルトを割り、線形成形爆薬がヒンジを切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433） | — |
| IF-CREW-11 | 乗員系運用管理 | データ・指令 | 受信 | ベイルアウトでは、高度50,000 ftでコマンダが乗員にバイザーを閉めて非常用酸素を作動させるよう指示し、40,000 ftでキャビンをベントする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.10節（PDF p421〜442）：射点の脱出設備、ACES、パラシュート、キャビンベントとハッチ投棄、脱出ポール、頭上窓を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421） |
| CS-02 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.5節 Emergency Egress Provisions（PDF p123〜）：脱出パネル・降下器・PEAPなどの非常脱出の装備を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=123） |
| CS-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-1001（PDF p2032）：LESの酸素供給系の喪失に対するMDF・次のPLSの基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** 非常退避・退出のモード（射点・着陸後・滑空中・軌道上）の経路・所要時間と移動の開口は [SSD-EGR-ORB-001](SSD-EGR-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-EGR-ORB-001.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p421） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421
2. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p424） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/424
3. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p425） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/425
4. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p433） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433
5. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p438） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438
6. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p422） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/422
7. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p441） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/441
8. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-07 | 容積・動線・緊急脱出定義書 SSD-EGR-ORB-001 への参照を注記（Rev. BE） |

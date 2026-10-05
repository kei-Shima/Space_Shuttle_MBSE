# 乗員系・脱出系（CREW）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CREW-001 |
| 表題 | 乗員系・脱出系（CREW）機能説明書 |
| 版・日付 | Rev. E／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

乗員の生活・作業を支える装備（被服、衛生、睡眠、拘束具、収納など）と、脱出系（射点・飛行中・着陸後）の機能と、環境制御・打上げ処理システムとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CREW-01 | 乗員系は、他の大きな系に属さない、乗員の効率と快適のための装備（被服、衛生用品、睡眠設備、運動器具、清掃用具、拘束具、収納容器、撮影機器、医療キット、生体計測、放射線計測、空気サンプリング）から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209） |
| F-CREW-02 | 睡眠設備は寝袋とライナー、または寝台ごとに寝袋1つとライナー2つを備えた固定式の睡眠ステーションで、ステーションの各段は照明と換気の吸気口・排気口を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210） |
| F-CREW-03 | 脱出系は乗員の緊急・非常脱出のための装備で、乗員が着用する装備、オービタに組み込まれた機器、射点の外部設備から成り、脱出の形態はミッションの段階（打上げ前・飛行中・着陸後）で異なる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421） |
| F-CREW-04 | 飛行中の脱出系は、高度30,000 ft以下の制御された滑空飛行中に乗員が脱出できるよう、与圧服、酸素ボトル、パラシュート、救命いかだ、キャビンベントと側面ハッチ投棄の火工品、脱出ポールを備える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421） |
| F-CREW-05 | 射点で破局的な事態が迫った場合、乗員はスライドワイヤのバスケットで安全な区域へ降りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421） |
| F-CREW-06 | 左側の頭上窓は2次の緊急脱出口で、外側の窓ガラスを投棄して20×20インチの開口を得る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/57） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-44 | 環境制御・生命維持（ECLSS） | 推進薬・流体 | 受信 | 洗顔用の常温の温水は、ギャレーの補助ポートにつないだ個人衛生ホース（PHH）から供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209）ギャレー右下の補助ポートの迅速継手から、常温〜温水（70〜120°F）の飲料水を取り出せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/466） | 下位: IF-CREW-01 下位: IF-CREW-02 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-CREW-HAB-001](SSD-FD-CREW-HAB-001.md) | 居住・衛生（HAB）機能説明書 |
| [SSD-FD-CREW-STW-001](SSD-FD-CREW-STW-001.md) | 収納・拘束（STW）機能説明書 |
| [SSD-FD-CREW-MED-001](SSD-FD-CREW-MED-001.md) | 医療・生体・放射線（MED）機能説明書 |
| [SSD-FD-CREW-LTG-001](SSD-FD-CREW-LTG-001.md) | 照明（LTG）機能説明書 |
| [SSD-FD-CREW-ESC-001](SSD-FD-CREW-ESC-001.md) | 脱出系（ESC）機能説明書 |
| [SSD-FD-CREW-OPS-001](SSD-FD-CREW-OPS-001.md) | 乗員系運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図64 CREW 機能構成、関係する公開文書は SSD-CREW-REF-001（図65 CREW 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** ギャレー（食品の加熱・再水和）は給水と一体の設備として、ECLSSの飲料水供給（SSD-FD-ECL-H2O-GAL-001）で扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-CREW-01〜ACT-CREW-09）と図39 に示す。

> **注記** 本系を扱う運用資料の章・節（●主対象・○関連）は、運用飛行規則が A13（●）、A14（●）（[SSD-OPS-REF-001](SSD-OPS-REF-001.md) §3・図10）、乗員運用マニュアルが 2.5（●）、2.10（●）、2.12（○）、2.15（●）、2.24（●）、第6章（○）（[SSD-OPS-REF-002](SSD-OPS-REF-002.md) §3・図11）である。

> **注記** 下位機能説明書6件（HAB・STW・MED・LTG・ESC・OPS）と図64への展開を追加した。IF-ORB-44（ECLSSの給水）は、個人衛生ホース（IF-CREW-01）と非常用洗眼器（IF-CREW-02）の2つの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219）

> **注記** オービタの酸素（ACES・蘇生器）、照明の電力、生体信号のダウンリンク、側面ハッチの投棄の下位IF（IF-CREW-03〜07）は、親文書の段にIF-ORBの行が無いため上位IFを持たない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/425）

> **注記** CREWの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-CREW-001](SSD-REQ-CREW-001.md) に示す。

> **注記** CREWの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-CREW-001](SSD-FMEA-CREW-001.md) に示す。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p209） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209
2. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p210） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210
3. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p421） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421
4. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p57） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/57
5. Shuttle Crew Operations Manual 2.12 Galley/Food（USA007587 Rev. A CPN-1、PDF p466） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/466
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.12節 Galley（PDF p465） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465
7. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p219） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219
8. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p425） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/425

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（Rev. I で図2に追加したブロック。公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. B | 2026-10-01 | 運用飛行規則・乗員運用マニュアルの該当章・節（SSD-OPS-REF-001・002、図10・図11）を注記（Rev. L） |
| Rev. C | 2026-10-02 | 下位機能説明書（6件）と図64への展開を追加し、IF-ORB-44 に下位IF（IF-CREW-01・02）を付記、注記（IFの分け方、上位IFを持たない下位IF）を追加（Rev. V） |
| Rev. D | 2026-10-02 | 要求文書 SSD-REQ-CREW-001 への参照を注記（Rev. W） |
| Rev. E | 2026-10-02 | 故障解析表 SSD-FMEA-CREW-001 への参照を注記（Rev. X） |

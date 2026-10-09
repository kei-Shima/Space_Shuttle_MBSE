# 熱防護・熱制御（TPS）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-TPS-001 |
| 表題 | 熱防護・熱制御（TPS）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

TPSに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、TPSの機能説明書（SSD-FD-TPS-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。熱制御（SSD-FD-TCS-001 と下位の受動熱制御 SSD-FD-TCS-PTC-001）も対象とする。能動熱制御（ATCS）の下位は ECLSS の要求書（SSD-REQ-ECLSS-001）で扱う。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 |
| REQ-SYS-06 | 通常のミッションで 4〜16 日の軌道滞在ができること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |

## 4. 熱防護・熱制御要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-TPS-01 | 再突入時に TPS でオービタの外板（アルミニウム・グラファイトエポキシ）を 350°F を超える温度から守り、TPS は整備して 100 回のミッションに再使用できること。 | 外板 ≦ 350°F、再使用 100 回 | 再突入時、TPS の材料はオービタの外板を 350°F を超える温度から守り、整備により 100 回のミッションに再使用できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） | REQ-SYS-04 | F-TPS-01・IF-ORB-37 | PH-6（再突入） | A（解析） |
| REQ-TPS-02 | 部位の最高温度に応じて TPS の材料を選び、2,300°F を超える部位は RCC、2,300°F 未満は HRSI（FRCI）、1,200°F 未満は LRSI、700°F 未満は FRSI で守ること。 | RCC > 2,300°F・HRSI < 2,300°F・LRSI < 1,200°F・FRSI < 700°F | RCC は再突入時に 2,300°F を超える部位を守り、LRSI タイルは 1,200°F 未満の部位を守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65）FRSI のブランケットは 700°F 未満の部位を守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/66） | REQ-SYS-04 | F-TPS-02・F-TPS-03・F-TPS-04・F-TPS-05・F-TPS-06 | PH-6（再突入） | I（検査） |
| REQ-TPS-03 | 軌道上の姿勢を管理して、TPS の接着層の温度を −170°F より高く、再突入開始（EI）の最大許容温度未満に保つこと。 | 接着層 > −170°F、EI の最大許容温度未満 | A18-401 は、オービタの姿勢を管理して接着層の温度を −170°F より高く、EI の最大温度未満に保つと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2101）EI の接着層の最大許容温度は、構造の制約と飛行ごとの条件で決める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2102） | REQ-SYS-04 | F-TCS-03・F-STR-OPS-05 | PH-3（軌道）・PH-4（離脱準備） | A（解析） |
| REQ-TPS-04 | オービタの内部の温度を、断熱材・ヒータ・パージで飛行の各段階に管理すること。 | 断熱材・ヒータ・パージ | オービタの内部の温度は、内部の断熱材・ヒータ・パージで飛行の各段階に管理される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） | REQ-SYS-10 | F-TCS-02・F-TCS-PTC-01・F-TCS-PTC-02・F-TCS-PTC-04 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-TPS-05 | OMS/RCS ポッドは内面の断熱材とストリップヒータで熱制御し、A・B 2系統のヒータをサーモスタットで 55〜75°F に保つこと。 | 55〜75°F、A・B 2系統 | OMS の熱制御はポッド内面のストリップヒータと断熱材で行い、各ヒータ区域の A・B の素子はサーモスタットで 55〜75°F に制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659） | REQ-SYS-10 | F-TCS-PTC-03・IF-TCS-20 | PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-TPS-06 | 打上げ前と着陸後は、非与圧区画に地上設備からパージガスを流し、着陸後はベント扉をパージ位置にして地上冷却を行えること。 | ベント扉のパージ位置 | ベント扉は2モータ駆動でそれぞれ5秒で開閉し、一部の扉は地上のパージのための中間位置を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | REQ-SYS-04 | F-TCS-PTC-05・F-TCS-PTC-06・IF-TCS-17 | PH-1（打上げ前）・PH-7（着陸後） | D（実証） |
| REQ-TPS-07 | 軌道に入ってまもなくペイロードベイドアを開き、放熱器を主な冷却源とすること。 | ドア開放後に放熱器を主冷却源 | Post Insertion の手順で放熱器に流し、ペイロードベイドアを開くと、放熱器が主な冷却源となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） | REQ-SYS-06 | F-TCS-01・F-TCS-04 | PH-2c（上昇・軌道投入）・PH-3（軌道） | D（実証） |

## 5. トレース表（機能行・IF → 要求）

TPSの機能説明書 3 件の機能行 16 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 16 件が要求から参照され、0 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-TPS-001 | F-TPS-01 | TPSは、高温での安定性と重量効率で選ばれた材料で構成される受動系である。 | REQ-TPS-01 | — |
| SSD-FD-TPS-001 | F-TPS-02 | 強化炭素－炭素（RCC）は、主翼前縁、機首キャップ（機首直後下面のチャインパネルを含む）、前部オービタ／外部タンク構造結合部の周辺に使われ、再突入時に2,300°Fを超える部位を保護する。 | REQ-TPS-02 | — |
| SSD-FD-TPS-001 | F-TPS-03 | 高温再使用表面断熱材（HRSI）タイルは2,300°F未満の部位を保護し、再突入時の放射率を得るための黒色コーティングを持つ。 | REQ-TPS-02 | — |
| SSD-FD-TPS-001 | F-TPS-04 | 後に開発された黒色のFRCIタイルが、一部の部位でHRSIタイルを置き換えた。 | REQ-TPS-02 | — |
| SSD-FD-TPS-001 | F-TPS-05 | 白色の低温再使用表面断熱材（LRSI）タイルは、前・中・後部胴体、垂直尾翼、主翼上面、OMS/RCSポッドの一部に使われる。 | REQ-TPS-02 | — |
| SSD-FD-TPS-001 | F-TPS-06 | コーティングしたノーメックスフェルトの再使用表面断熱材（FRSI）の白色ブランケットは、ペイロードベイドア上面、中・後部胴体側面の一部、主翼上面の一部、OMS/RCSポッドの一部に使われ、700°F未満の部位を保護する。 | REQ-TPS-02 | — |
| SSD-FD-TCS-001 | F-TCS-01 | ATCSは、2系統のフレオン21冷却ループ、アビオニクス用コールドプレート網、液液熱交換器、放熱器・FES・アンモニアボイラの3種のヒートシンクから成る。 | REQ-TPS-07 | — |
| SSD-FD-TCS-001 | F-TCS-02 | オービタ内部の温度は、断熱材、ヒータ、パージによっても管理される。 | REQ-TPS-04 | — |
| SSD-FD-TCS-001 | F-TCS-03 | オービタの外面温度は、約90分の軌道1周ごとに−200°Fから+200°Fまで変動する。 | REQ-TPS-03 | — |
| SSD-FD-TCS-001 | F-TCS-04 | ペイロードベイドアは、軌道到達後まもなく開かれ、機体各系の排熱のためにECLSSの放熱器を露出させる。 | REQ-TPS-07 | — |
| SSD-FD-TCS-PTC-001 | F-TCS-PTC-01 | オービタ内部の温度は、内部断熱材、ヒータ、パージによって飛行の各段階で管理される。 | REQ-TPS-04 | — |
| SSD-FD-TCS-PTC-001 | F-TCS-PTC-02 | Kaptonの反射膜とDacronのメッシュを交互に重ね、シリカ布で覆ったキルト状の断熱ブランケットが、受動熱制御として機体の各部を覆った。 | REQ-TPS-04 | — |
| SSD-FD-TCS-PTC-001 | F-TCS-PTC-03 | OMS/RCSポッドは内面の断熱材とストリップヒータで熱制御され、A・B2系統のヒータがサーモスタットで55〜75°Fに保たれる。 | REQ-TPS-05 | — |
| SSD-FD-TCS-PTC-001 | F-TCS-PTC-04 | 燃料電池の生成水配管や給水・廃水のダンプ配管にも、凍結防止用のサーモスタット制御ヒータがある。 | REQ-TPS-04 | — |
| SSD-FD-TCS-PTC-001 | F-TCS-PTC-05 | パージ・ベント・ドレン系は、非与圧区画にパージガスを流して熱調整と有害ガスの滞留防止を行い、湿度と温度を一定に保つ。 | REQ-TPS-06 | — |
| SSD-FD-TCS-PTC-001 | F-TCS-PTC-06 | 着陸後は、ベントドア1・2・6・8・9をパージ位置にして地上冷却を行う。 | REQ-TPS-06 | — |
| SSD-FD-TPS-001 | IF-ORB-37 | （IF の行。内容は所有文書） | REQ-TPS-01 | — |
| SSD-FD-TCS-PTC-001 | IF-TCS-17 | （IF の行。内容は所有文書） | REQ-TPS-06 | — |
| SSD-FD-TCS-PTC-001 | IF-TCS-20 | （IF の行。内容は所有文書） | REQ-TPS-05 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 0 件のうち、0 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-TPS-001 | 6 | 6 | 0 | 0 |
| SSD-FD-TCS-001 | 4 | 4 | 0 | 0 |
| SSD-FD-TCS-PTC-001 | 6 | 6 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（7件のうち根拠あり 6件・根拠なし 1件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-TPS-01 | A（解析） | 根拠あり | STS-125 では、TPS の点検で再突入の加熱が正常であったことが示された。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=58） |
| REQ-TPS-02 | I（検査） | 根拠あり | STS-125 では、下部の構造の温度データが正常な再突入の加熱を示した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=58） |
| REQ-TPS-03 | A（解析） | 根拠なし | 根拠なし：接着層の温度の飛行の実績値を示す公開資料が無い。STEP の予測と飛行データの比較（A18-401）で検証する想定とする。 |
| REQ-TPS-04 | A（解析） | 根拠あり | PDF p42：左上部Yウェブの構造温度の不規則な指示（IFA STS-114-V-03）と冗長な計測による監視を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| REQ-TPS-05 | D（実証） | 根拠あり | Reaction Control Subsystem（PDF p11）：左RCSのドレンパネルのA系ヒータが設定点で入らず、B系に切り替えたと記す（Flight Problem STS-35-04）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| REQ-TPS-06 | D（実証） | 根拠あり | Vent Door Operations（PDF p67）：ベント扉の運用の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=67） |
| REQ-TPS-07 | D（実証） | 根拠あり | 9.1 PLB DOORS（目次、PDF p22）：ドア・ラッチギャングが1モータの時間内に開閉しないときの処置を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレースの対象は、熱防護（SSD-FD-TPS-001）と熱制御（SSD-FD-TCS-001・SSD-FD-TCS-PTC-001）の機能行とする。図2 の TPS の▼が図8（熱制御）を開くため、熱制御を本書にまとめた。ATCS（SSD-FD-ECL-ATCS-001 と下位）は ECLSS の系に属し、SSD-REQ-ECLSS-001 で扱う。

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p66） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/66
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-401 THERMAL PROTECTION SYSTEM (TPS) BONDLINE TEMPERATURES（PDF p2101） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2101
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-401 THERMAL PROTECTION SYSTEM (TPS) BONDLINE TEMPERATURES（PDF p2102） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2102
5. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p659） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659
6. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
7. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p405） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405
8. NSTS-37452 STS-125 Mission Report（2010） Aerothermodynamics, Integrated Heating and Interfaces（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=58
9. STS-114 Mission Report Orbital Maneuvering System（続き）（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42
10. STS-35 Mission Report Reaction Control Subsystem（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11
11. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） PDF（PDF p67） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=67
12. JSC-48027 Rev. F Malfunction Procedures（MAL） 9.1 PLB Doors（PDF p22） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=22

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 7件、機能行 16件とのトレース、検証の根拠） |

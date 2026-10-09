# 携帯消火器・消火ポート（PFE）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-FDS-PFE-001 |
| 表題 | 携帯消火器・消火ポート（PFE）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-FDS-001 |
| 関連図 | SSD-SYS-ARC-001 図26 煙検知・消火系 機能構成 |

## 1. 目的

乗員室の3本の携帯消火器（Halon 1301）で、開放空間の火災と、計器盤・アビオニクスベイの消火ポートからパネル内部・ベイ内の火災を消火する機能と、放出の操作・特性、Halonの暴露の制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-FDS-PFE-01 | 乗員室には携帯消火器が3本（ミッドデッキに2本、フライトデッキに1本）あり、ノズルは計器盤の消火ポートに合う先細形である（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） |
| F-ECL-FDS-PFE-02 | 消火ポートには、表示付きラベルで覆った直径1/2 inの穴と、表示のない1/2〜1/4 inの先細の穴の2種類があり、パネル直後の空間に通じる。パネル内部やベイ内の火災ではノズルを差し込み、15秒間押して全量を放出する（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） |
| F-ECL-FDS-PFE-03 | 携帯消火器は380 psigに加圧され、ベイの固定ボトルよりやや小さい。約90秒で全量を放出し、最初の30秒で90%が出る。ベイへはポートから空になるまで放出する（C&W訓練マニュアル3.3.3.1〜3.3.3.2節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=30） |
| F-ECL-FDS-PFE-04 | 消火器は長さ約13.3 in・直径3.5 inで約3.75 lbのHalon 1301を収め、放出時間は1 gで18±2秒、無重量で30±5秒である（飛行運用マニュアル3.24節）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=574） |
| F-ECL-FDS-PFE-05 | 消火器は片手で2秒以内に取り外せ、リングピンを抜いてトリガを握って放出する。無重量では2.4 lbの推力で乗員が動かされるため、体を固定してから放出する（飛行運用マニュアル3.24節）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=573） |
| F-ECL-FDS-PFE-06 | 消火ポートはアビオニクスベイ・ギャレー・CFES・WCS・計器盤にあり、計器盤内部の火災ではポートに、開放空間の火災では炎の根元に向けて放出する（飛行運用マニュアル3.24節）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=573） |
| F-ECL-FDS-PFE-07 | ベイの火災はパネルL1から遠隔操作する固定ボトルで消火し、その場合も再突入の直前に携帯消火器を該当するベイへ放出する（飛行運用マニュアル3.24節）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=573） |
| F-ECL-FDS-PFE-08 | 乗員室でHalonが有効なのはキャビンファンを止めたときだけで、空気が循環していると3本すべてを放出しても濃度は1%未満にとどまる（有効には4%以上が必要）。ファンを再び回すとHalonは乗員室全体に薄まり、次の火災には再び放出が必要になる（C&W訓練マニュアル3.3.3.6節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） |
| F-ECL-FDS-PFE-09 | Halon 1301は無色・無臭・非導電性で、暴露は7%以下なら15分、7〜10%は1分、10〜15%は30秒までとし、15%を超える暴露は避ける（C&W訓練マニュアル3.3.5節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=46） |
| F-ECL-FDS-PFE-10 | Halonは炎や約900°Fの高温面に触れて分解してから消火に働くとされ、分解生成物はわずかな濃度でも刺激臭のある有害な雰囲気を作る（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/122） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-FDS-11 | ベイ空冷：ベイ内循環・機器空冷 | 推進薬・流体 | 送信 | 携帯消火器はアビオニクスベイの火災では固定ボトルの予備で、ベイへ放出するとベイ内のHalon濃度は6〜7%になる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35）煙検知を失ったベイでは、再突入のための機器の電源投入前に携帯のHalonボトルをそのベイへ放出する（A17-51A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1920） | 上位: IF-ARS-15 |
| IF-FDS-12 | 乗員室（制御対象） | 推進薬・流体 | 送信 | 携帯消火器は、乗員室の開放空間の火災では炎の根元へ、計器盤内部の火災では消火ポートにノズルを差し込んで放出する。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=573）乗員室でHalonが有効なのはキャビンファンを止めたときだけで、空気が循環していると3本を放出しても濃度は1%未満にとどまる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） | 上位: IF-ECL-19 |
| IF-FDS-14 | 火災対応・運用管理 | データ・指令 | 受信 | 乗員室の火災では、キャビンファンを止めてヘルメットを着けたうえで、携帯のHalonボトルを適切な消火ポートへ放出する（A17-53B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923）放出の前に、乗員が火元を特定して火災を確かめる必要がある（A17-1A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p121〜122）：3本の携帯消火器（ミッドデッキ2本・フライトデッキ1本）と2種類の消火ポート、15秒の放出、Halon 1301の性質と暴露時間の限度を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-51・52（PDF p1920・p1922）：煙検知や消火を失ったベイに、再突入の電源投入前や着席前に携帯のHalonボトルを放出すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1922） |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | 3本の携帯消火器と、先細のノズルを計器盤の消火穴に差し込む使い方を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | PDF p4：携帯消火器と3つの電子機器ベイの固定消火器から成るシャトルの系と、計器盤のポートからノズルを差し込む方式を述べ、宇宙では実演でしか放出されていないとする。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=4） |
| FD-10 | 雑誌記事 | Kennedy Space Center Fire Services（Fire Engineering） | 携帯消火器を4本とする（SCOMなどの3本と異なる）。（出典: https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.3.1〜3.3.3.2節（PDF p30〜31）：携帯消火器（380 psig、約90秒で全量）と消火ポートの配置・使い方を示し、3.3.3.6節（p37）で乗員室ではファンを止めたときだけHalonが有効とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=30） |
| FD-16 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.24節 Fire Extinguisher（PDF p573〜583）：3本の携帯消火器の配置・取り外し・操作、消火ポートの位置、寸法・充填量（約3.75 lb）・放出時間・推力を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=574） |
| FD-17 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：携帯消火器の最高使用温度を超えると過圧で破裂しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：携帯消火器の放出時間は資料で異なる。SCOM（PDF p121）は計器盤へ15秒、C&W訓練マニュアル（p30）は約90秒で全量（30秒で90%）、飛行運用マニュアル（1987年）は1 gで18±2秒・無重量で30±5秒（PDF p574）とし、同書の操作表（p583）は無重量で30±5秒に55%とする。運用飛行規則A17-54Bは公称15〜19秒とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=574）

> **注記** 検証メモ：携帯消火器の充填量を、飛行運用マニュアル（PDF p574）は約3.75 lb、Friedman・Dietrich（1991年、図3、PDF p12）は3 kgとする。後者の図は固定ボトルを1.7 kgとし、SCOMの固定ボトルの値（3.74〜3.8 lb）と一致する。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=12）

> **注記** 飛行運用マニュアルの操作表（表3.24-1）は、携帯消火器の手順を、遠隔操作の固定消火が不十分な場合またはベイ1・2・3以外の火災で使うとし、Spacelabの煙検知の表示・操作はパネルR7にあるとする。Spacelabは本モデルの機能ブロックに含めない。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=583）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Fire and Smoke Subsystem Control Circuit Breakers・携帯消火器（PDF p121） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121
2. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.3.1〜3.3.3.3節 Portable Fire Extinguishers・Fire Ports（PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=30
3. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.24.3〜3.24.4節 Fire Extinguisher（PDF p574） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=574
4. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.24節 Fire Extinguisher（PDF p573） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=573
5. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.3節 Fire Suppression（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37
6. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.5〜3.3.6節 Halon 1301・Post-Fire Contaminants（PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=46
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Halon 1301（PDF p122） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/122
8. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.3.4〜3.3.3.5節 Fire Bottle Discharge Procedure・Operation（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-51 Management Following Loss of Smoke Detection（続き）（PDF p1920） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1920
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（PDF p1923） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1 Fire/Post-Fire Definitions（PDF p1915） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915
12. NASA TM-104334 Fire Suppression in Human-Crew Spacecraft（Friedman・Dietrich、1991年） 図3 Shuttle Halon 1301 fire extinguishers（PDF p12） — https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=12
13. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 表3.24-1 Fire extinguisher operations（PDF p583） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=583

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |

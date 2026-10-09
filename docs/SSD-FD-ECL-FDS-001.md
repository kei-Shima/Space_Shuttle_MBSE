# 煙検知・消火系（FDS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-FDS-001 |
| 表題 | 煙検知・消火系（FDS）機能説明書 |
| 版・日付 | Rev. G／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

乗員室とアビオニクスベイの煙検知・消火機能を示し、下位の機能説明書（図26）と機能別関連文書一覧（SSD-FDS-REF-001）への索引とする。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-FDS-01 | 煙検知・消火機能は、乗員室のアビオニクスベイ、乗員室、Spacelab与圧モジュールに設けられる。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| F-ECL-FDS-02 | イオン化式の検知素子が煙濃度または濃度の変化率を検知して警報を発し、煙濃度の情報をCRTと計器盤L1に表示する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| F-ECL-FDS-03 | 煙濃度2,200±200 µg/m³、または毎秒22 µg/m³の上昇が20秒間に8回連続すると、L1の煙検知灯、C/Wマスターアラーム、サイレンが作動する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| F-ECL-FDS-04 | 3つのアビオニクスベイには、それぞれFreon 1301（Halon 1301）の消火ボトルが1本ある。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| F-ECL-FDS-05 | 固定消火ボトルは、計器盤L1で該当ベイのスイッチをアームし、放出ボタンを2秒以上押して作動させる。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| F-ECL-FDS-06 | 乗員室には携帯消火器が3本（ミッドデッキに2本、フライトデッキに1本）あり、先細のノズルを計器盤の消火穴に差し込んでパネル内部の火災に対処でき、アビオニクスベイ消火器の予備にもなる。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html）（出典: https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/） |
| F-ECL-FDS-07 | 消火器は宇宙では実演目的でしか放出されたことがなく、飛行中に放出した場合は機内大気と表面の清浄化のため直ちに地球へ帰還するとされる。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf） |
| F-ECL-FDS-08 | 運用中、乗員が電源遮断で火災を未然に防いだ事象が5件、煙検知器回路の誤報・故障が15件あった。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf） |
| F-ECL-FDS-09 | オービタには、ミッドデッキとフライトデッキのアビオニクス冷却空気の戻りラインに9個のイオン化式煙検知器があり、Spacelabにはさらに6個がある。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf） |
| F-ECL-FDS-10 | 煙検知・消火は急減圧とともにクラス1（緊急）警報に属し、MDMやソフトウェアを介さないハードウェアのみで処理される一方、煙の情報はSM SYS SUMM 1画面にも表示される。（出典: https://spaceshuttleguide.com/system/caution_and_warning_system.htm） |
| F-ECL-FDS-11 | 煙感知器と各ベイの消火ボトルの点火回路は、主母線A（L/R FLT DK、BAY 2A/3B、FIRE SUPPR BAY 3）・B（BAY 1B/3A、FIRE SUPPR BAY 1）・C（CABIN、BAY 1A/2B、FIRE SUPPR BAY 2）の遮断器（パネルO14・O15・O16）から給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） |
| F-ECL-FDS-12 | キャビンまたはベイの両ファンが故障して空気が循環しない場合は、その区画の煙検知を喪失とみなす。空気の循環がないと、火元が感知器から離れていれば煙の粒子が間に合って届かないためである（A17-2）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-18 | DPS・アビオニクス | データ・指令 | 送信 | 煙検知素子は警報を発し、煙濃度の情報をCRTと計器盤L1に表示する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） | 上位: IF-ORB-19 下位: IF-FDS-03 下位: IF-FDS-06 下位: IF-FDS-09 |
| IF-ECL-19 | 乗員室（制御対象） | 推進薬・流体 | 送信 | 乗員室の3つのアビオニクスベイには、それぞれFreon 1301（Halon 1301）の消火ボトルが1本ある。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html）計器盤の穴から携帯消火器のノズルを差し込み、パネル内部の火災に対処できる。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf） | 下位: IF-FDS-12 |
| IF-ECL-40 | 電力系（EPS） | 電力（28 VDC） | 受信 | 感知器には、パネルO14・O15・O16のSMOKE DETN遮断器から、主母線A（L/R FLT DK、BAY 2A/3B）・B（BAY 1B/3A）・C（CABIN、BAY 1A/2B）の電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121）各ベイのボトルのPICには、FIRE SUPPR BAY 1（主母線B、O15）・BAY 2（主母線C、O16）・BAY 3（主母線A、O14）の遮断器から電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） | 上位: IF-ORB-14 下位: IF-FDS-04 下位: IF-FDS-10 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ECL-FDS-DET-001](SSD-FD-ECL-FDS-DET-001.md) | 煙感知器（DET）機能説明書 |
| [SSD-FD-ECL-FDS-ALM-001](SSD-FD-ECL-FDS-ALM-001.md) | 煙警報・回路試験（ALM）機能説明書 |
| [SSD-FD-ECL-FDS-FIX-001](SSD-FD-ECL-FDS-FIX-001.md) | ベイ固定消火ボトル（FIX）機能説明書 |
| [SSD-FD-ECL-FDS-PFE-001](SSD-FD-ECL-FDS-PFE-001.md) | 携帯消火器・消火ポート（PFE）機能説明書 |
| [SSD-FD-ECL-FDS-OPS-001](SSD-FD-ECL-FDS-OPS-001.md) | 火災対応・運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| A-04 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節「Smoke Detection and Fire Suppression」：煙検知器（A群・B群）とSMOKE DETECTIONライト、アビオニクスベイの固定消火器と携帯消火器（Halon 1301）、消火ポートを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| B-01 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 火災・火災後の定義と、煙検知喪失・前部アビオニクスベイ消火の定義（A17-1〜3）、検知・消火喪失後と火災時の処置、火災未確認のハロン放出後の管理（A17-51〜54）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） |
| D-05 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | アンモニアボイラ、煙検知器、水/水素セパレータ、WCSの開発課題と解決策を扱う。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| G-09 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | シャトルの煙検知器とHalon 1301消火器による防火をSSFの計画と比較する。（出典: https://ntrs.nasa.gov/citations/19930011015） |
| N-07 | IOA報告（1987年・1988年） | IOA: Analysis / Assessment of the life support and airlock support subsystems | 給水・代謝廃棄物・廃水・煙検知・消火を担うLSSと、EVAを支えるALSSの独立解析と、NASA FMEA/CILとの比較評価。（出典: https://www.science.gov/topicpages/a/analysis+results+support） |
| N-09 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | 煙検知素子の警報閾値、アビオニクスベイの固定消火ボトルと携帯消火器の構成・操作を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| N-10 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | シャトルのHalon 1301系（携帯消火器と3つの電子機器ベイの固定消火器）と消火剤選定の課題をまとめる。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf） |
| N-11 | NASA TM-105317（NTRS 19920004363） | Risks, designs, and research for fire safety in spacecraft | 宇宙機の防火は不燃材料の使用と保管管理による予防が主で、シャトルは航空機と同様の技術の煙検知器と消火器を備えると述べ、低重力燃焼の特徴と宇宙ステーションの防火課題を論じる。（出典: https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19920004363.pdf） |
| N-12 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | シャトルで乗員が電源遮断で火災を防いだ事象5件と、煙検知器回路の誤報・故障15件を記す。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf） |
| N-13 | 雑誌記事 | Kennedy Space Center Fire Services（Fire Engineering） | チャレンジャーの携帯消火器4本・固定消火器3本・煙検知器9個を紹介する。（出典: https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/） |
| N-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室10.2 psi減圧、エアロック系の作動、WCSの故障灯、窒素消費量から見た乗員室漏れの少なさなど、飛行中のECLSS実績を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：携帯消火器の本数は、NASAのシャトル参照資料では3本とされている。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html）

> **注記** 一方、チャレンジャーを紹介する記事では携帯消火器4本・固定消火器3本・煙検知器9個とされており、機体や時期で異なる可能性がある。（出典: https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/）

> **注記** 検証メモ：煙検知の警報閾値は、NASAのシャトル参照資料では2,200±200 µg/m³とされている。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html）

> **注記** 一方、SAE 932291を引用する特許文献は、シャトルの検知器が2 mg/m³（2,000 µg/m³）で警報するよう設計されたとしており、値が一致しない。（出典: https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/9377481）

> **注記** 検証メモ：事象の件数は、NISTの資料では火災に至りうる事象5件と誤報・故障15件とされている一方、別のNASA論文はFriedmanの記述として過熱・部品故障の事象を6件としており、数え方の定義で異なると考えられる。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf）

> **注記** Rev. Cで、下位の展開（図26）に合わせ、煙感知器と消火ボトルの電源（F-ECL-FDS-11）と、煙検知に必要な空気の循環（F-ECL-FDS-12）を機能に追加した。電源の下位IF（IF-FDS-04・10）は、ARSの段のIF-ARS-32と同じく、EPSの段のIF-EPS-11の下位に位置付けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121）

> **注記** IF-ECL-19のうち、アビオニクスベイの固定ボトルと携帯消火器によるベイへの放出は、ARSの段ではアビオニクスベイ空冷とのIF-ARS-15で表しているため、下位IF（IF-FDS-08・11）はIF-ARS-15の下位とし、IF-ECL-19の下位は乗員室への放出（IF-FDS-12）とした。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=30）

> **注記** キャビン空気循環との煙感知のIF（IF-ARS-14）は、図16の下位IF IF-CAC-04（還流ダクト）・IF-CAC-08（ファン出口プレナム）をそのまま煙感知器に接続した（同じ物理IFのため新しい番号を作らない）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23）

> **注記** 火災（煙検知）の処置の活動図（図82）は [SSD-BEH-ORB-002](SSD-BEH-ORB-002.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-002.sysml）。

> **注記** 下位（第3段・第4段）の機能行の L3 要求（REQ-FDS-nn）とトレースは [SSD-RQL-ECL-001](SSD-RQL-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-RQL-ECL-001.sysml）。

> **注記** 火災検知・消火系（FDS）の状態と遷移（図169）は [SSD-BEH-ORB-007](SSD-BEH-ORB-007.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-007.sysml）。

> **注記** 火災検知・消火系（FDS）の機能の故障モード（FMX-FDS-nn）は [SSD-FMX-ECL-001](SSD-FMX-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-FMX-ECL-001.sysml）。

## 7. 参考文献

1. NASA Human Space Flight – Shuttle Reference: Smoke Detection and Fire Suppression — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html
2. Fire Engineering – Kennedy Space Center Fire Services — https://www.fireengineering.com/firefighting/kennedy-space-center-fire-services/
3. NTRS 19910011869 Fire Suppression in Human-Crew Spacecraft（Friedman & Dietrich、1991年） — https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf
4. NIST: Fire Protection in Manned Missions – Current and Planned（Collins） — https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf
5. NTRS 20080012612 – オービタとISSの煙検知器の設計を比較するAIAA論文 — https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf
6. Space Shuttle Guide – Caution and Warning System — https://spaceshuttleguide.com/system/caution_and_warning_system.htm
7. US特許 9377481 Multi-parameter scattering sensor and methods（SAE 932291を引用） — https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/9377481
8. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Fire and Smoke Subsystem Control Circuit Breakers・携帯消火器（PDF p121） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121
9. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.3.1〜3.3.3.3節 Portable Fire Extinguishers・Fire Ports（PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=30
10. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.1節 Smoke Detector Locations（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-2 Smoke Detection Loss Definition（PDF p1917） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にB-01（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にA-04（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-30 | 下位機能説明書（5件）と図26・図27への展開を追加し、電源と空気の循環の機能（F-ECL-FDS-11・12）を追加、IF-ECL-18・19に下位IF（IF-FDS）を付記、目的と注記を更新 |
| Rev. D | 2026-10-01 | IF-ECL-40 を追加（Rev. M） |
| Rev. E | 2026-10-02 | 活動定義書 SSD-BEH-ORB-002 への参照を注記（Rev. AA） |
| Rev. F | 2026-10-08 | ECLSS 下位要求書 SSD-RQL-ECL-001 への参照を注記（Rev. BK） |
| Rev. G | 2026-10-09 | ECLSS の状態遷移と活動定義書 SSD-BEH-ORB-007 への参照を注記、ECLSS の故障モード定義書 SSD-FMX-ECL-001 への参照を注記（Rev. BL） |

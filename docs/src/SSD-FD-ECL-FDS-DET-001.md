# 煙感知器（DET）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-FDS-DET-001 |
| 表題 | 煙感知器（DET）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-FDS-001 |
| 関連図 | SSD-SYS-ARC-001 図26 煙検知・消火系 機能構成 |

## 1. 目的

乗員室の還流ダクト・キャビンファン出口と3つのアビオニクスベイに置いたイオン化式煙感知器（A群・B群の計9個）が、周囲の空気を吸引して煙粒子の濃度とその増加率を検知し、警報信号と濃度の計測値を出す機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-FDS-DET-01 | 煙感知器は乗員室と3つのアビオニクスベイに計9個あり、A群はキャビンファン出口・フライトデッキの左還流ダクト・各ベイに1個ずつ、B群はフライトデッキの右還流ダクトと各ベイに1個ずつ置かれる。ベイの感知器はベイの上部と下部の近くにあり、ベイ内の火災は両方の感知器が検知するはずである（C&W訓練マニュアル3.3.2節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23） |
| F-ECL-FDS-DET-02 | 感知器は煙粒子の濃度とその増加率を感知し、濃度2,000±200 µg/m³が5秒以上続くか、毎秒22 µg/m³の増加が20秒間に8回連続すると警報信号（トリップ）を出す（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| F-ECL-FDS-DET-03 | 感知器は容積形ポンプで周囲の空気を連続して吸引し、入口で40ミクロンを超える粒子を除き、分離器で2ミクロン以下の粒子だけを感知室に入れる。所要電力は約6.5 Wである（C&W訓練マニュアル3.3.2.2節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25） |
| F-ECL-FDS-DET-04 | 感知室と基準室はアメリシウム241のα線で空気を電離し、煙の微粒子で感知室の電流が下がることによる両室の電流差から、警報と濃度のアナログ出力を作る（C&W訓練マニュアル3.3.2.2節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=26） |
| F-ECL-FDS-DET-05 | 感知器は過電流による電線束の加熱などで出る微小粒子に感度があり、火災の前段階（presmoke）で警報を出す（C&W訓練マニュアル3.3.2.2節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25） |
| F-ECL-FDS-DET-06 | 感知器はBrunswick社の能動式イオン化感知器で、交流同期電動機で回す回転ベーン式容積形ポンプで空気を吸い込み、大きな粒子を空力的に分けて誤警報を防ぎ、LSIが周波数とその変化率から警報を判定する（Gibb他、1985年）。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=5） |
| F-ECL-FDS-DET-07 | 開発では、当初の水晶振動子マイクロバランス（QCM）方式を寿命の問題からイオン化室に替え、空気密度による信号のずれを2つの線源の特性の組合せで抑えた（Gibb他、1985年）。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=6） |
| F-ECL-FDS-DET-08 | 空気ポンプはベーン材をFluoroloy Dに替えて12,000時間を超える運転を実証し、電動機は湿式軸受と低回転化で20,000時間の寿命とし、自己診断回路は電流の波形の周波数で電動機の断線を判定する方式に改めた（Gibb他、1985年）。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=7） |
| F-ECL-FDS-DET-09 | 各感知器は警報と濃度計測の2つの独立な指示を出し、回路試験で検出できるハードウェア故障は空気ポンプの故障だけである。試験のいずれかに合格すればポンプは動いており、GPCへの濃度は有効とみなす（A17-2）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |
| F-ECL-FDS-DET-10 | 煙検知が働くには、各区画でアビオニクスベイファンとキャビンファンによる空気の循環が必要である。感知器の温度制限（130°F）を超えるとポンプ駆動回路が故障し、煙検知を失うおそれがある（SODB 3.4.6.5節）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |
| F-ECL-FDS-DET-11 | STS-28（1989年）では、テレプリンタのケーブルの短絡で火花が出たが、感知器の濃度は最大でも警報設定値2,000 µg/m³を大きく下回った。大きな粒子が分離器で除かれたことなどが理由に挙げられた（Friedman、1993年）。（出典: https://ntrs.nasa.gov/api/citations/19930011015/downloads/19930011015.pdf#page=4） |
| F-ECL-FDS-DET-12 | STS-8では、アビオニクスベイ1のB感知器が断続的に煙警報を出したが同じベイのA感知器は煙を示さず、9個すべてが試験で良好だったため、B感知器の遮断器を開いて誤警報を防いだ。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CAC-04 | キャビン空気循環：還流・ろ過 | 推進薬・流体 | 受信 | フライトデッキの左還流ダクトにA群、右還流ダクトにB群の煙感知器があり、還流空気の煙を検知する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）C&Wの訓練マニュアルも、A群をフライトデッキの左還流ダクト、B群を右還流ダクトに置くとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23） | 上位: IF-ARS-14 |
| IF-CAC-08 | キャビン空気循環：ファン | 推進薬・流体 | 受信 | ミッドデッキ床下のECLSSベイのキャビンファン・プレナムに煙感知器があり、パネルL1のSMOKE DETECTIONのCABIN灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） | 上位: IF-ARS-14 |
| IF-FDS-01 | ベイ空冷：ベイ内循環・機器空冷 | 推進薬・流体 | 受信 | 各アビオニクスベイ（1・2・3A）の上部と下部の近くに煙感知器A・Bがあり、ベイ内を循環する空気を吸引して煙を検知する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23）ベイの両ファンが故障して空気が循環しない場合は、そのベイの煙検知を喪失とみなす（A17-2A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） | 上位: IF-ARS-15 |
| IF-FDS-02 | 煙警報・回路試験 | データ・指令 | 送信 | 感知器が警報条件を満たすとトリップ信号を出し、パネルL1の該当するSMOKE DETECTION灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） | — |
| IF-FDS-03 | DPS・アビオニクス | データ・指令 | 送信 | 各感知器の濃度のアナログ出力はGPCへ送られてSM SYS SUMM 1（SPEC 78）に表示され、2.0 mg/m³でバックアップC&Wが警報を出す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=28）OI MDM（OF1）を失うと一部の感知器の濃度計測が失われるが、ハードウェアの煙警報は残る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） | 上位: IF-ECL-18 |
| IF-FDS-04 | 電力系：直流配電（EPDC-DC） | 電力（28 VDC） | 受信 | 感知器には、パネルO14・O15・O16のSMOKE DETN遮断器から、主母線A（L/R FLT DK、BAY 2A/3B）・B（BAY 1B/3A）・C（CABIN、BAY 1A/2B）の電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121）主母線A（DA1）を失うと、フライトデッキ左右・ベイ2のA・ベイ3AのBの感知器が失われ、キャビンの感知器は残る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=469） | 上位: IF-ECL-40 |
| IF-FDS-05 | 煙警報・回路試験 | データ・指令 | 受信 | パネルL1のSENSOR RESETで感知器の論理回路をリセットし、CIRCUIT TESTでA群またはB群の感知器にCNTL BUS BC3の28 Vを加えて灯と20秒の時間遅れを試験する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p117〜118）：A群・B群の感知器の位置と、2,000±200 µg/m³（5秒以上）または毎秒22 µg/m³の増加（20秒間に8回連続）の警報条件、SM SYS SUMM 1の通常の読み（0.3〜0.4 mg/m³）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-2（PDF p1917）：煙検知の喪失を回路試験の結果・電源・両ファンの故障による空気循環の喪失で定義し、各感知器が警報と濃度の2つの独立な指示を出すとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |
| FD-03 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | Smoke Detector（PDF p5〜7）：乗員室とベイに置くBrunswick社の能動式イオン化感知器の構造（空気の2経路、回転ベーン式ポンプ、Am-241、LSI）と、QCMからイオン化室への変更、高度での信号のずれ、ポンプ・電動機・自己診断回路の改良を示す。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=5） |
| FD-04 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | PDF p3〜4：各ベイ2個の冗長配置、内蔵ファンで大粒子を除く方式と低重力の凝集粒子を除いてしまう懸念、STS-28の短絡で濃度が警報設定値を大きく下回った事例を示す。（出典: https://ntrs.nasa.gov/api/citations/19930011015/downloads/19930011015.pdf#page=4） |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | イオン化式の検知素子が煙濃度または濃度の変化率で警報を出すとし、警報の閾値を2,200±200 µg/m³とする。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| FD-09 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | PDF p1：約20年間に煙感知器回路の誤警報・故障が15件あったと記す。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf#page=1） |
| FD-11 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | PDF p19：煙検知系のすべてのパラメータが飛行中正常範囲にあり、消火系の使用は不要だったと記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=19） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.2節（PDF p23〜26）：9個の感知器の配置、警報条件、ポンプ・入口フィルタ・分離器とAm-241の感知室・基準室による検知の原理、所要電力（約6.5 W）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25） |
| FD-13 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 表3-1〜3-4（PDF p87〜89）：冷却マトリクスに、乗員室（キャビン、フライトデッキ左右）と各アビオニクスベイの煙感知器を冷却対象の機器として挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88） |
| FD-14 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMM SSR-10（PDF p87）とEPS SSR-10（p469）：OI MDMや主母線Aを失ったときに失われる濃度計測・感知器を示し、ハードウェア警報やキャビンの感知器が残ることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| FD-17 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：煙検知には各区画のファンによる空気の循環が必要とし、感知器の温度制限（130°F）を超えるとポンプ駆動回路が故障しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |
| FD-19 | NTRS 20080012612 | Spacecraft Fire Detection: Smoke Properties and Transport in Low-Gravity（Urban他、2008年） | PDF p2：オービタの感知器（Celesco、後のBrunswick）はイオン化式を採りポンプと分離器で1 µmを超える粒子を除く設計で、ISSの光散乱式（1.5 W）に対し9 Wを要すると比較する。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf#page=2） |
| FD-21 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p52：煙警報はなく、感知器の読みはバックグラウンドの雑音の水準にとどまったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=52） |
| FD-23 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | PDF p11：ベイ1のB感知器が断続的に煙警報を出し、A感知器は煙を示さなかったため、遮断器を開いて誤警報を防いだと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| FD-24 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p15：ペイロードの表示装置から電線の焦げるようなにおいが3回報告されたが、煙検知系は熱分解生成物を検知しなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=15） |
| FD-25 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p34：フライトデッキ左の感知器の濃度表示が2秒間スケールの下限を外れ、その後負のスパイクが出たと記す（STS-65-V-10）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：警報の濃度条件は、SCOM（PDF p118）とC&W訓練マニュアル（p23）が2,000±200 µg/m³、親文書が引用するNASAの参照資料が2,200±200 µg/m³とする。継続の条件も、SCOMは5秒以上、訓練マニュアルは2.5秒間隔の2回連続とする。本書はSCOMの値を用いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23）

> **注記** 検証メモ：感知器の所要電力は、C&W訓練マニュアル（PDF p25）が約6.5 W、Urban他（2008年、PDF p2）が9 W（ISSの光散乱式は1.5 W）とする。分離器で除く粒子も、訓練マニュアルは2ミクロン超、Urban他は1 µm超とする。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf#page=2）

> **注記** 検証メモ：SM SYS SUMM 1の通常の読みを、SCOM（PDF p118）は0.3〜0.4 mg/m³、C&W訓練マニュアル（p28）は−0.5〜+0.5 mg/m³とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=28）

> **注記** Gibb他（1985年）の図は感知器を各ベイ2個・フライトデッキ2個・生命維持機器区画1個の計9個とし、SCOMと訓練マニュアルのA群・B群の配置（キャビンファン出口の1個を含む）と一致する。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=5）

> **注記** 訓練マニュアルの冷却マトリクス（表3-1〜3-4）は、乗員室（キャビン、フライトデッキ左右）と各アビオニクスベイの煙感知器を冷却対象の機器に挙げる。機器の冷却は大気再生系（キャビン空気循環・アビオニクスベイ空冷）の機能として扱い、本書のIFには含めない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88）

## 6. 参考文献

1. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.1節 Smoke Detector Locations（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
3. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.2節 Smoke Detection（PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25
4. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.2〜3.3.2.3節 Smoke Detection・Circuit Test（PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=26
5. Other Challenges in the Development of the Orbiter Environmental Control Hardware（Gibb他、1985年、NTRS 19850008615） Smoke Detector（PDF p5） — https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=5
6. Other Challenges in the Development of the Orbiter Environmental Control Hardware（Gibb他、1985年、NTRS 19850008615） Design Problems and Solutions（QCM・Ionization Chamber Altitude Operation）（PDF p6） — https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=6
7. Other Challenges in the Development of the Orbiter Environmental Control Hardware（Gibb他、1985年、NTRS 19850008615） Air Moving Pump・Pump Driving Motor・Electronics Hybrid Design（PDF p7） — https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=7
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-2 Smoke Detection Loss Definition（PDF p1917） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917
9. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.5節 Smoke Detection and Fire Suppression Subsystem（PDF p225） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225
10. Fire Safety Practices in the Shuttle and the Space Station Freedom（Friedman、1993年、NTRS 19930011015） Shuttle Mission Experience（PDF p4） — https://ntrs.nasa.gov/api/citations/19930011015/downloads/19930011015.pdf#page=4
11. JSC-19278 STS-8 National Space Transportation Systems Program Mission Report（1983年） Smoke Detector B in Avionics Bay 1 Tripped（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（続き）（PDF p119） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119
13. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.4〜3.3.2.5節 Performance Monitoring・Troubleshooting False Alarms（PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=28
14. JSC-48027 Rev. F Malfunction Procedures（MAL） COMM SSR-10 OI MDM LOST: OF1（PDF p87） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Fire and Smoke Subsystem Control Circuit Breakers・携帯消火器（PDF p121） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121
16. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-10 Bus Loss: MNA DA1（PDF p469） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=469
17. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表3-1 Displays and controls（Panel L1）（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39
18. Spacecraft Fire Detection: Smoke Properties and Transport in Low-Gravity（Urban他、AIAA、2008年、NTRS 20080012612） C. Space Shuttle Detectors（PDF p2） — https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf#page=2
19. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-2・3-3 Av Bay 1・2 equipment-cooling matrix（PDF p88） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-FDS-04 の上位を IF-ECL-40 に付け替え（Rev. M） |

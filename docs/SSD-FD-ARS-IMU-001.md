# IMU空冷（IMU）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-IMU-001 |
| 表題 | IMU空冷（IMU）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図12 ARS 機能構成 |

## 1. 目的

キャビン空気を使う3台のファンとIMU熱交換器による、慣性計測装置（IMU）の強制空冷の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-IMU-01 | 3台のIMUは、3台のファンの1台がキャビン空気を300ミクロンフィルタを通して吸い込み3台のIMUに流すことで冷却され、ファンはAv Bay 1にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-IMU-02 | ファン出口空気はフライトデッキのIMU熱交換器を通って水冷却ループで冷却されてから乗員室へ戻る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-IMU-03 | 各ファンはパネルL1のIMU FANスイッチでON/OFFし、1台で3台のIMUすべてを冷却できるため通常は1台で足り、各ファン出口の逆止弁が非運転ファンの逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-IMU-04 | 強制空冷は3台のIMUすべてに供する3台のファンで構成され、同時に使うのは1台で、3台は冗長のために設けられている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477） |
| F-ARS-IMU-05 | 上昇中は、主エンジン制御器を失いうるAC母線間短絡を防ぐため、湿度分離器とIMUファンの信号調整器を断電する（STS-6でこれらの信号調整器へ電力を送る配線束が短絡した）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| F-ARS-IMU-06 | IMUファン差圧はBFSのSM SYS SUMM 1（DISP 78）にIMU FAN DPとして表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| F-ARS-IMU-07 | ファン差圧が3.70（3.94）in H2O未満または4.95（4.71）in H2O超、あるいは選択時の回転数表示が10,000±240〜12,720±700 rpmの範囲外の場合にIMUファン喪失とし、適切な冷却に必要な最低流量は144 lb/hrである（A17-104）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| F-ARS-IMU-08 | キャビンファン以外の回転機器（IMUファンを含む）は1相を失ったら代替機に切り替える（A17-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-ARS-IMU-09 | IMUファン3台すべての喪失はIMUのサイクル運用で軌道到達可とし、軌道上で掃除機のファンを取り付け、初日のPLSに入る（A17-1001 注[5]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） |
| F-ARS-IMU-10 | IMUファンを止めておける時間は、IMUの冷却の制約から45分までである（A18-501C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） |
| F-ARS-IMU-11 | 冷却空気の流路は、吸込みスクリーン・デブリトラップの目詰まりにはIMUフィルタの清掃（IFM）で、空気ダクトの閉塞にはIMUの緊急冷却（IFM）で回復する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ARS-08 | 水冷却ループ×2 | 熱 | 送信 | IMUファン出口空気はフライトデッキのIMU熱交換器を通り、水冷却ループで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | 下位: IF-IMU-08 |
| IF-ARS-11 | 乗員室（制御対象） | 推進薬・流体 | 双方向 | IMUファンはキャビン空気を300ミクロンフィルタを通して吸い込んで3台のIMUに流し、IMU熱交換器で冷やした後に乗員室へ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | 上位: IF-ECL-05 下位: IF-IMU-01 下位: IF-IMU-09 |
| IF-ARS-19 | 誘導・航法・制御（GN&C） | 熱 | 送信 | IMUの強制空冷は3台のIMUすべてに供する3台のファンで行い、同時に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477） | 上位: IF-ECL-32 下位: IF-IMU-02 |
| IF-ARS-29 | DPS・アビオニクス | データ・指令 | 送信 | IMUファン差圧をBFSのSM SYS SUMM 1（DISP 78）に表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） | 上位: IF-ECL-29 下位: IF-IMU-10 |
| IF-ARS-35 | 電力系（EPS） | 電力（28 VDC） | 受信 | IMUファン3台は三相交流母線から給電され、ファンA・B・CはそれぞれAC1・AC2・AC3につながり、ファンの信号調整器はAC3のB相から給電される。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264）上昇中は、主エンジン制御器を失いうるAC母線間短絡を防ぐため、湿度分離器とIMUファンの信号調整器を断電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） | 上位: IF-ECL-39 下位: IF-IMU-06 下位: IF-IMU-11 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ARS-IMU-INL-001](SSD-FD-ARS-IMU-INL-001.md) | 吸込み・IMU通風（INL）機能説明書 |
| [SSD-FD-ARS-IMU-FAN-001](SSD-FD-ARS-IMU-FAN-001.md) | IMUファン・逆止弁（FAN）機能説明書 |
| [SSD-FD-ARS-IMU-HEX-001](SSD-FD-ARS-IMU-HEX-001.md) | IMU熱交換器・ダクト（HEX）機能説明書 |
| [SSD-FD-ARS-IMU-MON-001](SSD-FD-ARS-IMU-MON-001.md) | ファン監視・表示（MON）機能説明書 |
| [SSD-FD-ARS-IMU-OPS-001](SSD-FD-ARS-IMU-OPS-001.md) | ファン運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節 Inertial Measurement Unit Fans：3台のファン（通常1台、50 W、公称144 lb/hr）がキャビン空気をIMUに通し、IMU熱交換器で水ループへ排熱してキャビンへ戻すと解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Inertial Measurement Unit (IMU) Cooling（PDF p376）：Av Bay 1にある3台のファンの1台が300ミクロンフィルタ経由でキャビン空気を3台のIMUに通し、フライトデッキのIMU熱交換器（水冷却ループで冷却）を経てキャビンへ戻すと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 3台のファンの1台がキャビン空気を300ミクロンフィルタ経由で3台のIMUに流し、熱交換器で冷やしてキャビンへ戻すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104 IMU Fan（PDF p1933）：ファンΔPが3.70（3.94）in H2O未満または4.95（4.71）in H2O超（最低必要流量144 lb/hr）、または回転数が10,000〜12,720 rpmの範囲外でファン喪失と規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d CABIN IMU（PDF p264）：IMUファンΔP（3.7〜4.95 in H2O、10.2 psi運用時は3.0〜3.8 in H2O）と回転数低下表示に基づくファン切替の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | IMU冷却空気の入口・出口温度の解析値を仕様上限（入口95°F、出口130°F）と比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | IMUファン（50 W）が公称144 lb/hrの空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | IMU熱交換器（ARS-221・ARS-2211X、C.13-14・C.13-30）の評価ワークシートを示す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-30 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節 Thermal Controls：IMUの熱制御は内部ヒータと強制空冷から成り、3台のファン（各々別の交流電源、1台で十分）がキャビン空気を各IMUの筐体に通して熱交換器で冷やし、ファンの状態をDISP 66・78に表示すると解説する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 当初最大の騒音源だったIMU冷却系にGFEの消音器（入口3・出口1）を追加し、2,000 Hz付近の騒音を下げたと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| AR-35 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | IMUファンΔPが飛行規則限界を超えて上昇した事象（IFA STS-125-V-13）で、フィルタ清掃とファン切替を行い、ファンC単独の運転でΔPが許容値に戻ったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOM（PDF p404）の上昇中の断電対象「humidity separators and the IMU fan signal conditioners」は、湿度分離器そのものか信号調整器かを文面から判別しにくい。同じ頁に搭乗時は湿度分離器1台が稼働中とあるため、本書では信号調整器の断電と解した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404）

> **注記** Rev. Aで下位の展開（図34）を追加した。双方向のIF-ARS-11は吸込み（IF-IMU-01）と還流（IF-IMU-09）、IF-ARS-35はファンの三相電力（IF-IMU-06）と計測器の電源（IF-IMU-11）の、それぞれ2つの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）

> **注記** IF-ARS-35の上位はIF-EPS-12（交流の配電）としているが、IMUファンΔPセンサの電源はパネルO14のMNAの遮断器（H2O BYP LOOP 1 SNSR）から供給される直流で、EPSの直流配電（IF-EPS-11）に当たる。本書では上位欄を変更していない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93）

> **注記** 検証メモ：IMU熱交換器の位置を、SCOM（PDF p376）はフライトデッキとし、NSTS 1988 News Reference Manual（ECLSS章）はミッドデッキ床下の機器に挙げる（SSD-FD-ARS-IMU-HEX-001の検証メモ）。本書はSCOMに従った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）

> **注記** 検証メモの補足：上昇中に断電する対象について、訓練マニュアル3.6.1節（PDF p85）は「The HUM SEP and the IMU FAN signal conditioners」と記しており、湿度分離器とIMUファンの信号調整器を断電するとした本書の解釈を裏付ける。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85）

> **注記** F-ARS-IMU-07の喪失の限界のうち括弧内の値（3.94・4.71 in H2O）は、括弧外の値から計測精度（0.238 in H2O）を内側へ差し引いた値に一致する（SSD-FD-ARS-IMU-MON-001の検証メモ）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）

## 7. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p477） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
4. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
5. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-104 IMU Fan（NSTS-12820 PCN-1、PDF p1933） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933
6. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-154 Management of Degraded Rotating Equipment（NSTS-12820 PCN-1、PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
7. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-1001 Life Support Go/No-Go Criteria（NSTS-12820 PCN-1、PDF p2034） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034
8. JSC-48027 Rev. F Malfunction Procedures（MAL）6.1d CABIN IMU（PDF p264） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（完）（PDF p93） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.6.1節 Ascent（PDF p85） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-501 Maximum Off Time for Cooling Equipment（PDF p2127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127
12. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（続き）（PDF p265） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 下位機能説明書（5件）と図34・図35への展開を追加し、停止時間の上限（F-ARS-IMU-10）と冷却空気の流路の回復（F-ARS-IMU-11）の機能を追加、IF-ARS-08・11・19・29・35に下位IF（IF-IMU）を付記、注記・検証メモ（下位IFの分け方、ΔPセンサの直流電源、熱交換器の位置、上昇中の断電対象、限界値の括弧内の値）を追加 |
| Rev. B | 2026-09-30 | IF-ARS-19 に上位 IF-ECL-32 を付記（Rev. I） |
| Rev. C | 2026-10-01 | IF-ARS-35 の上位を IF-ECL-39 に付け替え、IF-ARS-29 の上位を IF-ECL-29 に付け替え（Rev. M） |

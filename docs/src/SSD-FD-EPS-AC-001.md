# 交流発電・配電（EPDC-AC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EPS-AC-001 |
| 表題 | 交流発電・配電（EPDC-AC）機能説明書 |
| 版・日付 | Rev. B／2026-09-26 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EPS-001 |
| 関連図 | SSD-SYS-ARC-001 図6 EPS 機能構成 |

## 1. 目的

インバータによる交流の生成と交流負荷への配電機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EPS-AC-01 | 各主直流母線は3台の単相静止形インバータに給電し、これが1本の3相交流母線を構成する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-AC-02 | 9台のインバータで115 V・400 Hzの交流を作り、交流母線AC1・AC2・AC3へ配電する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-AC-03 | インバータは前部アビオニクスベイにあり、出力は116〜120 V（実効値）・400±7 Hzである。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-AC-04 | 交流母線センサは過電圧・不足電圧・過負荷を監視し、自動トリップ位置では異常のあるインバータを母線から切り離す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-AC-05 | 10台のモータ制御組立が、ベントドア、ペイロードベイドア、RCS/OMSの電動弁などの交流モータへ電力を供給する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-10 | 直流配電（EPDC-DC） | 電力（28 VDC） | 受信 | インバータ1は主母線Aのみ、2は主母線B、3は主母線Cから給電される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-12 | 電力負荷（オービタ各系・SRB・ET・ペイロード） | 電力（28 VDC） | 送信 | 交流電力はインバータ分配制御組立から計器盤へ、モータ制御組立から3相モータ負荷へ分配される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ORB-14 |
| IF-EPS-13 | 燃料電池発電装置（FCP×3） | 電力（28 VDC） | 送信 | 燃料電池の冷却材ポンプは3相交流で駆動され、電子制御ユニットが冷却材ポンプと水素ポンプ／水分離器への交流電力を制御する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Electrical Power Distribution and Control」のうち「AC Power Generation」：インバータによる3相交流の発生と交流母線の構成・監視を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/336） |
| EP-08 | NTRS 19900001617 | IOA: Analysis of the EPD&C/EPG subsystem | 電力分配・制御（EPD&C）と発電（EPG）ハードウェアの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001617） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 交流配電の管理（A9-151〜161：インバータ管理、母線センサ、単相・2相喪失、インバータ熱寿命、MCA、油圧循環ポンプ運転）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1465） |

## 5. 参考文献

1. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にEP-20（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にEP-03（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |

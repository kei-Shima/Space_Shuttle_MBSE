# LCC 違反定義書（打上げのコミット基準の違反・免除の記録）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-LCC-ORB-001 |
| 表題 | LCC 違反定義書（打上げのコミット基準の違反・免除の記録） |
| 版・日付 | 初版（Rev. -）／2026-11-06 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-LAV-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図300 LCC 違反・免除の群ごとの件数（Mission Report の実績）・図301 限界値と測定値が本文にある LCC 違反・免除の記録（Mission Report の実績）・図302 飛行ごとの LCC 違反・免除の記録（Mission Report にある分の実績） |

## 1. 目的

LCC（Launch Commit Criteria。打上げのコミット基準）の違反・免除を、項目・限界値・測定値・結果とともに記録として持つ。これまでのモデルには、打上げのスクラブ・延期（SSD-LAV-ORB-001）はあったが、どの LCC を超え、どう扱った（スクラブ・保持・免除して打上げ）かの記録は無かった。本書は、Mission Report 本文に書かれた分を、事象ごとの記録（表）と、群・結果・限界値と測定値・飛行ごとの集計（図300〜302）にする。

## 2. 範囲と書き方

記録は Mission Report 本文の文に、特定の LCC を超えた・違反した・免除したと書かれているものだけで、112件。そのうち判断に迷う 51件は境界として数えず（表には理由つきで載せた）、図・集計は境界でない 61件（41飛行）。LCC の原典（NSTS 16007）は取り込んでいないので、LCC の限界値の一覧表も、LCC 違反の率も作らない（Mission Report にある分）。結果は、その違反が引き起こしたと本文が書くもの（スクラブ・保持・免除して打上げ・その他）で、免除は別の欄で示す。群は本書の判断で、項目の語から決めた（注記）。

## 3. 群と結果ごとの件数

数える記録 61件を、項目の群と結果で数えた（Mission Report にある分）。免除ありは、結果が保持・スクラブのものも含めて免除があった件数。判定・割合は付けない。図300 に同じ表を示す。

| 群 | 名前 | スクラブ | 保持 | 免除して打上げ | その他 | 計 | 免除あり | 例 |
|---|---|---|---|---|---|---|---|---|
| G1 | 天候 | 1 | 1 | 2 | 0 | 4 | 2 | STS-29・STS-29・STS-37 |
| G2 | 推進系・ガス | 5 | 1 | 3 | 2 | 11 | 3 | STS-35・STS-35・STS-45 |
| G3 | 機体・ET・SRB・SSME の計測 | 13 | 2 | 10 | 7 | 32 | 13 | STS-1・STS-1・STS-2 |
| G4 | 氷・デブリ・TPS | 0 | 1 | 10 | 0 | 11 | 10 | STS-31・STS-53・STS-118 |
| G5 | 地上設備・レンジ・その他 | 1 | 1 | 0 | 1 | 3 | 0 | STS-58・STS-58・STS-70 |

## 4. 限界値と測定値が本文にある記録

数える記録のうち、限界値と測定値の両方に数が本文に書かれた 24件。値は本文の語のまま（換算しない）。測定値が限界値を超えた割合などは作らない。図301 に同じ表を示す。

| ID | 飛行 | 項目（本文） | 限界値（本文） | 測定値（本文） | 結果 |
|---|---|---|---|---|---|
| LCC-002 | STS-1 | cabin differential pressure/differential time (LCC redline) | launch commit criteria redline of 0.15 psi/min | peaking at a value of 0.17 psi/min | その他 |
| LCC-005 | STS-2 | airlock-to-cargo bay differential pressure measurement (V64P0101A) LCC max redline | LCC maximum redline of 0.40 psid | reading of 0.48 psid (0.16 existing + 0.32 psid zero shift) | 免除して打上げ |
| LCC-011 | STS-27 | ET nose-cone temperature | LCC states 45 F to 135 F | 40.7 F | 免除して打上げ |
| LCC-022 | STS-33 | APU 3 test line temperature 1 (V46T0183A) | LCC limit of 85 °F | cycled up to 88 °F | その他 |
| LCC-024 | STS-35 | hydrogen concentration in the Orbiter aft compartment | LCC limit of 600 ppm | >6500 ppm | スクラブ |
| LCC-027 | STS-35 | Orbiter aft compartment helium concentration | LCC limit of 10,000 ppm | 16,200 ppm | その他 |
| LCC-028 | STS-36 | SSME liquid oxygen engine inlet temperature, minimum limit during T-31 s hold | minimum liquid oxygen engine inlet temperature of -289.2 F | limit exceeded during extended LO2 drainback (no measured value) | スクラブ |
| LCC-029 | STS-36 | fuel cell 2 hydrogen pump motor current (LCC maximum) | 0.75 A (Launch Commit Criteria maximum) | 4.28 A | その他 |
| LCC-032 | STS-37 | weather ceiling for RTLS abort (LCC) | minimum of 8000 feet | ceiling 500 feet less than the minimum of 8000 feet | 保持 |
| LCC-039 | STS-42 | fuel cell 2 hydrogen-pump motor condition | The LCC limit is 1.0 V | increased from 0.6 V to 1.48 V for approximately 6 seconds | 保持 |
| LCC-041 | STS-45 | LO2 concentration in the Orbiter aft compartment (LCC) | LCC limit of 500 ppm | peaked at 860 ppm during slow fill | スクラブ |
| LCC-042 | STS-45 | LH2 concentration in the Orbiter aft compartment (LCC) | LCC limit of 500 ppm | peaked at 750 ppm during fast fill | スクラブ |
| LCC-043 | STS-45 | LO2 concentration in the Orbiter aft compartment (LCC) | LCC limit of 500 ppm | approximately 1130 ppm; above 500 ppm for about 6 minutes | 免除して打上げ |
| LCC-044 | STS-47 | hydrogen concentration in aft compartment (LCC) | LCC limit of 500 ppm | 550 ppm | 免除して打上げ |
| LCC-045 | STS-47 | IAPU 3 fuel test line temperature | LCC lower limit of 48°F | lowest temperature experienced was 46°F (waiver down to 43°F) | 免除して打上げ |
| LCC-046 | STS-49 | APU 3 fuel test line temperature 2 (IAPU) | lower LCC limit of 48 °F | heater cycled to lows of 47 °F | 免除して打上げ |
| LCC-047 | STS-51 | right-hand SRB TVC tilt HPU turbine speed (underspeed) | between 66,200 and 77,800 rpm | 65,000 rpm | スクラブ |
| LCC-051 | STS-53 | SSME 3A 750-psi helium regulator outlet pressure (also SSME 1B) | 785-psi LCC upper limit | toggling from 784 to 788 psia | 免除して打上げ |
| LCC-052 | STS-53 | ET acreage ice in the debris zone (1/16-inch thickness) | 1/16-inch thickness in the debris zone | judged by the Ice/Frost Red Team to exceed the 1/16-inch thickness | 保持 |
| LCC-054 | STS-55 | SSME 2 helium bottle pressure (LCC limit 4,500 psia) | LCC limit is 4,500 psia | reached 4,510 psia | その他 |
| LCC-068 | STS-68 | SSME 3 HPOT discharge temperature A (LCC redline) | LCC redline of 1560 °R | attained 1576 °R | スクラブ |
| LCC-074 | STS-82 | APU 1 injector temperature (LCC limit) | 436 F LCC limit | 437 F for approximately 20 minutes | 免除して打上げ |
| LCC-078 | STS-93 | Orbiter aft compartment hydrogen concentration | LCC limit of 600 ppm | 640 ppm | スクラブ |
| LCC-080 | STS-96 | avionics bay 3A fan differential pressure | LCC and OMRSD limits of 4.3 inches of water | peaked and operated at 4.4 inches of water for approximately 5 minutes | 免除して打上げ |

## 5. 飛行ごとの記録数（Mission Report にある分）

記録のある 61飛行について、記録数・数える記録・境界・結果の内訳（数える記録）。記録の無い飛行は、報告書に本書の定義に当たる記述が無い。図302 に同じ表を示す。

| 飛行 | 計 | 数える | 境界 | 結果の内訳（数える記録） |
|---|---|---|---|---|
| STS-1 | 2 | 2 | 0 | その他 2 |
| STS-2 | 3 | 1 | 2 | 免除して打上げ 1 |
| STS-7 | 1 | 0 | 1 | — |
| STS-26 | 2 | 1 | 1 | 免除して打上げ 1 |
| STS-27 | 3 | 2 | 1 | 免除して打上げ 2 |
| STS-28 | 1 | 0 | 1 | — |
| STS-29 | 2 | 2 | 0 | 免除して打上げ 2 |
| STS-30 | 2 | 1 | 1 | スクラブ 1 |
| STS-31 | 4 | 4 | 0 | スクラブ 2・保持 1・免除して打上げ 1 |
| STS-32 | 1 | 1 | 0 | その他 1 |
| STS-33 | 1 | 1 | 0 | その他 1 |
| STS-35 | 5 | 2 | 3 | スクラブ 1・その他 1 |
| STS-36 | 4 | 2 | 2 | スクラブ 1・その他 1 |
| STS-37 | 2 | 1 | 1 | 保持 1 |
| STS-38 | 2 | 0 | 2 | — |
| STS-39 | 2 | 1 | 1 | スクラブ 1 |
| STS-41 | 1 | 0 | 1 | — |
| STS-42 | 1 | 1 | 0 | 保持 1 |
| STS-43 | 1 | 0 | 1 | — |
| STS-45 | 3 | 3 | 0 | スクラブ 2・免除して打上げ 1 |
| STS-47 | 2 | 2 | 0 | 免除して打上げ 2 |
| STS-49 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-51 | 2 | 2 | 0 | スクラブ 2 |
| STS-52 | 1 | 1 | 0 | その他 1 |
| STS-53 | 3 | 2 | 1 | 保持 1・免除して打上げ 1 |
| STS-55 | 2 | 1 | 1 | その他 1 |
| STS-56 | 2 | 1 | 1 | スクラブ 1 |
| STS-57 | 3 | 0 | 3 | — |
| STS-58 | 3 | 3 | 0 | スクラブ 1・免除して打上げ 1・その他 1 |
| STS-59 | 1 | 0 | 1 | — |
| STS-61C | 1 | 0 | 1 | — |
| STS-67 | 3 | 1 | 2 | その他 1 |
| STS-68 | 1 | 1 | 0 | スクラブ 1 |
| STS-70 | 1 | 1 | 0 | 保持 1 |
| STS-73 | 2 | 0 | 2 | — |
| STS-80 | 2 | 1 | 1 | 保持 1 |
| STS-82 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-83 | 1 | 0 | 1 | — |
| STS-88 | 1 | 0 | 1 | — |
| STS-91 | 1 | 0 | 1 | — |
| STS-93 | 2 | 2 | 0 | スクラブ 2 |
| STS-96 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-101 | 1 | 0 | 1 | — |
| STS-108 | 1 | 0 | 1 | — |
| STS-110 | 1 | 0 | 1 | — |
| STS-113 | 3 | 1 | 2 | スクラブ 1 |
| STS-114 | 1 | 1 | 0 | スクラブ 1 |
| STS-115 | 1 | 1 | 0 | スクラブ 1 |
| STS-116 | 1 | 0 | 1 | — |
| STS-117 | 2 | 0 | 2 | — |
| STS-118 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-119 | 3 | 2 | 1 | 免除して打上げ 2 |
| STS-120 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-121 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-125 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-127 | 3 | 0 | 3 | — |
| STS-128 | 3 | 3 | 0 | スクラブ 1・免除して打上げ 2 |
| STS-130 | 2 | 0 | 2 | — |
| STS-132 | 1 | 1 | 0 | 免除して打上げ 1 |
| STS-133 | 2 | 0 | 2 | — |
| STS-134 | 3 | 2 | 1 | スクラブ 1・免除して打上げ 1 |

## 6. LCC 違反・免除の記録

記録 112件を、飛行・日付の順に示す。項目は本文の語。『数え方』が境界のものは図・集計に数えない。LAV の列は、同じ事象が SSD-LAV-ORB-001 にあるもの（飛行と日付が一致したものだけ）。

| ID | 飛行 | 日付 | 項目（本文） | 群 | 結果 | 免除 | 数え方 | LAV | 根拠 |
|---|---|---|---|---|---|---|---|---|---|
| LCC-001 | STS-1 | 1981-04-10 | oxygen partial pressure in the Orbiter cabin (LCC redline) | 機体・ET・SRB・SSME の計測 | その他 | — | 数える | — | STS-1 の LCC 違反・免除（1981-04-10）：oxygen partial pressure in the Orbiter cabin (LCC redline)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56） |
| LCC-002 | STS-1 | 1981-04-12（その打上げ試行の日） | cabin differential pressure/differential time (LCC redline) | 機体・ET・SRB・SSME の計測 | その他 | — | 数える | — | STS-1 の LCC 違反・免除（1981-04-12）：cabin differential pressure/differential time (LCC redline)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=57） |
| LCC-003 | STS-2 | 日付なし | hydrogen concentration at the LH2 T-0 umbilical (redline) during tanking test | 推進系・ガス | その他 | — | 境界（数えない）：text says redline only, not LCC; event is in the tanking test, not the launch countdown; n… | — | STS-2 の LCC 違反・免除（日付の記載なし）：hydrogen concentration at the LH2 T-0 umbilical (redline) during tanking test（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| LCC-004 | STS-2 | 日付なし | PRSD oxygen tank pressure at T-0 valve closure (T-2 min 35 s) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 境界（数えない）：required pressure not itself called LCC in the text; LCC named only for the revision made … | LAV-002 | STS-2 の LCC 違反・免除（日付の記載なし）：PRSD oxygen tank pressure at T-0 valve closure (T-2 min 35 s)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=29） |
| LCC-005 | STS-2 | 日付なし | airlock-to-cargo bay differential pressure measurement (V64P0101A) LCC max redline | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-2 の LCC 違反・免除（日付の記載なし）：airlock-to-cargo bay differential pressure measurement (V64P0101A) LCC max redline（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |
| LCC-006 | STS-7 | 日付なし | ET LH2 loading: T-zero umbilical leak (3.6 percent red line value) | 機体・ET・SRB・SSME の計測 | 保持 | — | 境界（数えない）：LCC not named: 'red line value' only; LCC or other ground limit unknown | — | STS-7 の LCC 違反・免除（日付の記載なし）：ET LH2 loading: T-zero umbilical leak (3.6 percent red line value)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-7%20Space%20Shuttle%20Program%20Mission%20Report.pdf#page=7） |
| LCC-007 | STS-26 | 1988-09-29 | wing load indicators WLE-14R and WLE-14L redline limits | 機体・ET・SRB・SSME の計測 | 保持 | — | 境界（数えない）：LCC is not named; structural wing-load redline hold (L-70 min loads data); countdown resum… | — | STS-26 の LCC 違反・免除（1988-09-29）：wing load indicators WLE-14R and WLE-14L redline limits（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=5） |
| LCC-008 | STS-26 | 日付なし | dp/dt LCC redline | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-26 の LCC 違反・免除（日付の記載なし）：dp/dt LCC redline（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=20） |
| LCC-009 | STS-27 | 1988-12-02（その打上げ試行の日） | wing A18 structural load limits with winds aloft | 天候 | 免除して打上げ | あり | 境界（数えない）：Text does not name an LCC; it is a prelaunch analysis structural load limit (winds aloft) … | — | STS-27 の LCC 違反・免除（1988-12-02）：wing A18 structural load limits with winds aloft（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=4） |
| LCC-010 | STS-27 | 1988-12-02（本文の日付・通日から担当が換算） | water spray boiler 2 ready signal / steam vent temperature | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-27 の LCC 違反・免除（1988-12-02）：water spray boiler 2 ready signal / steam vent temperature（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=9） |
| LCC-011 | STS-27 | 1988-12-02（その打上げ試行の日） | ET nose-cone temperature | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-27 の LCC 違反・免除（1988-12-02）：ET nose-cone temperature（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=6） |
| LCC-012 | STS-28 | 日付なし | hydrogen concentration in the Orbiter aft compartment (LCC limit 500 ppm), conditional raise to 600 ppm | 推進系・ガス | その他 | あり | 境界（数えない）：limit was not exceeded; text records only a pre-agreed conditional raise of the limit (not… | — | STS-28 の LCC 違反・免除（日付の記載なし）：hydrogen concentration in the Orbiter aft compartment (LCC limit 500 ppm), conditional raise to 600 ppm（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-28%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8） |
| LCC-013 | STS-29 | 1989-03-13 | Orbiter wing leading edge loads vs green squatcheloid (winds aloft) | 天候 | 免除して打上げ | あり | 数える | — | STS-29 の LCC 違反・免除（1989-03-13）：Orbiter wing leading edge loads vs green squatcheloid (winds aloft)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-29%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=4） |
| LCC-014 | STS-29 | 1989-03-13 | ET structure loads vs squatcheloid (L-1 hour balloon winds) | 天候 | 免除して打上げ | あり | 数える | — | STS-29 の LCC 違反・免除（1989-03-13）：ET structure loads vs squatcheloid (L-1 hour balloon winds)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-29%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=4） |
| LCC-015 | STS-30 | 1989-04-28 | LCC engine-start box | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-006 | STS-30 の LCC 違反・免除（1989-04-28）：LCC engine-start box（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-30%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=4） |
| LCC-016 | STS-30 | 1989-05-04（本文の日付・通日から担当が換算） | water spray boiler 2 steam vent temperature LCC minimum | 機体・ET・SRB・SSME の計測 | その他 | — | 境界（数えない）：limit approached but not reached; waiver only prepared, not granted or needed | — | STS-30 の LCC 違反・免除（1989-05-04）：water spray boiler 2 steam vent temperature LCC minimum（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-30%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=5） |
| LCC-017 | STS-31 | 1990-04-10 | APU-1 chamber pressure (LCC) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-007 | STS-31 の LCC 違反・免除（1990-04-10）：APU-1 chamber pressure (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12） |
| LCC-018 | STS-31 | 1990-04-10 | APU-1 turbine speed (LCC) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-007 | STS-31 の LCC 違反・免除（1990-04-10）：APU-1 turbine speed (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=3） |
| LCC-019 | STS-31 | 1990-04-24 | ice/frost on the ET/Orbiter 17-inch liquid hydrogen disconnect | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-31 の LCC 違反・免除（1990-04-24）：ice/frost on the ET/Orbiter 17-inch liquid hydrogen disconnect（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8） |
| LCC-020 | STS-31 | 1990-04-24 | liquid oxygen outboard fill and drain valve closure at T-48 seconds | 機体・ET・SRB・SSME の計測 | 保持 | — | 数える | — | STS-31 の LCC 違反・免除（1990-04-24）：liquid oxygen outboard fill and drain valve closure at T-48 seconds（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=9） |
| LCC-021 | STS-32 | 1990-01-08 | LCC paragraph 6.4-05 (right-hand OMS tank pressure differential) | 機体・ET・SRB・SSME の計測 | その他 | — | 数える | — | STS-32 の LCC 違反・免除（1990-01-08）：LCC paragraph 6.4-05 (right-hand OMS tank pressure differential)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-32%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12） |
| LCC-022 | STS-33 | 日付なし | APU 3 test line temperature 1 (V46T0183A) | 機体・ET・SRB・SSME の計測 | その他 | — | 数える | — | STS-33 の LCC 違反・免除（日付の記載なし）：APU 3 test line temperature 1 (V46T0183A)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-33%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=10） |
| LCC-023 | STS-35 | 1990-05-29 | hydrogen concentration in the Orbiter aft compartment | 推進系・ガス | スクラブ | — | 境界（数えない）：The sentence says the levels exceeded the 'maximum allowable limits' without the word LCC;… | LAV-011 | STS-35 の LCC 違反・免除（1990-05-29）：hydrogen concentration in the Orbiter aft compartment（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-024 | STS-35 | 1990-09-05 | hydrogen concentration in the Orbiter aft compartment | 推進系・ガス | スクラブ | — | 数える | LAV-013 | STS-35 の LCC 違反・免除（1990-09-05）：hydrogen concentration in the Orbiter aft compartment（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-025 | STS-35 | 1990-09-17 | hydrogen concentration in the Orbiter aft compartment | 推進系・ガス | スクラブ | — | 境界（数えない）：The sentence does not repeat the LCC word or the limit (the 600 ppm LCC limit was given fo… | LAV-014 | STS-35 の LCC 違反・免除（1990-09-17）：hydrogen concentration in the Orbiter aft compartment（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=7） |
| LCC-026 | STS-35 | 1990-12-02 | range safety minimum ceiling for launch area optical coverage | 天候 | 保持 | — | 境界（数えない）：Text says 'possible violation' of the range safety LCC; it does not state the ceiling actu… | — | STS-35 の LCC 違反・免除（1990-12-02）：range safety minimum ceiling for launch area optical coverage（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=3） |
| LCC-027 | STS-35 | 1990-12-02（その打上げ試行の日） | Orbiter aft compartment helium concentration | 推進系・ガス | その他 | — | 数える | — | STS-35 の LCC 違反・免除（1990-12-02）：Orbiter aft compartment helium concentration（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| LCC-028 | STS-36 | 1990-02-25（本文の日付・通日から担当が換算） | SSME liquid oxygen engine inlet temperature, minimum limit during T-31 s hold | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-018 | STS-36 の LCC 違反・免除（1990-02-25）：SSME liquid oxygen engine inlet temperature, minimum limit during T-31 s hold（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| LCC-029 | STS-36 | 日付なし | fuel cell 2 hydrogen pump motor current (LCC maximum) | 機体・ET・SRB・SSME の計測 | その他 | — | 数える | — | STS-36 の LCC 違反・免除（日付の記載なし）：fuel cell 2 hydrogen pump motor current (LCC maximum)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| LCC-030 | STS-36 | 日付なし | OMS right-hand helium isolation valve leak rate | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; spec maximum waived before flight | — | STS-36 の LCC 違反・免除（日付の記載なし）：OMS right-hand helium isolation valve leak rate（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| LCC-031 | STS-36 | 日付なし | check valve between supply tanks A and B (leak above specification) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; value not stated | — | STS-36 の LCC 違反・免除（日付の記載なし）：check valve between supply tanks A and B (leak above specification)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=5） |
| LCC-032 | STS-37 | 1991-04-05 | weather ceiling for RTLS abort (LCC) | 天候 | 保持 | — | 数える | — | STS-37 の LCC 違反・免除（1991-04-05）：weather ceiling for RTLS abort (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-033 | STS-37 | 1991-04-05 | weather (wind) effects on blast propagation (LCC) | 天候 | 保持 | — | 境界（数えない）：described only as a 'possible' violation; no limit or value | — | STS-37 の LCC 違反・免除（1991-04-05）：weather (wind) effects on blast propagation (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-034 | STS-38 | 日付なし | fuel cell 1 hydrogen pump motor voltage (LCC limit 0.75 V), LCC change | 機体・ET・SRB・SSME の計測 | その他 | — | 境界（数えない）：limit not exceeded (0.74 vs 0.75 V); text records an LCC change to be processed for future… | — | STS-38 の LCC 違反・免除（日付の記載なし）：fuel cell 1 hydrogen pump motor voltage (LCC limit 0.75 V), LCC change（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| LCC-035 | STS-38 | 日付なし | OMS left-hand gaseous nitrogen fill/vent valve leakage | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; spec limit waived to fly as-is | — | STS-38 の LCC 違反・免除（日付の記載なし）：OMS left-hand gaseous nitrogen fill/vent valve leakage（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-036 | STS-39 | 1991-04-23 | main engine 3 HPOTP secondary seal cavity pressure measurement (E2029) channel A | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-020 | STS-39 の LCC 違反・免除（1991-04-23）：main engine 3 HPOTP secondary seal cavity pressure measurement (E2029) channel A（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| LCC-037 | STS-39 | 日付なし | helium concentration in Orbiter aft compartment | 推進系・ガス | その他 | — | 境界（数えない）：peak numbers are above the named LCC limit but text calls the stabilized value well below;… | — | STS-39 の LCC 違反・免除（日付の記載なし）：helium concentration in Orbiter aft compartment（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| LCC-038 | STS-41 | 1990-10-06（本文の日付・通日から担当が換算） | hydraulic system 2 water spray boiler 'OK' indication (WSB steam vent duct temperature) | 機体・ET・SRB・SSME の計測 | 保持 | — | 境界（数えない）：Text says this 'does not constitute a LCC violation, if trend data indicates the lower tem… | — | STS-41 の LCC 違反・免除（1990-10-06）：hydraulic system 2 water spray boiler 'OK' indication (WSB steam vent duct temperature)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-41%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| LCC-039 | STS-42 | 1992-01-22（本文の日付・通日から担当が換算） | fuel cell 2 hydrogen-pump motor condition | 機体・ET・SRB・SSME の計測 | 保持 | あり | 数える | — | STS-42 の LCC 違反・免除（1992-01-22）：fuel cell 2 hydrogen-pump motor condition（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-42%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| LCC-040 | STS-43 | 1991-08-01 | cabin vent valve closed indication (cabin pressure check) | 機体・ET・SRB・SSME の計測 | 保持 | — | 境界（数えない）：Text says 'The lack of a closed indication was not a LCC violation since it was proven tha… | — | STS-43 の LCC 違反・免除（1991-08-01）：cabin vent valve closed indication (cabin pressure check)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-43%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| LCC-041 | STS-45 | 1992-03-23 | LO2 concentration in the Orbiter aft compartment (LCC) | 推進系・ガス | スクラブ | — | 数える | LAV-029 | STS-45 の LCC 違反・免除（1992-03-23）：LO2 concentration in the Orbiter aft compartment (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-042 | STS-45 | 1992-03-23 | LH2 concentration in the Orbiter aft compartment (LCC) | 推進系・ガス | スクラブ | — | 数える | LAV-029 | STS-45 の LCC 違反・免除（1992-03-23）：LH2 concentration in the Orbiter aft compartment (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-043 | STS-45 | 1992-03-24 | LO2 concentration in the Orbiter aft compartment (LCC) | 推進系・ガス | 免除して打上げ | あり | 数える | — | STS-45 の LCC 違反・免除（1992-03-24）：LO2 concentration in the Orbiter aft compartment (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| LCC-044 | STS-47 | 1992-09-12（本文の日付・通日から担当が換算） | hydrogen concentration in aft compartment (LCC) | 推進系・ガス | 免除して打上げ | あり | 数える | — | STS-47 の LCC 違反・免除（1992-09-12）：hydrogen concentration in aft compartment (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-47%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-045 | STS-47 | 1992-09-12（本文の日付・通日から担当が換算） | IAPU 3 fuel test line temperature | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-47 の LCC 違反・免除（1992-09-12）：IAPU 3 fuel test line temperature（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-47%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-046 | STS-49 | 1992-05-07（本文の日付・通日から担当が換算） | APU 3 fuel test line temperature 2 (IAPU) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-49 の LCC 違反・免除（1992-05-07）：APU 3 fuel test line temperature 2 (IAPU)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-49%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-047 | STS-51 | 1993-07-24 | right-hand SRB TVC tilt HPU turbine speed (underspeed) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-031 | STS-51 の LCC 違反・免除（1993-07-24）：right-hand SRB TVC tilt HPU turbine speed (underspeed)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-51%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-048 | STS-51 | 1993-08-12 | SSME 2 turbine fuel flow meter miscompare (channel A2) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-033 | STS-51 の LCC 違反・免除（1993-08-12）：SSME 2 turbine fuel flow meter miscompare (channel A2)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-51%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-049 | STS-52 | 1992-10-22（本文の日付・通日から担当が換算） | hydrogen leak detectors 23 and 35 in GUCP cavity (LCC upper redline) | 推進系・ガス | その他 | — | 数える | — | STS-52 の LCC 違反・免除（1992-10-22）：hydrogen leak detectors 23 and 35 in GUCP cavity (LCC upper redline)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-52%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| LCC-050 | STS-53 | 1992-12-02 | wing load indicator A16L (predicted violation) | 機体・ET・SRB・SSME の計測 | 保持 | あり | 境界（数えない）：LCC not named; wing load indicator redline predicted violation from L-70 min balloon data;… | — | STS-53 の LCC 違反・免除（1992-12-02）：wing load indicator A16L (predicted violation)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-051 | STS-53 | 1992-12-02 | SSME 3A 750-psi helium regulator outlet pressure (also SSME 1B) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-53 の LCC 違反・免除（1992-12-02）：SSME 3A 750-psi helium regulator outlet pressure (also SSME 1B)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-052 | STS-53 | 1992-12-02 | ET acreage ice in the debris zone (1/16-inch thickness) | 氷・デブリ・TPS | 保持 | — | 数える | — | STS-53 の LCC 違反・免除（1992-12-02）：ET acreage ice in the debris zone (1/16-inch thickness)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| LCC-053 | STS-55 | 1993-03-22 | SSME oxidizer preburner (OPB) purge pressure redline | 機体・ET・SRB・SSME の計測 | スクラブ | — | 境界（数えない）：LCC not named: engine monitor 'redline' during terminal count (on-pad abort ~3 s before li… | LAV-039 | STS-55 の LCC 違反・免除（1993-03-22）：SSME oxidizer preburner (OPB) purge pressure redline（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-55%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-054 | STS-55 | 1993-03-22 | SSME 2 helium bottle pressure (LCC limit 4,500 psia) | 機体・ET・SRB・SSME の計測 | その他 | — | 数える | — | STS-55 の LCC 違反・免除（1993-03-22）：SSME 2 helium bottle pressure (LCC limit 4,500 psia)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-55%20Space%20Shuttle%20Mission%20Report.pdf#page=21） |
| LCC-055 | STS-56 | 1993-04-06 | MPS LH2 high-point bleed valve (PV22) closed position indication | 機体・ET・SRB・SSME の計測 | スクラブ | あり | 数える | LAV-041 | STS-56 の LCC 違反・免除（1993-04-06）：MPS LH2 high-point bleed valve (PV22) closed position indication（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-056 | STS-56 | 1993-04-06 | SSME 1 LO2 anti-flood valve skin temperature / GO2 interface temperature | 機体・ET・SRB・SSME の計測 | 保持 | あり | 境界（数えない）：text says this was not an LCC violation, but an LCC deviation was created to monitor the A… | — | STS-56 の LCC 違反・免除（1993-04-06）：SSME 1 LO2 anti-flood valve skin temperature / GO2 interface temperature（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| LCC-057 | STS-57 | 1993-06-20 | SSME 2 750-psi helium regulator B outlet pressure (LCC lower limit), limit changed | 機体・ET・SRB・SSME の計測 | その他 | あり | 境界（数えない）：no violation occurred: concern only; LCC lower limit changed to 724 psia, purge sequence 4… | — | STS-57 の LCC 違反・免除（1993-06-20）：SSME 2 750-psi helium regulator B outlet pressure (LCC lower limit), limit changed（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=16） |
| LCC-058 | STS-57 | 日付なし | WSB 1 regulator outlet pressure | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; waiver approved to fly with this condition | — | STS-57 の LCC 違反・免除（日付の記載なし）：WSB 1 regulator outlet pressure（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| LCC-059 | STS-57 | 日付なし | GSE GN2 purge pressures to LO2 disconnect umbilical cavity and LO2 T-0 umbilical (hardware maximum allowable p… | 地上設備・レンジ・その他 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; hardware allowable pressure exceeded after GSE GN2 regulator panel fai… | — | STS-57 の LCC 違反・免除（日付の記載なし）：GSE GN2 purge pressures to LO2 disconnect umbilical cavity and LO2 T-0 umbilical (hardware maximum allowable pressure)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=16） |
| LCC-060 | STS-58 | 1993-10-14 | ET intertank oxygen concentration | 推進系・ガス | 免除して打上げ | あり | 数える | — | STS-58 の LCC 違反・免除（1993-10-14）：ET intertank oxygen concentration（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| LCC-061 | STS-58 | 1993-10-15 | Orbiter S-band transponder 2 | 地上設備・レンジ・その他 | スクラブ | — | 数える | LAV-044 | STS-58 の LCC 違反・免除（1993-10-15）：Orbiter S-band transponder 2（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| LCC-062 | STS-58 | 1993-10-15 | ET Shuttle Range Safety System signal strength | 地上設備・レンジ・その他 | その他 | — | 数える | — | STS-58 の LCC 違反・免除（1993-10-15）：ET Shuttle Range Safety System signal strength（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| LCC-063 | STS-59 | 日付なし | LO2 umbilical plate gap setup supply pressure | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：LCC or OMRSD not named ('maximum requirement'); an 'exception' was issued | — | STS-59 の LCC 違反・免除（日付の記載なし）：LO2 umbilical plate gap setup supply pressure（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |
| LCC-064 | STS-61C | 1986-01-06 | liquid-oxygen main-engine temperature (engine-start requirement) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 境界（数えない）：Text calls it an 'engine-start requirement', not an LCC; scrub reason given is that the ve… | LAV-050 | STS-61C の LCC 違反・免除（1986-01-06）：liquid-oxygen main-engine temperature (engine-start requirement)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-61-C%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8） |
| LCC-065 | STS-67 | 1995-03-02（本文の日付・通日から担当が換算） | fuel cells 2 and 3 voltage vs LCC minimum performance curve | 機体・ET・SRB・SSME の計測 | その他 | — | 数える | — | STS-67 の LCC 違反・免除（1995-03-02）：fuel cells 2 and 3 voltage vs LCC minimum performance curve（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| LCC-066 | STS-67 | 1995-03-02 | Freon coolant loop 2 accumulator quantity (LCC) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：limit approached, text says it might be violated; LCC deviation raised the limit to 45 per… | — | STS-67 の LCC 違反・免除（1995-03-02）：Freon coolant loop 2 accumulator quantity (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-067 | STS-67 | 1995-03-02 | FES accumulator B feedline temperature (LCC limit 56 F) | 機体・ET・SRB・SSME の計測 | 保持 | — | 境界（数えない）：limit approached (56.6 vs 56), not stated as violated; T-9 hold extended 1 min 13 s until … | — | STS-67 の LCC 違反・免除（1995-03-02）：FES accumulator B feedline temperature (LCC limit 56 F)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-068 | STS-68 | 1994-08-18 | SSME 3 HPOT discharge temperature A (LCC redline) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-055 | STS-68 の LCC 違反・免除（1994-08-18）：SSME 3 HPOT discharge temperature A (LCC redline)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-68%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-069 | STS-70 | 1995-07-13（本文の日付・通日から担当が換算） | ET range safety system (RSS) receiver signal strength (LCC) | 地上設備・レンジ・その他 | 保持 | — | 数える | — | STS-70 の LCC 違反・免除（1995-07-13）：ET range safety system (RSS) receiver signal strength (LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-70%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-070 | STS-73 | 日付なし | fuel cell 3 substack 1 cell performance monitor (CPM) differential voltage measurement (constraint to launch) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：LCC not named: 'constraint to launch'; waiver approved for flight | — | STS-73 の LCC 違反・免除（日付の記載なし）：fuel cell 3 substack 1 cell performance monitor (CPM) differential voltage measurement (constraint to launch)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| LCC-071 | STS-73 | 日付なし | hydraulic system 1 air content (compressibility test) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; waiver generated to document higher-than-normal air content | — | STS-73 の LCC 違反・免除（日付の記載なし）：hydraulic system 1 air content (compressibility test)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=33） |
| LCC-072 | STS-80 | 1996-11-19 | Orbiter aft compartment gaseous hydrogen concentration | 推進系・ガス | 保持 | — | 数える | — | STS-80 の LCC 違反・免除（1996-11-19）：Orbiter aft compartment gaseous hydrogen concentration（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-073 | STS-80 | 1996-11-19（その打上げ試行の日） | ET intertank GUCP hydrogen concentration | 推進系・ガス | 保持 | — | 境界（数えない）：Result is a stop-flow in LH2 topping (ET vent valve cycled closed 30 s), not a countdown h… | — | STS-80 の LCC 違反・免除（1996-11-19）：ET intertank GUCP hydrogen concentration（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=24） |
| LCC-074 | STS-82 | 日付なし | APU 1 injector temperature (LCC limit) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-82 の LCC 違反・免除（日付の記載なし）：APU 1 injector temperature (LCC limit)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-82%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| LCC-075 | STS-83 | 日付なし | fuel cell 2 substack 3 cell performance monitor (CPM) differential voltage | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：LCC or OMRSD unclear: p8 'OMRSD limit', waiver is an 'OMRSD waiver', p25 'LCC limit' | — | STS-83 の LCC 違反・免除（日付の記載なし）：fuel cell 2 substack 3 cell performance monitor (CPM) differential voltage（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-83%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-076 | STS-88 | 1998-12-03 | hydraulic system 1 supply pressure B (master alarm LCC) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 境界（数えない）：Text says the countdown was held for the LCC violation and decision was to fly as-is; the … | LAV-070 | STS-88 の LCC 違反・免除（1998-12-03）：hydraulic system 1 supply pressure B (master alarm LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-88%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-077 | STS-91 | 日付なし | PRSD O2 tank 5 heater current-limit sensors (simultaneous trip), LCC waiver pre-approved | 機体・ET・SRB・SSME の計測 | その他 | あり | 境界（数えない）：waiver was pre-approved but never needed; the trips were reset with an LPS command | — | STS-91 の LCC 違反・免除（日付の記載なし）：PRSD O2 tank 5 heater current-limit sensors (simultaneous trip), LCC waiver pre-approved（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-078 | STS-93 | 1999-07-20 | Orbiter aft compartment hydrogen concentration | 推進系・ガス | スクラブ | — | 数える | LAV-074 | STS-93 の LCC 違反・免除（1999-07-20）：Orbiter aft compartment hydrogen concentration（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-93%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-079 | STS-93 | 1999-07-22 | lightning within 20 miles of the launch area (weather LCC) | 天候 | スクラブ | — | 数える | LAV-075 | STS-93 の LCC 違反・免除（1999-07-22）：lightning within 20 miles of the launch area (weather LCC)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-93%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| LCC-080 | STS-96 | 日付なし | avionics bay 3A fan differential pressure | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-96 の LCC 違反・免除（日付の記載なし）：avionics bay 3A fan differential pressure（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-96%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| LCC-081 | STS-101 | 日付なし | avionics-bay cooling-fan delta-P upper limit | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：LCC violation stated, but unclear whether the limit was removed for this flight (no waiver… | — | STS-101 の LCC 違反・免除（日付の記載なし）：avionics-bay cooling-fan delta-P upper limit（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-101%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| LCC-082 | STS-108 | 2001-12-04 | APU 2 service line temperature (lower LCC limit) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：The cited readings (45.2 F; 'cycled down to 45 F again' at launch) did not go below the 45… | — | STS-108 の LCC 違反・免除（2001-12-04）：APU 2 service line temperature (lower LCC limit)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=29） |
| LCC-083 | STS-110 | 日付なし | right RCS fuel system helium regulators leakage | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; one-flight waiver to fly as-is | — | STS-110 の LCC 違反・免除（日付の記載なし）：right RCS fuel system helium regulators leakage（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-110%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| LCC-084 | STS-113 | 2002-11-10 | payload bay (midbody) oxygen concentration (LCC: any increase above background requires evaluation) | 推進系・ガス | スクラブ | — | 数える | LAV-090 | STS-113 の LCC 違反・免除（2002-11-10）：payload bay (midbody) oxygen concentration (LCC: any increase above background requires evaluation)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| LCC-085 | STS-113 | 日付なし | cryogenic helium contamination (PRSD) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; specification allowable waived for flight | — | STS-113 の LCC 違反・免除（日付の記載なし）：cryogenic helium contamination (PRSD)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| LCC-086 | STS-113 | 日付なし | fuel cell water relief nozzle temperature | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; a 'normal cycling range' not a stated limit; waiver to fly as-is | — | STS-113 の LCC 違反・免除（日付の記載なし）：fuel cell water relief nozzle temperature（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| LCC-087 | STS-114 | 2005-07-13 | ET LH2 ECO sensor 2 indication (LCC MPS-22) | 機体・ET・SRB・SSME の計測 | スクラブ | あり | 数える | LAV-093 | STS-114 の LCC 違反・免除（2005-07-13）：ET LH2 ECO sensor 2 indication (LCC MPS-22)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| LCC-088 | STS-115 | 2006-09-08 | ET LH2 ECO sensor 3 (LCC MPS-22) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-097 | STS-115 の LCC 違反・免除（2006-09-08）：ET LH2 ECO sensor 3 (LCC MPS-22)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=94） |
| LCC-089 | STS-116 | 日付なし | fuel cell 2 substack 3 cell performance monitor (CPM) sensitivity limit | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：Waiver/deviation processed as a precaution in case the limit was violated; text states the… | — | STS-116 の LCC 違反・免除（日付の記載なし）：fuel cell 2 substack 3 cell performance monitor (CPM) sensitivity limit（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| LCC-090 | STS-117 | 2007-06-08 | APU 3 fuel pump drain line temperature 2 | 機体・ET・SRB・SSME の計測 | その他 | — | 境界（数えない）：Report contradicts itself: p39 'closed as an explained condition, thus, no LCC violation w… | — | STS-117 の LCC 違反・免除（2007-06-08）：APU 3 fuel pump drain line temperature 2（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=39） |
| LCC-091 | STS-117 | 2007-06-08 | helium injection (bubbling) secondary differential pressure (one of three LCC parameters) | 機体・ET・SRB・SSME の計測 | その他 | — | 境界（数えない）：One of three LCC delta-P measurements went out of LCC limits at T-1:44 but the other two s… | — | STS-117 の LCC 違反・免除（2007-06-08）：helium injection (bubbling) secondary differential pressure (one of three LCC parameters)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=92） |
| LCC-092 | STS-118 | 日付なし | ICE-01 (TPS crack at Xt 1973 on LO2 feedline inboard base closeout) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-118 の LCC 違反・免除（日付の記載なし）：ICE-01 (TPS crack at Xt 1973 on LO2 feedline inboard base closeout)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-118%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| LCC-093 | STS-119 | 2009-03-11 | HAZ-09 LH2 leakage at the GUCP (leak detectors LD23 and LD25) | 推進系・ガス | スクラブ | — | 境界（数えない）：LCC and values appear only in the Appendix B IFA table (STS-119-T-001/I-002); the body (p9… | LAV-102 | STS-119 の LCC 違反・免除（2009-03-11）：HAZ-09 LH2 leakage at the GUCP (leak detectors LD23 and LD25)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=88） |
| LCC-094 | STS-119 | 2009-03-15（本文の日付・通日から担当が換算） | MPS LH2 ET/Orbiter plate-gap differential pressure (LCC minimum 0.026 psid) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 数える | — | STS-119 の LCC 違反・免除（2009-03-15）：MPS LH2 ET/Orbiter plate-gap differential pressure (LCC minimum 0.026 psid)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=90） |
| LCC-095 | STS-119 | 日付なし | LCC ICE-01 (debris: bat on the ET LH2 tank acreage foam) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-119 の LCC 違反・免除（日付の記載なし）：LCC ICE-01 (debris: bat on the ET LH2 tank acreage foam)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=73） |
| LCC-096 | STS-120 | 2007-10-23 | ice at the LH2 umbilical pyrotechnic canister closeout (LCC ICE-01) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-120 の LCC 違反・免除（2007-10-23）：ice at the LH2 umbilical pyrotechnic canister closeout (LCC ICE-01)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-120%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| LCC-097 | STS-121 | 2006-07-04 | ET TPS tear at the gap between the fairing and the ET/-Y SRB cable tray | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-121 の LCC 違反・免除（2006-07-04）：ET TPS tear at the gap between the fairing and the ET/-Y SRB cable tray（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |
| LCC-098 | STS-125 | 2009-05-11 | LH2 T-0 umbilical ice/frost (LCC ICE criteria) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-125 の LCC 違反・免除（2009-05-11）：LH2 T-0 umbilical ice/frost (LCC ICE criteria)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=93） |
| LCC-099 | STS-127 | 2009-06-13 | LH2 leakage in the area of the GUCP (40,000 ppm) | 推進系・ガス | スクラブ | — | 境界（数えない）：body says 'specification' without LCC; the LCC (Haz-09, 40,000 ppm) appears only in the Ap… | LAV-108 | STS-127 の LCC 違反・免除（2009-06-13）：LH2 leakage in the area of the GUCP (40,000 ppm)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| LCC-100 | STS-127 | 2009-06-17 | LH2 leakage in the area of the GUCP (LCC Haz-09 40,000 ppm per appendix) | 推進系・ガス | スクラブ | — | 境界（数えない）：body names no limit or LCC for this attempt; LCC only in Appendix B IFA table (covers the … | LAV-109 | STS-127 の LCC 違反・免除（2009-06-17）：LH2 leakage in the area of the GUCP (LCC Haz-09 40,000 ppm per appendix)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| LCC-101 | STS-127 | 2009-07-12 | FRCS thruster F1D Tyvek rain cover partially debonded | 氷・デブリ・TPS | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; waiver to continue countdown | — | STS-127 の LCC 違反・免除（2009-07-12）：FRCS thruster F1D Tyvek rain cover partially debonded（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| LCC-102 | STS-128 | 2009-08-25 | ice at the LH2 T-0 umbilical (LCC ICE-01) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-128 の LCC 違反・免除（2009-08-25）：ice at the LH2 T-0 umbilical (LCC ICE-01)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |
| LCC-103 | STS-128 | 2009-08-26 | LH2 inboard fill-and-drain valve (PV12) closed indication (LCC MPS-04) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-115 | STS-128 の LCC 違反・免除（2009-08-26）：LH2 inboard fill-and-drain valve (PV12) closed indication (LCC MPS-04)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |
| LCC-104 | STS-128 | 2009-08-28 | ice at the LH2 T-0 umbilical (LCC ICE-01) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-128 の LCC 違反・免除（2009-08-28）：ice at the LH2 T-0 umbilical (LCC ICE-01)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |
| LCC-105 | STS-130 | 2010-02-07 | FRCS thruster Tyvek covers (F1D partially debonded, F3D liberated) | 氷・デブリ・TPS | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; waiver approved on rain-intrusion rationale | — | STS-130 の LCC 違反・免除（2010-02-07）：FRCS thruster Tyvek covers (F1D partially debonded, F3D liberated)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |
| LCC-106 | STS-130 | 2010-02-07 | Ice Detector equipment glass gauge-face fragments on pad levels | 氷・デブリ・TPS | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; Interim Problem Report closure and waiver rationale | — | STS-130 の LCC 違反・免除（2010-02-07）：Ice Detector equipment glass gauge-face fragments on pad levels（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=35） |
| LCC-107 | STS-132 | 2010-05-14 | LCC ICE-01 (LH2 diagonal strut base closeout TPS crack) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-132 の LCC 違反・免除（2010-05-14）：LCC ICE-01 (LH2 diagonal strut base closeout TPS crack)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| LCC-108 | STS-133 | 2010-11-05 | GH2 leakage at the ET/GUCP interface (LCC limit 40,000 ppm) | 推進系・ガス | スクラブ | — | 境界（数えない）：LCC and limit appear only in the Appendix B IFA table (STS-133-I-001); body says 'hydrogen… | LAV-121 | STS-133 の LCC 違反・免除（2010-11-05）：GH2 leakage at the ET/GUCP interface (LCC limit 40,000 ppm)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=97） |
| LCC-109 | STS-133 | 2011-02-22（本文の日付・通日から担当が換算） | right RCS fuel primary helium regulators internal leakage (SODB acceptable limit) | 機体・ET・SRB・SSME の計測 | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; SODB limit; waiver approved to continue with launch countdown | — | STS-133 の LCC 違反・免除（2011-02-22）：right RCS fuel primary helium regulators internal leakage (SODB acceptable limit)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| LCC-110 | STS-134 | 2011-04-29 | APU 1 Fuel Test Line temperature (APU-14 LCC minimum) | 機体・ET・SRB・SSME の計測 | スクラブ | — | 数える | LAV-124 | STS-134 の LCC 違反・免除（2011-04-29）：APU 1 Fuel Test Line temperature (APU-14 LCC minimum)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| LCC-111 | STS-134 | 日付なし | LCC ICE-01 (RTV debris item on the ET crossbeam) | 氷・デブリ・TPS | 免除して打上げ | あり | 数える | — | STS-134 の LCC 違反・免除（日付の記載なし）：LCC ICE-01 (RTV debris item on the ET crossbeam)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=40） |
| LCC-112 | STS-134 | 日付なし | FRCS thruster Tyvek rain covers (F4D and F3F detached, F2D mostly debonded) | 氷・デブリ・TPS | 免除して打上げ | あり | 境界（数えない）：no LCC/OMRSD named; accepted on a waiver | — | STS-134 の LCC 違反・免除（日付の記載なし）：FRCS thruster Tyvek rain covers (F4D and F3F detached, F2D mostly debonded)（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

## 7. 図

図300 は群と結果ごとの件数、図301 は限界値と測定値が本文にある記録、図302 は飛行ごとの記録数の表である。

## 8. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-LCC-ORB-001.sysml](../SysML/SSD-LCC-ORB-001.sysml) に示す。LCC の記録の part def LccEvent と使用 112件から成る。飛行・日付・項目・群・結果・免除・数え方・LAV の ID は属性で、パッケージへの矢印は張らない。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。要求への関係は張らず、トレースの外に置いた。

## 9. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：記録は Mission Report 本文の文に、特定の LCC（項目名・番号・限界値のどれかで特定できるもの）を超えた・違反した・免除した、と書かれているものだけである。Mission Report に書かれていないものは数えていない。LCC 違反の全数も率も主張しない（図や表の件数は「Mission Report にある分」）。LCC の原典（NSTS 16007）は手元に無いので、LCC の限界値の一覧表は作らない（限界値は Mission Report が本文に書いたものだけ）。

> **注記** 範囲・取れなかった値・本書の判断：数え方：記録 112件のうち、判断に迷うもの 51件を境界とし、数えない（表には載せ、理由を書いた）。図・集計は境界でない 61件（41飛行）。基準（作る前に決めた。境界を除いて数える）は 項目が特定できる記録 30件以上・群 4以上・10飛行以上・限界値と測定値の両方に数が書かれた記録 10件以上で、いずれも満たす（61件・5群・41飛行・24件）。

> **注記** 範囲・取れなかった値・本書の判断：結果（outcome）はその違反が引き起こしたと本文が書く結果：スクラブ 20・保持 6・免除して打上げ 25・その他 10（別の理由でスクラブされた、結果が書かれないなど）。免除は別の欄で、免除があった 28件（保持やスクラブのあとに免除したものを含む）。『LCC を変更した・マスクした』は免除として数えた。本文が免除の語を使わず、LCC を変えて打上げたと書くものを含む（STS-26・96・114・121 など。記録の note に書いた）。

> **注記** 範囲・取れなかった値・本書の判断：群（本書の判断。優先順は 氷・デブリ・TPS＞推進系・ガス＞計測＞天候＞地上設備・レンジ）：項目の語で決める規則表（merge_dd.py）。周囲の気温・風・降水・雷・雲は天候、部品・流体の温度は計測。STS-29 の 2件（機体の構造荷重をスクアッチェロイドと比べる基準）は、入力が上層風の観測なので天候に置いた（判断。項目の語に winds がある。計測に置いても群は5つのまま）。LCC を名指ししない天候のスクラブは記録していない（定義 (i)。天候の群が薄いのはこのため。打上げのスクラブは SSD-LAV-ORB-001 にある）。群の規則は結果を見て一度直した（燃料電池の水素ポンプやヘリウム調圧器を推進系・ガスにしない、`drain` を天候にしない。PLAN_DD 追記1）。

> **注記** 範囲・取れなかった値・本書の判断：LAV との対応：同じ事象が打上げのスクラブ・延期として SSD-LAV-ORB-001 にあるものは、（飛行、日付）が一致したものだけを LAV の ID で示した（20件、LAV の記録 18件。1回のスクラブに複数の LCC があるもの〔STS-31・45 など〕は LAV の1件に複数が対応する）。それ以外は対応なし。LAV の記録は変えない。

> **注記** 範囲・取れなかった値・本書の判断：記録しなかったもの：LCC の語が無い保持・スクラブ（STS-122 の ECO スクラブなど。LAV にはある）、OMRSD だけの違反（LCC でないもの）、「LCC 違反は無かった」という否定の文、LCC を満たしたと書くだけの文、他の飛行への言及。

> **注記** 範囲・取れなかった値・本書の判断：日付の根拠：「本文」は本文に書かれた日付、「本文の日付・通日から担当が換算」は本文が GMT の通日や別の日付だけを書き、担当が暦日にしたもの（STS-36 の 2/25 は本文の『2/26 まで延期』と LAV の日付から。LAV の同じ日付も逆算なので、この対応は循環している）、「その打上げ試行の日」は本文がその打上げ試行の作業と書くので担当がその日を採ったもの。日付が書かれていない 31件は日付なしで示した。

> **注記** 既存との重なり：打上げのスクラブ・延期と原因の区分は SSD-LAV-ORB-001、秒読みの保持は SSD-GND-ORB-001、飛行中の異常は SSD-IFA-ORB-001。本書は LCC の項目・限界値・測定値と結果を持ち、重ねて描かない。雷の LCC の歴史と根拠（NASA/SP-2010-216283・TP-2010-216291）は取り込み済みだが本書では使わない（天候基準の版で使う）。

## 10. 参考文献

1. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p56） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=56
2. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） （PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=57
3. STS-2 Orbiter Mission Report 2.1.1節 Main Propulsion Subsystem（PDF p7） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7
4. STS-2 Orbiter Mission Report （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=29
5. JSC-17959 STS-2 Orbiter Mission Report（1982年） 2.4.3節 Air Revitalization Pressure Control Subsystem（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51
6. STS-7 Space Shuttle Program Mission Report（NASA JSC、1983年、15頁、OCR のテキスト層、712,814 バイト） （PDF p7） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-7%20Space%20Shuttle%20Program%20Mission%20Report.pdf#page=7
7. NSTS-22070 STS-26 National Space Transportation System Mission Report（NASA JSC、1989年1月、44頁、2,839,485 バイト。OCR のテキスト層） （PDF p5） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=5
8. NSTS-22070 STS-26 National Space Transportation System Mission Report（NASA JSC、1989年1月、44頁、2,839,485 バイト。OCR のテキスト層） （PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-26%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=20
9. STS-27 National Space Transportation System Mission Report（JSC、42頁、2,114,204 バイト） （PDF p4） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=4
10. STS-27 National Space Transportation System Mission Report（JSC、42頁、2,114,204 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=9
11. STS-27 National Space Transportation System Mission Report（JSC、42頁、2,114,204 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=6
12. STS-28 National Space Transportation System Mission Report（NASA JSC、1989年9月、28頁、1,965,098 バイト。OCR のテキスト層） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-28%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8
13. STS-29 National Space Transportation System Mission Report（JSC、32頁、2,121,209 バイト） （PDF p4） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-29%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=4
14. STS-30 National Space Transportation System Mission Report（JSC、26頁、1,907,427 バイト） （PDF p4） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-30%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=4
15. STS-30 National Space Transportation System Mission Report（JSC、26頁、1,907,427 バイト） （PDF p5） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-30%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=5
16. STS-31 National Space Transportation System Mission Report（JSC、24頁、1,700,712 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12
17. STS-31 National Space Transportation System Mission Report（JSC、24頁、1,700,712 バイト） （PDF p3） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=3
18. STS-31 National Space Transportation System Mission Report（JSC、24頁、1,700,712 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8
19. STS-31 National Space Transportation System Mission Report（JSC、24頁、1,700,712 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-31%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=9
20. STS-32 National Space Transportation System Mission Report（JSC、33頁、2,253,513 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-32%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=12
21. NSTS-08352 STS-33 National Space Transportation System Mission Report（NASA JSC、1990年1月、22頁、1,565,282 バイト。OCR のテキスト層） （PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-33%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=10
22. STS-35 Mission Report （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=6
23. STS-35 Mission Report （PDF p7） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=7
24. STS-35 Mission Report （PDF p3） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=3
25. STS-35 Mission Report （PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=10
26. STS-36 Space Shuttle Mission Report（JSC、22頁、1,594,658 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=9
27. STS-36 Space Shuttle Mission Report（JSC、22頁、1,594,658 バイト） （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=11
28. STS-36 Space Shuttle Mission Report（JSC、22頁、1,594,658 バイト） （PDF p5） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-36%20Space%20Shuttle%20Mission%20Report.pdf#page=5
29. STS-37 Space Shuttle Mission Report（JSC、33頁、2,278,770 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-37%20Space%20Shuttle%20Mission%20Report.pdf#page=6
30. STS-38 Space Shuttle Mission Report（JSC、19頁、1,407,992 バイト） （PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=11
31. STS-38 Space Shuttle Mission Report（JSC、19頁、1,407,992 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-38%20Space%20Shuttle%20Mission%20Report.pdf#page=8
32. STS-39 Space Shuttle Mission Report（JSC、34頁、2,294,085 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=9
33. STS-39 Space Shuttle Mission Report（JSC、34頁、2,294,085 バイト） （PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-39%20Space%20Shuttle%20Mission%20Report.pdf#page=10
34. STS-41 Space Shuttle Mission Report（JSC、27頁、2,003,951 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-41%20Space%20Shuttle%20Mission%20Report.pdf#page=13
35. STS-42 Space Shuttle Mission Report（JSC、32頁、2,401,728 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-42%20Space%20Shuttle%20Mission%20Report.pdf#page=13
36. STS-43 Space Shuttle Mission Report（JSC、34頁、2,389,619 バイト） （PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-43%20Space%20Shuttle%20Mission%20Report.pdf#page=18
37. STS-45 Space Shuttle Mission Report（JSC、34頁、2,413,807 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=6
38. STS-45 Space Shuttle Mission Report（JSC、34頁、2,413,807 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-45%20Space%20Shuttle%20Mission%20Report.pdf#page=12
39. STS-47 Space Shuttle Mission Report（JSC、38頁、2,524,596 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-47%20Space%20Shuttle%20Mission%20Report.pdf#page=6
40. NSTS-08276 STS-49 Space Shuttle Mission Report（NASA JSC、1992年7月、47頁、3,165,780 バイト。OCR のテキスト層） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-49%20Space%20Shuttle%20Mission%20Report.pdf#page=6
41. STS-51 Space Shuttle Mission Report（JSC、56頁、6,953,590 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-51%20Space%20Shuttle%20Mission%20Report.pdf#page=6
42. STS-52 Space Shuttle Mission Report（JSC、44頁、7,044,981 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-52%20Space%20Shuttle%20Mission%20Report.pdf#page=12
43. STS-53 Space Shuttle Mission Report（JSC、39頁、3,088,890 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=6
44. STS-53 Space Shuttle Mission Report（JSC、39頁、3,088,890 バイト） （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-53%20Space%20Shuttle%20Mission%20Report.pdf#page=12
45. STS-55 Space Shuttle Mission Report（JSC、50頁、4,100,333 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-55%20Space%20Shuttle%20Mission%20Report.pdf#page=6
46. STS-55 Space Shuttle Mission Report（JSC、50頁、4,100,333 バイト） （PDF p21） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-55%20Space%20Shuttle%20Mission%20Report.pdf#page=21
47. STS-56 Space Shuttle Mission Report（1993、51頁、4,013,614 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=6
48. STS-56 Space Shuttle Mission Report（1993、51頁、4,013,614 バイト） （PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=19
49. STS-57 Space Shuttle Mission Report（JSC、51頁、4,156,073 バイト） （PDF p16） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=16
50. STS-57 Space Shuttle Mission Report（JSC、51頁、4,156,073 バイト） （PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-57%20Space%20Shuttle%20Mission%20Report.pdf#page=22
51. STS-58 Space Shuttle Mission Report（JSC、40頁、10,048,236 バイト） （PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=13
52. STS-58 Space Shuttle Mission Report（JSC、40頁、10,048,236 バイト） （PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=6
53. STS-58 Space Shuttle Mission Report（JSC、40頁、10,048,236 バイト） （PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-58%20Space%20Shuttle%20Mission%20Report.pdf#page=14
54. STS-59 Mission Report （PDF p17） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=17
55. STS-61-C National Space Transportation System Mission Report（JSC、17頁、1,133,106 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-61-C%20National%20Space%20Transportation%20System%20Mission%20Report.pdf#page=8
56. STS-67 Space Shuttle Mission Report（JSC、50頁、3,217,298 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=24
57. STS-67 Space Shuttle Mission Report（JSC、50頁、3,217,298 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-67%20Space%20Shuttle%20Mission%20Report.pdf#page=8
58. STS-68 Space Shuttle Mission Report（JSC、59頁、3,902,861 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-68%20Space%20Shuttle%20Mission%20Report.pdf#page=8
59. STS-70 Space Shuttle Mission Report（JSC、43頁、2,892,442 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-70%20Space%20Shuttle%20Mission%20Report.pdf#page=8
60. STS-73 Space Shuttle Mission Report（1995、58頁、3,834,683 バイト） （PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=32
61. STS-73 Space Shuttle Mission Report（1995、58頁、3,834,683 バイト） （PDF p33） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-73%20Space%20Shuttle%20Mission%20Report.pdf#page=33
62. STS-80 Space Shuttle Mission Report（1997、63頁、4,088,118 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=8
63. STS-80 Space Shuttle Mission Report（1997、63頁、4,088,118 バイト） （PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-80%20Space%20Shuttle%20Mission%20Report.pdf#page=24
64. STS-82 Space Shuttle Mission Report（JSC、53頁、3,114,873 バイト） （PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-82%20Space%20Shuttle%20Mission%20Report.pdf#page=23
65. STS-83 Space Shuttle Mission Report（JSC、53頁、3,369,343 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-83%20Space%20Shuttle%20Mission%20Report.pdf#page=8
66. STS-88 Space Shuttle Mission Report（JSC、63頁、3,992,889 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-88%20Space%20Shuttle%20Mission%20Report.pdf#page=8
67. NSTS-37421 STS-91 Space Shuttle Mission Report（JSC、1998年7月、57頁、3,891,467 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-91%20Space%20Shuttle%20Mission%20Report.pdf#page=8
68. STS-93 Space Shuttle Mission Report（JSC、50頁、3,338,918 バイト） （PDF p8） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-93%20Space%20Shuttle%20Mission%20Report.pdf#page=8
69. STS-96 Space Shuttle Mission Report（JSC、52頁、3,298,194 バイト） （PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-96%20Space%20Shuttle%20Mission%20Report.pdf#page=25
70. STS-101 Space Shuttle Mission Report（JSC、63頁、3,798,184 バイト） （PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-101%20Space%20Shuttle%20Mission%20Report.pdf#page=30
71. STS-108 Mission Report （PDF p29） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=29
72. STS-110 Space Shuttle Mission Report（JSC、57頁、3,837,066 バイト） （PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-110%20Space%20Shuttle%20Mission%20Report.pdf#page=10
73. STS-113 Space Shuttle Mission Report（JSC、58頁、4,423,959 バイト） （PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=19
74. STS-113 Space Shuttle Mission Report（JSC、58頁、4,423,959 バイト） （PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-113%20Space%20Shuttle%20Mission%20Report.pdf#page=28
75. STS-114 Mission Report （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9
76. STS-115 Space Shuttle Mission Report（JSC、106頁、770,336 バイト） （PDF p94） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-115%20Space%20Shuttle%20Mission%20Report.pdf#page=94
77. STS-116 Space Shuttle Mission Report（JSC、91頁、687,467 バイト） （PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-116%20Space%20Shuttle%20Mission%20Report.pdf#page=44
78. STS-117 Space Shuttle Mission Report（JSC、106頁、501,835 バイト） （PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=39
79. STS-117 Space Shuttle Mission Report（JSC、106頁、501,835 バイト） （PDF p92） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-117%20Space%20Shuttle%20Mission%20Report.pdf#page=92
80. STS-118 Space Shuttle Mission Report（JSC、109頁、685,027 バイト） （PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-118%20Space%20Shuttle%20Mission%20Report.pdf#page=34
81. STS-119 Space Shuttle Mission Report（JSC、105頁、811,153 バイト） （PDF p88） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=88
82. STS-119 Space Shuttle Mission Report（JSC、105頁、811,153 バイト） （PDF p90） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=90
83. STS-119 Space Shuttle Mission Report（JSC、105頁、811,153 バイト） （PDF p73） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-119%20Space%20Shuttle%20Mission%20Report.pdf#page=73
84. STS-120 Space Shuttle Mission Report（JSC、102頁、486,685 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-120%20Space%20Shuttle%20Mission%20Report.pdf#page=9
85. STS-121 Space Shuttle Mission Report（JSC、97頁、679,837 バイト） （PDF p87） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-121%20Space%20Shuttle%20Mission%20Report.pdf#page=87
86. NSTS-37452 STS-125 Mission Report（2010） （PDF p93） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=93
87. STS-127 Space Shuttle Mission Report（JSC、123頁、1,215,519 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=9
88. STS-127 Space Shuttle Mission Report（JSC、123頁、1,215,519 バイト） （PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-127%20Space%20Shuttle%20Mission%20Report.pdf#page=10
89. STS-128 Space Shuttle Mission Report（JSC、103頁、859,541 バイト） （PDF p87） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-128%20Space%20Shuttle%20Mission%20Report.pdf#page=87
90. NSTS-37456 STS-130 Space Shuttle Mission Report（JSC、2010年、105頁、914,591 バイト） （PDF p9） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=9
91. NSTS-37456 STS-130 Space Shuttle Mission Report（JSC、2010年、105頁、914,591 バイト） （PDF p35） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-130%20Space%20Shuttle%20Mission%20Report.pdf#page=35
92. STS-132 Space Shuttle Mission Report（JSC、103頁、981,003 バイト） （PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-132%20Space%20Shuttle%20Mission%20Report.pdf#page=34
93. STS-133 Space Shuttle Mission Report（JSC、111頁、1,002,085 バイト） （PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=97
94. STS-133 Space Shuttle Mission Report（JSC、111頁、1,002,085 バイト） （PDF p45） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-133%20Space%20Shuttle%20Mission%20Report.pdf#page=45
95. STS-134 Space Shuttle Mission Report（JSC、109頁、973,287 バイト） （PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=51
96. STS-134 Space Shuttle Mission Report（JSC、109頁、973,287 バイト） （PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=40
97. STS-134 Space Shuttle Mission Report（JSC、109頁、973,287 バイト） （PDF p46） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-134%20Space%20Shuttle%20Mission%20Report.pdf#page=46
98. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
99. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 11. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-11-06 | 初版作成（LCC の違反・免除の記録 112件〔数える 61・境界 51、41飛行〕、群 5、図300〜302、SysML v2 テキスト） |

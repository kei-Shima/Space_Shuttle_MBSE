# 火災対応・運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-FDS-OPS-001 |
| 表題 | 火災対応・運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-FDS-001 |
| 関連図 | SSD-SYS-ARC-001 図26 煙検知・消火系 機能構成 |

## 1. 目的

運用飛行規則と故障処置手順による、火災・火災後の定義、煙検知を失ったときの管理、ベイ火災・乗員室火災の処置と火災後の対応、確認のないHalon放出後の管理と大気汚染の制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-FDS-OPS-01 | 火災は、乗員による炎・煙の目視、またはベイでは同じ区画の2個の感知器が2,000 µg/m³を超える場合、1個が2,000 µg/m³で増加中かつ他方が自己試験に不合格の場合、電気データで持続的な短絡が確かめられた場合とする（A17-1A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） |
| F-ECL-FDS-OPS-02 | 乗員室の火災では、乗員は感知器の警報より先ににおいで気づくことが多く、Halonを放出する前に火元を特定して火災を確かめなければならない（A17-1A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） |
| F-ECL-FDS-OPS-03 | ベイの煙検知は、一方の感知器が回路試験の両方に不合格で他方がいずれかに不合格の場合、両感知器の電源を保てない場合、両ベイファンの故障で空気が循環しない場合に喪失とし、乗員室も3個の感知器・電源・両キャビンファンについて同様に判定する（A17-2）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） |
| F-ECL-FDS-OPS-04 | ベイの煙検知を失った場合は、持続的な短絡による機器故障があればHalonを放出し、ベイ1・2ではOMS-2後に空冷機器とベイファンの電源を切る。対流による酸素の供給とファンの摩擦による着火を除くためである（A17-51A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1919） |
| F-ECL-FDS-OPS-05 | ベイ3は通信とC&Wの機器を切れないため、ベイ3の前のロッカーを外して乗員室の感知器と乗員で監視し、再突入の電源投入前にロッカーを戻して携帯のHalonボトルをベイへ放出する（A17-51A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1920） |
| F-ECL-FDS-OPS-06 | 乗員室の煙検知を失った場合は乗員の1人が常に起きて煙・火災を監視し、区画に指示が2つしか残らない場合は毎日回路試験を行う（A17-51B・C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1921） |
| F-ECL-FDS-OPS-07 | 火災の処置は、ベイではHalonボトルの放出・ベイファンの停止・ヘルメットのバイザーを下ろすこと、乗員室ではキャビンファンの停止・ヘルメットの着用・携帯のHalonボトルを適切な消火ポートへ放出することである（A17-53A・B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） |
| F-ECL-FDS-OPS-08 | ベイの火災後はベイを船外へパージし、乗員室に燃焼生成物があれば8 psiへ減圧して連続パージする。減圧中にベイの有毒物を乗員室へ吸い出さないよう、ベイのパージは3 lb/hr以上とする（A17-53C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1925） |
| F-ECL-FDS-OPS-09 | 火災の確認のないHalon放出では、ベイは船外へパージし、放出時刻が分からなければ打上げ時に放出したとみなす。携帯消火器の漏れは、始まりが分かればエアロックの減圧弁から残りを船外へ放出する（A17-54）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1928） |
| F-ECL-FDS-OPS-10 | ベイへ放出したHalonは50時間で約50%、100時間で全量が乗員室へ拡散し、LiOHの活性炭やATCOではほとんど除けない。火災のない放出では、計器盤や乗員室への携帯消火器の放出後の暴露を24〜48時間までとする（A13-152）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1796） |
| F-ECL-FDS-OPS-11 | 火災後は、CSA-CPで15分ごとにO2・CO・HCN・HClを記録してMCCへ報告し、濃度に応じてATCO・活性炭・LiOHキャニスタを交換する。通信がない場合は、煙が見えず、キャビンの感知器の読みが1.2未満などの条件を満たすまでバイザーを下ろしておく（MAL FRP-2）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=365） |
| F-ECL-FDS-OPS-12 | 火災をDPS表示の濃度で確かめたら、軌道上はQDM、上昇・再突入中はバイザーを閉じて酸素を吸い、固定または携帯のHalonボトルで消火する。その後WCSの活性炭フィルタ・ATCO・LiOHで大気を浄化し、安全な水準にできなければ早期に帰還する（SCOM 6.8節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-FDS-07 | 煙警報・回路試験 | データ・指令 | 受信 | SMOKE DETECTION灯・サイレンとDPS表示の濃度から、乗員は火災の位置を特定し、実際の火災かを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=38） | — |
| IF-FDS-13 | ベイ固定消火ボトル | データ・指令 | 送信 | ベイの火災を確認したら、そのベイのHalonボトルを放出し、ベイファンを止める（A17-53A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） | — |
| IF-FDS-14 | 携帯消火器・消火ポート | データ・指令 | 送信 | 乗員室の火災では、キャビンファンを止めてヘルメットを着けたうえで、携帯のHalonボトルを適切な消火ポートへ放出する（A17-53B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923）放出の前に、乗員が火元を特定して火災を確かめる必要がある（A17-1A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 6.8節 Fire（PDF p891）：火災の手がかりと、DPS表示の濃度で火災を確かめた後のQDM・バイザーでの保護、Halonボトルの放出、大気の浄化と早期帰還の判断を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-1・51・53・54（PDF p1915〜1928）：火災の確認条件、喪失後の管理、ベイ火災・乗員室火災の処置と火災後の対応、確認のない放出後のパージを定め、A13-152（p1795〜1797）とA17-1001（p2032〜2034）で放出後の暴露の目安と続行判断を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） |
| FD-04 | NTRS 19930011015 | Fire safety practices in the Shuttle and the Space Station Freedom | PDF p4：STS-6・STS-35・STS-50の異臭・過熱の事例と、消火器を放出すれば直ちにミッションを終了して帰還するとの規則を記す。（出典: https://ntrs.nasa.gov/api/citations/19930011015/downloads/19930011015.pdf#page=4） |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | PDF p5：シャトルで起きた2件の小事象は短絡による電線被覆の過熱で、乗員が回路の電源を切って抑え、感知器は作動せず消火器も放出しなかったと記す。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=5） |
| FD-09 | NIST R0200469 | Fire Protection in Manned Missions: Current and Planned | PDF p1：乗員が電源を切って火災を防いだ事象5件と、自己消炎した閃光火災2件があり、平均して年1回の火災または火災の兆候があったと記す。（出典: https://www.nist.gov/system/files/documents/el/fire_research/R0200469.pdf#page=1） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.5〜3.3.6節（PDF p46〜47）：Halon 1301の暴露限度と、火災後の分解生成物の危険、CSA-CPによる4つの汚染物質の測定を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=46） |
| FD-13 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録B.3（PDF p204）：O2濃度が40%を超えるとHalon 1301が燃料として働き、火災を広げると警告する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204） |
| FD-14 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-12・FRP-2・FRP-3（PDF p351・p365〜366）：ベイ火災後の単一故障許容への復旧、火災後のキャビン清浄化（CSA-CPの記録とキャニスタ交換）、8 psiへの減圧時間を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=365） |
| FD-19 | NTRS 20080012612 | Spacecraft Fire Detection: Smoke Properties and Transport in Low-Gravity（Urban他、2008年） | PDF p3：Friedmanによればオービタで過熱・部品故障の事象が6件あり、いずれも火災には広がらなかったと記す。（出典: https://ntrs.nasa.gov/api/citations/20080012612/downloads/20080012612.pdf#page=3） |
| FD-20 | NTRS 19940007083 | A Combustion Products Analyzer for Contingency Use During Thermodegradation Events on Spacecraft（Wilson他、1993年） | 要約（PDF p1）：熱分解事象の後に乗員が大気を吸えるかを判断するため、CO・HF・HCl・HCNを測る携帯型の燃焼生成物分析器（CPA）を開発し、STS-41から搭載したと述べる。（出典: https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf#page=1） |

## 5. 注記（出典間の相違・構成変更）

> **注記** O2濃度が40%を超えるとHalon 1301は燃料として働き、火災を広げる（訓練マニュアル付録B.3）。乗員室の減圧・酸素の管理と組み合わせる際の制約として記す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204）

> **注記** 再突入中に火災の確認または疑いで消火ボトルを放出した場合は、着陸後の急速な電源停止（A16-11D）の条件となる。ベイや計器盤から漏れ出すHalonと燃焼生成物を吸わないよう、乗員は機外へ出るとされる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1890）

> **注記** ベイ火災の後の復旧手順（ECLS SSR-12）は、有効な煙濃度を得るためにOI MDMとOI DSCを先に復旧し、ベイファンを再起動して濃度が1分を超えて上がり続ければベイの電源を切るとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=351）

> **注記** 生命維持の続行判断（A17-1001）は、防火の項目としてベイの煙検知系（ベイ当たり2個）・キャビンの煙検知系・消火系（ベイ当たり1本）・火災の検知と消火・確認のないHalon放出を挙げる。抽出テキストでは表の判定欄が崩れているため、項目ごとの判定は記さない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032）

> **注記** 検証メモ：Friedman（1991年、PDF p3）とFriedman（1993年、PDF p4）は、消火器を放出すれば直ちにミッションを終了して帰還するとするが、運用飛行規則A13-152（2002年）は、火災のない放出でベイへは72〜100時間、乗員室へは24〜48時間の暴露を目安とし、MCCと医師が実時間で判断するとする。本書は運用飛行規則に従った。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1795）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1 Fire/Post-Fire Definitions（PDF p1915） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-2 Smoke Detection Loss Definition（PDF p1917） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-51 Management Following Loss of Smoke Detection（A項）（PDF p1919） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1919
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-51 Management Following Loss of Smoke Detection（続き）（PDF p1920） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1920
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-51 Management Following Loss of Smoke Detection（B・C項）（PDF p1921） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1921
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（PDF p1923） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（C項・続き）（PDF p1925） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1925
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-54 Management Following Halon Discharge without Fire Confirmation（PDF p1928） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1928
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-152 Cabin Atmosphere Contamination（続き）（PDF p1796） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1796
10. JSC-48027 Rev. F Malfunction Procedures（MAL） FRP-2 Post-Fire Cabin Cleanup（PDF p365） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=365
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 6.8節 Systems Failures（PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
12. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.4.1節 Panel L1（PDF p38） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=38
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.3 Cabin PPO2 Abnormal（PDF p204） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A16-11 Expedited Powerdown（D項）（PDF p1890） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1890
15. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-12 Av Bay Fire Recovery/Reconfig（PDF p351） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=351
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（A. Fire Protection）（PDF p2032） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-152 Cabin Atmosphere Contamination（A項）（PDF p1795） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1795

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |

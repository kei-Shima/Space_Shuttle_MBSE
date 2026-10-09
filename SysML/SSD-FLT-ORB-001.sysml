// SysML v2 テキスト：飛行ごとの構成の解決と、飛行試験による要求の検証の証拠
// SSD-FLT-ORB-001 飛行構成・飛行試験定義書（飛行ごとの構成の解決と飛行試験による検証の証拠） の表から生成（lib/build_docs_av.py・rev_av/avdata.py）。根拠の頁は SSD-FLT-ORB-001 にある。
package SSD_FLT_ORB_001 {
    doc /* SSD-FLT-ORB-001 飛行構成・飛行試験定義書（飛行ごとの構成の解決と飛行試験による検証の証拠）。図132・133 と同じ内容。 */
    private import ScalarValues::*;
    private import SSD_VAR_ORB_001::*;
    metadata def ConfigurationOf { doc /* 構成が当たる飛行の個体（SSD-IND-ORB-001） */ }
    metadata def EvidenceFor { doc /* 飛行試験の結果が証拠になる要求 */ }
    metadata def ObservedIn { doc /* 飛行試験の結果を得た飛行の個体 */ }
    occurrence def FlightTestResult {
        doc /* 飛行試験（DTO・FTR・DSO）の目的と結果 */
        attribute outcome : String;
        attribute flightName : String;
    }
    // ---- 飛行ごとの構成（variation の解決）
    part def <'FLC-01'> Sts1Configuration :> MissionConfiguration {
        doc /* STS-1（OV-102）。主なペイロード：開発飛行計装（DFI）。PRSD 組数：2 */
        part :>> orbiter = OrbiterVariant::ov102;
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "2組（タンク1・2）"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "約 14%"; }
    }
    #ConfigurationOf dependency <'FLC-01>STS-1'> from Sts1Configuration to SSD_IND_ORB_001::Sts1;
    part def <'FLC-02'> Sts2Configuration :> MissionConfiguration {
        doc /* STS-2（OV-102）。主なペイロード：OSTA-1 パレット（SIR-A などの地球観測実験）、IECM、RMS（開発飛行試験）。PRSD 組数：3 */
        part :>> orbiter = OrbiterVariant::ov102;
        part remoteManipulatorKit :> kits : RemoteManipulatorKit { doc /* MK-11 搭載 */ }
        comment /* MK-01 非搭載 */
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "3組（水素・酸素のタンク3を STS-2 で追加）"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "TACAN 3台"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "RSI タイル（HRSI・LRSI）と FRSI。OMS ポッド側面の FRSI を HRSI タイルに交換"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "降着装置の隔離弁を開いたとき系統1で 14%（系統3で 6%）の低下"; }
    }
    part def <'FLC-03'> Sts3Configuration :> MissionConfiguration {
        doc /* STS-3（OV-102）。主なペイロード：OSS-1（パレット）、PDP（RMS で展開・係留）、IECM（展開せず）。PRSD 組数：4 */
        part :>> orbiter = OrbiterVariant::ov102;
        part remoteManipulatorKit :> kits : RemoteManipulatorKit { doc /* MK-11 搭載 */ }
        part extraPrsdTankSets :> kits : ExtraPrsdTankSets { doc /* MK-01 搭載 */ }
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "4組（酸素タンク1〜4・水素タンク1〜4）"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "13.6%（降着装置の展開時）"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "TACAN 3台"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "上部前胴・上部ボディフラップに非高密度化タイル（STS-3 で喪失、STS-4 の前に高密度化）。FRSI を使用"; }
    }
    part def <'FLC-04'> Sts4Configuration :> MissionConfiguration {
        doc /* STS-4（OV-102）。主なペイロード：DOD 82-1（国防総省の初のペイロード）、IECM（RMS で操作）、GAS、CFES・MLR などのミッドデッキ実験。PRSD 組数：— */
        part :>> orbiter = OrbiterVariant::ov102;
        part remoteManipulatorKit :> kits : RemoteManipulatorKit { doc /* MK-11 搭載 */ }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "TACAN 3台（GPS なし）"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "タイル（HRSI/LRSI）と FRSI。7枚のスランプ、1枚の脱落、ボディフラップ上面の摩耗"; }
    }
    part def <'FLC-05'> Sts114Configuration :> MissionConfiguration {
        doc /* STS-114（OV-103）。主なペイロード：MPLM（ISS 補給）、ESP-2、OBSS。PRSD 組数：5 */
        part :>> orbiter = OrbiterVariant::ov103;
        part extraPrsdTankSets :> kits : ExtraPrsdTankSets { doc /* MK-01 搭載 */ }
        part orbiterDockingSystemKit :> kits : OrbiterDockingSystemKit { doc /* MK-06 搭載 */ }
        part remoteManipulatorKit :> kits : RemoteManipulatorKit { doc /* MK-11 搭載 */ }
        part boomSensorKit :> kits : BoomSensorKit { doc /* MK-12 搭載 */ }
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "5組"; }
        @VehicleFeature { feature = "VF-04"; block = "SSD-FD-ARS-RCRS-001"; value = "LiOH"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "GPS 受信機（MAGRS）あり"; }
        @VehicleFeature { feature = "VF-13"; block = "SSD-FD-MECH-DEC-001"; value = "使用（着陸で展開）"; }
    }
    #ConfigurationOf dependency <'FLC-05>STS-114'> from Sts114Configuration to SSD_IND_ORB_001::Sts114;
    part def <'FLC-06'> Sts125Configuration :> MissionConfiguration {
        doc /* STS-125（OV-104）。主なペイロード：HST 整備（FSS・MULE・ORUC・SLIC）。PRSD 組数：5 */
        part :>> orbiter = OrbiterVariant::ov104;
        part extraPrsdTankSets :> kits : ExtraPrsdTankSets { doc /* MK-01 搭載 */ }
        comment /* MK-06 非搭載 */
        part remoteManipulatorKit :> kits : RemoteManipulatorKit { doc /* MK-11 搭載 */ }
        part boomSensorKit :> kits : BoomSensorKit { doc /* MK-12 搭載 */ }
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "5組（タンク1〜5）"; }
        @VehicleFeature { feature = "VF-04"; block = "SSD-FD-ARS-RCRS-001"; value = "LiOH（救援待機のため合計 78 個）"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "GPS 1系統"; }
        @VehicleFeature { feature = "VF-13"; block = "SSD-FD-MECH-DEC-001"; value = "使用（着陸で展開・投棄）"; }
    }
    #ConfigurationOf dependency <'FLC-06>STS-125'> from Sts125Configuration to SSD_IND_ORB_001::Sts125;
    package FlightTests {
        doc /* STS-1〜4 の飛行試験の結果 */
        occurrence <'FT-1-01'> ft_1_01 : FlightTestResult { doc /* OFT の軌道船の飛行試験要求（FTR）の STS-1 分の実施：138 件の FTR の試験条件をすべて実施した。複数飛行のデータを要するため完了した FTR は無い。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-02'> ft_1_02 : FlightTestResult { doc /* OMS のクロスフィード噴射（右エンジン・左エンジン）の実証：OMS-3 は左ポッドから右エンジン、OMS-4 は右タンクから左エンジンへのクロスフィードで噴射し、FTO を満たした。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-03'> ft_1_03 : FlightTestResult { doc /* 低重力での OMS 推進薬計量系の動作の実証：燃料の量の表示が不規則で、低重力での計量系の実証は達成されなかった（異常報告7）。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-04'> ft_1_04 : FlightTestResult { doc /* OMS エンジンのジンバル制御：右 OMS の一次ピッチアクチュエータが固着し、軌道離脱は二次のジンバルアクチュエータモータで行った。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-05'> ft_1_05 : FlightTestResult { doc /* RCS の各運転モード（単独・クロスフィード・OMS とのインタコネクト、主エンジン・バーニア）の評価：RCS はすべての設計モードで正常に働き、主エンジンとバーニアの両方で運転した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-06'> ft_1_06 : FlightTestResult { doc /* 燃料電池の性能の飛行試験：FTR は完了した。燃料電池は 857 kWh を供給し、平均電力は 15.75 kW であった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-07'> ft_1_07 : FlightTestResult { doc /* 燃料電池のパージ機能の飛行試験：手動パージは繰り返し実証したが、流量計の出力が低く自動パージのソフトウェアは働かず、50% の完了とされた。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-08'> ft_1_08 : FlightTestResult { doc /* 燃料電池のベント配管・ポートの再突入の熱環境の検証：反応剤のベント配管とポートは許容内であったが、水逃しノズルの温度は計測上限 450°F を超えた（異常報告23）。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-09'> ft_1_09 : FlightTestResult { doc /* 軌道上の DAP による姿勢制御の評価：計画どおり完了したとみられる。下向きのバーニアの推力はプルームの衝突で減った。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-10'> ft_1_10 : FlightTestResult { doc /* スタートラッカによる IMU アラインメントの検証：アラインメントはすべて成功し、精度は予想より良かった。FTO 173-01・-02・-05・-06 は一部の完了で再計画された。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-11'> ft_1_11 : FlightTestResult { doc /* IMU アラインメントの予備としての COAS の使用の実証（DTO 173-01・02・06）：COAS は設計限界内で、IMU のアラインメントに繰り返し使えることを示した。熱の影響は小さかった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-12'> ft_1_12 : FlightTestResult { doc /* 乗員室の大気の微量汚染物質の蓄積の評価（FTO 162-01・-02）：採取装置は大気の採取に成功し、検出された微量物質はどれも有毒とされる濃度に達しなかった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-13'> ft_1_13 : FlightTestResult { doc /* 大気の圧力制御と酸素分圧の制御の飛行試験：圧力制御系は飛行を通じて正常で、大気圧と酸素分圧の制御の FTR は満たされた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-14'> ft_1_14 : FlightTestResult { doc /* ATCS の統合性能の検証：ATCS は正常に働き、アンモニアボイラ・FES・放熱器の排熱も良好で、FTR のデータ部分は満たされた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-15'> ft_1_15 : FlightTestResult { doc /* 上昇中の水噴霧ボイラによる APU 潤滑油の冷却：水噴霧ボイラが凍結し、WSB 3 の解凍に 1.5 分かかって潤滑油温度が 282°F に上がった（レッドライン 290°F 内）。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-16'> ft_1_16 : FlightTestResult { doc /* APU の燃料の消費（予測と実績）：APU の燃料の実績は 122〜166 lb で、各 APU の搭載量（約 332 lb）内であった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-17'> ft_1_17 : FlightTestResult { doc /* GPC の冗長セットと BFS の軌道離脱・再突入での動作：4台の GPC の冗長セットを組み、BFS は軌道離脱の準備と実施のすべての機能で期待どおりに働いた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-18'> ft_1_18 : FlightTestResult { doc /* ペイロードベイドアと放熱器の開閉・展開の飛行試験：ペイロードベイドアと放熱器の運用は異常なく良好であった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-19'> ft_1_19 : FlightTestResult { doc /* 降着装置の展開：展開時間 6 秒は許容最大の 10 秒内で、予備の火工品は要らなかった。油圧系1の量は展開で約 14% 下がった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-20'> ft_1_20 : FlightTestResult { doc /* エアデータプローブの展開：展開時間は各 13 秒で、2モータの設計時間 15 秒内であった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-21'> ft_1_21 : FlightTestResult { doc /* 能動ベント系のベント扉の動作：ベント扉はすべて2モータの最大設計時間 5 秒内で動作した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-22'> ft_1_22 : FlightTestResult { doc /* ET 分離後の ET アンビリカル扉の閉鎖：閉鎖のすべての機能が設計の許容時間内で動作した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-23'> ft_1_23 : FlightTestResult { doc /* 上昇中の ET タンクのアレージ圧の制御：水素タンクは制御幅 33〜35 psia、酸素タンクは 20〜22 psig に保たれた（0.3 psi の行き過ぎを除く）。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-24'> ft_1_24 : FlightTestResult { doc /* MECO 後の残留推進薬のダンプと不活性化：ダンプと不活性化は成功した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-25'> ft_1_25 : FlightTestResult { doc /* TPS の熱性能・構造健全性・再使用性の検証：15,300 ft/sec より上の再突入データを失い完了できなかった。得られたデータは予測どおりの熱性能を示したが、表面の損傷が 303 か所・コーティングの欠けが 98 か所あった。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-26'> ft_1_26 : FlightTestResult { doc /* OMS ポッドの熱防護（異常報告9・32）：上昇中にタイル16片を失い、再突入の加熱でポッドの複合材構造に13か所の剥離が生じた。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-27'> ft_1_27 : FlightTestResult { doc /* 再突入の加熱環境の検証：15,300 ft/sec より上のデータが得られず完全には満たされなかった。ペイロードベイドアのヒンジ7は許容最大 1200°F を超え 1530°F を示した。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-28'> ft_1_28 : FlightTestResult { doc /* 再突入前の熱調整姿勢と接着層の温度：下面の接着層の温度は再突入開始時に 3〜37°F で、通常の再突入の要求 60°F を下回った。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-29'> ft_1_29 : FlightTestResult { doc /* 廃棄物収集系の運用（異常報告33）：使い始めから不十分で、飛行の終わりには液体をまったく収集できなくなった。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-30'> ft_1_30 : FlightTestResult { doc /* 乗員室の騒音の測定（Cabin Acoustic Noise DTO）：操縦室で 60〜66 dB-A、中甲板で 67 dB-A で、JSC Standard 145 の 55 dB-A を超えたが、生理学的には有害でないとされた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-1-31'> ft_1_31 : FlightTestResult { doc /* 乗員の被ばく線量の測定（OFT の線量計）：STS-1 の飛行の線量当量の合計は 19 mrem 未満で、OFT の各飛行の線量は許容値に近づかなかった（STS-3 は 62.5 mrem、STS-4 は 62.3 mrem）。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-1"; }
        occurrence <'FT-2-01'> ft_2_01 : FlightTestResult { doc /* 乗員室の騒音の測定（12か所）：測定値はすべて 55 dB-A を大きく超え、前部アビオニクスベイ・WCS 運転中などは局所で 76 dB-A を超えた（音源の近くでの測定）。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-02'> ft_2_02 : FlightTestResult { doc /* OMS エンジン故障の模擬：噴射中にクロスフィードを始めたときの供給系の動的応答を実証する。：OMS-4 を右ポッドの単発で始め、噴射中に供給モードを切り替えて左ポッドのタンクから右エンジンへ供給して終えた。エンジン入口圧は予想どおりに応答した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-03'> ft_2_03 : FlightTestResult { doc /* OMS エンジンの再始動：無重量・高真空で最短の間隔（240 秒）で再始動できることを実証する。：OMS-3A・3B で実施し、間隔は 243 秒。両噴射とも性能は正常で再始動の悪影響は無かった（確定にはエンジン DFI データの詳細な検討が要る）。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-04'> ft_2_04 : FlightTestResult { doc /* OMS から RCS への推進薬のインタコネクト試験。：試験は取り消され STS-4 に移された。インタコネクト自体は運用で2回使われた（T-2-01）。 */ attribute :>> outcome = "評価なし"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-05'> ft_2_05 : FlightTestResult { doc /* OMS-RCS インタコネクトの運用での使用（RCS 推進薬の節約）。：左・右ポッドから各1回使い、RCS は左 OMS タンクから 50 lb、右 OMS タンクから約 150 lb を消費した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-06'> ft_2_06 : FlightTestResult { doc /* バーニア噴射器ヒータの評価：バーニアを 10 時間噴射させずヒータだけで噴射器温度を保てるかを調べる。：前部バーニアの 10 W ヒータは余裕が小さく、深宇宙に向くと噴射器を漏れ検知の閾値 130°F より上に保てなかった（F5R は 127°F まで低下）。時々の噴射が要る。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-07'> ft_2_07 : FlightTestResult { doc /* RCS 噴射器の漏れ検知試験：弁と噴射器の間の残留推進薬の蒸発で主噴射器の漏れ検知器が誤って働くかを調べる。：軌道上では 10 パルス後の最低温度が 39°F で選択解除は起きなかった。突入後は R1U が 2 パルスで 33°F まで下がり、選択解除が起こりうることを示した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-08'> ft_2_08 : FlightTestResult { doc /* 軌道上の油圧の循環ポンプによる熱試験（FTO 243-01〜03）。：燃料電池1の故障で系統2だけに縮小し、15 分運転・45 分停止を3サイクル行った。系統1の模擬の隔離弁閉は手順の問題で 5 分中 4 分だけで、系統1と2の差の評価にはデータが足りない可能性がある。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-09'> ft_2_09 : FlightTestResult { doc /* PRSD の成層試験：酸素・水素タンクの圧力低下と温度上昇の成層の限界を定める。：燃料電池の故障後の電力削減と最小ミッションのため取り消された。 */ attribute :>> outcome = "評価なし"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-10'> ft_2_10 : FlightTestResult { doc /* 燃料電池1の故障（異常報告 8）。：飛行 4.33 時間で電圧が下がり、0.75 V の急な性能低下（KOH の排出による浸水）で母線から外して停止した。原因はアスピレータの閉塞で生成水を除けなくなりセル4つが浸水した。飛行は最小ミッションに短縮された。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-11'> ft_2_11 : FlightTestResult { doc /* 燃料電池1基の喪失のもとでの電力の継続（バスタイと2基運転）。：主母線 A を B につないでから燃料電池1を切り離し（バスタイの初の使用）、残りの飛行は燃料電池2・3で給電した。降下の平均負荷は 17 kW（2基）。母線電圧はすべて設計限界の十分内にあった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-12'> ft_2_12 : FlightTestResult { doc /* 上昇中の APU 3 の潤滑油の冷却（WSB 3 の凍結、異常報告 4）。：WSB 3 が凍結し、B 制御器へ切り替えても回復せず、潤滑油温度は C&W 限界 290°F を超えて 307°F 以上となり、APU 3 を早めに停止した。突入では WSB 3 に問題は無かった。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-13'> ft_2_13 : FlightTestResult { doc /* 放熱器の固有の熱容量の評価。：データを検討し目的は達成された（突入・着陸後の部分を含む）。関連の DTO 266（放熱器性能試験）は最小ミッションのため予定どおりには行われず、2日目の左舷放熱器の格納で一部だけ行われた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-14'> ft_2_14 : FlightTestResult { doc /* RMS 自動モードの性能：自動軌道で並進・回転の精度を確かめる（FTO 252-08 の操作員指令モードを含む）。：6つの自動軌道のうち重要な2つ（1と5）を行い所要の精度が得られた。操作員指令モード（FTO 252-08）も成功。残りは今後の飛行に移された。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-15'> ft_2_15 : FlightTestResult { doc /* RMS の予備モード（予備の駆動）の性能。：予備電源で手首側から順に位相の確認をしたところ、肩ヨー関節だけがどちらの向きにも駆動できず、主電源に戻して収納した（異常報告 16）。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-16'> ft_2_16 : FlightTestResult { doc /* IMU の性能の検証。：3台の IMU が冗長管理で交互に選ばれ、対ごとの姿勢差は 0.2 度未満にとどまり、要求は成功裏に満たされた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-17'> ft_2_17 : FlightTestResult { doc /* TPS の熱性能・構造の健全性・再使用性の検証。：RSI の全体の性能は優れていたが、へこみ・えぐれ 334 か所とコーティングの欠け 19 か所、ボディフラップのタイルの気泡、右翼グローブのタイルの破断があり、右 OMS ポッドでは FRSI の過大な収縮でグラファイトエポキシ構造が局所的に損傷した。突入の圧力データは電力削減で得られなかった。STS-3 までの交換は約 200 枚。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-18'> ft_2_18 : FlightTestResult { doc /* 降着装置の展開時間。：展開は接地 18 秒前に始まり、展開時間 6 秒で要求の 10 秒の十分内。予備の火工品は不要であった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-2-19'> ft_2_19 : FlightTestResult { doc /* ET アンビリカル扉とベント扉の作動時間。：ET アンビリカル扉の閉鎖の作動時間の合計は 31.81 秒で仕様 36 秒（2モータ）の内。ベント扉は T-10.17 秒までに全開で、2モータの設計時間 5 秒の十分内であった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-2"; }
        occurrence <'FT-3-01'> ft_3_01 : FlightTestResult { doc /* OMS から RCS へのインタコネクト（両ポッド）の運用：インタコネクトを計9回使い、左ポッドから 1188 lbm、右ポッドから 1117 lbm を RCS へ供給した。OMS の全噴射でデータは正常な性能を示した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-02'> ft_3_02 : FlightTestResult { doc /* OMS エンジンの低温再始動（最小の休止時間・低温の機器での再始動）の実証：左ポッドで OMS-3A・3B を行い再始動自体は問題なかったが、手順の誤りでブローダウンモードとなり、FM 広帯域記録器の故障で噴射器加速度のデータを失い評価できなかった。 */ attribute :>> outcome = "評価なし"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-03'> ft_3_03 : FlightTestResult { doc /* 極低温タンクの熱漏れの実証（part 01 低温ケース・part 02 高温ケース）：ヒータを切ったときの量の減少から熱漏れを求める試験を2ケースとも完了した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-04'> ft_3_04 : FlightTestResult { doc /* 燃料電池のパージ（自動パージの部分）の実証：GPC の流量限界を変えたことで自動パージの部分を完了した（手動の部分は STS-1 で完了）。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-05'> ft_3_05 : FlightTestResult { doc /* 燃料電池による発電と直流母線の電圧：燃料電池は約224時間正常に運転し、平均 14.8 kW・2851 kWh で3基とも予測の性能曲線を上回った。母線電圧は全段階で設計限界内にあり、OSS-1 への給電は要求を満たした。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-06'> ft_3_06 : FlightTestResult { doc /* APU と系3の水噴霧ボイラによる潤滑油の冷却：上昇中に WSB 3 が凍結して潤滑油を冷やせず、潤滑油温度が約 345°F に上がったため APU 3 を MECO 前（8分2秒）に停止し、主エンジン3は空圧で停止した。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-07'> ft_3_07 : FlightTestResult { doc /* 軌道上の油圧系の熱調整（循環ポンプ）：循環ポンプで油圧系の温度を -10°F より高く保ち、GPC のソフトウェアのサーモスタット論理による運転も実証された。暖機の回数は予測より少なかった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-08'> ft_3_08 : FlightTestResult { doc /* 自動着陸系の飛行試験（自動着陸の DTO）：10,000 ft から約 140 ft まで自動着陸系で飛び、TAEM からの切替えは滑らかで、参照軌道をよく追従した。接地は手動。報告書は自動着陸の DTO は満たされ、接地までの試験に進めるとした。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-09'> ft_3_09 : FlightTestResult { doc /* 軌道上での TACAN の距離データによる航法の可能性の評価：17の地上局の距離データを記録した（連続ロック 4〜95 秒）。方位データは高仰角で信頼できず混信の恐れもあるため、軌道上航法に使う計画は無い。再突入では3台すべてがロックして機体を着陸地へ導いた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-10'> ft_3_10 : FlightTestResult { doc /* スタートラッカによる IMU のアラインメント（機会アラインメントを含む）：予定のアラインメントはすべて成功し、86回の機会アラインメントのうち8回を予定の代わりに使って RCS 推進薬と乗員の時間を節約した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-11'> ft_3_11 : FlightTestResult { doc /* 乗員室の急減圧の警報（dP/dt）：上昇中に乗員室の dP/dt が -0.05 psi/min の警報点を超えてクラクソンが鳴った（3回の試験飛行のすべてで発生）。通常の膨張によるもので、作動率を -0.08 psi/min に上げる変更を処理中である。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-12'> ft_3_12 : FlightTestResult { doc /* ARS の性能（軌道上の高・低の室内熱負荷）：安定した軌道上の高・低の室内熱負荷の試験条件を完了し、STS-3 の部分を満たした。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-13'> ft_3_13 : FlightTestResult { doc /* ペイロードベイドアの熱環境での開閉（運用温度の範囲の確認）：23時間の尾部太陽指向の後の左舷ドアの閉鎖で後部隔壁ラッチの表示が得られず、上面太陽指向と PTC の後に閉鎖・ラッチできた。そのほかの姿勢での閉鎖はすべて成功した。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-14'> ft_3_14 : FlightTestResult { doc /* 降着装置の展開：展開を 270 KEAS・高度 99 ft・接地9秒前に始め、接地の約2秒前に下げ位置でロックした。STS-4 からは高度 200 ft を展開の合図とする。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-15'> ft_3_15 : FlightTestResult { doc /* 熱防護系の性能（RSI タイル・FRSI）：上昇中に上部前胴でタイル21枚と破片16個、上部ボディフラップでタイル16枚を失ったが構造の過熱は無かった。FRSI は 900°F を超え（限界 700°F）、右 OMS ポッドの2か所でグラファイトエポキシ構造が軽い過熱を受けた。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-16'> ft_3_16 : FlightTestResult { doc /* RMS によるペイロードの展開・係留の性能：ステップ1の IECM の展開・係留は CCTV カメラの故障で行えず STS-4 に回した。最後のステップの PDP の展開・係留は3回、各10分未満で問題なく行った。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-17'> ft_3_17 : FlightTestResult { doc /* エンドエフェクタの把持・剛結の性能（手動・自動）：手動・自動の両モードで把持・剛結を行い完了した。手首カメラ無しでも代わりの視野があれば把持でき、手首ロール誤差 9°での剛結も示した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-18'> ft_3_18 : FlightTestResult { doc /* RMS の制御系の評価（負荷あり）：IECM（830 lb）の代わりに PDP（383 lb）を負荷とし、必要な DAC カメラも働かず、FTO は未完了。FTO 352-05（RMS/RCS の干渉）も同じ理由で未完了。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-19'> ft_3_19 : FlightTestResult { doc /* RMS の予備モードの制御性能（無負荷）：4ステップすべてを成功させ、最後は両乗員が予備モードでアームを収納した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-3-20'> ft_3_20 : FlightTestResult { doc /* 乗員の被ばくの測定：予期しない被ばくは無く、乗員の TLD の平均は 46.1±2.6 mrem で、予測 67 millirad を下回った。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-3"; }
        occurrence <'FT-4-01'> ft_4_01 : FlightTestResult { doc /* 乗員室の騒音の測定（STS-3 から削除後、STS-4 に再割当て）：窓 W7/W8 で 65 dB-A、中甲板の睡眠位置で 69 dB-A。OFT の構成の騒音環境を十分に特徴づけた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-02'> ft_4_02 : FlightTestResult { doc /* MPS のポゴ（縦振動）抑制系の性能を評価する。：MPS の FTR 14件すべてでデータを得て、ポゴ抑制系の性能（41VV024）を含む8件を完了とした。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-03'> ft_4_03 : FlightTestResult { doc /* MECO 後の自動の推進薬ダンプの時間線を確立する。：ダンプは MECO の2分後に始まり 3分2秒続き、その後真空不活性化した。ただし FTR は残量・装填精度の評価が要るため未完了とされた。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-04'> ft_4_04 : FlightTestResult { doc /* OMS から RCS へのインタコネクトによる推進薬の供給。：インタコネクトを6回使い、左ポッドから 692 lbm、右ポッドから 1072 lbm を RCS へ供給した。噴射はすべて通常の供給モードで正常。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-05'> ft_4_05 : FlightTestResult { doc /* 主 RCS による狭いデッドバンド（±0.1 deg/軸）の姿勢保持を示す。：計画どおり行い ±0.1 deg/軸の保持能力を示したが、推進薬の使用量は飛行前の予測の2倍を超えた。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-06'> ft_4_06 : FlightTestResult { doc /* 受動の重力傾斜による姿勢保持を評価する。：第1部は日照中の負のロールトルク（4〜6 ft-lb）で不成功、2日目の再試行は 12 時間から 6 時間に短縮したがほぼ成功した。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-07'> ft_4_07 : FlightTestResult { doc /* RCS の冗長管理による噴射器の漏れの検知と選択解除。：OMS-1 の直後に F1L の酸化剤の漏れを RM が検知して自動で選択解除し、のちに漏れが止まって再選択した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-08'> ft_4_08 : FlightTestResult { doc /* RCS ヘリウム加圧の B 系統（前部酸化剤の調圧器）を軌道上で使う。：レグ A から B へ切り替えて使い、調圧器は一貫して働いたが、ロックアップ 257〜258 psia（要求の最大 253）・調圧値 255 psia（245 ±3）と要求を外れた。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-09'> ft_4_09 : FlightTestResult { doc /* APU の燃料・水配管のヒータを突入で切れるか（ヒータの故障オンへの備え）を確かめる。：APU 1 の供給配管ヒータを切ると3時間で 37°F に下がり、凍結が3時間よりずっと前に始まることが分かったため、突入ではヒータを入れたままとした。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-10'> ft_4_10 : FlightTestResult { doc /* 水噴霧ボイラ（WSB）による潤滑油の温度制御（WSB 3 は小さいベントノズルを試用）。：WSB 1・2 は制御点 253°F に達して正常、WSB 3 は凍結し1分後に解けて潤滑油を 230°F まで下げた。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-11'> ft_4_11 : FlightTestResult { doc /* PRSD の低密度成層試験で低密度・大流量の性能を示す。：DTO を完了して低密度・大流量の性能を示し、PRSD タンクを初めて残量まで使い切った。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-12'> ft_4_12 : FlightTestResult { doc /* 燃料電池の性能（V45VV006）・パージ能力（V45VV010）・ベント口の熱環境（V45VV011）を評価する。：燃料電池は飛行の間オービタの全電力を供給し、平均 15.2 kW（494 A）。最初の4飛行で3件の FTR を達成し、燃料電池は運用飛行に認定された。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-13'> ft_4_13 : FlightTestResult { doc /* 配電と母線電圧。：配電・制御の性能は正常で、母線電圧はすべての段階で設計限界の十分内にあった。GAS の起動は配線の断線で一時失敗した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-14'> ft_4_14 : FlightTestResult { doc /* IMU の性能とアラインメントを検証する（関連の FTO 474-01・473-01・473-03）。：FTR 71VV002 を完了し、3台の IMU は正常、IMU のアラインメントはすべて成功した。COAS 較正は過去の飛行とよく一致し、排水中のスタートラッカは予測どおり捕捉が難しかった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-15'> ft_4_15 : FlightTestResult { doc /* TACAN・MSBLS・自動着陸による進入と着陸の航法。：TACAN の軌道上試験を 13 回成功させ、突入では3台とも追尾し、MSBLS の3台がすべて捕捉して自動着陸（50 秒）を支えた。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-16'> ft_4_16 : FlightTestResult { doc /* S帯と UHF の飛行中のアンテナパターンを測る。：STS-2 から持ち越した試験で、一部を完了したが、完了には STS-5 での試験が要る。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-17'> ft_4_17 : FlightTestResult { doc /* UHF の周波数の軌道上での切替え。：軌道上で初めて 296.8 MHz から 259.7 MHz に変え、地上アンテナの高い利得を利用した。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-18'> ft_4_18 : FlightTestResult { doc /* 放熱器の性能試験（前方パネル収納・展開）と FTO 462-01（表面のコーティング点検）。：FTO 462-01 は完了。FTO 466-01 は収納の部分のデータを得たが、展開した放熱器の部分は完了せず、のちに必須でないとされた。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-19'> ft_4_19 : FlightTestResult { doc /* 乗員室の CO2 分圧の制御。：CO2 分圧は LiOH を外す上昇・突入を除き 0.8 mm Hg 以下、最大でも約 4.3 mm Hg で通常の上限 7.6 mm Hg を下回った。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-20'> ft_4_20 : FlightTestResult { doc /* エアロックと EVA 系の実証（EMU のデモンストレーション）。：計画どおり完了し、エアロック支援系に異常は無かった。通常のエアロック出口の手順の実証は STS-5 に残る。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-21'> ft_4_21 : FlightTestResult { doc /* 降着時の荷重（脚の衝撃速度・動圧・荷重倍数）。：前脚の衝撃速度 5.4 ft/sec（設計限界 11.0）、主脚約 1.0 ft/sec（制限 6）、最大動圧 282 psf（許容 375）、最大垂直荷重倍数 1.8 g（制限 2.0）。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-22'> ft_4_22 : FlightTestResult { doc /* ペイロードベイドアの寒冷時の性能（底面太陽向き約 32 時間の後の閉鎖）。：左舷ドアの後部隔壁のラッチが完全なラッチ位置に達せず（ラッチのモータが停止）、熱調整の後に閉鎖・ラッチを完了した。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-23'> ft_4_23 : FlightTestResult { doc /* 降着装置の展開と制動（制動の FTO：8〜10 ft/sec²）。：展開時間 6 秒（設計要求 10 秒）、展開開始は 294 KEAS・406 ft。制動の FTO は達成せず（平均 約 7.5 ft/sec²）、内側ブレーキ2組が損傷した。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-24'> ft_4_24 : FlightTestResult { doc /* RMS によるペイロードの展開と係留の性能（IECM 約 850 lb）。：IECM を展開・係留でき、RMS は試験目的をすべて満たしたとみられる。ただし FTO 454-01（RCS プルーム衝突の調査）は IECM のシーケンサの故障で不成功。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-25'> ft_4_25 : FlightTestResult { doc /* 油圧系のタイマモード運転（循環ポンプの間欠運転）で配管の温度を保つ。：系 2・3 のデータを得たが、デューティ比 2.4% では配管を 0°F 以上に保てなかった。FTO 444-01（暖機）は実施した。 */ attribute :>> outcome = "一部達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-26'> ft_4_26 : FlightTestResult { doc /* 後部 RCS の推進薬の温度（突入の下限）。：後部 RCS の推進薬の最低温度は 73°F・74°F で、突入の限界 70°F を満たした。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-27'> ft_4_27 : FlightTestResult { doc /* 熱防護（タイル・FRSI・オービタの外板の温度）の飛行後の状態。：隙間の加熱で7枚のタイルがスランプし、OMS ポッドの1か所はグラファイトエポキシの過熱で構造の修理を要した。右 OMS ポッドのタイル1枚が脱落し、ボディフラップ上面のタイルはバーニアのプルームで激しく摩耗した。 */ attribute :>> outcome = "未達"; attribute :>> flightName = "STS-4"; }
        occurrence <'FT-4-28'> ft_4_28 : FlightTestResult { doc /* 乗員の放射線の線量の測定。：予測 42 millirad に対し、乗員の TLD の測定は平均 39.12 mrem で、予期しない被ばくは無かった。 */ attribute :>> outcome = "達成"; attribute :>> flightName = "STS-4"; }
    }
    #EvidenceFor dependency <'FT-1-02>REQ-OMS-07'> from FlightTests::ft_1_02 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    #EvidenceFor dependency <'FT-1-04>REQ-OMS-08'> from FlightTests::ft_1_04 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_08;
    #EvidenceFor dependency <'FT-1-05>REQ-OMS-07'> from FlightTests::ft_1_05 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    #EvidenceFor dependency <'FT-1-05>REQ-RCS-04'> from FlightTests::ft_1_05 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_04;
    #EvidenceFor dependency <'FT-1-06>REQ-EPS-02'> from FlightTests::ft_1_06 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_02;
    #EvidenceFor dependency <'FT-1-06>REQ-EPS-19'> from FlightTests::ft_1_06 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19;
    #EvidenceFor dependency <'FT-1-07>REQ-EPS-14'> from FlightTests::ft_1_07 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
    #EvidenceFor dependency <'FT-1-09>REQ-GNC-09'> from FlightTests::ft_1_09 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_09;
    #EvidenceFor dependency <'FT-1-10>REQ-GNC-02'> from FlightTests::ft_1_10 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
    #EvidenceFor dependency <'FT-1-11>REQ-GNC-02'> from FlightTests::ft_1_11 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
    #EvidenceFor dependency <'FT-1-12>REQ-ECLSS-06'> from FlightTests::ft_1_12 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #EvidenceFor dependency <'FT-1-13>REQ-ECLSS-01'> from FlightTests::ft_1_13 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #EvidenceFor dependency <'FT-1-14>REQ-ECLSS-08'> from FlightTests::ft_1_14 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
    #EvidenceFor dependency <'FT-1-15>REQ-APU-07'> from FlightTests::ft_1_15 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
    #EvidenceFor dependency <'FT-1-16>REQ-APU-01'> from FlightTests::ft_1_16 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
    #EvidenceFor dependency <'FT-1-17>REQ-DPS-01'> from FlightTests::ft_1_17 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
    #EvidenceFor dependency <'FT-1-17>REQ-DPS-04'> from FlightTests::ft_1_17 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
    #EvidenceFor dependency <'FT-1-18>REQ-MECH-03'> from FlightTests::ft_1_18 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
    #EvidenceFor dependency <'FT-1-18>REQ-TPS-07'> from FlightTests::ft_1_18 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_07;
    #EvidenceFor dependency <'FT-1-19>REQ-MECH-07'> from FlightTests::ft_1_19 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
    #EvidenceFor dependency <'FT-1-20>REQ-GNC-04'> from FlightTests::ft_1_20 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_04;
    #EvidenceFor dependency <'FT-1-21>REQ-MECH-05'> from FlightTests::ft_1_21 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
    #EvidenceFor dependency <'FT-1-22>REQ-MECH-06'> from FlightTests::ft_1_22 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_06;
    #EvidenceFor dependency <'FT-1-23>REQ-MPS-08'> from FlightTests::ft_1_23 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_08;
    #EvidenceFor dependency <'FT-1-24>REQ-MPS-10'> from FlightTests::ft_1_24 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
    #EvidenceFor dependency <'FT-1-25>REQ-TPS-01'> from FlightTests::ft_1_25 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
    #EvidenceFor dependency <'FT-1-26>REQ-TPS-01'> from FlightTests::ft_1_26 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
    #EvidenceFor dependency <'FT-1-28>REQ-TPS-03'> from FlightTests::ft_1_28 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_03;
    #EvidenceFor dependency <'FT-1-28>REQ-STR-08'> from FlightTests::ft_1_28 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_08;
    #EvidenceFor dependency <'FT-1-29>REQ-ECLSS-13'> from FlightTests::ft_1_29 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
    #EvidenceFor dependency <'FT-1-30>REQ-CREW-03'> from FlightTests::ft_1_30 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #EvidenceFor dependency <'FT-1-31>REQ-CREW-06'> from FlightTests::ft_1_31 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #EvidenceFor dependency <'FT-2-01>REQ-CREW-03'> from FlightTests::ft_2_01 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #EvidenceFor dependency <'FT-2-02>REQ-OMS-07'> from FlightTests::ft_2_02 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    #EvidenceFor dependency <'FT-2-05>REQ-OMS-07'> from FlightTests::ft_2_05 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    #EvidenceFor dependency <'FT-2-06>REQ-RCS-07'> from FlightTests::ft_2_06 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
    #EvidenceFor dependency <'FT-2-07>REQ-RCS-08'> from FlightTests::ft_2_07 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
    #EvidenceFor dependency <'FT-2-08>REQ-APU-06'> from FlightTests::ft_2_08 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
    #EvidenceFor dependency <'FT-2-10>REQ-EPS-16'> from FlightTests::ft_2_10 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_16;
    #EvidenceFor dependency <'FT-2-11>REQ-EPS-03'> from FlightTests::ft_2_11 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
    #EvidenceFor dependency <'FT-2-11>REQ-EPS-04'> from FlightTests::ft_2_11 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_04;
    #EvidenceFor dependency <'FT-2-11>REQ-EPS-06'> from FlightTests::ft_2_11 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
    #EvidenceFor dependency <'FT-2-12>REQ-APU-07'> from FlightTests::ft_2_12 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
    #EvidenceFor dependency <'FT-2-13>REQ-ECLSS-08'> from FlightTests::ft_2_13 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
    #EvidenceFor dependency <'FT-2-15>REQ-PLS-02'> from FlightTests::ft_2_15 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_02;
    #EvidenceFor dependency <'FT-2-16>REQ-GNC-01'> from FlightTests::ft_2_16 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_01;
    #EvidenceFor dependency <'FT-2-17>REQ-TPS-01'> from FlightTests::ft_2_17 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
    #EvidenceFor dependency <'FT-2-18>REQ-MECH-07'> from FlightTests::ft_2_18 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
    #EvidenceFor dependency <'FT-2-19>REQ-MECH-05'> from FlightTests::ft_2_19 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
    #EvidenceFor dependency <'FT-2-19>REQ-MECH-06'> from FlightTests::ft_2_19 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_06;
    #EvidenceFor dependency <'FT-3-01>REQ-OMS-07'> from FlightTests::ft_3_01 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    #EvidenceFor dependency <'FT-3-03>REQ-EPS-10'> from FlightTests::ft_3_03 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
    #EvidenceFor dependency <'FT-3-04>REQ-EPS-14'> from FlightTests::ft_3_04 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
    #EvidenceFor dependency <'FT-3-05>REQ-EPS-02'> from FlightTests::ft_3_05 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_02;
    #EvidenceFor dependency <'FT-3-05>REQ-EPS-06'> from FlightTests::ft_3_05 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
    #EvidenceFor dependency <'FT-3-05>REQ-EPS-19'> from FlightTests::ft_3_05 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19;
    #EvidenceFor dependency <'FT-3-06>REQ-APU-07'> from FlightTests::ft_3_06 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
    #EvidenceFor dependency <'FT-3-07>REQ-APU-06'> from FlightTests::ft_3_07 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
    #EvidenceFor dependency <'FT-3-08>REQ-GNC-07'> from FlightTests::ft_3_08 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_07;
    #EvidenceFor dependency <'FT-3-09>REQ-GNC-03'> from FlightTests::ft_3_09 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
    #EvidenceFor dependency <'FT-3-10>REQ-GNC-02'> from FlightTests::ft_3_10 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
    #EvidenceFor dependency <'FT-3-11>REQ-ECLSS-02'> from FlightTests::ft_3_11 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
    #EvidenceFor dependency <'FT-3-12>REQ-ECLSS-05'> from FlightTests::ft_3_12 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #EvidenceFor dependency <'FT-3-13>REQ-MECH-03'> from FlightTests::ft_3_13 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
    #EvidenceFor dependency <'FT-3-14>REQ-MECH-07'> from FlightTests::ft_3_14 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
    #EvidenceFor dependency <'FT-3-15>REQ-TPS-01'> from FlightTests::ft_3_15 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
    #EvidenceFor dependency <'FT-3-15>REQ-TPS-02'> from FlightTests::ft_3_15 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_02;
    #EvidenceFor dependency <'FT-3-16>REQ-PLS-01'> from FlightTests::ft_3_16 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_01;
    #EvidenceFor dependency <'FT-3-17>REQ-PLS-04'> from FlightTests::ft_3_17 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_04;
    #EvidenceFor dependency <'FT-3-19>REQ-PLS-02'> from FlightTests::ft_3_19 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_02;
    #EvidenceFor dependency <'FT-3-20>REQ-CREW-06'> from FlightTests::ft_3_20 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #EvidenceFor dependency <'FT-4-01>REQ-CREW-03'> from FlightTests::ft_4_01 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #EvidenceFor dependency <'FT-4-02>REQ-MPS-03'> from FlightTests::ft_4_02 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_03;
    #EvidenceFor dependency <'FT-4-03>REQ-MPS-10'> from FlightTests::ft_4_03 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
    #EvidenceFor dependency <'FT-4-04>REQ-OMS-07'> from FlightTests::ft_4_04 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    #EvidenceFor dependency <'FT-4-07>REQ-RCS-08'> from FlightTests::ft_4_07 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
    #EvidenceFor dependency <'FT-4-08>REQ-RCS-01'> from FlightTests::ft_4_08 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_01;
    #EvidenceFor dependency <'FT-4-09>REQ-APU-02'> from FlightTests::ft_4_09 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_02;
    #EvidenceFor dependency <'FT-4-10>REQ-APU-07'> from FlightTests::ft_4_10 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
    #EvidenceFor dependency <'FT-4-11>REQ-EPS-10'> from FlightTests::ft_4_11 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
    #EvidenceFor dependency <'FT-4-11>REQ-EPS-11'> from FlightTests::ft_4_11 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_11;
    #EvidenceFor dependency <'FT-4-12>REQ-EPS-02'> from FlightTests::ft_4_12 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_02;
    #EvidenceFor dependency <'FT-4-12>REQ-EPS-14'> from FlightTests::ft_4_12 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
    #EvidenceFor dependency <'FT-4-12>REQ-EPS-19'> from FlightTests::ft_4_12 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19;
    #EvidenceFor dependency <'FT-4-13>REQ-EPS-06'> from FlightTests::ft_4_13 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
    #EvidenceFor dependency <'FT-4-14>REQ-GNC-01'> from FlightTests::ft_4_14 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_01;
    #EvidenceFor dependency <'FT-4-14>REQ-GNC-02'> from FlightTests::ft_4_14 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
    #EvidenceFor dependency <'FT-4-15>REQ-GNC-03'> from FlightTests::ft_4_15 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
    #EvidenceFor dependency <'FT-4-15>REQ-GNC-07'> from FlightTests::ft_4_15 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_07;
    #EvidenceFor dependency <'FT-4-17>REQ-CT-05'> from FlightTests::ft_4_17 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
    #EvidenceFor dependency <'FT-4-18>REQ-ECLSS-08'> from FlightTests::ft_4_18 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
    #EvidenceFor dependency <'FT-4-19>REQ-ECLSS-06'> from FlightTests::ft_4_19 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #EvidenceFor dependency <'FT-4-21>REQ-SYS-18'> from FlightTests::ft_4_21 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_18;
    #EvidenceFor dependency <'FT-4-22>REQ-MECH-03'> from FlightTests::ft_4_22 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
    #EvidenceFor dependency <'FT-4-23>REQ-MECH-07'> from FlightTests::ft_4_23 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
    #EvidenceFor dependency <'FT-4-24>REQ-PLS-01'> from FlightTests::ft_4_24 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_01;
    #EvidenceFor dependency <'FT-4-25>REQ-APU-06'> from FlightTests::ft_4_25 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
    #EvidenceFor dependency <'FT-4-26>REQ-RCS-07'> from FlightTests::ft_4_26 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
    #EvidenceFor dependency <'FT-4-27>REQ-TPS-01'> from FlightTests::ft_4_27 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
    #EvidenceFor dependency <'FT-4-28>REQ-CREW-06'> from FlightTests::ft_4_28 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #ObservedIn dependency <'FT-1-01>STS-1'> from FlightTests::ft_1_01 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-02>STS-1'> from FlightTests::ft_1_02 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-03>STS-1'> from FlightTests::ft_1_03 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-04>STS-1'> from FlightTests::ft_1_04 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-05>STS-1'> from FlightTests::ft_1_05 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-06>STS-1'> from FlightTests::ft_1_06 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-07>STS-1'> from FlightTests::ft_1_07 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-08>STS-1'> from FlightTests::ft_1_08 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-09>STS-1'> from FlightTests::ft_1_09 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-10>STS-1'> from FlightTests::ft_1_10 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-11>STS-1'> from FlightTests::ft_1_11 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-12>STS-1'> from FlightTests::ft_1_12 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-13>STS-1'> from FlightTests::ft_1_13 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-14>STS-1'> from FlightTests::ft_1_14 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-15>STS-1'> from FlightTests::ft_1_15 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-16>STS-1'> from FlightTests::ft_1_16 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-17>STS-1'> from FlightTests::ft_1_17 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-18>STS-1'> from FlightTests::ft_1_18 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-19>STS-1'> from FlightTests::ft_1_19 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-20>STS-1'> from FlightTests::ft_1_20 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-21>STS-1'> from FlightTests::ft_1_21 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-22>STS-1'> from FlightTests::ft_1_22 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-23>STS-1'> from FlightTests::ft_1_23 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-24>STS-1'> from FlightTests::ft_1_24 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-25>STS-1'> from FlightTests::ft_1_25 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-26>STS-1'> from FlightTests::ft_1_26 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-27>STS-1'> from FlightTests::ft_1_27 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-28>STS-1'> from FlightTests::ft_1_28 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-29>STS-1'> from FlightTests::ft_1_29 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-30>STS-1'> from FlightTests::ft_1_30 to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'FT-1-31>STS-1'> from FlightTests::ft_1_31 to SSD_IND_ORB_001::Sts1;
}

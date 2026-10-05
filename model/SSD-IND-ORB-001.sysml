// SysML v2 テキスト：個体・時間（機体・飛行の個体、時間切片、スナップショット、実績）
// SSD-IND-ORB-001 個体・時間定義書（機体・飛行の個体と実績） の表から生成（lib/build_docs_ar.py・rev_ar/ardata.py）。根拠の頁は SSD-IND-ORB-001 にある。
package SSD_IND_ORB_001 {
    doc /* SSD-IND-ORB-001 個体・時間定義書（機体・飛行の個体と実績）。図122・123 と同じ内容。 */
    private import ScalarValues::*;
    private import Quantities::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    individual part def <'OV-102'> Columbia :> SSD_VAR_ORB_001::Ov102Configuration { doc /* OV-102 Columbia */ }
    individual part def <'OV-103'> Discovery :> SSD_VAR_ORB_001::Ov103Configuration { doc /* OV-103 Discovery */ }
    individual part def <'OV-104'> Atlantis :> SSD_VAR_ORB_001::Ov104Configuration { doc /* OV-104 Atlantis */ }
    individual part def <'OV-105'> Endeavour :> SSD_VAR_ORB_001::Ov105Configuration { doc /* OV-105 Endeavour */ }
    occurrence def ShuttleFlight {
        doc /* スペースシャトルの飛行 */
        attribute crew : Integer;
        attribute launchUtc : String;
        attribute landingUtc : String;
        attribute landingSite : String;
        ref part vehicle : SSD_BLK_SYS_001::ORB;
    }
    individual def <'STS-1'> Sts1 :> ShuttleFlight {
        doc /* STS-1（OV-102 Columbia）。飛行時間 —、軌道 150 n.mi. 円軌道・傾斜角 40.3°（予測） */
        attribute :>> crew = 2;
        attribute :>> launchUtc = "1981-04-12 12:00:03.9";
        attribute :>> landingUtc = "1981-04-14 18:20:57.254";
        attribute :>> landingSite = "Edwards AFB 滑走路23（湖底）";
        ref part :>> vehicle : Columbia;
        timeslice <'TS-01'> ts_ph_1 { doc /* PH-1：— 〜 102:12:00:03.9 G.m.t. */ }
        timeslice <'TS-02'> ts_ph_2 { doc /* PH-2：102:12:00:03.9 G.m.t. 〜 — */ }
        timeslice <'TS-03'> ts_ph_3 { doc /* PH-3：— 〜 — */ }
        timeslice <'TS-04'> ts_ph_4 { doc /* PH-4：— 〜 — */ }
        timeslice <'TS-05'> ts_ph_6 { doc /* PH-6：— 〜 — */ }
        timeslice <'TS-06'> ts_ph_6c { doc /* PH-6c：— 〜 — */ }
        timeslice <'TS-07'> ts_ph_7 { doc /* PH-7：— 〜 — */ }
        first ts_ph_1 then ts_ph_2;
        first ts_ph_2 then ts_ph_3;
        first ts_ph_3 then ts_ph_4;
        first ts_ph_4 then ts_ph_6;
        first ts_ph_6 then ts_ph_6c;
        first ts_ph_6c then ts_ph_7;
        snapshot <'SN-01'> sn_01 {
            doc /* liftoff */
            attribute v1 : Real = 97.9 { doc /* O2 タンク1の量 */ }
            attribute v2 : Real = 97.0 { doc /* O2 タンク2の量 */ }
            attribute v3 : Real = 92.6 { doc /* H2 タンク1の量 */ }
            attribute v4 : Real = 91.7 { doc /* H2 タンク2の量 */ }
            attribute v5 : MassValue = 864.4 [lb] { doc /* 給水・飲料水 */ }
            attribute v6 : MassValue = 208.9 [lb] { doc /* MPS ヘリウムの充填量 */ }
        }
        snapshot <'SN-02'> sn_02 {
            doc /* APU start at entry */
            attribute v1 : Real = 60 { doc /* 油圧系1の作動油量 */ }
            attribute v2 : Real = 53.2 { doc /* 油圧系2の作動油量 */ }
            attribute v3 : Real = 63.2 { doc /* 油圧系3の作動油量 */ }
        }
        snapshot <'SN-03'> sn_03 {
            doc /* landing */
            attribute v1 : Real = 61.5 { doc /* O2 タンク1の量 */ }
            attribute v2 : Real = 56.7 { doc /* O2 タンク2の量 */ }
            attribute v3 : Real = 51.5 { doc /* H2 タンク1の量 */ }
            attribute v4 : Real = 49.3 { doc /* H2 タンク2の量 */ }
            attribute v5 : MassValue = 662.8 [lb] { doc /* 給水・飲料水 */ }
        }
        attribute <'AV-01'> av_01 : EnergyValue = 857 [kW*h] { doc /* 燃料電池の発電量（飛行中）。設計 — */ }
        attribute <'AV-02'> av_02 : PowerValue = 15.75 [kW] { doc /* 飛行の平均電力。設計 PAR-15 */ }
        attribute <'AV-03'> av_03 : PowerValue[2] = (14 [kW], 17 [kW]) { doc /* 軌道上の平均負荷（実績）。設計 PAR-15（下限・上限） */ }
        attribute <'AV-04'> av_04 : PowerValue = 20 [kW] { doc /* 降下の平均負荷（実績）。設計 PAR-16 */ }
        attribute <'AV-05'> av_05 : DurationValue = 145 [h] { doc /* 燃料電池の運転時間（地上＋飛行）。設計 REQ-EPS-20 */ }
        attribute <'AV-06'> av_06 : String = "資料に値なし" { doc /* 燃料電池のパージ（自動）。設計 REQ-EPS-14 */ }
        attribute <'AV-07'> av_07 : MassValue = 2 [lb] { doc /* 窒素の使用量（飛行全体）。設計 PAR-12 */ }
        attribute <'AV-08'> av_08 : Integer = 4 { doc /* LiOH キャニスタの使用数。設計 REQ-ECLSS-06 */ }
        attribute <'AV-09'> av_09 : MassValue = 613.7 [lb] { doc /* 燃料電池の生成水。設計 — */ }
        attribute <'AV-10'> av_10 : DurationValue = 1.3842 [h] { doc /* APU 2 の運転時間（合計）。設計 REQ-APU-01 */ }
        attribute <'AV-11'> av_11 : MassValue[2] = (122 [lb], 166 [lb]) { doc /* APU の燃料使用量（APU 1／2／3）。設計 REQ-APU-01（下限・上限） */ }
        attribute <'AV-12'> av_12 : MassValue = 208.9 [lb] { doc /* MPS ヘリウムの充填量。設計 — */ }
    }
    individual def <'STS-114'> Sts114 :> ShuttleFlight {
        doc /* STS-114（OV-103 Discovery）。飛行時間 13:21:33:30、軌道 OMS-2 後 85.2×123.6 nmi（傾斜角は資料に無い） */
        attribute :>> crew = 7;
        attribute :>> launchUtc = "2005-07-26 14:39:00.013";
        attribute :>> landingUtc = "2005-08-09 12:11:22.494";
        attribute :>> landingSite = "Edwards AFB 滑走路22（コンクリート）";
        ref part :>> vehicle : Discovery;
        timeslice <'TS-08'> ts_ph_1 { doc /* PH-1：206:23:10:01 GMT 〜 207/14:39:00.013 GMT */ }
        timeslice <'TS-09'> ts_ph_2a { doc /* PH-2a：207/14:39:00.013 GMT 〜 207:14:41:01.813 GMT */ }
        timeslice <'TS-10'> ts_ph_2b { doc /* PH-2b：207:14:41:01.813 GMT 〜 207/14:47:47 GMT */ }
        timeslice <'TS-11'> ts_ph_2c { doc /* PH-2c：207/14:47:47 GMT 〜 207:15:18:05.4 GMT */ }
        timeslice <'TS-12'> ts_ph_3 { doc /* PH-3：207:15:18:05.4 GMT 〜 221/11:06:18.277 GMT */ }
        timeslice <'TS-13'> ts_ph_5 { doc /* PH-5：211/09:21:42 GMT 〜 211/15:52:26 GMT */ }
        timeslice <'TS-14'> ts_ph_6a { doc /* PH-6a：221/11:06:18.277 GMT 〜 221/11:40:18 GMT */ }
        timeslice <'TS-15'> ts_ph_6 { doc /* PH-6：221/11:06:18.277 GMT 〜 221/12:12:30.565 GMT */ }
        first ts_ph_1 then ts_ph_2a;
        first ts_ph_2a then ts_ph_2b;
        first ts_ph_2b then ts_ph_2c;
        first ts_ph_2c then ts_ph_3;
        first ts_ph_3 then ts_ph_5;
        first ts_ph_5 then ts_ph_6a;
        first ts_ph_6a then ts_ph_6;
        snapshot <'SN-04'> sn_04 {
            doc /* liftoff */
            attribute v1 : MassValue = 3931 [lb] { doc /* PRSD O2 総量 */ }
            attribute v2 : MassValue = 462 [lb] { doc /* PRSD H2 総量 */ }
        }
        snapshot <'SN-05'> sn_05 {
            doc /* landing */
            attribute v1 : MassValue = 604 [lb] { doc /* PRSD O2 総量 */ }
            attribute v2 : MassValue = 75 [lb] { doc /* PRSD H2 総量 */ }
            attribute v3 : MassValue = 226199.0 [lb] { doc /* オービタ重量 */ }
        }
        attribute <'AV-13'> av_13 : MassValue = 3076 [lb] { doc /* O2 反応剤の使用量（燃料電池）。設計 PAR-18 */ }
        attribute <'AV-14'> av_14 : MassValue = 387 [lb] { doc /* H2 反応剤の使用量（燃料電池）。設計 PAR-19 */ }
        attribute <'AV-15'> av_15 : PowerValue = 13.6 [kW] { doc /* 燃料電池の平均電力。設計 PAR-15 */ }
        attribute <'AV-16'> av_16 : DurationValue = 36 [h] { doc /* 着陸時の反応剤で可能な延長。設計 REQ-SYS-13 */ }
        attribute <'AV-17'> av_17 : MassValue = 250 [lb] { doc /* ECLSS へ供給した酸素。設計 PAR-23 */ }
        attribute <'AV-18'> av_18 : MassValue = 3463 [lb] { doc /* 燃料電池の生成水。設計 — */ }
        attribute <'AV-19'> av_19 : Integer = 5 { doc /* 燃料電池のパージの回数・間隔。設計 REQ-EPS-14 */ }
        attribute <'AV-20'> av_20 : DurationValue = 1078 [h] { doc /* 燃料電池1の累積運転時間（終了時）。設計 REQ-EPS-20 */ }
        attribute <'AV-21'> av_21 : DurationValue = 1.8181 [h] { doc /* APU 2 の運転時間（合計）。設計 REQ-APU-01 */ }
        attribute <'AV-22'> av_22 : MassValue = 226199.0 [lb] { doc /* 着陸時のオービタ重量。設計 REQ-SYS-17 */ }
        attribute <'AV-23'> av_23 : DurationValue = 333.5583 [h] { doc /* 飛行時間（車輪停止まで）。設計 REQ-SYS-06 */ }
        attribute <'AV-24'> av_24 : MassValue = 22 [lb] { doc /* ISS への窒素の移送。設計 — */ }
    }
    individual def <'STS-125'> Sts125 :> ShuttleFlight {
        doc /* STS-125（OV-104 Atlantis）。飛行時間 12:21:38:45、軌道 OMS-2 後 298×187 nmi、HST 放出後 305.3×160.4 nmi（傾斜角は資料に無い） */
        attribute :>> crew = 7;
        attribute :>> launchUtc = "2009-05-11 18:01:55.992";
        attribute :>> landingUtc = "2009-05-24 15:39:04";
        attribute :>> landingSite = "Edwards AFB 滑走路22（コンクリート）";
        ref part :>> vehicle : Atlantis;
        timeslice <'TS-16'> ts_ph_2a { doc /* PH-2a：131/18:01:55.992 GMT 〜 131/18:04:00.392 GMT */ }
        timeslice <'TS-17'> ts_ph_2b { doc /* PH-2b：131/18:04:00.392 GMT 〜 131/18:10:42 GMT */ }
        timeslice <'TS-18'> ts_ph_2c { doc /* PH-2c：131/18:10:42 GMT 〜 131/18:47:14.1 GMT */ }
        timeslice <'TS-19'> ts_ph_3 { doc /* PH-3：131/18:47:14.1 GMT 〜 144/14:24:41.2 GMT */ }
        timeslice <'TS-20'> ts_ph_5 { doc /* PH-5：134/12:38 GMT 〜 134/21:11 GMT */ }
        timeslice <'TS-21'> ts_ph_6a { doc /* PH-6a：144/14:24:41.2 GMT 〜 144/15:08:03 GMT */ }
        timeslice <'TS-22'> ts_ph_6 { doc /* PH-6：144/14:24:41.2 GMT 〜 144/15:40:41 GMT */ }
        first ts_ph_2a then ts_ph_2b;
        first ts_ph_2b then ts_ph_2c;
        first ts_ph_2c then ts_ph_3;
        first ts_ph_3 then ts_ph_5;
        first ts_ph_5 then ts_ph_6a;
        first ts_ph_6a then ts_ph_6;
        snapshot <'SN-06'> sn_06 {
            doc /* liftoff */
            attribute v1 : MassValue = 3914 [lb] { doc /* PRSD O2 総量 */ }
            attribute v2 : MassValue = 456.7 [lb] { doc /* PRSD H2 総量 */ }
            attribute v3 : MassValue = 7756 [lb] { doc /* OMS 左ポッド 酸化剤（搭載） */ }
            attribute v4 : MassValue = 4686 [lb] { doc /* OMS 左ポッド 燃料（搭載） */ }
            attribute v5 : MassValue = 7704 [lb] { doc /* OMS 右ポッド 酸化剤（搭載） */ }
            attribute v6 : MassValue = 4685 [lb] { doc /* OMS 右ポッド 燃料（搭載） */ }
        }
        snapshot <'SN-07'> sn_07 {
            doc /* landing */
            attribute v1 : MassValue = 542 [lb] { doc /* PRSD O2 総量 */ }
            attribute v2 : MassValue = 53.9 [lb] { doc /* PRSD H2 総量 */ }
            attribute v3 : MassValue = 478 [lb] { doc /* OMS 左ポッド 酸化剤（残量・後部計） */ }
            attribute v4 : MassValue = 364 [lb] { doc /* OMS 左ポッド 燃料（残量・後部計） */ }
            attribute v5 : MassValue = 575 [lb] { doc /* OMS 右ポッド 酸化剤（残量・後部計） */ }
            attribute v6 : MassValue = 406 [lb] { doc /* OMS 右ポッド 燃料（残量・後部計） */ }
            attribute v7 : MassValue = 232591.4 [lb] { doc /* オービタ重量 */ }
        }
        attribute <'AV-25'> av_25 : MassValue = 3198 [lb] { doc /* O2 反応剤の使用量（燃料電池）。設計 PAR-18 */ }
        attribute <'AV-26'> av_26 : MassValue = 403 [lb] { doc /* H2 反応剤の使用量（燃料電池）。設計 PAR-19 */ }
        attribute <'AV-27'> av_27 : PowerValue = 15.0 [kW] { doc /* 燃料電池の平均電力。設計 PAR-15 */ }
        attribute <'AV-28'> av_28 : DurationValue = 28 [h] { doc /* 着陸時の反応剤で可能な延長。設計 REQ-SYS-13 */ }
        attribute <'AV-29'> av_29 : MassValue = 174 [lb] { doc /* ECLSS へ供給した酸素。設計 PAR-23 */ }
        attribute <'AV-30'> av_30 : MassValue = 3601 [lb] { doc /* 燃料電池の生成水。設計 — */ }
        attribute <'AV-31'> av_31 : Integer = 8 { doc /* 燃料電池のパージの回数・間隔。設計 REQ-EPS-14 */ }
        attribute <'AV-32'> av_32 : DurationValue = 1.9903 [h] { doc /* APU 2 の運転時間（合計）。設計 REQ-APU-01 */ }
        attribute <'AV-33'> av_33 : MassValue = 232591.4 [lb] { doc /* 着陸時のオービタ重量。設計 REQ-SYS-17 */ }
        attribute <'AV-34'> av_34 : MassValue = 478 [lb] { doc /* OMS 着陸時の残量（左酸化剤）。設計 REQ-OMS-11 */ }
        attribute <'AV-35'> av_35 : DurationValue = 309.6458 [h] { doc /* 飛行時間（車輪停止まで）。設計 REQ-SYS-06 */ }
    }
    // ---- 飛行の個体の使用
    individual sts1 : Sts1;
    individual sts114 : Sts114;
    individual sts125 : Sts125;
}

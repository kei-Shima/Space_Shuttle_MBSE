// SysML v2 テキスト：故障処置の活動（MPS ヘリウム漏れ・燃料電池の冷却喪失・火災）
// SSD-BEH-ORB-002 故障処置の活動定義書（MPS ヘリウム漏れ・燃料電池の冷却喪失・火災） の節点・流れの表から生成（lib/build_docs_aa.py）。根拠の頁は SSD-BEH-ORB-002 にある。
package SSD_BEH_ORB_002 {
    doc /* SSD-BEH-ORB-002 故障処置の活動定義書（MPS ヘリウム漏れ・燃料電池の冷却喪失・火災）。図80・図81・図82 と同じ節点と流れ。 */
    action def MpsHeliumLeakResponse {
        doc /* 図80 MPS ヘリウム漏れ処置 活動図：MPS のエンジン系統のヘリウム漏れの処置（上昇中、MECO まで） */
        attribute isolationStopsEngine : ScalarValues::Boolean { doc /* ガード：止まる */ }
        attribute cannotMeetZeroG : ScalarValues::Boolean { doc /* ガード：満たせない */ }
        attribute accumulatorBelow700 : ScalarValues::Boolean { doc /* ガード：700 psia 未満 */ }
        action AC_HE_01 { doc /* AC-HE-01 エンジン系統の有意なヘリウム漏れを検知 */ }
        decide DC_HE_01;
            if not isolationStopsEngine then AC_HE_02;
            if isolationStopsEngine then AC_HE_03;
        action AC_HE_02 { doc /* AC-HE-02 漏れの隔離の手順を行う */ }
        action AC_HE_03 { doc /* AC-HE-03 隔離しない（エンジンの運転を続ける） */ }
        merge MG_HE_01;
        decide DC_HE_02;
            if cannotMeetZeroG then AC_HE_04;
            if not cannotMeetZeroG then MG_HE_02;
        action AC_HE_04 { doc /* AC-HE-04 ヘリウム系を相互接続（C&W 1,150 psia、遅くとも 920 psia） */ }
        merge MG_HE_02;
        decide DC_HE_03;
            if accumulatorBelow700 then AC_HE_05;
            if not accumulatorBelow700 then MG_HE_03;
        action AC_HE_05 { doc /* AC-HE-05 MECO−30秒に空圧系を再構成する */ }
        merge MG_HE_03;
        action AC_HE_06 { doc /* AC-HE-06 MECO（LO2 プリバルブを閉じる） */ }
        first start then AC_HE_01;
        first AC_HE_01 then DC_HE_01;
        first AC_HE_02 then MG_HE_01;
        first AC_HE_03 then MG_HE_01;
        first MG_HE_01 then DC_HE_02;
        first AC_HE_04 then MG_HE_02;
        first MG_HE_02 then DC_HE_03;
        first AC_HE_05 then MG_HE_03;
        first MG_HE_03 then AC_HE_06;
        first AC_HE_06 then done;
    }
    action def FuelCellCoolingLossResponse {
        doc /* 図81 燃料電池の冷却喪失処置 活動図：燃料電池の冷却喪失の処置（軌道上） */
        attribute fcLost : ScalarValues::Boolean { doc /* ガード：当たる */ }
        attribute oneFcLost : ScalarValues::Boolean { doc /* ガード：1基 */ }
        attribute twoFcLost : ScalarValues::Boolean { doc /* ガード：2基 */ }
        action AC_FC_01 { doc /* AC-FC-01 冷却喪失の警報（FUEL CELL PUMP 灯・FC PUMP メッセージ） */ }
        decide DC_FC_01;
            if fcLost then AC_FC_02;
            if not fcLost then AC_FC_07;
        action AC_FC_07 { doc /* AC-FC-07 温度の兆候で切り分けを続ける */ }
        action AC_FC_02 { doc /* AC-FC-02 9分以内（7 kW）に燃料電池を停止する */ }
        action AC_FC_03 { doc /* AC-FC-03 母線から切り離し、STOP にし、反応剤弁を閉じる */ }
        action AC_FC_04 { doc /* AC-FC-04 主母線を結んで3本の主母線の給電を保つ */ }
        action AC_FC_05 { doc /* AC-FC-05 総電力を 18 kW 以内に管理する */ }
        decide DC_FC_02;
            if oneFcLost then AC_FC_06;
            if twoFcLost then AC_FC_08;
        action AC_FC_06 { doc /* AC-FC-06 MDF で帰還する（1基の喪失） */ }
        action AC_FC_08 { doc /* AC-FC-08 次の PLS で帰還する（2基の喪失） */ }
        merge MG_FC_01;
        first start then AC_FC_01;
        first AC_FC_01 then DC_FC_01;
        first AC_FC_07 then done;
        first AC_FC_02 then AC_FC_03;
        first AC_FC_03 then AC_FC_04;
        first AC_FC_04 then AC_FC_05;
        first AC_FC_05 then DC_FC_02;
        first AC_FC_06 then MG_FC_01;
        first AC_FC_08 then MG_FC_01;
        first MG_FC_01 then done;
    }
    action def FireResponse {
        doc /* 図82 火災処置 活動図：乗員室・アビオニクスベイの火災（煙検知）の処置 */
        attribute fireConfirmed : ScalarValues::Boolean { doc /* ガード：確認した */ }
        attribute onOrbit : ScalarValues::Boolean { doc /* ガード：軌道 */ }
        attribute atmosphereSafe : ScalarValues::Boolean { doc /* ガード：できた */ }
        action AC_FR_01 { doc /* AC-FR-01 煙の警報（サイレン・MASTER ALARM・L1 の SMOKE DETECTION 灯） */ }
        decide DC_FR_01;
            if fireConfirmed then DC_FR_02;
            if not fireConfirmed then done;
        decide DC_FR_02;
            if onOrbit then AC_FR_02;
            if not onOrbit then AC_FR_03;
        action AC_FR_02 { doc /* AC-FR-02 QDM を着ける（軌道上） */ }
        action AC_FR_03 { doc /* AC-FR-03 バイザーを閉じてスーツの O2（上昇・再突入） */ }
        merge MG_FR_01;
        action AC_FR_04 { doc /* AC-FR-04 固定式または携帯式のハロン消火器で消火する */ }
        action AC_FR_05 { doc /* AC-FR-05 WCS の活性炭フィルタ・ATCO・LiOH で大気を浄化する */ }
        decide DC_FR_03;
            if atmosphereSafe then AC_FR_06;
            if not atmosphereSafe then AC_FR_07;
        action AC_FR_06 { doc /* AC-FR-06 運用を続ける */ }
        action AC_FR_07 { doc /* AC-FR-07 早期の軌道離脱（N2 はヘルメット着用で4〜8時間分） */ }
        merge MG_FR_02;
        first start then AC_FR_01;
        first AC_FR_01 then DC_FR_01;
        first AC_FR_02 then MG_FR_01;
        first AC_FR_03 then MG_FR_01;
        first MG_FR_01 then AC_FR_04;
        first AC_FR_04 then AC_FR_05;
        first AC_FR_05 then DC_FR_03;
        first AC_FR_06 then MG_FR_02;
        first AC_FR_07 then MG_FR_02;
        first MG_FR_02 then done;
    }
}

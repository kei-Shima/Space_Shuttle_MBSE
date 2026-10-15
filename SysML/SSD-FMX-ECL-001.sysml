// SysML v2 テキスト：ECLSS の故障モード（ワークシートの対応づけ・機能の故障モード・故障の木）
// SSD-FMX-ECL-001 ECLSS の故障モード定義書（ワークシートの対応づけ・機能の故障モード・故障の木） の表から生成（lib/build_docs_bl.py・rev_bl/blfm.py）。根拠の頁は SSD-FMX-ECL-001 にある。
package SSD_FMX_ECL_001 {
    doc /* SSD-FMX-ECL-001 ECLSS の故障モード定義書（ワークシートの対応づけ・機能の故障モード・故障の木）。図176〜178 と同じ内容。故障モードの型は SSD_FMM_ORB_001 の FailureMode、原因は SSD_HAZ_ORB_001 の HazardModel、警報は SSD_FDIR_ORB_001 の item def。故障の木は Boolean の式（確率は付けない）。 */
    private import ScalarValues::*;
    private import CauseAndEffect::*;
    private import SSD_HAZ_ORB_001::Involves;
    private import SSD_FMM_ORB_001::DetectedBy;
    // ---- ARS のワークシートの対応づけ直し（第3段・第4段の機能ブロックへ）
    package Remap {
        #Involves dependency <'CIL-ECLSS-001>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_001 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-002>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_002 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-003>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_003 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-004>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_004 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-005>SSD-FD-ARS-WCL-ICH-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_005 to SSD_BLK_SYS_001::ARS_WCL_ICH;
        #Involves dependency <'CIL-ECLSS-006>SSD-FD-ARS-WCL-AVL-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_006 to SSD_BLK_SYS_001::ARS_WCL_AVL;
        #Involves dependency <'CIL-ECLSS-007>SSD-FD-ARS-WCL-AVL-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_007 to SSD_BLK_SYS_001::ARS_WCL_AVL;
        #Involves dependency <'CIL-ECLSS-008>SSD-FD-ARS-WCL-AVL-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_008 to SSD_BLK_SYS_001::ARS_WCL_AVL;
        #Involves dependency <'CIL-ECLSS-009>SSD-FD-ARS-WCL-AVL-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_009 to SSD_BLK_SYS_001::ARS_WCL_AVL;
        #Involves dependency <'CIL-ECLSS-010>SSD-FD-ARS-WCL-AVL-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_010 to SSD_BLK_SYS_001::ARS_WCL_AVL;
        #Involves dependency <'CIL-ECLSS-011>SSD-FD-ARS-WCL-CLD-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_011 to SSD_BLK_SYS_001::ARS_WCL_CLD;
        #Involves dependency <'CIL-ECLSS-012>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_012 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-013>SSD-FD-ARS-IMU-HEX-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_013 to SSD_BLK_SYS_001::ARS_IMU_HEX;
        #Involves dependency <'CIL-ECLSS-014>SSD-FD-ARS-AVB-CIR-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_014 to SSD_BLK_SYS_001::ARS_AVB_CIR;
        #Involves dependency <'CIL-ECLSS-015>SSD-FD-ARS-AVB-FAN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_015 to SSD_BLK_SYS_001::ARS_AVB_FAN;
        #Involves dependency <'CIL-ECLSS-016>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_016 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-017>SSD-FD-ARS-IMU-FAN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_017 to SSD_BLK_SYS_001::ARS_IMU_FAN;
        #Involves dependency <'CIL-ECLSS-018>SSD-FD-ARS-THC-TCV-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_018 to SSD_BLK_SYS_001::ARS_THC_TCV;
        #Involves dependency <'CIL-ECLSS-019>SSD-FD-CO2-CAN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_019 to SSD_BLK_SYS_001::CO2_CAN;
        #Involves dependency <'CIL-ECLSS-020>SSD-FD-CAC-FAN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_020 to SSD_BLK_SYS_001::CAC_FAN;
        #Involves dependency <'CIL-ECLSS-021>SSD-FD-CAC-RTN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_021 to SSD_BLK_SYS_001::CAC_RTN;
        #Involves dependency <'CIL-ECLSS-022>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_022 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-023>SSD-FD-CAC-FAN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_023 to SSD_BLK_SYS_001::CAC_FAN;
        #Involves dependency <'CIL-ECLSS-024>SSD-FD-CO2-MON-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_024 to SSD_BLK_SYS_001::CO2_MON;
        #Involves dependency <'CIL-ECLSS-025>SSD-FD-CAC-FAN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_025 to SSD_BLK_SYS_001::CAC_FAN;
        #Involves dependency <'CIL-ECLSS-026>SSD-FD-ARS-THC-SEP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_026 to SSD_BLK_SYS_001::ARS_THC_SEP;
        #Involves dependency <'CIL-ECLSS-027>SSD-FD-ARS-THC-HX-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_027 to SSD_BLK_SYS_001::ARS_THC_HX;
        #Involves dependency <'CIL-ECLSS-028>SSD-FD-ARS-WCL-PMP-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_028 to SSD_BLK_SYS_001::ARS_WCL_PMP;
        #Involves dependency <'CIL-ECLSS-029>SSD-FD-ARS-IMU-HEX-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_029 to SSD_BLK_SYS_001::ARS_IMU_HEX;
        #Involves dependency <'CIL-ECLSS-030>SSD-FD-ARS-WCL-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_030 to SSD_BLK_SYS_001::ARS_WCL;
        #Involves dependency <'CIL-ECLSS-031>SSD-FD-ARS-WCL-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_031 to SSD_BLK_SYS_001::ARS_WCL;
        #Involves dependency <'CIL-ECLSS-032>SSD-FD-ARS-AVB-CIR-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_032 to SSD_BLK_SYS_001::ARS_AVB_CIR;
        #Involves dependency <'CIL-ECLSS-033>SSD-FD-ARS-AVB-CIR-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_033 to SSD_BLK_SYS_001::ARS_AVB_CIR;
        #Involves dependency <'CIL-ECLSS-034>SSD-FD-CAC-FAN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_034 to SSD_BLK_SYS_001::CAC_FAN;
        #Involves dependency <'CIL-ECLSS-035>SSD-FD-CAC-DCT-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_035 to SSD_BLK_SYS_001::CAC_DCT;
        #Involves dependency <'CIL-ECLSS-036>SSD-FD-CAC-RTN-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_036 to SSD_BLK_SYS_001::CAC_RTN;
        #Involves dependency <'CIL-ECLSS-037>SSD-FD-CO2-MON-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_037 to SSD_BLK_SYS_001::CO2_MON;
        #Involves dependency <'CIL-ECLSS-038>SSD-FD-ARS-IMU-HEX-001'> from SSD_FMM_ORB_001::FailureModes::cil_eclss_038 to SSD_BLK_SYS_001::ARS_IMU_HEX;
    }
    // ---- 機能の故障モード（PCS・給水廃水・WCS・FDS・ALS）
    package FunctionalFailureModes {
        #cause occurrence <'FMX-PCS-01'> fmx_pcs_01 : SSD_FMM_ORB_001::FailureMode { doc /* PPO2 制御の喪失（低い側）：乗員室へ酸素を送れない（喪失） */ attribute :>> itemName = "PPO2 制御の喪失（低い側）：乗員室へ酸素を送れない"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-PCS-02'> fmx_pcs_02 : SSD_FMM_ORB_001::FailureMode { doc /* PPO2 制御の喪失（高い側）：乗員室内の隔離できない酸素漏れ（外部漏れ） */ attribute :>> itemName = "PPO2 制御の喪失（高い側）：乗員室内の隔離できない酸素漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-PCS-03'> fmx_pcs_03 : SSD_FMM_ORB_001::FailureMode { doc /* N2 供給の喪失：N2 タンク圧が 200（375）psia 未満でレギュレータが制御を失う（喪失） */ attribute :>> itemName = "N2 供給の喪失：N2 タンク圧が 200（375）psia 未満でレギュレータが制御を失う"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-PCS-04'> fmx_pcs_04 : SSD_FMM_ORB_001::FailureMode { doc /* 正圧逃し弁が開かない（喪失） */ attribute :>> itemName = "正圧逃し弁が開かない"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-PCS-05'> fmx_pcs_05 : SSD_FMM_ORB_001::FailureMode { doc /* 正圧逃し弁が開いたまま故障する（誤作動） */ attribute :>> itemName = "正圧逃し弁が開いたまま故障する"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-PCS-06'> fmx_pcs_06 : SSD_FMM_ORB_001::FailureMode { doc /* キャビンベント弁の不用意な開放（誤作動） */ attribute :>> itemName = "キャビンベント弁の不用意な開放"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-PCS-07'> fmx_pcs_07 : SSD_FMM_ORB_001::FailureMode { doc /* PPO2 センサのずれ（劣化） */ attribute :>> itemName = "PPO2 センサのずれ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-PCS-08'> fmx_pcs_08 : SSD_FMM_ORB_001::FailureMode { doc /* 上昇中の dP/dT の誤った急減圧警報（誤作動） */ attribute :>> itemName = "上昇中の dP/dT の誤った急減圧警報"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-01'> fmx_h2o_01 : SSD_FMM_ORB_001::FailureMode { doc /* 給水ダンプノズルの着氷によるダンプの不能（喪失） */ attribute :>> itemName = "給水ダンプノズルの着氷によるダンプの不能"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-02'> fmx_h2o_02 : SSD_FMM_ORB_001::FailureMode { doc /* 廃水ダンプノズルの着氷（喪失） */ attribute :>> itemName = "廃水ダンプノズルの着氷"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-03'> fmx_h2o_03 : SSD_FMM_ORB_001::FailureMode { doc /* 廃水タンク・入口マニホールドの漏れ、ベローズの漏れ（外部漏れ） */ attribute :>> itemName = "廃水タンク・入口マニホールドの漏れ、ベローズの漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-04'> fmx_h2o_04 : SSD_FMM_ORB_001::FailureMode { doc /* 水タンクの N2 加圧の喪失（喪失） */ attribute :>> itemName = "水タンクの N2 加圧の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-05'> fmx_h2o_05 : SSD_FMM_ORB_001::FailureMode { doc /* 給水圧の上昇（40 psia 超）（誤作動） */ attribute :>> itemName = "給水圧の上昇（40 psia 超）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-06'> fmx_h2o_06 : SSD_FMM_ORB_001::FailureMode { doc /* 給水への水素の混入（劣化） */ attribute :>> itemName = "給水への水素の混入"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-07'> fmx_h2o_07 : SSD_FMM_ORB_001::FailureMode { doc /* 給水タンク・配管の漏れと乗員室への遊離水（外部漏れ） */ attribute :>> itemName = "給水タンク・配管の漏れと乗員室への遊離水"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCS-01'> fmx_wcs_01 : SSD_FMM_ORB_001::FailureMode { doc /* WCS のファンセパレータの喪失（喪失） */ attribute :>> itemName = "WCS のファンセパレータの喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCS-02'> fmx_wcs_02 : SSD_FMM_ORB_001::FailureMode { doc /* 尿収集の喪失（喪失） */ attribute :>> itemName = "尿収集の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCS-03'> fmx_wcs_03 : SSD_FMM_ORB_001::FailureMode { doc /* 便器の喪失（喪失） */ attribute :>> itemName = "便器の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCS-04'> fmx_wcs_04 : SSD_FMM_ORB_001::FailureMode { doc /* 便器の制御弁（COMMODE CONTROL）・スライド弁から真空ベントへの乗員室空気の漏れ（外部漏れ） */ attribute :>> itemName = "便器の制御弁（COMMODE CONTROL）・スライド弁から真空ベントへの乗員室空気の漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCS-05'> fmx_wcs_05 : SSD_FMM_ORB_001::FailureMode { doc /* 真空ベント能力の喪失（隔離弁の閉固着・ベント管の閉塞）（喪失） */ attribute :>> itemName = "真空ベント能力の喪失（隔離弁の閉固着・ベント管の閉塞）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCS-06'> fmx_wcs_06 : SSD_FMM_ORB_001::FailureMode { doc /* 小便器のプレフィルタの目詰まりによる気流の低下（劣化） */ attribute :>> itemName = "小便器のプレフィルタの目詰まりによる気流の低下"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-01'> fmx_fds_01 : SSD_FMM_ORB_001::FailureMode { doc /* 煙感知器の誤警報（誤作動） */ attribute :>> itemName = "煙感知器の誤警報"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-02'> fmx_fds_02 : SSD_FMM_ORB_001::FailureMode { doc /* 感知器の空気ポンプの故障によるベイの煙検知の喪失（喪失） */ attribute :>> itemName = "感知器の空気ポンプの故障によるベイの煙検知の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-03'> fmx_fds_03 : SSD_FMM_ORB_001::FailureMode { doc /* 空気の循環の喪失による煙検知の喪失（喪失） */ attribute :>> itemName = "空気の循環の喪失による煙検知の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-04'> fmx_fds_04 : SSD_FMM_ORB_001::FailureMode { doc /* 煙検知灯のないサイレン（誤作動） */ attribute :>> itemName = "煙検知灯のないサイレン"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-05'> fmx_fds_05 : SSD_FMM_ORB_001::FailureMode { doc /* C&W の電源 A（B）の喪失による煙の警報音の喪失（喪失） */ attribute :>> itemName = "C&W の電源 A（B）の喪失による煙の警報音の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-06'> fmx_fds_06 : SSD_FMM_ORB_001::FailureMode { doc /* 放出音のない AGENT DISCH 灯（消火ボトルの漏れ・確認できない放出）（誤作動） */ attribute :>> itemName = "放出音のない AGENT DISCH 灯（消火ボトルの漏れ・確認できない放出）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-ALS-01'> fmx_als_01 : SSD_FMM_ORB_001::FailureMode { doc /* エアロックのハッチの漏れ（外部漏れ） */ attribute :>> itemName = "エアロックのハッチの漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-ALS-02'> fmx_als_02 : SSD_FMM_ORB_001::FailureMode { doc /* 外部エアロックの水配管ヒータの喪失による配管の凍結（喪失） */ attribute :>> itemName = "外部エアロックの水配管ヒータの喪失による配管の凍結"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-ALS-03'> fmx_als_03 : SSD_FMM_ORB_001::FailureMode { doc /* LCG 配管の圧力上昇（劣化） */ attribute :>> itemName = "LCG 配管の圧力上昇"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-ALS-04'> fmx_als_04 : SSD_FMM_ORB_001::FailureMode { doc /* SCU による EMU の補給の喪失（喪失） */ attribute :>> itemName = "SCU による EMU の補給の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-ALS-05'> fmx_als_05 : SSD_FMM_ORB_001::FailureMode { doc /* AC1 母線の喪失によるエアロック・トンネルのファン A の停止（喪失） */ attribute :>> itemName = "AC1 母線の喪失によるエアロック・トンネルのファン A の停止"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-AVB-01'> fmx_avb_01 : SSD_FMM_ORB_001::FailureMode { doc /* アビオニクスベイファンの喪失（ベイの両ファンの喪失を含む）（喪失） */ attribute :>> itemName = "アビオニクスベイファンの喪失（ベイの両ファンの喪失を含む）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-AVB-02'> fmx_avb_02 : SSD_FMM_ORB_001::FailureMode { doc /* アビオニクスベイ冷却の喪失（ベイ空気出口温度を保てない）（喪失） */ attribute :>> itemName = "アビオニクスベイ冷却の喪失（ベイ空気出口温度を保てない）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-AVB-03'> fmx_avb_03 : SSD_FMM_ORB_001::FailureMode { doc /* 水冷却ループの劣化によるベイ熱交換器の冷却能力の低下（劣化） */ attribute :>> itemName = "水冷却ループの劣化によるベイ熱交換器の冷却能力の低下"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-AVB-04'> fmx_avb_04 : SSD_FMM_ORB_001::FailureMode { doc /* ベイを通る水冷却ループの経路の流れの制限によるベイ温度の上昇（劣化） */ attribute :>> itemName = "ベイを通る水冷却ループの経路の流れの制限によるベイ温度の上昇"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CAC-01'> fmx_cac_01 : SSD_FMM_ORB_001::FailureMode { doc /* キャビンファンの喪失（循環空気の流量の喪失）（喪失） */ attribute :>> itemName = "キャビンファンの喪失（循環空気の流量の喪失）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CAC-02'> fmx_cac_02 : SSD_FMM_ORB_001::FailureMode { doc /* キャビンファンの1相の喪失（2相運転）（劣化） */ attribute :>> itemName = "キャビンファンの1相の喪失（2相運転）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-IMU-01'> fmx_imu_01 : SSD_FMM_ORB_001::FailureMode { doc /* IMU ファンの喪失（IMU 冷却空気の流量の喪失）（喪失） */ attribute :>> itemName = "IMU ファンの喪失（IMU 冷却空気の流量の喪失）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-IMU-02'> fmx_imu_02 : SSD_FMM_ORB_001::FailureMode { doc /* IMU ファンの1相の喪失（2相運転）（劣化） */ attribute :>> itemName = "IMU ファンの1相の喪失（2相運転）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-IMU-03'> fmx_imu_03 : SSD_FMM_ORB_001::FailureMode { doc /* 吸込みスクリーン・デブリトラップ・フィルタの目詰まりによる IMU 通風の低下（劣化） */ attribute :>> itemName = "吸込みスクリーン・デブリトラップ・フィルタの目詰まりによる IMU 通風の低下"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-IMU-04'> fmx_imu_04 : SSD_FMM_ORB_001::FailureMode { doc /* IMU 空気ダクトの漏れによる通風の低下（外部漏れ） */ attribute :>> itemName = "IMU 空気ダクトの漏れによる通風の低下"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-THC-01'> fmx_thc_01 : SSD_FMM_ORB_001::FailureMode { doc /* キャビン温度制御の喪失（コントローラ・バイパス弁の制御不能）（喪失） */ attribute :>> itemName = "キャビン温度制御の喪失（コントローラ・バイパス弁の制御不能）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-THC-02'> fmx_thc_02 : SSD_FMM_ORB_001::FailureMode { doc /* 湿度制御の喪失（湿度分離器の入口閉塞・水の持ち越し）（喪失） */ attribute :>> itemName = "湿度制御の喪失（湿度分離器の入口閉塞・水の持ち越し）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-01'> fmx_co2_01 : SSD_FMM_ORB_001::FailureMode { doc /* LiOH による CO2 除去能力の不足と PPCO2 の上昇（喪失） */ attribute :>> itemName = "LiOH による CO2 除去能力の不足と PPCO2 の上昇"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-02'> fmx_co2_02 : SSD_FMM_ORB_001::FailureMode { doc /* PPCO2 指示が局所の高濃度を表さないこと（指示は許容範囲でも乗員に症状）（劣化） */ attribute :>> itemName = "PPCO2 指示が局所の高濃度を表さないこと（指示は許容範囲でも乗員に症状）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-03'> fmx_co2_03 : SSD_FMM_ORB_001::FailureMode { doc /* LiOH キャニスタの交換口のドアが開かない故障（キャニスタを交換できない）（喪失） */ attribute :>> itemName = "LiOH キャニスタの交換口のドアが開かない故障（キャニスタを交換できない）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-04'> fmx_co2_04 : SSD_FMM_ORB_001::FailureMode { doc /* キャニスタを通る流量の低下（オリフィス・キャニスタの閉塞や装着不良）（劣化） */ attribute :>> itemName = "キャニスタを通る流量の低下（オリフィス・キャニスタの閉塞や装着不良）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-05'> fmx_co2_05 : SSD_FMM_ORB_001::FailureMode { doc /* CO 除去（ATCO）の喪失（喪失） */ attribute :>> itemName = "CO 除去（ATCO）の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-01'> fmx_rcrs_01 : SSD_FMM_ORB_001::FailureMode { doc /* RCRS の CO2 除去能力の喪失（PPCO2 を 7.6 mmHg 未満に保てない）（喪失） */ attribute :>> itemName = "RCRS の CO2 除去能力の喪失（PPCO2 を 7.6 mmHg 未満に保てない）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-02'> fmx_rcrs_02 : SSD_FMM_ORB_001::FailureMode { doc /* PPCO2 の把握の喪失・RCRS の CO2 指示のずれ（劣化） */ attribute :>> itemName = "PPCO2 の把握の喪失・RCRS の CO2 指示のずれ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-03'> fmx_rcrs_03 : SSD_FMM_ORB_001::FailureMode { doc /* 火災後も RCRS を運転して固体アミンが汚染される（劣化） */ attribute :>> itemName = "火災後も RCRS を運転して固体アミンが汚染される"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-04'> fmx_rcrs_04 : SSD_FMM_ORB_001::FailureMode { doc /* 真空ベント経路の喪失による脱着の不能（喪失） */ attribute :>> itemName = "真空ベント経路の喪失による脱着の不能"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-05'> fmx_rcrs_05 : SSD_FMM_ORB_001::FailureMode { doc /* 真空サイクル弁（VCV）のアクチュエータの故障による RCRS の停止（喪失） */ attribute :>> itemName = "真空サイクル弁（VCV）のアクチュエータの故障による RCRS の停止"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-06'> fmx_rcrs_06 : SSD_FMM_ORB_001::FailureMode { doc /* 制御器の故障停止（故障検知の論理による RCRS の停止）（喪失） */ attribute :>> itemName = "制御器の故障停止（故障検知の論理による RCRS の停止）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-07'> fmx_rcrs_07 : SSD_FMM_ORB_001::FailureMode { doc /* 制御器の電源の喪失（喪失） */ attribute :>> itemName = "制御器の電源の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-08'> fmx_rcrs_08 : SSD_FMM_ORB_001::FailureMode { doc /* ベッド圧力センサのずれによる不要な自動停止のおそれ（劣化） */ attribute :>> itemName = "ベッド圧力センサのずれによる不要な自動停止のおそれ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-09'> fmx_rcrs_09 : SSD_FMM_ORB_001::FailureMode { doc /* 入口フィルタの閉塞・流量制御弁の設定の誤りによる RCRS の流量の低下（劣化） */ attribute :>> itemName = "入口フィルタの閉塞・流量制御弁の設定の誤りによる RCRS の流量の低下"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-10'> fmx_rcrs_10 : SSD_FMM_ORB_001::FailureMode { doc /* RCRS ファンの停止（喪失） */ attribute :>> itemName = "RCRS ファンの停止"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-11'> fmx_rcrs_11 : SSD_FMM_ORB_001::FailureMode { doc /* ullage-save 圧縮機の故障（キャビン空気の損失の増加）（劣化） */ attribute :>> itemName = "ullage-save 圧縮機の故障（キャビン空気の損失の増加）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-12'> fmx_rcrs_12 : SSD_FMM_ORB_001::FailureMode { doc /* 均圧弁（PEV）の誤った開閉・開固着（誤作動） */ attribute :>> itemName = "均圧弁（PEV）の誤った開閉・開固着"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-20'> fmx_co2_20 : SSD_FMM_ORB_001::FailureMode { doc /* 予備の LiOH キャニスタの不足（使い切り）による CO2 除去手段の喪失（喪失） */ attribute :>> itemName = "予備の LiOH キャニスタの不足（使い切り）による CO2 除去手段の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-21'> fmx_co2_21 : SSD_FMM_ORB_001::FailureMode { doc /* キャニスタ交換時の LiOH 粉塵の飛散（誤作動） */ attribute :>> itemName = "キャニスタ交換時の LiOH 粉塵の飛散"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CO2-22'> fmx_co2_22 : SSD_FMM_ORB_001::FailureMode { doc /* キャニスタの交換の遅れによる PPCO2 の上昇（劣化） */ attribute :>> itemName = "キャニスタの交換の遅れによる PPCO2 の上昇"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-07'> fmx_fds_07 : SSD_FMM_ORB_001::FailureMode { doc /* キャビンファン稼働中の携帯消火器のハロン濃度の不足（劣化） */ attribute :>> itemName = "キャビンファン稼働中の携帯消火器のハロン濃度の不足"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-08'> fmx_fds_08 : SSD_FMM_ORB_001::FailureMode { doc /* 携帯消火器の不用意な放出・漏れ（外部漏れ） */ attribute :>> itemName = "携帯消火器の不用意な放出・漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-FDS-09'> fmx_fds_09 : SSD_FMM_ORB_001::FailureMode { doc /* 携帯消火器の固定具からの脱落（誤作動） */ attribute :>> itemName = "携帯消火器の固定具からの脱落"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-08'> fmx_h2o_08 : SSD_FMM_ORB_001::FailureMode { doc /* 廃水ダンプ能力の喪失による廃水タンクの満杯（喪失） */ attribute :>> itemName = "廃水ダンプ能力の喪失による廃水タンクの満杯"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-09'> fmx_h2o_09 : SSD_FMM_ORB_001::FailureMode { doc /* 水タンクの N2 加圧の喪失による給水・廃水の送り出し圧の低下（劣化） */ attribute :>> itemName = "水タンクの N2 加圧の喪失による給水・廃水の送り出し圧の低下"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-10'> fmx_h2o_10 : SSD_FMM_ORB_001::FailureMode { doc /* 燃料電池の生成水の船外逃し弁からの漏れ（外部漏れ） */ attribute :>> itemName = "燃料電池の生成水の船外逃し弁からの漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-11'> fmx_h2o_11 : SSD_FMM_ORB_001::FailureMode { doc /* ギャレーの再水和ステーションの吐出量の異常・吐出の停止（劣化） */ attribute :>> itemName = "ギャレーの再水和ステーションの吐出量の異常・吐出の停止"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-12'> fmx_h2o_12 : SSD_FMM_ORB_001::FailureMode { doc /* ギャレーの給水への気泡・空気の混入（劣化） */ attribute :>> itemName = "ギャレーの給水への気泡・空気の混入"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-H2O-13'> fmx_h2o_13 : SSD_FMM_ORB_001::FailureMode { doc /* ギャレーの給水針・復水ステーションからの水漏れ（外部漏れ） */ attribute :>> itemName = "ギャレーの給水針・復水ステーションからの水漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-ALS-06'> fmx_als_06 : SSD_FMM_ORB_001::FailureMode { doc /* EVA 能力の喪失：乗員室の気密を保ったままエアロックを減圧・再与圧できない（喪失） */ attribute :>> itemName = "EVA 能力の喪失：乗員室の気密を保ったままエアロックを減圧・再与圧できない"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-ALS-07'> fmx_als_07 : SSD_FMM_ORB_001::FailureMode { doc /* SCU による EMU の補給の制限：外部エアロックの流体配管の温度・圧力の上昇（劣化） */ attribute :>> itemName = "SCU による EMU の補給の制限：外部エアロックの流体配管の温度・圧力の上昇"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-01'> fmx_tcs_01 : SSD_FMM_ORB_001::FailureMode { doc /* フレオンループ2系統の喪失による ATCS の全冷却能力の喪失（喪失） */ attribute :>> itemName = "フレオンループ2系統の喪失による ATCS の全冷却能力の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-02'> fmx_tcs_02 : SSD_FMM_ORB_001::FailureMode { doc /* 上昇中の FES の全喪失による排熱の劣化（劣化） */ attribute :>> itemName = "上昇中の FES の全喪失による排熱の劣化"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CAB-01'> fmx_cab_01 : SSD_FMM_ORB_001::FailureMode { doc /* 乗員室の与圧の喪失：乗員室の壁の貫通・隔離できない漏れ（外部漏れ） */ attribute :>> itemName = "乗員室の与圧の喪失：乗員室の壁の貫通・隔離できない漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CAB-02'> fmx_cab_02 : SSD_FMM_ORB_001::FailureMode { doc /* 乗員室内の燃焼による大気の劣化（劣化） */ attribute :>> itemName = "乗員室内の燃焼による大気の劣化"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-CAB-03'> fmx_cab_03 : SSD_FMM_ORB_001::FailureMode { doc /* 乗員室温度の制御の喪失（95°F 超）（喪失） */ attribute :>> itemName = "乗員室温度の制御の喪失（95°F 超）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-03'> fmx_tcs_03 : SSD_FMM_ORB_001::FailureMode { doc /* フレオンループの流量の低下・乱れ（劣化） */ attribute :>> itemName = "フレオンループの流量の低下・乱れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-04'> fmx_tcs_04 : SSD_FMM_ORB_001::FailureMode { doc /* アキュムレータの故障によるポンプのキャビテーションとループの喪失（喪失） */ attribute :>> itemName = "アキュムレータの故障によるポンプのキャビテーションとループの喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-05'> fmx_tcs_05 : SSD_FMM_ORB_001::FailureMode { doc /* フレオンの外部漏れによるループの枯渇（外部漏れ） */ attribute :>> itemName = "フレオンの外部漏れによるループの枯渇"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-06'> fmx_tcs_06 : SSD_FMM_ORB_001::FailureMode { doc /* FES の氷結（コア・ダクト）による停止（喪失） */ attribute :>> itemName = "FES の氷結（コア・ダクト）による停止"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-07'> fmx_tcs_07 : SSD_FMM_ORB_001::FailureMode { doc /* FES の給水フィードラインの喪失（喪失） */ attribute :>> itemName = "FES の給水フィードラインの喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-08'> fmx_tcs_08 : SSD_FMM_ORB_001::FailureMode { doc /* 蒸発器の不安定による FES の低温停止（高負荷蒸発器の低熱負荷、過剰持ち越し）（誤作動） */ attribute :>> itemName = "蒸発器の不安定による FES の低温停止（高負荷蒸発器の低熱負荷、過剰持ち越し）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-09'> fmx_tcs_09 : SSD_FMM_ORB_001::FailureMode { doc /* 着陸後の地上冷却の喪失・遅れ（喪失） */ attribute :>> itemName = "着陸後の地上冷却の喪失・遅れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-10'> fmx_tcs_10 : SSD_FMM_ORB_001::FailureMode { doc /* GSE 冷却が熱負荷の減少に追従できないことによるオービタのフレオン温度の低下（誤作動） */ attribute :>> itemName = "GSE 冷却が熱負荷の減少に追従できないことによるオービタのフレオン温度の低下"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-11'> fmx_tcs_11 : SSD_FMM_ORB_001::FailureMode { doc /* パッド地上冷却の喪失による射点でのフレオンループの冷却不足（喪失） */ attribute :>> itemName = "パッド地上冷却の喪失による射点でのフレオンループの冷却不足"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-12'> fmx_tcs_12 : SSD_FMM_ORB_001::FailureMode { doc /* 水／フレオンインタチェンジャの流体間の漏れ（フレオンと水ループ）（外部漏れ） */ attribute :>> itemName = "水／フレオンインタチェンジャの流体間の漏れ（フレオンと水ループ）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-13'> fmx_tcs_13 : SSD_FMM_ORB_001::FailureMode { doc /* 油圧熱交換器でのフレオンの油圧系への漏れ（外部漏れ） */ attribute :>> itemName = "油圧熱交換器でのフレオンの油圧系への漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-14'> fmx_tcs_14 : SSD_FMM_ORB_001::FailureMode { doc /* O2 リストリクタのフレオン加温の喪失による O2 の漏れ（喪失） */ attribute :>> itemName = "O2 リストリクタのフレオン加温の喪失による O2 の漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-15'> fmx_tcs_15 : SSD_FMM_ORB_001::FailureMode { doc /* アンモニアボイラが冷却しない・冷却が途中で止まる（喪失） */ attribute :>> itemName = "アンモニアボイラが冷却しない・冷却が途中で止まる"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-16'> fmx_tcs_16 : SSD_FMM_ORB_001::FailureMode { doc /* アンモニアボイラの制御器の過冷却（出口温度が 31°F 未満）・制御の逸脱（誤作動） */ attribute :>> itemName = "アンモニアボイラの制御器の過冷却（出口温度が 31°F 未満）・制御の逸脱"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-17'> fmx_tcs_17 : SSD_FMM_ORB_001::FailureMode { doc /* アンモニアタンクの漏れ（外部漏れ） */ attribute :>> itemName = "アンモニアタンクの漏れ"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-18'> fmx_tcs_18 : SSD_FMM_ORB_001::FailureMode { doc /* 放熱器流量制御弁（バイパス弁）のバイパス位置への固着（喪失） */ attribute :>> itemName = "放熱器流量制御弁（バイパス弁）のバイパス位置への固着"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-19'> fmx_tcs_19 : SSD_FMM_ORB_001::FailureMode { doc /* 放熱器管の貫通漏れによるフレオンの枯渇（デブリの衝突）（外部漏れ） */ attribute :>> itemName = "放熱器管の貫通漏れによるフレオンの枯渇（デブリの衝突）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-TCS-20'> fmx_tcs_20 : SSD_FMM_ORB_001::FailureMode { doc /* 放熱器パネル出口温度の低下によるフレオン中の水分の氷結（劣化） */ attribute :>> itemName = "放熱器パネル出口温度の低下によるフレオン中の水分の氷結"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-RCRS-13'> fmx_rcrs_13 : SSD_FMM_ORB_001::FailureMode { doc /* RCRS の CO2 分圧の指示が低くずれて不安定になる（STS-78）（劣化） */ attribute :>> itemName = "RCRS の CO2 分圧の指示が低くずれて不安定になる（STS-78）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-AVB-05'> fmx_avb_05 : SSD_FMM_ORB_001::FailureMode { doc /* Av Bay 信号調整器の故障によるベイ温度・ファン差圧の指示の喪失（喪失） */ attribute :>> itemName = "Av Bay 信号調整器の故障によるベイ温度・ファン差圧の指示の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-IMU-05'> fmx_imu_05 : SSD_FMM_ORB_001::FailureMode { doc /* IMU FAN の信号調整器の喪失による IMU ファン A・B・C の回転数センサの正常表示の喪失（喪失） */ attribute :>> itemName = "IMU FAN の信号調整器の喪失による IMU ファン A・B・C の回転数センサの正常表示の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-IMU-06'> fmx_imu_06 : SSD_FMM_ORB_001::FailureMode { doc /* IMU ファン差圧（ΔP）センサの高い側へのずれによる飛行規則の限界の超過（STS-125）（劣化） */ attribute :>> itemName = "IMU ファン差圧（ΔP）センサの高い側へのずれによる飛行規則の限界の超過（STS-125）"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-THC-03'> fmx_thc_03 : SSD_FMM_ORB_001::FailureMode { doc /* 湿分分離器の速度センサの信号調整器の故障による速度表示の誤り（誤作動） */ attribute :>> itemName = "湿分分離器の速度センサの信号調整器の故障による速度表示の誤り"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-THC-04'> fmx_thc_04 : SSD_FMM_ORB_001::FailureMode { doc /* キャビン温度コントローラ1の信号調整器の故障による熱交換器出口温度・キャビン温度の低い表示（誤作動） */ attribute :>> itemName = "キャビン温度コントローラ1の信号調整器の故障による熱交換器出口温度・キャビン温度の低い表示"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCL-01'> fmx_wcl_01 : SSD_FMM_ORB_001::FailureMode { doc /* バイパス制御器の喪失による水ループの計装（ポンプ出口圧・アキュムレータ量）の喪失（喪失） */ attribute :>> itemName = "バイパス制御器の喪失による水ループの計装（ポンプ出口圧・アキュムレータ量）の喪失"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #cause occurrence <'FMX-WCL-02'> fmx_wcl_02 : SSD_FMM_ORB_001::FailureMode { doc /* ポンプ出口圧トランスデューサのずれによる SM アラートの誤発報（誤作動） */ attribute :>> itemName = "ポンプ出口圧トランスデューサのずれによる SM アラートの誤発報"; attribute :>> sourceTable = "SSD-FMX-ECL-001"; }
        #causation connection <'FMX-PCS-01>HC-05'> fmx_pcs_01_hc_05 connect fmx_pcs_01 to SSD_HAZ_ORB_001::HazardModel::hc05;
        #causation connection <'FMX-PCS-02>HC-03'> fmx_pcs_02_hc_03 connect fmx_pcs_02 to SSD_HAZ_ORB_001::HazardModel::hc03;
        #causation connection <'FMX-PCS-02>HC-05'> fmx_pcs_02_hc_05 connect fmx_pcs_02 to SSD_HAZ_ORB_001::HazardModel::hc05;
        #causation connection <'FMX-PCS-03>HC-05'> fmx_pcs_03_hc_05 connect fmx_pcs_03 to SSD_HAZ_ORB_001::HazardModel::hc05;
        #causation connection <'FMX-PCS-04>HC-06'> fmx_pcs_04_hc_06 connect fmx_pcs_04 to SSD_HAZ_ORB_001::HazardModel::hc06;
        #causation connection <'FMX-PCS-06>HC-06'> fmx_pcs_06_hc_06 connect fmx_pcs_06 to SSD_HAZ_ORB_001::HazardModel::hc06;
        #causation connection <'FMX-FDS-02>HC-01'> fmx_fds_02_hc_01 connect fmx_fds_02 to SSD_HAZ_ORB_001::HazardModel::hc01;
        #causation connection <'FMX-FDS-06>HC-08'> fmx_fds_06_hc_08 connect fmx_fds_06 to SSD_HAZ_ORB_001::HazardModel::hc08;
        #causation connection <'FMX-ALS-01>HC-37'> fmx_als_01_hc_37 connect fmx_als_01 to SSD_HAZ_ORB_001::HazardModel::hc37;
        #causation connection <'FMX-ALS-04>HC-36'> fmx_als_04_hc_36 connect fmx_als_04 to SSD_HAZ_ORB_001::HazardModel::hc36;
        #causation connection <'FMX-AVB-01>HC-16'> fmx_avb_01_hc_16 connect fmx_avb_01 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-AVB-02>HC-01'> fmx_avb_02_hc_01 connect fmx_avb_02 to SSD_HAZ_ORB_001::HazardModel::hc01;
        #causation connection <'FMX-AVB-02>HC-16'> fmx_avb_02_hc_16 connect fmx_avb_02 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-AVB-03>HC-16'> fmx_avb_03_hc_16 connect fmx_avb_03 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-AVB-04>HC-16'> fmx_avb_04_hc_16 connect fmx_avb_04 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-CAC-01>HC-16'> fmx_cac_01_hc_16 connect fmx_cac_01 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-CAC-01>HC-07'> fmx_cac_01_hc_07 connect fmx_cac_01 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-IMU-01>HC-16'> fmx_imu_01_hc_16 connect fmx_imu_01 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-IMU-02>HC-16'> fmx_imu_02_hc_16 connect fmx_imu_02 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-CO2-01>HC-07'> fmx_co2_01_hc_07 connect fmx_co2_01 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-CO2-02>HC-07'> fmx_co2_02_hc_07 connect fmx_co2_02 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-CO2-03>HC-07'> fmx_co2_03_hc_07 connect fmx_co2_03 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-CO2-04>HC-07'> fmx_co2_04_hc_07 connect fmx_co2_04 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-01>HC-07'> fmx_rcrs_01_hc_07 connect fmx_rcrs_01 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-02>HC-07'> fmx_rcrs_02_hc_07 connect fmx_rcrs_02 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-03>HC-07'> fmx_rcrs_03_hc_07 connect fmx_rcrs_03 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-03>HC-08'> fmx_rcrs_03_hc_08 connect fmx_rcrs_03 to SSD_HAZ_ORB_001::HazardModel::hc08;
        #causation connection <'FMX-RCRS-04>HC-07'> fmx_rcrs_04_hc_07 connect fmx_rcrs_04 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-05>HC-07'> fmx_rcrs_05_hc_07 connect fmx_rcrs_05 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-06>HC-07'> fmx_rcrs_06_hc_07 connect fmx_rcrs_06 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-07>HC-07'> fmx_rcrs_07_hc_07 connect fmx_rcrs_07 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-08>HC-07'> fmx_rcrs_08_hc_07 connect fmx_rcrs_08 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-09>HC-07'> fmx_rcrs_09_hc_07 connect fmx_rcrs_09 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-10>HC-07'> fmx_rcrs_10_hc_07 connect fmx_rcrs_10 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-RCRS-12>HC-07'> fmx_rcrs_12_hc_07 connect fmx_rcrs_12 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-CO2-20>HC-07'> fmx_co2_20_hc_07 connect fmx_co2_20 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-CO2-21>HC-10'> fmx_co2_21_hc_10 connect fmx_co2_21 to SSD_HAZ_ORB_001::HazardModel::hc10;
        #causation connection <'FMX-CO2-22>HC-07'> fmx_co2_22_hc_07 connect fmx_co2_22 to SSD_HAZ_ORB_001::HazardModel::hc07;
        #causation connection <'FMX-FDS-07>HC-02'> fmx_fds_07_hc_02 connect fmx_fds_07 to SSD_HAZ_ORB_001::HazardModel::hc02;
        #causation connection <'FMX-FDS-08>HC-08'> fmx_fds_08_hc_08 connect fmx_fds_08 to SSD_HAZ_ORB_001::HazardModel::hc08;
        #causation connection <'FMX-ALS-06>HC-37'> fmx_als_06_hc_37 connect fmx_als_06 to SSD_HAZ_ORB_001::HazardModel::hc37;
        #causation connection <'FMX-ALS-07>HC-36'> fmx_als_07_hc_36 connect fmx_als_07 to SSD_HAZ_ORB_001::HazardModel::hc36;
        #causation connection <'FMX-TCS-01>HC-15'> fmx_tcs_01_hc_15 connect fmx_tcs_01 to SSD_HAZ_ORB_001::HazardModel::hc15;
        #causation connection <'FMX-TCS-01>HC-16'> fmx_tcs_01_hc_16 connect fmx_tcs_01 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-TCS-02>HC-17'> fmx_tcs_02_hc_17 connect fmx_tcs_02 to SSD_HAZ_ORB_001::HazardModel::hc17;
        #causation connection <'FMX-CAB-01>HC-04'> fmx_cab_01_hc_04 connect fmx_cab_01 to SSD_HAZ_ORB_001::HazardModel::hc04;
        #causation connection <'FMX-CAB-02>HC-02'> fmx_cab_02_hc_02 connect fmx_cab_02 to SSD_HAZ_ORB_001::HazardModel::hc02;
        #causation connection <'FMX-TCS-03>HC-16'> fmx_tcs_03_hc_16 connect fmx_tcs_03 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-TCS-04>HC-16'> fmx_tcs_04_hc_16 connect fmx_tcs_04 to SSD_HAZ_ORB_001::HazardModel::hc16;
        #causation connection <'FMX-TCS-05>HC-15'> fmx_tcs_05_hc_15 connect fmx_tcs_05 to SSD_HAZ_ORB_001::HazardModel::hc15;
        #causation connection <'FMX-TCS-06>HC-17'> fmx_tcs_06_hc_17 connect fmx_tcs_06 to SSD_HAZ_ORB_001::HazardModel::hc17;
        #causation connection <'FMX-TCS-07>HC-17'> fmx_tcs_07_hc_17 connect fmx_tcs_07 to SSD_HAZ_ORB_001::HazardModel::hc17;
        #causation connection <'FMX-TCS-08>HC-17'> fmx_tcs_08_hc_17 connect fmx_tcs_08 to SSD_HAZ_ORB_001::HazardModel::hc17;
        #causation connection <'FMX-TCS-12>HC-09'> fmx_tcs_12_hc_09 connect fmx_tcs_12 to SSD_HAZ_ORB_001::HazardModel::hc09;
        #causation connection <'FMX-TCS-15>HC-17'> fmx_tcs_15_hc_17 connect fmx_tcs_15 to SSD_HAZ_ORB_001::HazardModel::hc17;
        #causation connection <'FMX-TCS-18>HC-17'> fmx_tcs_18_hc_17 connect fmx_tcs_18 to SSD_HAZ_ORB_001::HazardModel::hc17;
        #causation connection <'FMX-TCS-19>HC-15'> fmx_tcs_19_hc_15 connect fmx_tcs_19 to SSD_HAZ_ORB_001::HazardModel::hc15;
        #causation connection <'FMX-TCS-19>HC-30'> fmx_tcs_19_hc_30 connect fmx_tcs_19 to SSD_HAZ_ORB_001::HazardModel::hc30;
    }
    #Involves dependency <'FMX-PCS-01>SSD-FD-ECL-PCS-MNF-001'> from FunctionalFailureModes::fmx_pcs_01 to SSD_BLK_SYS_001::ECL_PCS_MNF;
    #DetectedBy dependency <'FMX-PCS-01>CW-06'> from FunctionalFailureModes::fmx_pcs_01 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #Involves dependency <'FMX-PCS-02>SSD-FD-ECL-PCS-MNF-001'> from FunctionalFailureModes::fmx_pcs_02 to SSD_BLK_SYS_001::ECL_PCS_MNF;
    #DetectedBy dependency <'FMX-PCS-02>CW-06'> from FunctionalFailureModes::fmx_pcs_02 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #Involves dependency <'FMX-PCS-03>SSD-FD-ECL-PCS-N2S-001'> from FunctionalFailureModes::fmx_pcs_03 to SSD_BLK_SYS_001::ECL_PCS_N2S;
    #Involves dependency <'FMX-PCS-04>SSD-FD-ECL-PCS-RLF-001'> from FunctionalFailureModes::fmx_pcs_04 to SSD_BLK_SYS_001::ECL_PCS_RLF;
    #DetectedBy dependency <'FMX-PCS-04>CW-06'> from FunctionalFailureModes::fmx_pcs_04 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #Involves dependency <'FMX-PCS-05>SSD-FD-ECL-PCS-RLF-001'> from FunctionalFailureModes::fmx_pcs_05 to SSD_BLK_SYS_001::ECL_PCS_RLF;
    #DetectedBy dependency <'FMX-PCS-05>EM-02'> from FunctionalFailureModes::fmx_pcs_05 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #DetectedBy dependency <'FMX-PCS-05>CW-06'> from FunctionalFailureModes::fmx_pcs_05 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #Involves dependency <'FMX-PCS-06>SSD-FD-ECL-PCS-RLF-001'> from FunctionalFailureModes::fmx_pcs_06 to SSD_BLK_SYS_001::ECL_PCS_RLF;
    #DetectedBy dependency <'FMX-PCS-06>EM-02'> from FunctionalFailureModes::fmx_pcs_06 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #Involves dependency <'FMX-PCS-07>SSD-FD-ECL-PCS-MON-001'> from FunctionalFailureModes::fmx_pcs_07 to SSD_BLK_SYS_001::ECL_PCS_MON;
    #Involves dependency <'FMX-PCS-08>SSD-FD-ECL-PCS-MON-001'> from FunctionalFailureModes::fmx_pcs_08 to SSD_BLK_SYS_001::ECL_PCS_MON;
    #DetectedBy dependency <'FMX-PCS-08>EM-02'> from FunctionalFailureModes::fmx_pcs_08 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #Involves dependency <'FMX-H2O-01>SSD-FD-ECL-H2O-DMP-001'> from FunctionalFailureModes::fmx_h2o_01 to SSD_BLK_SYS_001::ECL_H2O_DMP;
    #Involves dependency <'FMX-H2O-02>SSD-FD-ECL-H2O-DMP-001'> from FunctionalFailureModes::fmx_h2o_02 to SSD_BLK_SYS_001::ECL_H2O_DMP;
    #Involves dependency <'FMX-H2O-03>SSD-FD-ECL-H2O-WST-001'> from FunctionalFailureModes::fmx_h2o_03 to SSD_BLK_SYS_001::ECL_H2O_WST;
    #Involves dependency <'FMX-H2O-04>SSD-FD-ECL-H2O-PRS-001'> from FunctionalFailureModes::fmx_h2o_04 to SSD_BLK_SYS_001::ECL_H2O_PRS;
    #Involves dependency <'FMX-H2O-05>SSD-FD-ECL-H2O-FCW-001'> from FunctionalFailureModes::fmx_h2o_05 to SSD_BLK_SYS_001::ECL_H2O_FCW;
    #Involves dependency <'FMX-H2O-06>SSD-FD-ECL-H2O-FCW-001'> from FunctionalFailureModes::fmx_h2o_06 to SSD_BLK_SYS_001::ECL_H2O_FCW;
    #Involves dependency <'FMX-H2O-07>SSD-FD-ECL-H2O-SPL-001'> from FunctionalFailureModes::fmx_h2o_07 to SSD_BLK_SYS_001::ECL_H2O_SPL;
    #Involves dependency <'FMX-WCS-01>SSD-FD-ECL-WCS-FSP-001'> from FunctionalFailureModes::fmx_wcs_01 to SSD_BLK_SYS_001::ECL_WCS_FSP;
    #DetectedBy dependency <'FMX-WCS-01>CW-09'> from FunctionalFailureModes::fmx_wcs_01 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #Involves dependency <'FMX-WCS-02>SSD-FD-ECL-WCS-URN-001'> from FunctionalFailureModes::fmx_wcs_02 to SSD_BLK_SYS_001::ECL_WCS_URN;
    #Involves dependency <'FMX-WCS-03>SSD-FD-ECL-WCS-CMD-001'> from FunctionalFailureModes::fmx_wcs_03 to SSD_BLK_SYS_001::ECL_WCS_CMD;
    #Involves dependency <'FMX-WCS-04>SSD-FD-ECL-WCS-CMD-001'> from FunctionalFailureModes::fmx_wcs_04 to SSD_BLK_SYS_001::ECL_WCS_CMD;
    #Involves dependency <'FMX-WCS-05>SSD-FD-ECL-WCS-VAC-001'> from FunctionalFailureModes::fmx_wcs_05 to SSD_BLK_SYS_001::ECL_WCS_VAC;
    #Involves dependency <'FMX-WCS-06>SSD-FD-ECL-WCS-URN-001'> from FunctionalFailureModes::fmx_wcs_06 to SSD_BLK_SYS_001::ECL_WCS_URN;
    #Involves dependency <'FMX-FDS-01>SSD-FD-ECL-FDS-DET-001'> from FunctionalFailureModes::fmx_fds_01 to SSD_BLK_SYS_001::ECL_FDS_DET;
    #DetectedBy dependency <'FMX-FDS-01>EM-01'> from FunctionalFailureModes::fmx_fds_01 to SSD_FDIR_ORB_001::SmokeDetectionFireAlarm;
    #Involves dependency <'FMX-FDS-02>SSD-FD-ECL-FDS-DET-001'> from FunctionalFailureModes::fmx_fds_02 to SSD_BLK_SYS_001::ECL_FDS_DET;
    #Involves dependency <'FMX-FDS-03>SSD-FD-ECL-FDS-001'> from FunctionalFailureModes::fmx_fds_03 to SSD_BLK_SYS_001::ECL_FDS;
    #DetectedBy dependency <'FMX-FDS-03>CW-12'> from FunctionalFailureModes::fmx_fds_03 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #Involves dependency <'FMX-FDS-04>SSD-FD-ECL-FDS-ALM-001'> from FunctionalFailureModes::fmx_fds_04 to SSD_BLK_SYS_001::ECL_FDS_ALM;
    #DetectedBy dependency <'FMX-FDS-04>EM-01'> from FunctionalFailureModes::fmx_fds_04 to SSD_FDIR_ORB_001::SmokeDetectionFireAlarm;
    #Involves dependency <'FMX-FDS-05>SSD-FD-ECL-FDS-ALM-001'> from FunctionalFailureModes::fmx_fds_05 to SSD_BLK_SYS_001::ECL_FDS_ALM;
    #Involves dependency <'FMX-FDS-06>SSD-FD-ECL-FDS-FIX-001'> from FunctionalFailureModes::fmx_fds_06 to SSD_BLK_SYS_001::ECL_FDS_FIX;
    #Involves dependency <'FMX-ALS-01>SSD-FD-ECL-ALS-DEP-001'> from FunctionalFailureModes::fmx_als_01 to SSD_BLK_SYS_001::ECL_ALS_DEP;
    #Involves dependency <'FMX-ALS-02>SSD-FD-ECL-ALS-HTR-001'> from FunctionalFailureModes::fmx_als_02 to SSD_BLK_SYS_001::ECL_ALS_HTR;
    #Involves dependency <'FMX-ALS-03>SSD-FD-ECL-ALS-LCG-001'> from FunctionalFailureModes::fmx_als_03 to SSD_BLK_SYS_001::ECL_ALS_LCG;
    #Involves dependency <'FMX-ALS-04>SSD-FD-ECL-ALS-SCU-001'> from FunctionalFailureModes::fmx_als_04 to SSD_BLK_SYS_001::ECL_ALS_SCU;
    #Involves dependency <'FMX-ALS-05>SSD-FD-ECL-ALS-VNT-001'> from FunctionalFailureModes::fmx_als_05 to SSD_BLK_SYS_001::ECL_ALS_VNT;
    #DetectedBy dependency <'FMX-ALS-05>CW-09'> from FunctionalFailureModes::fmx_als_05 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #Involves dependency <'FMX-AVB-01>SSD-FD-ARS-AVB-001'> from FunctionalFailureModes::fmx_avb_01 to SSD_BLK_SYS_001::ARS_AVB;
    #DetectedBy dependency <'FMX-AVB-01>CW-12'> from FunctionalFailureModes::fmx_avb_01 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #Involves dependency <'FMX-AVB-02>SSD-FD-ARS-AVB-001'> from FunctionalFailureModes::fmx_avb_02 to SSD_BLK_SYS_001::ARS_AVB;
    #DetectedBy dependency <'FMX-AVB-02>CW-12'> from FunctionalFailureModes::fmx_avb_02 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #Involves dependency <'FMX-AVB-03>SSD-FD-ARS-AVB-HX-001'> from FunctionalFailureModes::fmx_avb_03 to SSD_BLK_SYS_001::ARS_AVB_HX;
    #DetectedBy dependency <'FMX-AVB-03>CW-12'> from FunctionalFailureModes::fmx_avb_03 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #DetectedBy dependency <'FMX-AVB-03>CW-16'> from FunctionalFailureModes::fmx_avb_03 to SSD_FDIR_ORB_001::H2OLoopAlarm;
    #Involves dependency <'FMX-AVB-04>SSD-FD-ARS-AVB-HX-001'> from FunctionalFailureModes::fmx_avb_04 to SSD_BLK_SYS_001::ARS_AVB_HX;
    #DetectedBy dependency <'FMX-AVB-04>CW-12'> from FunctionalFailureModes::fmx_avb_04 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #Involves dependency <'FMX-CAC-01>SSD-FD-ARS-CAC-001'> from FunctionalFailureModes::fmx_cac_01 to SSD_BLK_SYS_001::ARS_CAC;
    #DetectedBy dependency <'FMX-CAC-01>CW-12'> from FunctionalFailureModes::fmx_cac_01 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #Involves dependency <'FMX-CAC-02>SSD-FD-ARS-CAC-001'> from FunctionalFailureModes::fmx_cac_02 to SSD_BLK_SYS_001::ARS_CAC;
    #DetectedBy dependency <'FMX-CAC-02>CW-09'> from FunctionalFailureModes::fmx_cac_02 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #Involves dependency <'FMX-IMU-01>SSD-FD-ARS-IMU-001'> from FunctionalFailureModes::fmx_imu_01 to SSD_BLK_SYS_001::ARS_IMU;
    #Involves dependency <'FMX-IMU-02>SSD-FD-ARS-IMU-001'> from FunctionalFailureModes::fmx_imu_02 to SSD_BLK_SYS_001::ARS_IMU;
    #Involves dependency <'FMX-IMU-03>SSD-FD-ARS-IMU-INL-001'> from FunctionalFailureModes::fmx_imu_03 to SSD_BLK_SYS_001::ARS_IMU_INL;
    #Involves dependency <'FMX-IMU-04>SSD-FD-ARS-IMU-INL-001'> from FunctionalFailureModes::fmx_imu_04 to SSD_BLK_SYS_001::ARS_IMU_INL;
    #Involves dependency <'FMX-THC-01>SSD-FD-ARS-THC-001'> from FunctionalFailureModes::fmx_thc_01 to SSD_BLK_SYS_001::ARS_THC;
    #DetectedBy dependency <'FMX-THC-01>CW-12'> from FunctionalFailureModes::fmx_thc_01 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #Involves dependency <'FMX-THC-02>SSD-FD-ARS-THC-001'> from FunctionalFailureModes::fmx_thc_02 to SSD_BLK_SYS_001::ARS_THC;
    #Involves dependency <'FMX-CO2-01>SSD-FD-ARS-CO2-001'> from FunctionalFailureModes::fmx_co2_01 to SSD_BLK_SYS_001::ARS_CO2;
    #Involves dependency <'FMX-CO2-02>SSD-FD-ARS-CO2-001'> from FunctionalFailureModes::fmx_co2_02 to SSD_BLK_SYS_001::ARS_CO2;
    #Involves dependency <'FMX-CO2-03>SSD-FD-CO2-ABS-001'> from FunctionalFailureModes::fmx_co2_03 to SSD_BLK_SYS_001::CO2_ABS;
    #Involves dependency <'FMX-CO2-04>SSD-FD-CO2-ABS-001'> from FunctionalFailureModes::fmx_co2_04 to SSD_BLK_SYS_001::CO2_ABS;
    #Involves dependency <'FMX-CO2-05>SSD-FD-CO2-ATCO-001'> from FunctionalFailureModes::fmx_co2_05 to SSD_BLK_SYS_001::CO2_ATCO;
    #Involves dependency <'FMX-RCRS-01>SSD-FD-ARS-RCRS-001'> from FunctionalFailureModes::fmx_rcrs_01 to SSD_BLK_SYS_001::ARS_RCRS;
    #Involves dependency <'FMX-RCRS-02>SSD-FD-ARS-RCRS-001'> from FunctionalFailureModes::fmx_rcrs_02 to SSD_BLK_SYS_001::ARS_RCRS;
    #Involves dependency <'FMX-RCRS-03>SSD-FD-ARS-RCRS-001'> from FunctionalFailureModes::fmx_rcrs_03 to SSD_BLK_SYS_001::ARS_RCRS;
    #DetectedBy dependency <'FMX-RCRS-03>EM-01'> from FunctionalFailureModes::fmx_rcrs_03 to SSD_FDIR_ORB_001::SmokeDetectionFireAlarm;
    #Involves dependency <'FMX-RCRS-04>SSD-FD-ARS-RCRS-BED-001'> from FunctionalFailureModes::fmx_rcrs_04 to SSD_BLK_SYS_001::ARS_RCRS_BED;
    #Involves dependency <'FMX-RCRS-05>SSD-FD-ARS-RCRS-BED-001'> from FunctionalFailureModes::fmx_rcrs_05 to SSD_BLK_SYS_001::ARS_RCRS_BED;
    #Involves dependency <'FMX-RCRS-06>SSD-FD-ARS-RCRS-CTL-001'> from FunctionalFailureModes::fmx_rcrs_06 to SSD_BLK_SYS_001::ARS_RCRS_CTL;
    #Involves dependency <'FMX-RCRS-07>SSD-FD-ARS-RCRS-CTL-001'> from FunctionalFailureModes::fmx_rcrs_07 to SSD_BLK_SYS_001::ARS_RCRS_CTL;
    #Involves dependency <'FMX-RCRS-08>SSD-FD-ARS-RCRS-CTL-001'> from FunctionalFailureModes::fmx_rcrs_08 to SSD_BLK_SYS_001::ARS_RCRS_CTL;
    #Involves dependency <'FMX-RCRS-09>SSD-FD-ARS-RCRS-FAN-001'> from FunctionalFailureModes::fmx_rcrs_09 to SSD_BLK_SYS_001::ARS_RCRS_FAN;
    #Involves dependency <'FMX-RCRS-10>SSD-FD-ARS-RCRS-FAN-001'> from FunctionalFailureModes::fmx_rcrs_10 to SSD_BLK_SYS_001::ARS_RCRS_FAN;
    #Involves dependency <'FMX-RCRS-11>SSD-FD-ARS-RCRS-USC-001'> from FunctionalFailureModes::fmx_rcrs_11 to SSD_BLK_SYS_001::ARS_RCRS_USC;
    #Involves dependency <'FMX-RCRS-12>SSD-FD-ARS-RCRS-USC-001'> from FunctionalFailureModes::fmx_rcrs_12 to SSD_BLK_SYS_001::ARS_RCRS_USC;
    #Involves dependency <'FMX-CO2-20>SSD-FD-CO2-STW-001'> from FunctionalFailureModes::fmx_co2_20 to SSD_BLK_SYS_001::CO2_STW;
    #Involves dependency <'FMX-CO2-21>SSD-FD-CO2-STW-001'> from FunctionalFailureModes::fmx_co2_21 to SSD_BLK_SYS_001::CO2_STW;
    #Involves dependency <'FMX-CO2-22>SSD-FD-CO2-STW-001'> from FunctionalFailureModes::fmx_co2_22 to SSD_BLK_SYS_001::CO2_STW;
    #Involves dependency <'FMX-FDS-07>SSD-FD-ECL-FDS-PFE-001'> from FunctionalFailureModes::fmx_fds_07 to SSD_BLK_SYS_001::ECL_FDS_PFE;
    #Involves dependency <'FMX-FDS-08>SSD-FD-ECL-FDS-PFE-001'> from FunctionalFailureModes::fmx_fds_08 to SSD_BLK_SYS_001::ECL_FDS_PFE;
    #Involves dependency <'FMX-FDS-09>SSD-FD-ECL-FDS-PFE-001'> from FunctionalFailureModes::fmx_fds_09 to SSD_BLK_SYS_001::ECL_FDS_PFE;
    #Involves dependency <'FMX-H2O-08>SSD-FD-ECL-H2O-001'> from FunctionalFailureModes::fmx_h2o_08 to SSD_BLK_SYS_001::ECL_H2O;
    #Involves dependency <'FMX-H2O-09>SSD-FD-ECL-H2O-001'> from FunctionalFailureModes::fmx_h2o_09 to SSD_BLK_SYS_001::ECL_H2O;
    #Involves dependency <'FMX-H2O-10>SSD-FD-ECL-H2O-001'> from FunctionalFailureModes::fmx_h2o_10 to SSD_BLK_SYS_001::ECL_H2O;
    #Involves dependency <'FMX-H2O-11>SSD-FD-ECL-H2O-GAL-001'> from FunctionalFailureModes::fmx_h2o_11 to SSD_BLK_SYS_001::ECL_H2O_GAL;
    #Involves dependency <'FMX-H2O-12>SSD-FD-ECL-H2O-GAL-001'> from FunctionalFailureModes::fmx_h2o_12 to SSD_BLK_SYS_001::ECL_H2O_GAL;
    #Involves dependency <'FMX-H2O-13>SSD-FD-ECL-H2O-GAL-001'> from FunctionalFailureModes::fmx_h2o_13 to SSD_BLK_SYS_001::ECL_H2O_GAL;
    #Involves dependency <'FMX-ALS-06>SSD-FD-ECL-ALS-001'> from FunctionalFailureModes::fmx_als_06 to SSD_BLK_SYS_001::ECL_ALS;
    #Involves dependency <'FMX-ALS-07>SSD-FD-ECL-ALS-001'> from FunctionalFailureModes::fmx_als_07 to SSD_BLK_SYS_001::ECL_ALS;
    #Involves dependency <'FMX-TCS-01>SSD-FD-ECL-ATCS-001'> from FunctionalFailureModes::fmx_tcs_01 to SSD_BLK_SYS_001::ECL_ATCS;
    #DetectedBy dependency <'FMX-TCS-01>CW-11'> from FunctionalFailureModes::fmx_tcs_01 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-02>SSD-FD-ECL-ATCS-001'> from FunctionalFailureModes::fmx_tcs_02 to SSD_BLK_SYS_001::ECL_ATCS;
    #DetectedBy dependency <'FMX-TCS-02>CW-11'> from FunctionalFailureModes::fmx_tcs_02 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-CAB-01>SSD-FD-ECL-CAB-001'> from FunctionalFailureModes::fmx_cab_01 to SSD_BLK_SYS_001::ECL_CAB;
    #DetectedBy dependency <'FMX-CAB-01>CW-06'> from FunctionalFailureModes::fmx_cab_01 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #DetectedBy dependency <'FMX-CAB-01>EM-02'> from FunctionalFailureModes::fmx_cab_01 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #Involves dependency <'FMX-CAB-02>SSD-FD-ECL-CAB-001'> from FunctionalFailureModes::fmx_cab_02 to SSD_BLK_SYS_001::ECL_CAB;
    #DetectedBy dependency <'FMX-CAB-02>EM-01'> from FunctionalFailureModes::fmx_cab_02 to SSD_FDIR_ORB_001::SmokeDetectionFireAlarm;
    #Involves dependency <'FMX-CAB-03>SSD-FD-ECL-CAB-001'> from FunctionalFailureModes::fmx_cab_03 to SSD_BLK_SYS_001::ECL_CAB;
    #Involves dependency <'FMX-TCS-03>SSD-FD-TCS-FCL-001'> from FunctionalFailureModes::fmx_tcs_03 to SSD_BLK_SYS_001::TCS_FCL;
    #DetectedBy dependency <'FMX-TCS-03>CW-11'> from FunctionalFailureModes::fmx_tcs_03 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-04>SSD-FD-TCS-FCL-001'> from FunctionalFailureModes::fmx_tcs_04 to SSD_BLK_SYS_001::TCS_FCL;
    #DetectedBy dependency <'FMX-TCS-04>CW-11'> from FunctionalFailureModes::fmx_tcs_04 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-05>SSD-FD-TCS-FCL-001'> from FunctionalFailureModes::fmx_tcs_05 to SSD_BLK_SYS_001::TCS_FCL;
    #DetectedBy dependency <'FMX-TCS-05>CW-11'> from FunctionalFailureModes::fmx_tcs_05 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-06>SSD-FD-TCS-FES-001'> from FunctionalFailureModes::fmx_tcs_06 to SSD_BLK_SYS_001::TCS_FES;
    #DetectedBy dependency <'FMX-TCS-06>CW-11'> from FunctionalFailureModes::fmx_tcs_06 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-07>SSD-FD-TCS-FES-001'> from FunctionalFailureModes::fmx_tcs_07 to SSD_BLK_SYS_001::TCS_FES;
    #Involves dependency <'FMX-TCS-08>SSD-FD-TCS-FES-001'> from FunctionalFailureModes::fmx_tcs_08 to SSD_BLK_SYS_001::TCS_FES;
    #DetectedBy dependency <'FMX-TCS-08>CW-11'> from FunctionalFailureModes::fmx_tcs_08 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-09>SSD-FD-TCS-GSE-001'> from FunctionalFailureModes::fmx_tcs_09 to SSD_BLK_SYS_001::TCS_GSE;
    #Involves dependency <'FMX-TCS-10>SSD-FD-TCS-GSE-001'> from FunctionalFailureModes::fmx_tcs_10 to SSD_BLK_SYS_001::TCS_GSE;
    #DetectedBy dependency <'FMX-TCS-10>CW-11'> from FunctionalFailureModes::fmx_tcs_10 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-11>SSD-FD-TCS-GSE-001'> from FunctionalFailureModes::fmx_tcs_11 to SSD_BLK_SYS_001::TCS_GSE;
    #Involves dependency <'FMX-TCS-12>SSD-FD-TCS-HX-001'> from FunctionalFailureModes::fmx_tcs_12 to SSD_BLK_SYS_001::TCS_HX;
    #Involves dependency <'FMX-TCS-13>SSD-FD-TCS-HX-001'> from FunctionalFailureModes::fmx_tcs_13 to SSD_BLK_SYS_001::TCS_HX;
    #Involves dependency <'FMX-TCS-14>SSD-FD-TCS-HX-001'> from FunctionalFailureModes::fmx_tcs_14 to SSD_BLK_SYS_001::TCS_HX;
    #DetectedBy dependency <'FMX-TCS-14>CW-11'> from FunctionalFailureModes::fmx_tcs_14 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-15>SSD-FD-TCS-NH3-001'> from FunctionalFailureModes::fmx_tcs_15 to SSD_BLK_SYS_001::TCS_NH3;
    #DetectedBy dependency <'FMX-TCS-15>CW-11'> from FunctionalFailureModes::fmx_tcs_15 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-16>SSD-FD-TCS-NH3-001'> from FunctionalFailureModes::fmx_tcs_16 to SSD_BLK_SYS_001::TCS_NH3;
    #DetectedBy dependency <'FMX-TCS-16>CW-11'> from FunctionalFailureModes::fmx_tcs_16 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-17>SSD-FD-TCS-NH3-001'> from FunctionalFailureModes::fmx_tcs_17 to SSD_BLK_SYS_001::TCS_NH3;
    #Involves dependency <'FMX-TCS-18>SSD-FD-TCS-RAD-001'> from FunctionalFailureModes::fmx_tcs_18 to SSD_BLK_SYS_001::TCS_RAD;
    #DetectedBy dependency <'FMX-TCS-18>CW-11'> from FunctionalFailureModes::fmx_tcs_18 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #Involves dependency <'FMX-TCS-19>SSD-FD-TCS-RAD-001'> from FunctionalFailureModes::fmx_tcs_19 to SSD_BLK_SYS_001::TCS_RAD;
    #Involves dependency <'FMX-TCS-20>SSD-FD-TCS-RAD-001'> from FunctionalFailureModes::fmx_tcs_20 to SSD_BLK_SYS_001::TCS_RAD;
    #Involves dependency <'FMX-RCRS-13>SSD-FD-ARS-RCRS-MON-001'> from FunctionalFailureModes::fmx_rcrs_13 to SSD_BLK_SYS_001::ARS_RCRS_MON;
    #Involves dependency <'FMX-AVB-05>SSD-FD-ARS-AVB-MON-001'> from FunctionalFailureModes::fmx_avb_05 to SSD_BLK_SYS_001::ARS_AVB_MON;
    #Involves dependency <'FMX-IMU-05>SSD-FD-ARS-IMU-MON-001'> from FunctionalFailureModes::fmx_imu_05 to SSD_BLK_SYS_001::ARS_IMU_MON;
    #Involves dependency <'FMX-IMU-06>SSD-FD-ARS-IMU-MON-001'> from FunctionalFailureModes::fmx_imu_06 to SSD_BLK_SYS_001::ARS_IMU_MON;
    #Involves dependency <'FMX-THC-03>SSD-FD-ARS-THC-MON-001'> from FunctionalFailureModes::fmx_thc_03 to SSD_BLK_SYS_001::ARS_THC_MON;
    #Involves dependency <'FMX-THC-04>SSD-FD-ARS-THC-MON-001'> from FunctionalFailureModes::fmx_thc_04 to SSD_BLK_SYS_001::ARS_THC_MON;
    #Involves dependency <'FMX-WCL-01>SSD-FD-ARS-WCL-MON-001'> from FunctionalFailureModes::fmx_wcl_01 to SSD_BLK_SYS_001::ARS_WCL_MON;
    #Involves dependency <'FMX-WCL-02>SSD-FD-ARS-WCL-MON-001'> from FunctionalFailureModes::fmx_wcl_02 to SSD_BLK_SYS_001::ARS_WCL_MON;
    // ---- 故障の木（事象＝Boolean の属性、ゲート＝and／or の式、頂上事象＝top）
    part def FaultTreeX1 {
        doc /* FTX-1 乗員室の圧力の喪失（8 psia 未満） */
        attribute b1_01 : Boolean { doc /* B1-01 与圧殻・窓の破損（デブリの衝突など、隔離できない大きな漏れ）（対応：HC-04） */ }
        attribute b1_02 : Boolean { doc /* B1-02 正圧逃し弁の開固着（対応：FMX-PCS-05） */ }
        attribute b1_03 : Boolean { doc /* B1-03 逃し隔離弁が閉じない */ }
        attribute b1_04 : Boolean { doc /* B1-04 キャビンベント隔離弁の不用意な開放（対応：FMX-PCS-06） */ }
        attribute b1_05 : Boolean { doc /* B1-05 キャビンベント弁の不用意な開放（対応：HC-06） */ }
        attribute b1_06 : Boolean { doc /* B1-06 WCS の便器の制御弁から真空ベントへの漏れ（対応：FMX-WCS-04） */ }
        attribute b1_07 : Boolean { doc /* B1-07 エアロックのハッチの漏れ（対応：FMX-ALS-01） */ }
        attribute b1_08 : Boolean { doc /* B1-08 N2 系統1の喪失（対応：FMX-PCS-03） */ }
        attribute b1_09 : Boolean { doc /* B1-09 N2 系統2の喪失（対応：FMX-PCS-03） */ }
        attribute b1_10 : Boolean { doc /* B1-10 8 psia 非常用レギュレータの故障 */ }
        attribute g1_6 : Boolean = b1_08 and b1_09 { doc /* G1-6 AND：N2 供給の両系統の喪失 */ }
        attribute g1_5 : Boolean = g1_6 or b1_10 { doc /* G1-5 OR：補給（8 psia の維持）の喪失 */ }
        attribute g1_4 : Boolean = b1_06 or b1_07 { doc /* G1-4 OR：乗員室の漏れ */ }
        attribute g1_3 : Boolean = g1_4 and g1_5 { doc /* G1-3 AND：漏れを補給で補えない */ }
        attribute g1_2 : Boolean = b1_04 and b1_05 { doc /* G1-2 AND：キャビンベント経路の開放（直列の2弁） */ }
        attribute g1_1 : Boolean = b1_02 and b1_03 { doc /* G1-1 AND：正圧逃し弁の開固着を隔離できない */ }
        attribute g1_0 : Boolean = b1_01 or g1_1 or g1_2 or g1_3 { doc /* G1-0 OR：乗員室の圧力の喪失（8 psia 未満） */ }
        attribute top : Boolean = g1_0 { doc /* 頂上事象：乗員室の圧力の喪失（8 psia 未満） */ }
    }
    part def FaultTreeX2 {
        doc /* FTX-2 CO2 除去の喪失（PPCO2 が 15 mmHg を超える） */
        attribute b2_01 : Boolean { doc /* B2-01 予備の LiOH キャニスタの枯渇（2日分の予備を下回る）（対応：HC-07） */ }
        attribute b2_02 : Boolean { doc /* B2-02 LiOH キャニスタの吸収の劣化・損傷（対応：CIL-ECLSS-019） */ }
        attribute b2_03 : Boolean { doc /* B2-03 PPCO2 センサの故障（PPCO2 の上昇に気づかない）（対応：CIL-ECLSS-024） */ }
        attribute b2_04 : Boolean { doc /* B2-04 就寝前・起床後の定時の交換をしない */ }
        attribute b2_05 : Boolean { doc /* B2-05 キャビンファン A の故障（対応：CIL-ECLSS-034） */ }
        attribute b2_06 : Boolean { doc /* B2-06 キャビンファン B の故障（対応：CIL-ECLSS-034） */ }
        attribute b2_07 : Boolean { doc /* B2-07 両ファン共通のフィルタの損傷（デブリが両ファンに届く）（対応：CIL-ECLSS-021） */ }
        attribute b2_08 : Boolean { doc /* B2-08 送風・還流ダクトの漏れ・閉塞（対応：CIL-ECLSS-035） */ }
        attribute g2_4 : Boolean = b2_05 and b2_06 { doc /* G2-4 AND：キャビンファン2台の喪失 */ }
        attribute g2_3 : Boolean = g2_4 or b2_07 or b2_08 { doc /* G2-3 OR：キャニスタへの空気流の喪失 */ }
        attribute g2_2 : Boolean = b2_03 and b2_04 { doc /* G2-2 AND：キャニスタの交換の遅れ */ }
        attribute g2_1 : Boolean = b2_01 or b2_02 or g2_2 { doc /* G2-1 OR：LiOH による吸収の喪失 */ }
        attribute g2_0 : Boolean = g2_1 or g2_3 { doc /* G2-0 OR：CO2 除去の喪失（PPCO2 が 15 mmHg を超える） */ }
        attribute top : Boolean = g2_0 { doc /* 頂上事象：CO2 除去の喪失（PPCO2 が 15 mmHg を超える） */ }
    }
}

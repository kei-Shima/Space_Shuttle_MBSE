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

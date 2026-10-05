// SysML v2 テキスト：構造（ブロック・ポート・インタフェース）
// SSD-BLK-SYS-001 構造定義書（ブロック・ポート・インタフェース） の表と同じデータ（Design/ の機能説明書の表題欄・IF の表）から生成（lib/build_docs_ad.py）。
package SSD_BLK_SYS_001 {
    doc /* SSD-BLK-SYS-001 構造定義書（ブロック・ポート・インタフェース）。機能説明書1件を part def 1つ、IF 1件をポート（端ごと）と interface／connection 1つで表す。 */
    private import ModelingMetadata::*;
    // ---- 流れる物（IF の種別）
    item def ElectricPower { doc /* IF の種別「電力（28 VDC）」：28 VDC electric power */ }
    item def DataCommand { doc /* IF の種別「データ・指令」：data and commands */ }
    item def Fluid { doc /* IF の種別「推進薬・流体」：propellant or other fluid */ }
    item def Heat { doc /* IF の種別「熱」：heat */ }
    item def HydraulicFluid { doc /* IF の種別「油圧」：hydraulic fluid */ }
    item def RfSignal { doc /* IF の種別「RF（無線）」：radio frequency signal */ }
    item def StructuralLoad { doc /* IF の種別「構造・荷重」：structural load */ }
    // ---- ポートとインタフェースの定義（送り側＝ポート、受け側＝~ポート、双方向＝Bi）
    port def PowerPort { out item electricPower : ElectricPower; }
    port def PowerBiPort { inout item electricPower : ElectricPower; }
    interface def PowerInterface { end supplier : PowerPort; end consumer : ~PowerPort; }
    interface def PowerBiInterface { end a : PowerBiPort; end b : PowerBiPort; }
    port def DataPort { out item dataCommand : DataCommand; }
    port def DataBiPort { inout item dataCommand : DataCommand; }
    interface def DataInterface { end supplier : DataPort; end consumer : ~DataPort; }
    interface def DataBiInterface { end a : DataBiPort; end b : DataBiPort; }
    port def FluidPort { out item fluid : Fluid; }
    port def FluidBiPort { inout item fluid : Fluid; }
    interface def FluidInterface { end supplier : FluidPort; end consumer : ~FluidPort; }
    interface def FluidBiInterface { end a : FluidBiPort; end b : FluidBiPort; }
    port def HeatPort { out item heat : Heat; }
    port def HeatBiPort { inout item heat : Heat; }
    interface def HeatInterface { end supplier : HeatPort; end consumer : ~HeatPort; }
    interface def HeatBiInterface { end a : HeatBiPort; end b : HeatBiPort; }
    port def HydraulicPort { out item hydraulicFluid : HydraulicFluid; }
    port def HydraulicBiPort { inout item hydraulicFluid : HydraulicFluid; }
    interface def HydraulicInterface { end supplier : HydraulicPort; end consumer : ~HydraulicPort; }
    interface def HydraulicBiInterface { end a : HydraulicBiPort; end b : HydraulicBiPort; }
    port def RfPort { out item rfSignal : RfSignal; }
    port def RfBiPort { inout item rfSignal : RfSignal; }
    interface def RfInterface { end supplier : RfPort; end consumer : ~RfPort; }
    interface def RfBiInterface { end a : RfBiPort; end b : RfBiPort; }
    port def LoadPort { out item structuralLoad : StructuralLoad; }
    port def LoadBiPort { inout item structuralLoad : StructuralLoad; }
    interface def LoadInterface { end supplier : LoadPort; end consumer : ~LoadPort; }
    interface def LoadBiInterface { end a : LoadBiPort; end b : LoadBiPort; }
    // ---- ブロック（上の階層から順に）
    part def MissionContext {
        doc /* 運用の文脈（図1）。宇宙輸送システムと、外部系・宇宙空間・航法の基準・ペイロードを含む最上位の文脈。図1 に当たる。 */
        part sts : SpaceTransportationSystem;
        part space : SpaceEnvironment;
        part navAids : NavigationAids;
        part payload : Payload;
        part ext : EXT;
        interface <'IF-SYS-04'> IF_SYS_04 : RfBiInterface connect sts.orb.p_IF_SYS_04 to ext.net.p_IF_SYS_04;
        interface <'IF-SYS-06'> IF_SYS_06 : DataBiInterface connect sts.orb.p_IF_SYS_06 to ext.lps.p_IF_SYS_06;
        interface <'IF-SYS-09'> IF_SYS_09 : FluidInterface connect ext.lps.p_IF_SYS_09 to sts.orb.p_IF_SYS_09;
        interface <'IF-SYS-10'> IF_SYS_10 : LoadBiInterface connect sts.srb.p_IF_SYS_10 to ext.lps.p_IF_SYS_10;
        interface <'IF-ORB-16'> IF_ORB_16 : RfBiInterface connect sts.orb.ct.p_IF_ORB_16 to ext.net.p_IF_ORB_16;
        interface <'IF-ORB-17'> IF_ORB_17 : DataBiInterface connect sts.orb.dps.p_IF_ORB_17 to ext.lps.p_IF_ORB_17;
        interface <'IF-ORB-29'> IF_ORB_29 : FluidInterface connect ext.lps.p_IF_ORB_29 to sts.orb.mps.p_IF_ORB_29;
        interface <'IF-ORB-30'> IF_ORB_30 : FluidInterface connect ext.lps.p_IF_ORB_30 to sts.orb.eps.p_IF_ORB_30;
        interface <'IF-ORB-31'> IF_ORB_31 : PowerInterface connect ext.lps.p_IF_ORB_31 to sts.orb.eps.p_IF_ORB_31;
        interface <'IF-ORB-32'> IF_ORB_32 : HeatInterface connect ext.lps.p_IF_ORB_32 to sts.orb.eclss.p_IF_ORB_32;
        interface <'IF-ORB-33'> IF_ORB_33 : FluidInterface connect ext.lps.p_IF_ORB_33 to sts.orb.str.p_IF_ORB_33;
        interface <'IF-ALS-02'> IF_ALS_02 : FluidInterface connect sts.orb.eclss.als.dep.p_IF_ALS_02 to space.p_IF_ALS_02;
        interface <'IF-APU-22'> IF_APU_22 : FluidInterface connect sts.orb.apu.trb.p_IF_APU_22 to space.p_IF_APU_22;
        interface <'IF-APU-23'> IF_APU_23 : FluidInterface connect sts.orb.apu.wsb.p_IF_APU_23 to space.p_IF_APU_23;
        interface <'IF-ARS-16'> IF_ARS_16 : FluidInterface connect sts.orb.eclss.ars.rcrs.p_IF_ARS_16 to space.p_IF_ARS_16;
        interface <'IF-CT-01'> IF_CT_01 : RfBiInterface connect sts.orb.ct.sbd.p_IF_CT_01 to ext.net.p_IF_CT_01;
        interface <'IF-CT-02'> IF_CT_02 : RfInterface connect sts.orb.ct.sbd.p_IF_CT_02 to ext.net.p_IF_CT_02;
        interface <'IF-CT-03'> IF_CT_03 : RfBiInterface connect sts.orb.ct.ku.p_IF_CT_03 to ext.net.p_IF_CT_03;
        interface <'IF-CT-04'> IF_CT_04 : RfBiInterface connect sts.orb.ct.uhf.p_IF_CT_04 to ext.net.p_IF_CT_04;
        interface <'IF-DPS-06'> IF_DPS_06 : DataBiInterface connect sts.orb.dps.asc.p_IF_DPS_06 to ext.lps.p_IF_DPS_06;
        interface <'IF-ECL-21'> IF_ECL_21 : HeatInterface connect sts.orb.eclss.atcs.p_IF_ECL_21 to space.p_IF_ECL_21;
        interface <'IF-ECL-22'> IF_ECL_22 : FluidInterface connect sts.orb.eclss.h2o.p_IF_ECL_22 to space.p_IF_ECL_22;
        interface <'IF-ECL-23'> IF_ECL_23 : FluidInterface connect sts.orb.eclss.wcs.p_IF_ECL_23 to space.p_IF_ECL_23;
        interface <'IF-ECL-30'> IF_ECL_30 : FluidInterface connect sts.orb.eclss.als.p_IF_ECL_30 to space.p_IF_ECL_30;
        interface <'IF-ECL-34'> IF_ECL_34 : HeatInterface connect ext.lps.p_IF_ECL_34 to sts.orb.eclss.atcs.p_IF_ECL_34;
        interface <'IF-EPS-01'> IF_EPS_01 : FluidInterface connect ext.lps.p_IF_EPS_01 to sts.orb.eps.prsd.p_IF_EPS_01;
        interface <'IF-EPS-02'> IF_EPS_02 : PowerInterface connect ext.lps.p_IF_EPS_02 to sts.orb.eps.dc.p_IF_EPS_02;
        interface <'IF-EPS-08'> IF_EPS_08 : FluidInterface connect sts.orb.eps.fcp.p_IF_EPS_08 to space.p_IF_EPS_08;
        interface <'IF-EPS-15'> IF_EPS_15 : PowerInterface connect sts.orb.eps.dc.p_IF_EPS_15 to payload.p_IF_EPS_15;
        interface <'IF-GNC-13'> IF_GNC_13 : RfInterface connect navAids.p_IF_GNC_13 to sts.orb.gnc.nas.p_IF_GNC_13;
        interface <'IF-H2O-10'> IF_H2O_10 : FluidInterface connect sts.orb.eclss.h2o.dmp.p_IF_H2O_10 to space.p_IF_H2O_10;
        interface <'IF-MPS-03'> IF_MPS_03 : FluidInterface connect ext.lps.p_IF_MPS_03 to sts.orb.mps.dmp.p_IF_MPS_03;
        interface <'IF-MPS-04'> IF_MPS_04 : FluidInterface connect ext.lps.p_IF_MPS_04 to sts.orb.mps.pms.p_IF_MPS_04;
        interface <'IF-MPS-21'> IF_MPS_21 : FluidInterface connect sts.orb.mps.dmp.p_IF_MPS_21 to space.p_IF_MPS_21;
        interface <'IF-PCS-08'> IF_PCS_08 : FluidBiInterface connect sts.orb.eclss.pcs.rlf.p_IF_PCS_08 to space.p_IF_PCS_08;
        interface <'IF-SRB-03'> IF_SRB_03 : LoadBiInterface connect sts.srb.hdp.p_IF_SRB_03 to ext.lps.p_IF_SRB_03;
        interface <'IF-TCS-06'> IF_TCS_06 : HeatInterface connect sts.orb.eclss.atcs.hx.p_IF_TCS_06 to payload.p_IF_TCS_06;
        interface <'IF-TCS-12'> IF_TCS_12 : HeatInterface connect sts.orb.eclss.atcs.rad.p_IF_TCS_12 to space.p_IF_TCS_12;
        interface <'IF-TCS-13'> IF_TCS_13 : FluidInterface connect sts.orb.eclss.atcs.fes.p_IF_TCS_13 to space.p_IF_TCS_13;
        interface <'IF-TCS-14'> IF_TCS_14 : FluidInterface connect sts.orb.eclss.atcs.nh3.p_IF_TCS_14 to space.p_IF_TCS_14;
        interface <'IF-TCS-15'> IF_TCS_15 : HeatInterface connect ext.lps.p_IF_TCS_15 to sts.orb.eclss.atcs.gse.p_IF_TCS_15;
        interface <'IF-TCS-17'> IF_TCS_17 : FluidInterface connect ext.lps.p_IF_TCS_17 to sts.orb.tcs.ptc.p_IF_TCS_17;
        interface <'IF-WCS-09'> IF_WCS_09 : FluidInterface connect sts.orb.eclss.wcs.vac.p_IF_WCS_09 to space.p_IF_WCS_09;
    }
    part def <'SSD-FD-EXT-001'> EXT {
        doc /* 外部系（追跡・通信網／ミッション管制／打上げ処理）（SSD-FD-EXT-001） */
        part net : TrackingNetwork;
        part mcc : MissionControlCenter;
        part lps : LaunchProcessing;
        interface <'IF-SYS-05'> IF_SYS_05 : DataBiInterface connect net.p_IF_SYS_05 to mcc.p_IF_SYS_05;
    }
    part def LaunchProcessing {
        doc /* 打上げ処理システム・地上支援設備（KSC）。外部系のうち、打上げ処理システム（LPS）と地上支援設備（GSE・地上冷却・パージ設備・移動式発射台）。 */
        port p_IF_SYS_06 : DataBiPort;
        port p_IF_SYS_09 : FluidPort;
        port p_IF_SYS_10 : LoadBiPort;
        port p_IF_ORB_17 : DataBiPort;
        port p_IF_ORB_29 : FluidPort;
        port p_IF_ORB_30 : FluidPort;
        port p_IF_ORB_31 : PowerPort;
        port p_IF_ORB_32 : HeatPort;
        port p_IF_ORB_33 : FluidPort;
        port p_IF_DPS_06 : DataBiPort;
        port p_IF_ECL_34 : HeatPort;
        port p_IF_EPS_01 : FluidPort;
        port p_IF_EPS_02 : PowerPort;
        port p_IF_MPS_03 : FluidPort;
        port p_IF_MPS_04 : FluidPort;
        port p_IF_SRB_03 : LoadBiPort;
        port p_IF_TCS_15 : HeatPort;
        port p_IF_TCS_17 : FluidPort;
    }
    part def MissionControlCenter {
        doc /* ミッション管制センター（JSC）。外部系のうち、ミッション管制センター。 */
        port p_IF_SYS_05 : DataBiPort;
    }
    part def TrackingNetwork {
        doc /* 追跡・通信網（TDRS・STDN）。外部系のうち、TDRS と地上局網（STDN）・ホワイトサンズ地上局。 */
        port p_IF_SYS_04 : RfBiPort;
        port p_IF_SYS_05 : DataBiPort;
        port p_IF_ORB_16 : RfBiPort;
        port p_IF_CT_01 : RfBiPort;
        port p_IF_CT_02 : ~RfPort;
        port p_IF_CT_03 : RfBiPort;
        port p_IF_CT_04 : RfBiPort;
    }
    part def NavigationAids {
        doc /* 地上航法局・GPS 衛星。TACAN・MSBLS などの地上航法局と GPS 衛星。 */
        port p_IF_GNC_13 : RfPort;
    }
    part def Payload {
        doc /* ペイロード。ペイロードベイに搭載する荷物（機体の外の要素として扱う）。 */
        port p_IF_EPS_15 : ~PowerPort;
        port p_IF_TCS_06 : ~HeatPort;
    }
    part def SpaceEnvironment {
        doc /* 宇宙空間（船外）。船外の真空。排気・ベント・放熱の相手。 */
        port p_IF_ALS_02 : ~FluidPort;
        port p_IF_APU_22 : ~FluidPort;
        port p_IF_APU_23 : ~FluidPort;
        port p_IF_ARS_16 : ~FluidPort;
        port p_IF_ECL_21 : ~HeatPort;
        port p_IF_ECL_22 : ~FluidPort;
        port p_IF_ECL_23 : ~FluidPort;
        port p_IF_ECL_30 : ~FluidPort;
        port p_IF_EPS_08 : ~FluidPort;
        port p_IF_H2O_10 : ~FluidPort;
        port p_IF_MPS_21 : ~FluidPort;
        port p_IF_PCS_08 : FluidBiPort;
        port p_IF_TCS_12 : ~HeatPort;
        port p_IF_TCS_13 : ~FluidPort;
        port p_IF_TCS_14 : ~FluidPort;
        port p_IF_WCS_09 : ~FluidPort;
    }
    part def SpaceTransportationSystem {
        doc /* 宇宙輸送システム（オービタ・ET・SRB）。打ち上げる機体（オービタ・外部タンク・固体ロケットブースタ2本）。 */
        part et : ET;
        part orb : ORB;
        part srb : SRB[2];
        interface <'IF-SYS-01'> IF_SYS_01 : FluidInterface connect et.p_IF_SYS_01 to orb.p_IF_SYS_01;
        interface <'IF-SYS-02'> IF_SYS_02 : LoadBiInterface connect srb.p_IF_SYS_02 to et.p_IF_SYS_02;
        interface <'IF-SYS-03'> IF_SYS_03 : DataInterface connect orb.p_IF_SYS_03 to srb.p_IF_SYS_03;
        interface <'IF-SYS-07'> IF_SYS_07 : LoadBiInterface connect orb.p_IF_SYS_07 to et.p_IF_SYS_07;
        interface <'IF-SYS-08'> IF_SYS_08 : DataInterface connect orb.p_IF_SYS_08 to et.p_IF_SYS_08;
        interface <'IF-ORB-15'> IF_ORB_15 : FluidInterface connect et.p_IF_ORB_15 to orb.mps.p_IF_ORB_15;
        interface <'IF-ORB-18'> IF_ORB_18 : DataInterface connect orb.dps.p_IF_ORB_18 to srb.p_IF_ORB_18;
        interface <'IF-ORB-22'> IF_ORB_22 : DataInterface connect orb.gnc.p_IF_ORB_22 to srb.p_IF_ORB_22;
        interface <'IF-ORB-25'> IF_ORB_25 : DataInterface connect orb.dps.p_IF_ORB_25 to et.p_IF_ORB_25;
        interface <'IF-ORB-26'> IF_ORB_26 : DataInterface connect orb.dps.p_IF_ORB_26 to srb.p_IF_ORB_26;
        interface <'IF-ORB-27'> IF_ORB_27 : PowerInterface connect orb.eps.p_IF_ORB_27 to et.p_IF_ORB_27;
        interface <'IF-ORB-28'> IF_ORB_28 : PowerInterface connect orb.eps.p_IF_ORB_28 to srb.p_IF_ORB_28;
        interface <'IF-ORB-36'> IF_ORB_36 : LoadBiInterface connect orb.str.p_IF_ORB_36 to et.p_IF_ORB_36;
        interface <'IF-DPS-07'> IF_DPS_07 : DataInterface connect orb.dps.asc.p_IF_DPS_07 to srb.avn.p_IF_DPS_07;
        interface <'IF-DPS-08'> IF_DPS_08 : DataInterface connect orb.dps.asc.p_IF_DPS_08 to srb.hdp.p_IF_DPS_08;
        interface <'IF-DPS-09'> IF_DPS_09 : DataInterface connect orb.dps.asc.p_IF_DPS_09 to et.sep.p_IF_DPS_09;
        connection <'IF-EPS-11'> IF_EPS_11 connect (orb.eps.dc.p_IF_EPS_11, et.umb.p_IF_EPS_11, srb.avn.p_IF_EPS_11);
        interface <'IF-GNC-18'> IF_GNC_18 : DataInterface connect orb.gnc.act.p_IF_GNC_18 to srb.tvc.p_IF_GNC_18;
        interface <'IF-GNC-19'> IF_GNC_19 : DataInterface connect srb.avn.p_IF_GNC_19 to orb.gnc.fcs.p_IF_GNC_19;
        interface <'IF-MPS-01'> IF_MPS_01 : FluidBiInterface connect orb.mps.pms.p_IF_MPS_01 to et.umb.p_IF_MPS_01;
        interface <'IF-MPS-02'> IF_MPS_02 : FluidInterface connect orb.mps.pms.p_IF_MPS_02 to et.umb.p_IF_MPS_02;
        interface <'IF-SRB-01'> IF_SRB_01 : LoadBiInterface connect srb.att.p_IF_SRB_01 to et.itk.p_IF_SRB_01;
        interface <'IF-SRB-02'> IF_SRB_02 : LoadBiInterface connect srb.att.p_IF_SRB_02 to et.lh2.p_IF_SRB_02;
        interface <'IF-STR-01'> IF_STR_01 : LoadBiInterface connect orb.str.fwd.p_IF_STR_01 to et.lh2.p_IF_STR_01;
        interface <'IF-STR-02'> IF_STR_02 : LoadBiInterface connect orb.str.aft.p_IF_STR_02 to et.lh2.p_IF_STR_02;
    }
    part def <'SSD-FD-ET-001'> ET {
        doc /* 外部タンク（ET）（SSD-FD-ET-001） */
        part itk : ET_ITK;
        part lh2 : ET_LH2;
        part lox : ET_LOX;
        part sep : ET_SEP;
        part tps : ET_TPS;
        part umb : ET_UMB;
        port p_IF_SYS_01 : FluidPort;
        port p_IF_SYS_02 : LoadBiPort;
        port p_IF_SYS_07 : LoadBiPort;
        port p_IF_SYS_08 : ~DataPort;
        port p_IF_ORB_15 : FluidPort;
        port p_IF_ORB_25 : ~DataPort;
        port p_IF_ORB_27 : ~PowerPort;
        port p_IF_ORB_36 : LoadBiPort;
        interface <'IF-ET-01'> IF_ET_01 : FluidInterface connect lox.p_IF_ET_01 to umb.p_IF_ET_01;
        interface <'IF-ET-02'> IF_ET_02 : FluidInterface connect lh2.p_IF_ET_02 to umb.p_IF_ET_02;
        interface <'IF-ET-03'> IF_ET_03 : LoadBiInterface connect itk.p_IF_ET_03 to lox.p_IF_ET_03;
        interface <'IF-ET-04'> IF_ET_04 : LoadBiInterface connect itk.p_IF_ET_04 to lh2.p_IF_ET_04;
        interface <'IF-ET-05'> IF_ET_05 : HeatInterface connect tps.p_IF_ET_05 to lh2.p_IF_ET_05;
        interface <'IF-ET-06'> IF_ET_06 : LoadInterface connect sep.p_IF_ET_06 to umb.p_IF_ET_06;
        interface <'IF-ET-07'> IF_ET_07 : FluidInterface connect sep.p_IF_ET_07 to lox.p_IF_ET_07;
    }
    part def <'SSD-FD-ET-ITK-001'> ET_ITK {
        doc /* インタタンク（ITK）（SSD-FD-ET-ITK-001） */
        port p_IF_ET_03 : LoadBiPort;
        port p_IF_ET_04 : LoadBiPort;
        port p_IF_SRB_01 : LoadBiPort;
    }
    part def <'SSD-FD-ET-LH2-001'> ET_LH2 {
        doc /* LH2タンク（LH2）（SSD-FD-ET-LH2-001） */
        port p_IF_ET_02 : FluidPort;
        port p_IF_ET_04 : LoadBiPort;
        port p_IF_ET_05 : ~HeatPort;
        port p_IF_SRB_02 : LoadBiPort;
        port p_IF_STR_01 : LoadBiPort;
        port p_IF_STR_02 : LoadBiPort;
    }
    part def <'SSD-FD-ET-LOX-001'> ET_LOX {
        doc /* LO2タンク（LOX）（SSD-FD-ET-LOX-001） */
        port p_IF_ET_01 : FluidPort;
        port p_IF_ET_03 : LoadBiPort;
        port p_IF_ET_07 : ~FluidPort;
    }
    part def <'SSD-FD-ET-SEP-001'> ET_SEP {
        doc /* 分離・投棄・飛行安全（SEP）（SSD-FD-ET-SEP-001） */
        port p_IF_DPS_09 : ~DataPort;
        port p_IF_ET_06 : LoadPort;
        port p_IF_ET_07 : FluidPort;
    }
    part def <'SSD-FD-ET-TPS-001'> ET_TPS {
        doc /* ET熱防護（TPS）（SSD-FD-ET-TPS-001） */
        port p_IF_ET_05 : HeatPort;
    }
    part def <'SSD-FD-ET-UMB-001'> ET_UMB {
        doc /* アンビリカル・弁・センサ（UMB）（SSD-FD-ET-UMB-001） */
        port p_IF_EPS_11 : ~PowerPort;
        port p_IF_ET_01 : ~FluidPort;
        port p_IF_ET_02 : ~FluidPort;
        port p_IF_ET_06 : ~LoadPort;
        port p_IF_MPS_01 : FluidBiPort;
        port p_IF_MPS_02 : ~FluidPort;
    }
    part def <'SSD-FD-ORB-001'> ORB {
        doc /* オービタ（OV）（SSD-FD-ORB-001） */
        part apu : APU;
        part crew : CREW;
        part ct : CT;
        part cw : CW;
        part dps : DPS;
        part eclss : ECLSS;
        part eps : EPS;
        part eva : EVA;
        part gnc : GNC;
        part mech : MECH;
        part mps : MPS;
        part oms : OMS;
        part pls : PLS;
        part rcs : RCS;
        part str : STR;
        part tcs : TCS;
        part tps : TPS;
        port p_IF_SYS_01 : ~FluidPort;
        port p_IF_SYS_03 : DataPort;
        port p_IF_SYS_04 : RfBiPort;
        port p_IF_SYS_06 : DataBiPort;
        port p_IF_SYS_07 : LoadBiPort;
        port p_IF_SYS_08 : DataPort;
        port p_IF_SYS_09 : ~FluidPort;
        port p_IF_EPS_12 : ~PowerPort;
        interface <'IF-ORB-01'> IF_ORB_01 : DataBiInterface connect ct.p_IF_ORB_01 to dps.p_IF_ORB_01;
        interface <'IF-ORB-02'> IF_ORB_02 : DataBiInterface connect dps.p_IF_ORB_02 to gnc.p_IF_ORB_02;
        interface <'IF-ORB-03'> IF_ORB_03 : DataInterface connect gnc.p_IF_ORB_03 to rcs.p_IF_ORB_03;
        interface <'IF-ORB-04'> IF_ORB_04 : DataInterface connect gnc.p_IF_ORB_04 to oms.p_IF_ORB_04;
        interface <'IF-ORB-05'> IF_ORB_05 : FluidInterface connect oms.p_IF_ORB_05 to rcs.p_IF_ORB_05;
        interface <'IF-ORB-06'> IF_ORB_06 : DataInterface connect dps.p_IF_ORB_06 to mps.p_IF_ORB_06;
        interface <'IF-ORB-07'> IF_ORB_07 : HydraulicInterface connect apu.p_IF_ORB_07 to mps.p_IF_ORB_07;
        interface <'IF-ORB-08'> IF_ORB_08 : HydraulicInterface connect apu.p_IF_ORB_08 to gnc.p_IF_ORB_08;
        interface <'IF-ORB-09'> IF_ORB_09 : FluidInterface connect eps.p_IF_ORB_09 to eclss.p_IF_ORB_09;
        interface <'IF-ORB-10'> IF_ORB_10 : FluidInterface connect eps.p_IF_ORB_10 to eclss.p_IF_ORB_10;
        interface <'IF-ORB-11'> IF_ORB_11 : HeatInterface connect eps.p_IF_ORB_11 to eclss.p_IF_ORB_11;
        interface <'IF-ORB-12'> IF_ORB_12 : HeatInterface connect eclss.p_IF_ORB_12 to apu.p_IF_ORB_12;
        interface <'IF-ORB-13'> IF_ORB_13 : HeatInterface connect eclss.p_IF_ORB_13 to dps.p_IF_ORB_13;
        connection <'IF-ORB-14'> IF_ORB_14 connect (eps.p_IF_ORB_14, apu.p_IF_ORB_14, ct.p_IF_ORB_14, cw.p_IF_ORB_14, dps.p_IF_ORB_14, eclss.p_IF_ORB_14, gnc.p_IF_ORB_14, mech.p_IF_ORB_14, mps.p_IF_ORB_14, oms.p_IF_ORB_14, pls.p_IF_ORB_14, rcs.p_IF_ORB_14);
        interface <'IF-ORB-19'> IF_ORB_19 : DataBiInterface connect eclss.p_IF_ORB_19 to dps.p_IF_ORB_19;
        interface <'IF-ORB-20'> IF_ORB_20 : DataBiInterface connect eps.p_IF_ORB_20 to dps.p_IF_ORB_20;
        interface <'IF-ORB-21'> IF_ORB_21 : DataInterface connect gnc.p_IF_ORB_21 to mps.p_IF_ORB_21;
        interface <'IF-ORB-23'> IF_ORB_23 : DataBiInterface connect apu.p_IF_ORB_23 to dps.p_IF_ORB_23;
        interface <'IF-ORB-24'> IF_ORB_24 : DataInterface connect ct.p_IF_ORB_24 to gnc.p_IF_ORB_24;
        interface <'IF-ORB-34'> IF_ORB_34 : HeatInterface connect eclss.p_IF_ORB_34 to gnc.p_IF_ORB_34;
        interface <'IF-ORB-35'> IF_ORB_35 : HeatInterface connect eclss.p_IF_ORB_35 to eps.p_IF_ORB_35;
        interface <'IF-ORB-37'> IF_ORB_37 : HeatInterface connect tps.p_IF_ORB_37 to str.p_IF_ORB_37;
        interface <'IF-ORB-38'> IF_ORB_38 : LoadBiInterface connect mech.p_IF_ORB_38 to str.p_IF_ORB_38;
        interface <'IF-ORB-39'> IF_ORB_39 : HydraulicInterface connect apu.p_IF_ORB_39 to mech.p_IF_ORB_39;
        interface <'IF-ORB-40'> IF_ORB_40 : DataInterface connect dps.p_IF_ORB_40 to mech.p_IF_ORB_40;
        connection <'IF-ORB-41'> IF_ORB_41 connect (cw.p_IF_ORB_41, apu.p_IF_ORB_41, dps.p_IF_ORB_41, eclss.p_IF_ORB_41, eps.p_IF_ORB_41, gnc.p_IF_ORB_41, mps.p_IF_ORB_41, oms.p_IF_ORB_41, rcs.p_IF_ORB_41);
        interface <'IF-ORB-42'> IF_ORB_42 : DataInterface connect dps.p_IF_ORB_42 to cw.p_IF_ORB_42;
        interface <'IF-ORB-43'> IF_ORB_43 : DataInterface connect cw.p_IF_ORB_43 to ct.p_IF_ORB_43;
        interface <'IF-ORB-44'> IF_ORB_44 : FluidInterface connect eclss.p_IF_ORB_44 to crew.p_IF_ORB_44;
        interface <'IF-ORB-45'> IF_ORB_45 : FluidBiInterface connect eclss.p_IF_ORB_45 to eva.p_IF_ORB_45;
        interface <'IF-ORB-46'> IF_ORB_46 : RfBiInterface connect ct.p_IF_ORB_46 to eva.p_IF_ORB_46;
        interface <'IF-ORB-47'> IF_ORB_47 : LoadBiInterface connect pls.p_IF_ORB_47 to str.p_IF_ORB_47;
        interface <'IF-ORB-48'> IF_ORB_48 : DataBiInterface connect pls.p_IF_ORB_48 to dps.p_IF_ORB_48;
        interface <'IF-ORB-49'> IF_ORB_49 : DataBiInterface connect pls.p_IF_ORB_49 to ct.p_IF_ORB_49;
        interface <'IF-ALS-05'> IF_ALS_05 : PowerInterface connect eps.p_IF_ALS_05 to eclss.als.scu.p_IF_ALS_05;
        interface <'IF-ALS-06'> IF_ALS_06 : FluidBiInterface connect eclss.als.scu.p_IF_ALS_06 to eva.mnt.p_IF_ALS_06;
        interface <'IF-ALS-07'> IF_ALS_07 : FluidBiInterface connect eclss.als.lcg.p_IF_ALS_07 to eva.chk.p_IF_ALS_07;
        interface <'IF-ALS-08'> IF_ALS_08 : PowerInterface connect eps.p_IF_ALS_08 to eclss.als.htr.p_IF_ALS_08;
        interface <'IF-ALS-09'> IF_ALS_09 : PowerInterface connect eps.p_IF_ALS_09 to eclss.als.vnt.p_IF_ALS_09;
        interface <'IF-ALS-10'> IF_ALS_10 : DataInterface connect eclss.als.mon.p_IF_ALS_10 to dps.p_IF_ALS_10;
        interface <'IF-APU-09'> IF_APU_09 : HydraulicInterface connect apu.hyd.p_IF_APU_09 to mps.tvc.p_IF_APU_09;
        interface <'IF-APU-10'> IF_APU_10 : HydraulicInterface connect apu.hyd.p_IF_APU_10 to gnc.act.p_IF_APU_10;
        interface <'IF-APU-11'> IF_APU_11 : HydraulicInterface connect apu.hyd.p_IF_APU_11 to mech.dec.p_IF_APU_11;
        interface <'IF-APU-12'> IF_APU_12 : DataInterface connect apu.ctl.p_IF_APU_12 to dps.fsw.p_IF_APU_12;
        interface <'IF-APU-13'> IF_APU_13 : DataBiInterface connect apu.cir.p_IF_APU_13 to dps.fsw.p_IF_APU_13;
        interface <'IF-APU-14'> IF_APU_14 : DataInterface connect apu.wsb.p_IF_APU_14 to dps.fsw.p_IF_APU_14;
        interface <'IF-APU-15'> IF_APU_15 : DataInterface connect apu.ctl.p_IF_APU_15 to cw.pri.p_IF_APU_15;
        interface <'IF-APU-16'> IF_APU_16 : DataInterface connect apu.hyd.p_IF_APU_16 to cw.pri.p_IF_APU_16;
        interface <'IF-APU-17'> IF_APU_17 : PowerInterface connect eps.dc.p_IF_APU_17 to apu.ctl.p_IF_APU_17;
        interface <'IF-APU-18'> IF_APU_18 : PowerInterface connect eps.dc.p_IF_APU_18 to apu.cir.p_IF_APU_18;
        interface <'IF-APU-25'> IF_APU_25 : DataInterface connect dps.bus.p_IF_APU_25 to apu.hyd.p_IF_APU_25;
        interface <'IF-ARS-17'> IF_ARS_17 : HeatInterface connect eclss.ars.avb.p_IF_ARS_17 to dps.p_IF_ARS_17;
        interface <'IF-ARS-18'> IF_ARS_18 : HeatInterface connect eclss.ars.avb.p_IF_ARS_18 to eps.p_IF_ARS_18;
        interface <'IF-ARS-19'> IF_ARS_19 : HeatInterface connect eclss.ars.imu.p_IF_ARS_19 to gnc.p_IF_ARS_19;
        interface <'IF-ARS-20'> IF_ARS_20 : HeatInterface connect eclss.ars.wcl.p_IF_ARS_20 to dps.p_IF_ARS_20;
        interface <'IF-ARS-21'> IF_ARS_21 : HeatInterface connect eclss.ars.wcl.p_IF_ARS_21 to eps.p_IF_ARS_21;
        interface <'IF-ARS-25'> IF_ARS_25 : DataInterface connect eclss.ars.cac.p_IF_ARS_25 to dps.p_IF_ARS_25;
        interface <'IF-ARS-26'> IF_ARS_26 : DataInterface connect eclss.ars.rcrs.p_IF_ARS_26 to dps.p_IF_ARS_26;
        interface <'IF-ARS-27'> IF_ARS_27 : DataInterface connect eclss.ars.thc.p_IF_ARS_27 to dps.p_IF_ARS_27;
        interface <'IF-ARS-28'> IF_ARS_28 : DataInterface connect eclss.ars.avb.p_IF_ARS_28 to dps.p_IF_ARS_28;
        interface <'IF-ARS-29'> IF_ARS_29 : DataInterface connect eclss.ars.imu.p_IF_ARS_29 to dps.p_IF_ARS_29;
        interface <'IF-ARS-30'> IF_ARS_30 : DataInterface connect dps.p_IF_ARS_30 to eclss.ars.wcl.p_IF_ARS_30;
        interface <'IF-ARS-31'> IF_ARS_31 : DataInterface connect eclss.ars.wcl.p_IF_ARS_31 to dps.p_IF_ARS_31;
        interface <'IF-ARS-32'> IF_ARS_32 : PowerInterface connect eps.p_IF_ARS_32 to eclss.ars.cac.p_IF_ARS_32;
        interface <'IF-ARS-33'> IF_ARS_33 : PowerInterface connect eps.p_IF_ARS_33 to eclss.ars.rcrs.p_IF_ARS_33;
        interface <'IF-ARS-34'> IF_ARS_34 : PowerInterface connect eps.p_IF_ARS_34 to eclss.ars.avb.p_IF_ARS_34;
        interface <'IF-ARS-35'> IF_ARS_35 : PowerInterface connect eps.p_IF_ARS_35 to eclss.ars.imu.p_IF_ARS_35;
        interface <'IF-ARS-36'> IF_ARS_36 : PowerInterface connect eps.p_IF_ARS_36 to eclss.ars.wcl.p_IF_ARS_36;
        interface <'IF-ARS-37'> IF_ARS_37 : DataInterface connect eclss.ars.co2.p_IF_ARS_37 to dps.p_IF_ARS_37;
        interface <'IF-ARS-38'> IF_ARS_38 : PowerInterface connect eps.p_IF_ARS_38 to eclss.ars.co2.p_IF_ARS_38;
        interface <'IF-ARS-39'> IF_ARS_39 : HeatInterface connect eclss.ars.cac.p_IF_ARS_39 to dps.p_IF_ARS_39;
        interface <'IF-ARS-40'> IF_ARS_40 : PowerInterface connect eps.p_IF_ARS_40 to eclss.ars.thc.p_IF_ARS_40;
        interface <'IF-ARS-41'> IF_ARS_41 : HeatInterface connect eclss.ars.avb.p_IF_ARS_41 to gnc.p_IF_ARS_41;
        interface <'IF-AVB-02'> IF_AVB_02 : HeatInterface connect eclss.ars.avb.cir.p_IF_AVB_02 to dps.p_IF_AVB_02;
        interface <'IF-AVB-03'> IF_AVB_03 : HeatInterface connect eclss.ars.avb.cir.p_IF_AVB_03 to eps.ac.p_IF_AVB_03;
        interface <'IF-AVB-04'> IF_AVB_04 : HeatInterface connect eclss.ars.avb.cir.p_IF_AVB_04 to gnc.p_IF_AVB_04;
        interface <'IF-AVB-07'> IF_AVB_07 : PowerInterface connect eps.ac.p_IF_AVB_07 to eclss.ars.avb.fan.p_IF_AVB_07;
        interface <'IF-AVB-13'> IF_AVB_13 : DataInterface connect eclss.ars.avb.mon.p_IF_AVB_13 to dps.p_IF_AVB_13;
        interface <'IF-AVB-14'> IF_AVB_14 : DataInterface connect eclss.ars.avb.mon.p_IF_AVB_14 to dps.p_IF_AVB_14;
        interface <'IF-AVB-15'> IF_AVB_15 : PowerInterface connect eps.ac.p_IF_AVB_15 to eclss.ars.avb.mon.p_IF_AVB_15;
        interface <'IF-CAC-05'> IF_CAC_05 : HeatInterface connect eclss.ars.cac.rtn.p_IF_CAC_05 to dps.p_IF_CAC_05;
        interface <'IF-CAC-09'> IF_CAC_09 : PowerInterface connect eps.p_IF_CAC_09 to eclss.ars.cac.fan.p_IF_CAC_09;
        interface <'IF-CAC-12'> IF_CAC_12 : DataInterface connect eclss.ars.cac.mon.p_IF_CAC_12 to dps.p_IF_CAC_12;
        interface <'IF-CO2-06'> IF_CO2_06 : DataInterface connect eclss.ars.co2.mon.p_IF_CO2_06 to dps.p_IF_CO2_06;
        interface <'IF-CO2-07'> IF_CO2_07 : PowerInterface connect eps.p_IF_CO2_07 to eclss.ars.co2.mon.p_IF_CO2_07;
        interface <'IF-CREW-01'> IF_CREW_01 : FluidInterface connect eclss.h2o.gal.p_IF_CREW_01 to crew.hab.p_IF_CREW_01;
        interface <'IF-CREW-02'> IF_CREW_02 : FluidInterface connect eclss.h2o.gal.p_IF_CREW_02 to crew.med.p_IF_CREW_02;
        interface <'IF-CREW-03'> IF_CREW_03 : FluidInterface connect eclss.pcs.o2s.p_IF_CREW_03 to crew.esc.p_IF_CREW_03;
        interface <'IF-CREW-04'> IF_CREW_04 : FluidInterface connect eclss.pcs.o2s.p_IF_CREW_04 to crew.med.p_IF_CREW_04;
        interface <'IF-CREW-05'> IF_CREW_05 : DataInterface connect crew.med.p_IF_CREW_05 to ct.inst.p_IF_CREW_05;
        interface <'IF-CREW-06'> IF_CREW_06 : PowerInterface connect eps.dc.p_IF_CREW_06 to crew.ltg.p_IF_CREW_06;
        interface <'IF-CREW-07'> IF_CREW_07 : LoadInterface connect crew.esc.p_IF_CREW_07 to str.crm.p_IF_CREW_07;
        interface <'IF-CT-05'> IF_CT_05 : DataInterface connect ct.sbd.p_IF_CT_05 to dps.bus.p_IF_CT_05;
        interface <'IF-CT-06'> IF_CT_06 : DataBiInterface connect ct.inst.p_IF_CT_06 to dps.bus.p_IF_CT_06;
        interface <'IF-CT-07'> IF_CT_07 : DataInterface connect dps.bus.p_IF_CT_07 to ct.ops.p_IF_CT_07;
        interface <'IF-CT-08'> IF_CT_08 : DataInterface connect ct.ku.p_IF_CT_08 to gnc.gns.p_IF_CT_08;
        interface <'IF-CT-09'> IF_CT_09 : DataInterface connect cw.ann.p_IF_CT_09 to ct.aud.p_IF_CT_09;
        interface <'IF-CT-10'> IF_CT_10 : RfBiInterface connect ct.uhf.p_IF_CT_10 to eva.ops.p_IF_CT_10;
        interface <'IF-CT-11'> IF_CT_11 : DataBiInterface connect ct.cctv.p_IF_CT_11 to pls.arm.p_IF_CT_11;
        interface <'IF-CT-12'> IF_CT_12 : PowerInterface connect eps.dc.p_IF_CT_12 to ct.aud.p_IF_CT_12;
        interface <'IF-CT-13'> IF_CT_13 : PowerInterface connect eps.dc.p_IF_CT_13 to ct.cctv.p_IF_CT_13;
        interface <'IF-CT-21'> IF_CT_21 : DataInterface connect dps.asc.p_IF_CT_21 to ct.sbd.p_IF_CT_21;
        interface <'IF-CT-22'> IF_CT_22 : DataInterface connect dps.mtu.p_IF_CT_22 to ct.inst.p_IF_CT_22;
        interface <'IF-CT-23'> IF_CT_23 : DataBiInterface connect ct.sbd.p_IF_CT_23 to dps.fsw.p_IF_CT_23;
        interface <'IF-CT-24'> IF_CT_24 : DataInterface connect dps.fsw.p_IF_CT_24 to ct.ku.p_IF_CT_24;
        interface <'IF-CT-25'> IF_CT_25 : DataInterface connect dps.bus.p_IF_CT_25 to ct.sbd.p_IF_CT_25;
        interface <'IF-CW-01'> IF_CW_01 : PowerInterface connect eps.dc.p_IF_CW_01 to cw.pri.p_IF_CW_01;
        interface <'IF-CW-02'> IF_CW_02 : DataInterface connect eclss.p_IF_CW_02 to cw.pri.p_IF_CW_02;
        interface <'IF-CW-03'> IF_CW_03 : DataInterface connect eclss.p_IF_CW_03 to cw.ann.p_IF_CW_03;
        interface <'IF-DPS-02'> IF_DPS_02 : PowerInterface connect eps.p_IF_DPS_02 to dps.gpc.p_IF_DPS_02;
        interface <'IF-DPS-03'> IF_DPS_03 : DataBiInterface connect dps.bus.p_IF_DPS_03 to gnc.gns.p_IF_DPS_03;
        interface <'IF-DPS-04'> IF_DPS_04 : DataInterface connect gnc.ccd.p_IF_DPS_04 to dps.fsw.p_IF_DPS_04;
        interface <'IF-DPS-05'> IF_DPS_05 : DataBiInterface connect dps.asc.p_IF_DPS_05 to mps.ctl.p_IF_DPS_05;
        interface <'IF-DPS-10'> IF_DPS_10 : DataInterface connect dps.bus.p_IF_DPS_10 to mech.act.p_IF_DPS_10;
        interface <'IF-DPS-11'> IF_DPS_11 : DataInterface connect dps.bus.p_IF_DPS_11 to cw.pri.p_IF_DPS_11;
        interface <'IF-DPS-12'> IF_DPS_12 : DataInterface connect dps.fsw.p_IF_DPS_12 to cw.bkp.p_IF_DPS_12;
        interface <'IF-DPS-13'> IF_DPS_13 : DataBiInterface connect dps.fsw.p_IF_DPS_13 to pls.ctl.p_IF_DPS_13;
        interface <'IF-DPS-22'> IF_DPS_22 : DataInterface connect dps.bus.p_IF_DPS_22 to gnc.ccd.p_IF_DPS_22;
        interface <'IF-ECL-01'> IF_ECL_01 : FluidInterface connect eps.p_IF_ECL_01 to eclss.pcs.p_IF_ECL_01;
        interface <'IF-ECL-08'> IF_ECL_08 : HeatInterface connect eclss.ars.p_IF_ECL_08 to dps.gpc.p_IF_ECL_08;
        interface <'IF-ECL-09'> IF_ECL_09 : HeatInterface connect eps.p_IF_ECL_09 to eclss.atcs.p_IF_ECL_09;
        interface <'IF-ECL-10'> IF_ECL_10 : FluidInterface connect eps.p_IF_ECL_10 to eclss.h2o.p_IF_ECL_10;
        interface <'IF-ECL-11'> IF_ECL_11 : HeatBiInterface connect eclss.atcs.p_IF_ECL_11 to apu.p_IF_ECL_11;
        interface <'IF-ECL-16'> IF_ECL_16 : PowerInterface connect eps.p_IF_ECL_16 to eclss.als.p_IF_ECL_16;
        interface <'IF-ECL-18'> IF_ECL_18 : DataInterface connect eclss.fds.p_IF_ECL_18 to dps.meds.p_IF_ECL_18;
        interface <'IF-ECL-20'> IF_ECL_20 : FluidBiInterface connect eclss.als.p_IF_ECL_20 to eva.p_IF_ECL_20;
        interface <'IF-ECL-25'> IF_ECL_25 : HeatInterface connect eclss.atcs.p_IF_ECL_25 to dps.bus.p_IF_ECL_25;
        interface <'IF-ECL-28'> IF_ECL_28 : DataInterface connect dps.fsw.p_IF_ECL_28 to eclss.atcs.p_IF_ECL_28;
        interface <'IF-ECL-29'> IF_ECL_29 : DataBiInterface connect eclss.ars.p_IF_ECL_29 to dps.fsw.p_IF_ECL_29;
        interface <'IF-ECL-32'> IF_ECL_32 : HeatInterface connect eclss.ars.p_IF_ECL_32 to gnc.ins.p_IF_ECL_32;
        interface <'IF-ECL-33'> IF_ECL_33 : HeatInterface connect eclss.ars.p_IF_ECL_33 to eps.p_IF_ECL_33;
        interface <'IF-ECL-35'> IF_ECL_35 : DataInterface connect eclss.h2o.p_IF_ECL_35 to dps.meds.p_IF_ECL_35;
        interface <'IF-ECL-36'> IF_ECL_36 : DataInterface connect eclss.pcs.p_IF_ECL_36 to dps.p_IF_ECL_36;
        interface <'IF-ECL-37'> IF_ECL_37 : DataInterface connect eclss.wcs.p_IF_ECL_37 to dps.meds.p_IF_ECL_37;
        interface <'IF-ECL-38'> IF_ECL_38 : DataInterface connect eclss.als.p_IF_ECL_38 to dps.meds.p_IF_ECL_38;
        interface <'IF-ECL-39'> IF_ECL_39 : PowerInterface connect eps.p_IF_ECL_39 to eclss.ars.p_IF_ECL_39;
        interface <'IF-ECL-40'> IF_ECL_40 : PowerInterface connect eps.p_IF_ECL_40 to eclss.fds.p_IF_ECL_40;
        interface <'IF-ECL-41'> IF_ECL_41 : PowerInterface connect eps.p_IF_ECL_41 to eclss.h2o.p_IF_ECL_41;
        interface <'IF-ECL-42'> IF_ECL_42 : PowerInterface connect eps.p_IF_ECL_42 to eclss.pcs.p_IF_ECL_42;
        interface <'IF-ECL-43'> IF_ECL_43 : PowerInterface connect eps.p_IF_ECL_43 to eclss.wcs.p_IF_ECL_43;
        interface <'IF-EPS-04'> IF_EPS_04 : FluidInterface connect eps.prsd.p_IF_EPS_04 to eclss.pcs.o2s.p_IF_EPS_04;
        interface <'IF-EPS-06'> IF_EPS_06 : FluidInterface connect eps.fcp.p_IF_EPS_06 to eclss.h2o.fcw.p_IF_EPS_06;
        interface <'IF-EPS-07'> IF_EPS_07 : HeatInterface connect eps.fcp.p_IF_EPS_07 to eclss.atcs.hx.p_IF_EPS_07;
        interface <'IF-EPS-09'> IF_EPS_09 : DataBiInterface connect eps.fcp.p_IF_EPS_09 to dps.fsw.p_IF_EPS_09;
        interface <'IF-EPS-12'> IF_EPS_12 : PowerInterface connect eps.ac.p_IF_EPS_12 to p_IF_EPS_12;
        interface <'IF-EPS-14'> IF_EPS_14 : HeatInterface connect eclss.atcs.hx.p_IF_EPS_14 to eps.dc.p_IF_EPS_14;
        interface <'IF-EVA-04'> IF_EVA_04 : FluidBiInterface connect eva.dpr.p_IF_EVA_04 to eclss.als.p_IF_EVA_04;
        interface <'IF-EVA-10'> IF_EVA_10 : PowerInterface connect eps.dc.p_IF_EVA_10 to eva.mnt.p_IF_EVA_10;
        interface <'IF-EVA-11'> IF_EVA_11 : LoadInterface connect eva.emg.p_IF_EVA_11 to mech.plb.p_IF_EVA_11;
        interface <'IF-EVA-12'> IF_EVA_12 : LoadInterface connect eva.emg.p_IF_EVA_12 to pls.ops.p_IF_EVA_12;
        interface <'IF-EVA-14'> IF_EVA_14 : FluidInterface connect eclss.pcs.p_IF_EVA_14 to eva.ops.p_IF_EVA_14;
        interface <'IF-EVA-15'> IF_EVA_15 : DataInterface connect eva.ops.p_IF_EVA_15 to cw.ops.p_IF_EVA_15;
        interface <'IF-FDS-03'> IF_FDS_03 : DataInterface connect eclss.fds.det.p_IF_FDS_03 to dps.p_IF_FDS_03;
        interface <'IF-FDS-04'> IF_FDS_04 : PowerInterface connect eps.dc.p_IF_FDS_04 to eclss.fds.det.p_IF_FDS_04;
        interface <'IF-FDS-06'> IF_FDS_06 : DataInterface connect eclss.fds.alm.p_IF_FDS_06 to dps.p_IF_FDS_06;
        interface <'IF-FDS-09'> IF_FDS_09 : DataInterface connect eclss.fds.fix.p_IF_FDS_09 to dps.p_IF_FDS_09;
        interface <'IF-FDS-10'> IF_FDS_10 : PowerInterface connect eps.dc.p_IF_FDS_10 to eclss.fds.fix.p_IF_FDS_10;
        interface <'IF-GNC-11'> IF_GNC_11 : PowerInterface connect eps.p_IF_GNC_11 to gnc.ins.p_IF_GNC_11;
        interface <'IF-GNC-12'> IF_GNC_12 : PowerInterface connect eps.p_IF_GNC_12 to gnc.nas.p_IF_GNC_12;
        interface <'IF-GNC-14'> IF_GNC_14 : DataInterface connect gnc.fcs.p_IF_GNC_14 to rcs.rjd.p_IF_GNC_14;
        interface <'IF-GNC-15'> IF_GNC_15 : DataInterface connect gnc.fcs.p_IF_GNC_15 to oms.tvc.p_IF_GNC_15;
        interface <'IF-GNC-16'> IF_GNC_16 : DataInterface connect gnc.act.p_IF_GNC_16 to mps.tvc.p_IF_GNC_16;
        interface <'IF-GNC-17'> IF_GNC_17 : DataInterface connect gnc.gns.p_IF_GNC_17 to mps.ctl.p_IF_GNC_17;
        interface <'IF-GNC-20'> IF_GNC_20 : DataInterface connect gnc.act.p_IF_GNC_20 to cw.pri.p_IF_GNC_20;
        interface <'IF-H2O-05'> IF_H2O_05 : DataInterface connect eclss.h2o.spl.p_IF_H2O_05 to dps.p_IF_H2O_05;
        interface <'IF-H2O-06'> IF_H2O_06 : PowerInterface connect eps.dc.p_IF_H2O_06 to eclss.h2o.spl.p_IF_H2O_06;
        interface <'IF-H2O-09'> IF_H2O_09 : DataInterface connect eclss.h2o.wst.p_IF_H2O_09 to dps.p_IF_H2O_09;
        interface <'IF-H2O-11'> IF_H2O_11 : PowerInterface connect eps.dc.p_IF_H2O_11 to eclss.h2o.dmp.p_IF_H2O_11;
        interface <'IF-H2O-12'> IF_H2O_12 : DataInterface connect eclss.h2o.dmp.p_IF_H2O_12 to dps.p_IF_H2O_12;
        interface <'IF-IMU-02'> IF_IMU_02 : HeatInterface connect eclss.ars.imu.inl.p_IF_IMU_02 to gnc.p_IF_IMU_02;
        interface <'IF-IMU-06'> IF_IMU_06 : PowerInterface connect eps.p_IF_IMU_06 to eclss.ars.imu.fan.p_IF_IMU_06;
        interface <'IF-IMU-10'> IF_IMU_10 : DataInterface connect eclss.ars.imu.mon.p_IF_IMU_10 to dps.p_IF_IMU_10;
        interface <'IF-IMU-11'> IF_IMU_11 : PowerInterface connect eps.p_IF_IMU_11 to eclss.ars.imu.mon.p_IF_IMU_11;
        interface <'IF-MECH-01'> IF_MECH_01 : PowerInterface connect eps.dc.p_IF_MECH_01 to mech.act.p_IF_MECH_01;
        interface <'IF-MECH-02'> IF_MECH_02 : LoadBiInterface connect mech.plb.p_IF_MECH_02 to str.mid.p_IF_MECH_02;
        interface <'IF-MECH-03'> IF_MECH_03 : LoadBiInterface connect mech.ldg.p_IF_MECH_03 to str.wng.p_IF_MECH_03;
        interface <'IF-MECH-04'> IF_MECH_04 : LoadBiInterface connect mech.vnt.p_IF_MECH_04 to str.mid.p_IF_MECH_04;
        interface <'IF-MPS-05'> IF_MPS_05 : PowerInterface connect eps.p_IF_MPS_05 to mps.ctl.p_IF_MPS_05;
        interface <'IF-MPS-06'> IF_MPS_06 : PowerInterface connect eps.p_IF_MPS_06 to mps.he.p_IF_MPS_06;
        interface <'IF-MPS-07'> IF_MPS_07 : DataInterface connect mps.he.p_IF_MPS_07 to cw.pri.p_IF_MPS_07;
        interface <'IF-MPS-08'> IF_MPS_08 : DataInterface connect mps.pms.p_IF_MPS_08 to cw.pri.p_IF_MPS_08;
        interface <'IF-MPS-22'> IF_MPS_22 : LoadInterface connect mps.ssme.p_IF_MPS_22 to str.aft.p_IF_MPS_22;
        interface <'IF-OMS-11'> IF_OMS_11 : FluidInterface connect oms.xfd.p_IF_OMS_11 to rcs.prp.p_IF_OMS_11;
        interface <'IF-OMS-12'> IF_OMS_12 : PowerInterface connect eps.p_IF_OMS_12 to oms.psd.p_IF_OMS_12;
        interface <'IF-OMS-13'> IF_OMS_13 : PowerInterface connect eps.p_IF_OMS_13 to oms.tvc.p_IF_OMS_13;
        interface <'IF-OMS-14'> IF_OMS_14 : DataInterface connect oms.eng.p_IF_OMS_14 to cw.pri.p_IF_OMS_14;
        interface <'IF-OMS-15'> IF_OMS_15 : DataInterface connect oms.psd.p_IF_OMS_15 to cw.pri.p_IF_OMS_15;
        interface <'IF-OMS-16'> IF_OMS_16 : DataInterface connect oms.tvc.p_IF_OMS_16 to cw.pri.p_IF_OMS_16;
        interface <'IF-OMS-17'> IF_OMS_17 : DataInterface connect oms.eng.p_IF_OMS_17 to dps.p_IF_OMS_17;
        interface <'IF-OMS-18'> IF_OMS_18 : LoadInterface connect oms.tvc.p_IF_OMS_18 to str.aft.p_IF_OMS_18;
        interface <'IF-OMS-19'> IF_OMS_19 : HeatInterface connect tcs.ptc.p_IF_OMS_19 to oms.thm.p_IF_OMS_19;
        interface <'IF-PCS-14'> IF_PCS_14 : DataInterface connect eclss.pcs.mon.p_IF_PCS_14 to dps.p_IF_PCS_14;
        interface <'IF-PCS-18'> IF_PCS_18 : PowerInterface connect eps.p_IF_PCS_18 to eclss.pcs.mnf.p_IF_PCS_18;
        interface <'IF-PCS-19'> IF_PCS_19 : PowerInterface connect eps.p_IF_PCS_19 to eclss.pcs.o2s.p_IF_PCS_19;
        interface <'IF-PCS-20'> IF_PCS_20 : PowerInterface connect eps.p_IF_PCS_20 to eclss.pcs.n2s.p_IF_PCS_20;
        interface <'IF-PCS-21'> IF_PCS_21 : PowerInterface connect eps.p_IF_PCS_21 to eclss.pcs.rlf.p_IF_PCS_21;
        interface <'IF-PCS-22'> IF_PCS_22 : PowerInterface connect eps.p_IF_PCS_22 to eclss.pcs.mon.p_IF_PCS_22;
        interface <'IF-PLS-01'> IF_PLS_01 : PowerInterface connect eps.dc.p_IF_PLS_01 to pls.arm.p_IF_PLS_01;
        interface <'IF-PLS-02'> IF_PLS_02 : PowerInterface connect eps.dc.p_IF_PLS_02 to pls.ods.p_IF_PLS_02;
        interface <'IF-PLS-03'> IF_PLS_03 : LoadBiInterface connect pls.mpm.p_IF_PLS_03 to str.mid.p_IF_PLS_03;
        interface <'IF-PLS-04'> IF_PLS_04 : LoadBiInterface connect pls.prl.p_IF_PLS_04 to str.mid.p_IF_PLS_04;
        interface <'IF-PLS-05'> IF_PLS_05 : LoadBiInterface connect pls.ods.p_IF_PLS_05 to str.mid.p_IF_PLS_05;
        interface <'IF-RCRS-10'> IF_RCRS_10 : DataInterface connect eclss.ars.rcrs.mon.p_IF_RCRS_10 to dps.p_IF_RCRS_10;
        interface <'IF-RCRS-11'> IF_RCRS_11 : DataInterface connect eclss.ars.rcrs.ctl.p_IF_RCRS_11 to dps.p_IF_RCRS_11;
        interface <'IF-RCRS-12'> IF_RCRS_12 : PowerInterface connect eps.p_IF_RCRS_12 to eclss.ars.rcrs.ctl.p_IF_RCRS_12;
        interface <'IF-RCRS-13'> IF_RCRS_13 : PowerInterface connect eps.p_IF_RCRS_13 to eclss.ars.rcrs.mon.p_IF_RCRS_13;
        interface <'IF-RCS-09'> IF_RCS_09 : PowerInterface connect eps.p_IF_RCS_09 to rcs.prp.p_IF_RCS_09;
        interface <'IF-RCS-10'> IF_RCS_10 : PowerInterface connect eps.p_IF_RCS_10 to rcs.rjd.p_IF_RCS_10;
        interface <'IF-RCS-11'> IF_RCS_11 : PowerInterface connect eps.p_IF_RCS_11 to rcs.htr.p_IF_RCS_11;
        interface <'IF-RCS-12'> IF_RCS_12 : DataInterface connect rcs.prp.p_IF_RCS_12 to cw.pri.p_IF_RCS_12;
        interface <'IF-RCS-13'> IF_RCS_13 : DataInterface connect rcs.rm.p_IF_RCS_13 to cw.pri.p_IF_RCS_13;
        interface <'IF-RCS-14'> IF_RCS_14 : DataInterface connect rcs.hep.p_IF_RCS_14 to cw.pri.p_IF_RCS_14;
        interface <'IF-RCS-15'> IF_RCS_15 : DataInterface connect rcs.htr.p_IF_RCS_15 to cw.alt.p_IF_RCS_15;
        interface <'IF-RCS-20'> IF_RCS_20 : LoadInterface connect rcs.jet.p_IF_RCS_20 to str.aft.p_IF_RCS_20;
        interface <'IF-STR-03'> IF_STR_03 : HeatInterface connect tps.p_IF_STR_03 to str.mid.p_IF_STR_03;
        interface <'IF-TCS-02'> IF_TCS_02 : HeatInterface connect eps.p_IF_TCS_02 to eclss.atcs.hx.p_IF_TCS_02;
        interface <'IF-TCS-03'> IF_TCS_03 : HeatBiInterface connect eclss.atcs.hx.p_IF_TCS_03 to apu.cir.p_IF_TCS_03;
        interface <'IF-TCS-05'> IF_TCS_05 : HeatInterface connect eclss.atcs.hx.p_IF_TCS_05 to dps.p_IF_TCS_05;
        interface <'IF-TCS-18'> IF_TCS_18 : DataInterface connect dps.p_IF_TCS_18 to eclss.atcs.fes.p_IF_TCS_18;
        interface <'IF-TCS-19'> IF_TCS_19 : DataInterface connect dps.p_IF_TCS_19 to eclss.atcs.nh3.p_IF_TCS_19;
        interface <'IF-TCS-20'> IF_TCS_20 : PowerInterface connect eps.p_IF_TCS_20 to tcs.ptc.p_IF_TCS_20;
        interface <'IF-TCS-21'> IF_TCS_21 : DataInterface connect dps.p_IF_TCS_21 to eclss.atcs.fcl.p_IF_TCS_21;
        interface <'IF-THC-11'> IF_THC_11 : DataInterface connect eclss.ars.thc.mon.p_IF_THC_11 to dps.p_IF_THC_11;
        interface <'IF-THC-12'> IF_THC_12 : DataInterface connect eclss.ars.thc.mon.p_IF_THC_12 to dps.p_IF_THC_12;
        interface <'IF-THC-16'> IF_THC_16 : PowerInterface connect eps.p_IF_THC_16 to eclss.ars.thc.tcv.p_IF_THC_16;
        interface <'IF-THC-17'> IF_THC_17 : PowerInterface connect eps.p_IF_THC_17 to eclss.ars.thc.sep.p_IF_THC_17;
        interface <'IF-THC-18'> IF_THC_18 : PowerInterface connect eps.p_IF_THC_18 to eclss.ars.thc.mon.p_IF_THC_18;
        interface <'IF-WCL-12'> IF_WCL_12 : PowerInterface connect eps.p_IF_WCL_12 to eclss.ars.wcl.pmp.p_IF_WCL_12;
        interface <'IF-WCL-13'> IF_WCL_13 : PowerInterface connect eps.p_IF_WCL_13 to eclss.ars.wcl.ich.p_IF_WCL_13;
        interface <'IF-WCL-14'> IF_WCL_14 : PowerInterface connect eps.p_IF_WCL_14 to eclss.ars.wcl.mon.p_IF_WCL_14;
        interface <'IF-WCL-15'> IF_WCL_15 : DataInterface connect dps.p_IF_WCL_15 to eclss.ars.wcl.pmp.p_IF_WCL_15;
        interface <'IF-WCL-16'> IF_WCL_16 : DataInterface connect eclss.ars.wcl.mon.p_IF_WCL_16 to dps.p_IF_WCL_16;
        interface <'IF-WCL-17'> IF_WCL_17 : HeatInterface connect eclss.ars.wcl.avl.p_IF_WCL_17 to dps.p_IF_WCL_17;
        interface <'IF-WCL-18'> IF_WCL_18 : HeatInterface connect eclss.ars.wcl.avl.p_IF_WCL_18 to eps.p_IF_WCL_18;
        interface <'IF-WCS-10'> IF_WCS_10 : PowerInterface connect eps.p_IF_WCS_10 to eclss.wcs.fsp.p_IF_WCS_10;
        interface <'IF-WCS-11'> IF_WCS_11 : PowerInterface connect eps.p_IF_WCS_11 to eclss.wcs.vac.p_IF_WCS_11;
        interface <'IF-WCS-12'> IF_WCS_12 : DataInterface connect eclss.wcs.vac.p_IF_WCS_12 to dps.p_IF_WCS_12;
    }
    part def <'SSD-FD-APU-001'> APU {
        doc /* 補助動力装置・油圧系（APU/HYD）（SSD-FD-APU-001） */
        part cir : APU_CIR;
        part ctl : APU_CTL;
        part ful : APU_FUL;
        part hyd : APU_HYD;
        part ops : APU_OPS;
        part trb : APU_TRB;
        part wsb : APU_WSB;
        port p_IF_ORB_07 : HydraulicPort;
        port p_IF_ORB_08 : HydraulicPort;
        port p_IF_ORB_12 : ~HeatPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_23 : DataBiPort;
        port p_IF_ORB_39 : HydraulicPort;
        port p_IF_ORB_41 : DataPort;
        port p_IF_ECL_11 : HeatBiPort;
        interface <'IF-APU-01'> IF_APU_01 : FluidInterface connect ful.p_IF_APU_01 to trb.p_IF_APU_01;
        interface <'IF-APU-02'> IF_APU_02 : DataBiInterface connect ctl.p_IF_APU_02 to ful.p_IF_APU_02;
        interface <'IF-APU-03'> IF_APU_03 : DataInterface connect ops.p_IF_APU_03 to ful.p_IF_APU_03;
        interface <'IF-APU-04'> IF_APU_04 : LoadInterface connect trb.p_IF_APU_04 to hyd.p_IF_APU_04;
        interface <'IF-APU-05'> IF_APU_05 : HeatInterface connect trb.p_IF_APU_05 to wsb.p_IF_APU_05;
        interface <'IF-APU-06'> IF_APU_06 : DataBiInterface connect ctl.p_IF_APU_06 to trb.p_IF_APU_06;
        interface <'IF-APU-07'> IF_APU_07 : HeatInterface connect hyd.p_IF_APU_07 to wsb.p_IF_APU_07;
        interface <'IF-APU-08'> IF_APU_08 : HydraulicInterface connect cir.p_IF_APU_08 to hyd.p_IF_APU_08;
        interface <'IF-APU-19'> IF_APU_19 : DataInterface connect ops.p_IF_APU_19 to ctl.p_IF_APU_19;
        interface <'IF-APU-20'> IF_APU_20 : DataInterface connect ops.p_IF_APU_20 to hyd.p_IF_APU_20;
        interface <'IF-APU-21'> IF_APU_21 : DataBiInterface connect ops.p_IF_APU_21 to wsb.p_IF_APU_21;
        interface <'IF-APU-24'> IF_APU_24 : LoadInterface connect trb.p_IF_APU_24 to ful.p_IF_APU_24;
    }
    part def <'SSD-FD-APU-CIR-001'> APU_CIR {
        doc /* 循環ポンプ・熱調整（CIR）（SSD-FD-APU-CIR-001） */
        port p_IF_APU_08 : HydraulicPort;
        port p_IF_APU_13 : DataBiPort;
        port p_IF_APU_18 : ~PowerPort;
        port p_IF_TCS_03 : HeatBiPort;
    }
    part def <'SSD-FD-APU-CTL-001'> APU_CTL {
        doc /* APU制御器（CTL）（SSD-FD-APU-CTL-001） */
        port p_IF_APU_02 : DataBiPort;
        port p_IF_APU_06 : DataBiPort;
        port p_IF_APU_12 : DataPort;
        port p_IF_APU_15 : DataPort;
        port p_IF_APU_17 : ~PowerPort;
        port p_IF_APU_19 : ~DataPort;
    }
    part def <'SSD-FD-APU-FUL-001'> APU_FUL {
        doc /* ヒドラジン燃料供給（FUL）（SSD-FD-APU-FUL-001） */
        port p_IF_APU_01 : FluidPort;
        port p_IF_APU_02 : DataBiPort;
        port p_IF_APU_03 : ~DataPort;
        port p_IF_APU_24 : ~LoadPort;
    }
    part def <'SSD-FD-APU-HYD-001'> APU_HYD {
        doc /* 主油圧ポンプ・供給（HYD）（SSD-FD-APU-HYD-001） */
        port p_IF_APU_04 : ~LoadPort;
        port p_IF_APU_07 : HeatPort;
        port p_IF_APU_08 : ~HydraulicPort;
        port p_IF_APU_09 : HydraulicPort;
        port p_IF_APU_10 : HydraulicPort;
        port p_IF_APU_11 : HydraulicPort;
        port p_IF_APU_16 : DataPort;
        port p_IF_APU_20 : ~DataPort;
        port p_IF_APU_25 : ~DataPort;
    }
    part def <'SSD-FD-APU-OPS-001'> APU_OPS {
        doc /* APU/HYD運用管理（OPS）（SSD-FD-APU-OPS-001） */
        port p_IF_APU_03 : DataPort;
        port p_IF_APU_19 : DataPort;
        port p_IF_APU_20 : DataPort;
        port p_IF_APU_21 : DataBiPort;
    }
    part def <'SSD-FD-APU-TRB-001'> APU_TRB {
        doc /* タービン・ギアボックス（TRB）（SSD-FD-APU-TRB-001） */
        port p_IF_APU_01 : ~FluidPort;
        port p_IF_APU_04 : LoadPort;
        port p_IF_APU_05 : HeatPort;
        port p_IF_APU_06 : DataBiPort;
        port p_IF_APU_22 : FluidPort;
        port p_IF_APU_24 : LoadPort;
    }
    part def <'SSD-FD-APU-WSB-001'> APU_WSB {
        doc /* 水噴霧ボイラ（WSB）（SSD-FD-APU-WSB-001） */
        port p_IF_APU_05 : ~HeatPort;
        port p_IF_APU_07 : ~HeatPort;
        port p_IF_APU_14 : DataPort;
        port p_IF_APU_21 : DataBiPort;
        port p_IF_APU_23 : FluidPort;
    }
    part def <'SSD-FD-CREW-001'> CREW {
        doc /* 乗員系・脱出系（CREW）（SSD-FD-CREW-001） */
        part esc : CREW_ESC;
        part hab : CREW_HAB;
        part ltg : CREW_LTG;
        part med : CREW_MED;
        part ops : CREW_OPS;
        part stw : CREW_STW;
        port p_IF_ORB_44 : ~FluidPort;
        interface <'IF-CREW-08'> IF_CREW_08 : LoadInterface connect stw.p_IF_CREW_08 to hab.p_IF_CREW_08;
        interface <'IF-CREW-09'> IF_CREW_09 : LoadInterface connect stw.p_IF_CREW_09 to med.p_IF_CREW_09;
        interface <'IF-CREW-10'> IF_CREW_10 : DataInterface connect ops.p_IF_CREW_10 to med.p_IF_CREW_10;
        interface <'IF-CREW-11'> IF_CREW_11 : DataInterface connect ops.p_IF_CREW_11 to esc.p_IF_CREW_11;
    }
    part def <'SSD-FD-CREW-ESC-001'> CREW_ESC {
        doc /* 脱出系（ESC）（SSD-FD-CREW-ESC-001） */
        port p_IF_CREW_03 : ~FluidPort;
        port p_IF_CREW_07 : LoadPort;
        port p_IF_CREW_11 : ~DataPort;
    }
    part def <'SSD-FD-CREW-HAB-001'> CREW_HAB {
        doc /* 居住・衛生（HAB）（SSD-FD-CREW-HAB-001） */
        port p_IF_CREW_01 : ~FluidPort;
        port p_IF_CREW_08 : ~LoadPort;
    }
    part def <'SSD-FD-CREW-LTG-001'> CREW_LTG {
        doc /* 照明（LTG）（SSD-FD-CREW-LTG-001） */
        port p_IF_CREW_06 : ~PowerPort;
    }
    part def <'SSD-FD-CREW-MED-001'> CREW_MED {
        doc /* 医療・生体・放射線（MED）（SSD-FD-CREW-MED-001） */
        port p_IF_CREW_02 : ~FluidPort;
        port p_IF_CREW_04 : ~FluidPort;
        port p_IF_CREW_05 : DataPort;
        port p_IF_CREW_09 : ~LoadPort;
        port p_IF_CREW_10 : ~DataPort;
    }
    part def <'SSD-FD-CREW-OPS-001'> CREW_OPS {
        doc /* 乗員系運用管理（OPS）（SSD-FD-CREW-OPS-001） */
        port p_IF_CREW_10 : DataPort;
        port p_IF_CREW_11 : DataPort;
    }
    part def <'SSD-FD-CREW-STW-001'> CREW_STW {
        doc /* 収納・拘束（STW）（SSD-FD-CREW-STW-001） */
        port p_IF_CREW_08 : LoadPort;
        port p_IF_CREW_09 : LoadPort;
    }
    part def <'SSD-FD-CT-001'> CT {
        doc /* 通信・追跡系（C&T）（SSD-FD-CT-001） */
        part aud : CT_AUD;
        part cctv : CT_CCTV;
        part inst : CT_INST;
        part ku : CT_KU;
        part ops : CT_OPS;
        part sbd : CT_SBD;
        part uhf : CT_UHF;
        port p_IF_ORB_01 : DataBiPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_16 : RfBiPort;
        port p_IF_ORB_24 : DataPort;
        port p_IF_ORB_43 : ~DataPort;
        port p_IF_ORB_46 : RfBiPort;
        port p_IF_ORB_49 : DataBiPort;
        interface <'IF-CT-14'> IF_CT_14 : DataInterface connect inst.p_IF_CT_14 to sbd.p_IF_CT_14;
        interface <'IF-CT-15'> IF_CT_15 : DataBiInterface connect aud.p_IF_CT_15 to sbd.p_IF_CT_15;
        interface <'IF-CT-16'> IF_CT_16 : DataBiInterface connect ku.p_IF_CT_16 to sbd.p_IF_CT_16;
        interface <'IF-CT-17'> IF_CT_17 : DataBiInterface connect uhf.p_IF_CT_17 to aud.p_IF_CT_17;
        interface <'IF-CT-18'> IF_CT_18 : DataInterface connect cctv.p_IF_CT_18 to ku.p_IF_CT_18;
        interface <'IF-CT-19'> IF_CT_19 : DataInterface connect ops.p_IF_CT_19 to sbd.p_IF_CT_19;
        interface <'IF-CT-20'> IF_CT_20 : DataInterface connect ops.p_IF_CT_20 to ku.p_IF_CT_20;
    }
    part def <'SSD-FD-CT-AUD-001'> CT_AUD {
        doc /* 音声分配（ACCU・ATU）（AUD）（SSD-FD-CT-AUD-001） */
        port p_IF_CT_09 : ~DataPort;
        port p_IF_CT_12 : ~PowerPort;
        port p_IF_CT_15 : DataBiPort;
        port p_IF_CT_17 : DataBiPort;
    }
    part def <'SSD-FD-CT-CCTV-001'> CT_CCTV {
        doc /* 閉回路テレビ（CCTV）（SSD-FD-CT-CCTV-001） */
        port p_IF_CT_11 : DataBiPort;
        port p_IF_CT_13 : ~PowerPort;
        port p_IF_CT_18 : DataPort;
    }
    part def <'SSD-FD-CT-INST-001'> CT_INST {
        doc /* 計装・ペイロード通信（INST）（SSD-FD-CT-INST-001） */
        port p_IF_CREW_05 : ~DataPort;
        port p_IF_CT_06 : DataBiPort;
        port p_IF_CT_14 : DataPort;
        port p_IF_CT_22 : ~DataPort;
    }
    part def <'SSD-FD-CT-KU-001'> CT_KU {
        doc /* Ku帯通信・レーダ（KU）（SSD-FD-CT-KU-001） */
        port p_IF_CT_03 : RfBiPort;
        port p_IF_CT_08 : DataPort;
        port p_IF_CT_16 : DataBiPort;
        port p_IF_CT_18 : ~DataPort;
        port p_IF_CT_20 : ~DataPort;
        port p_IF_CT_24 : ~DataPort;
    }
    part def <'SSD-FD-CT-OPS-001'> CT_OPS {
        doc /* C&T運用管理（OPS）（SSD-FD-CT-OPS-001） */
        port p_IF_CT_07 : ~DataPort;
        port p_IF_CT_19 : DataPort;
        port p_IF_CT_20 : DataPort;
    }
    part def <'SSD-FD-CT-SBD-001'> CT_SBD {
        doc /* S帯PM・FM通信（SBD）（SSD-FD-CT-SBD-001） */
        port p_IF_CT_01 : RfBiPort;
        port p_IF_CT_02 : RfPort;
        port p_IF_CT_05 : DataPort;
        port p_IF_CT_14 : ~DataPort;
        port p_IF_CT_15 : DataBiPort;
        port p_IF_CT_16 : DataBiPort;
        port p_IF_CT_19 : ~DataPort;
        port p_IF_CT_21 : ~DataPort;
        port p_IF_CT_23 : DataBiPort;
        port p_IF_CT_25 : ~DataPort;
    }
    part def <'SSD-FD-CT-UHF-001'> CT_UHF {
        doc /* UHF（SPLX・SSOR）（UHF）（SSD-FD-CT-UHF-001） */
        port p_IF_CT_04 : RfBiPort;
        port p_IF_CT_10 : RfBiPort;
        port p_IF_CT_17 : DataBiPort;
    }
    part def <'SSD-FD-CW-001'> CW {
        doc /* 警報系（C/W）（SSD-FD-CW-001） */
        part alt : CW_ALT;
        part ann : CW_ANN;
        part bkp : CW_BKP;
        part ops : CW_OPS;
        part pri : CW_PRI;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_41 : ~DataPort;
        port p_IF_ORB_42 : ~DataPort;
        port p_IF_ORB_43 : DataPort;
        interface <'IF-CW-04'> IF_CW_04 : DataInterface connect pri.p_IF_CW_04 to ann.p_IF_CW_04;
        interface <'IF-CW-05'> IF_CW_05 : DataInterface connect bkp.p_IF_CW_05 to ann.p_IF_CW_05;
        interface <'IF-CW-06'> IF_CW_06 : DataInterface connect alt.p_IF_CW_06 to ann.p_IF_CW_06;
        interface <'IF-CW-07'> IF_CW_07 : DataInterface connect ops.p_IF_CW_07 to pri.p_IF_CW_07;
        interface <'IF-CW-08'> IF_CW_08 : DataInterface connect ops.p_IF_CW_08 to bkp.p_IF_CW_08;
        interface <'IF-CW-09'> IF_CW_09 : DataInterface connect ops.p_IF_CW_09 to alt.p_IF_CW_09;
    }
    part def <'SSD-FD-CW-ALT-001'> CW_ALT {
        doc /* アラート・限界表示（ALT）（SSD-FD-CW-ALT-001） */
        port p_IF_CW_06 : DataPort;
        port p_IF_CW_09 : ~DataPort;
        port p_IF_RCS_15 : ~DataPort;
    }
    part def <'SSD-FD-CW-ANN-001'> CW_ANN {
        doc /* 表示・警報音（ANN）（SSD-FD-CW-ANN-001） */
        port p_IF_CT_09 : DataPort;
        port p_IF_CW_03 : ~DataPort;
        port p_IF_CW_04 : ~DataPort;
        port p_IF_CW_05 : ~DataPort;
        port p_IF_CW_06 : ~DataPort;
    }
    part def <'SSD-FD-CW-BKP-001'> CW_BKP {
        doc /* バックアップC/W（ソフト）（BKP）（SSD-FD-CW-BKP-001） */
        port p_IF_CW_05 : DataPort;
        port p_IF_CW_08 : ~DataPort;
        port p_IF_DPS_12 : ~DataPort;
    }
    part def <'SSD-FD-CW-OPS-001'> CW_OPS {
        doc /* C/W運用管理（OPS）（SSD-FD-CW-OPS-001） */
        port p_IF_CW_07 : DataPort;
        port p_IF_CW_08 : DataPort;
        port p_IF_CW_09 : DataPort;
        port p_IF_EVA_15 : ~DataPort;
    }
    part def <'SSD-FD-CW-PRI-001'> CW_PRI {
        doc /* 主C/W（ハードウェア）（PRI）（SSD-FD-CW-PRI-001） */
        port p_IF_APU_15 : ~DataPort;
        port p_IF_APU_16 : ~DataPort;
        port p_IF_CW_01 : ~PowerPort;
        port p_IF_CW_02 : ~DataPort;
        port p_IF_CW_04 : DataPort;
        port p_IF_CW_07 : ~DataPort;
        port p_IF_DPS_11 : ~DataPort;
        port p_IF_GNC_20 : ~DataPort;
        port p_IF_MPS_07 : ~DataPort;
        port p_IF_MPS_08 : ~DataPort;
        port p_IF_OMS_14 : ~DataPort;
        port p_IF_OMS_15 : ~DataPort;
        port p_IF_OMS_16 : ~DataPort;
        port p_IF_RCS_12 : ~DataPort;
        port p_IF_RCS_13 : ~DataPort;
        port p_IF_RCS_14 : ~DataPort;
    }
    part def <'SSD-FD-DPS-001'> DPS {
        doc /* データ処理系（DPS）（SSD-FD-DPS-001） */
        part asc : DPS_ASC;
        part bus : DPS_BUS;
        part fsw : DPS_FSW;
        part gpc : DPS_GPC;
        part meds : DPS_MEDS;
        part mtu : DPS_MTU;
        part ops : DPS_OPS;
        port p_IF_ORB_01 : DataBiPort;
        port p_IF_ORB_02 : DataBiPort;
        port p_IF_ORB_06 : DataPort;
        port p_IF_ORB_13 : ~HeatPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_17 : DataBiPort;
        port p_IF_ORB_18 : DataPort;
        port p_IF_ORB_19 : DataBiPort;
        port p_IF_ORB_20 : DataBiPort;
        port p_IF_ORB_23 : DataBiPort;
        port p_IF_ORB_25 : DataPort;
        port p_IF_ORB_26 : DataPort;
        port p_IF_ORB_40 : DataPort;
        port p_IF_ORB_41 : DataPort;
        port p_IF_ORB_42 : DataPort;
        port p_IF_ORB_48 : DataBiPort;
        port p_IF_ALS_10 : ~DataPort;
        port p_IF_ARS_17 : ~HeatPort;
        port p_IF_ARS_20 : ~HeatPort;
        port p_IF_ARS_25 : ~DataPort;
        port p_IF_ARS_26 : ~DataPort;
        port p_IF_ARS_27 : ~DataPort;
        port p_IF_ARS_28 : ~DataPort;
        port p_IF_ARS_29 : ~DataPort;
        port p_IF_ARS_30 : DataPort;
        port p_IF_ARS_31 : ~DataPort;
        port p_IF_ARS_37 : ~DataPort;
        port p_IF_ARS_39 : ~HeatPort;
        port p_IF_AVB_02 : ~HeatPort;
        port p_IF_AVB_13 : ~DataPort;
        port p_IF_AVB_14 : ~DataPort;
        port p_IF_CAC_05 : ~HeatPort;
        port p_IF_CAC_12 : ~DataPort;
        port p_IF_CO2_06 : ~DataPort;
        port p_IF_ECL_36 : ~DataPort;
        port p_IF_FDS_03 : ~DataPort;
        port p_IF_FDS_06 : ~DataPort;
        port p_IF_FDS_09 : ~DataPort;
        port p_IF_H2O_05 : ~DataPort;
        port p_IF_H2O_09 : ~DataPort;
        port p_IF_H2O_12 : ~DataPort;
        port p_IF_IMU_10 : ~DataPort;
        port p_IF_OMS_17 : ~DataPort;
        port p_IF_PCS_14 : ~DataPort;
        port p_IF_RCRS_10 : ~DataPort;
        port p_IF_RCRS_11 : ~DataPort;
        port p_IF_TCS_05 : ~HeatPort;
        port p_IF_TCS_18 : DataPort;
        port p_IF_TCS_19 : DataPort;
        port p_IF_TCS_21 : DataPort;
        port p_IF_THC_11 : ~DataPort;
        port p_IF_THC_12 : ~DataPort;
        port p_IF_WCL_15 : DataPort;
        port p_IF_WCL_16 : ~DataPort;
        port p_IF_WCL_17 : ~HeatPort;
        port p_IF_WCS_12 : ~DataPort;
        interface <'IF-DPS-01'> IF_DPS_01 : DataBiInterface connect gpc.p_IF_DPS_01 to bus.p_IF_DPS_01;
        interface <'IF-DPS-14'> IF_DPS_14 : DataBiInterface connect asc.p_IF_DPS_14 to bus.p_IF_DPS_14;
        interface <'IF-DPS-15'> IF_DPS_15 : DataInterface connect fsw.p_IF_DPS_15 to gpc.p_IF_DPS_15;
        interface <'IF-DPS-16'> IF_DPS_16 : DataInterface connect mtu.p_IF_DPS_16 to gpc.p_IF_DPS_16;
        interface <'IF-DPS-17'> IF_DPS_17 : DataBiInterface connect meds.p_IF_DPS_17 to gpc.p_IF_DPS_17;
        interface <'IF-DPS-18'> IF_DPS_18 : DataBiInterface connect ops.p_IF_DPS_18 to gpc.p_IF_DPS_18;
        interface <'IF-DPS-19'> IF_DPS_19 : DataInterface connect ops.p_IF_DPS_19 to bus.p_IF_DPS_19;
        interface <'IF-DPS-20'> IF_DPS_20 : DataInterface connect ops.p_IF_DPS_20 to mtu.p_IF_DPS_20;
        interface <'IF-DPS-21'> IF_DPS_21 : DataInterface connect bus.p_IF_DPS_21 to meds.p_IF_DPS_21;
    }
    part def <'SSD-FD-DPS-ASC-001'> DPS_ASC {
        doc /* 上昇系インタフェース（ASC）（SSD-FD-DPS-ASC-001） */
        port p_IF_CT_21 : DataPort;
        port p_IF_DPS_05 : DataBiPort;
        port p_IF_DPS_06 : DataBiPort;
        port p_IF_DPS_07 : DataPort;
        port p_IF_DPS_08 : DataPort;
        port p_IF_DPS_09 : DataPort;
        port p_IF_DPS_14 : DataBiPort;
    }
    part def <'SSD-FD-DPS-BUS-001'> DPS_BUS {
        doc /* データバス網・MDM（BUS）（SSD-FD-DPS-BUS-001） */
        port p_IF_APU_25 : DataPort;
        port p_IF_CT_05 : ~DataPort;
        port p_IF_CT_06 : DataBiPort;
        port p_IF_CT_07 : DataPort;
        port p_IF_CT_25 : DataPort;
        port p_IF_DPS_01 : DataBiPort;
        port p_IF_DPS_03 : DataBiPort;
        port p_IF_DPS_10 : DataPort;
        port p_IF_DPS_11 : DataPort;
        port p_IF_DPS_14 : DataBiPort;
        port p_IF_DPS_19 : ~DataPort;
        port p_IF_DPS_21 : DataPort;
        port p_IF_DPS_22 : DataPort;
        port p_IF_ECL_25 : ~HeatPort;
    }
    part def <'SSD-FD-DPS-FSW-001'> DPS_FSW {
        doc /* 飛行ソフトウェア・MMU（FSW）（SSD-FD-DPS-FSW-001） */
        port p_IF_APU_12 : ~DataPort;
        port p_IF_APU_13 : DataBiPort;
        port p_IF_APU_14 : ~DataPort;
        port p_IF_CT_23 : DataBiPort;
        port p_IF_CT_24 : DataPort;
        port p_IF_DPS_04 : ~DataPort;
        port p_IF_DPS_12 : DataPort;
        port p_IF_DPS_13 : DataBiPort;
        port p_IF_DPS_15 : DataPort;
        port p_IF_ECL_28 : DataPort;
        port p_IF_ECL_29 : DataBiPort;
        port p_IF_EPS_09 : DataBiPort;
    }
    part def <'SSD-FD-DPS-GPC-001'> DPS_GPC {
        doc /* 汎用計算機・冗長セット（GPC）（SSD-FD-DPS-GPC-001） */
        port p_IF_DPS_01 : DataBiPort;
        port p_IF_DPS_02 : ~PowerPort;
        port p_IF_DPS_15 : ~DataPort;
        port p_IF_DPS_16 : ~DataPort;
        port p_IF_DPS_17 : DataBiPort;
        port p_IF_DPS_18 : DataBiPort;
        port p_IF_ECL_08 : ~HeatPort;
    }
    part def <'SSD-FD-DPS-MEDS-001'> DPS_MEDS {
        doc /* 表示・キーボード（MEDS）（SSD-FD-DPS-MEDS-001） */
        port p_IF_DPS_17 : DataBiPort;
        port p_IF_DPS_21 : ~DataPort;
        port p_IF_ECL_18 : ~DataPort;
        port p_IF_ECL_35 : ~DataPort;
        port p_IF_ECL_37 : ~DataPort;
        port p_IF_ECL_38 : ~DataPort;
    }
    part def <'SSD-FD-DPS-MTU-001'> DPS_MTU {
        doc /* マスタタイミングユニット（MTU）（SSD-FD-DPS-MTU-001） */
        port p_IF_CT_22 : DataPort;
        port p_IF_DPS_16 : DataPort;
        port p_IF_DPS_20 : ~DataPort;
    }
    part def <'SSD-FD-DPS-OPS-001'> DPS_OPS {
        doc /* DPS運用管理（OPS）（SSD-FD-DPS-OPS-001） */
        port p_IF_DPS_18 : DataBiPort;
        port p_IF_DPS_19 : DataPort;
        port p_IF_DPS_20 : DataPort;
    }
    part def <'SSD-FD-ECLSS-001'> ECLSS {
        doc /* 環境制御・生命維持系（ECLSS）（SSD-FD-ECLSS-001） */
        part als : ECL_ALS;
        part ars : ECL_ARS;
        part atcs : ECL_ATCS;
        part cab : ECL_CAB;
        part fds : ECL_FDS;
        part h2o : ECL_H2O;
        part pcs : ECL_PCS;
        part wcs : ECL_WCS;
        port p_IF_ORB_09 : ~FluidPort;
        port p_IF_ORB_10 : ~FluidPort;
        port p_IF_ORB_11 : ~HeatPort;
        port p_IF_ORB_12 : HeatPort;
        port p_IF_ORB_13 : HeatPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_19 : DataBiPort;
        port p_IF_ORB_32 : ~HeatPort;
        port p_IF_ORB_34 : HeatPort;
        port p_IF_ORB_35 : HeatPort;
        port p_IF_ORB_41 : DataPort;
        port p_IF_ORB_44 : FluidPort;
        port p_IF_ORB_45 : FluidBiPort;
        port p_IF_CW_02 : DataPort;
        port p_IF_CW_03 : DataPort;
        interface <'IF-ALS-01'> IF_ALS_01 : FluidBiInterface connect als.dep.p_IF_ALS_01 to cab.p_IF_ALS_01;
        interface <'IF-ALS-03'> IF_ALS_03 : FluidInterface connect h2o.spl.p_IF_ALS_03 to als.scu.p_IF_ALS_03;
        interface <'IF-ALS-04'> IF_ALS_04 : FluidInterface connect als.scu.p_IF_ALS_04 to wcs.urn.p_IF_ALS_04;
        interface <'IF-ARS-09'> IF_ARS_09 : FluidInterface connect cab.p_IF_ARS_09 to ars.cac.p_IF_ARS_09;
        interface <'IF-ARS-10'> IF_ARS_10 : FluidInterface connect ars.thc.p_IF_ARS_10 to cab.p_IF_ARS_10;
        interface <'IF-ARS-11'> IF_ARS_11 : FluidBiInterface connect ars.imu.p_IF_ARS_11 to cab.p_IF_ARS_11;
        interface <'IF-ARS-12'> IF_ARS_12 : FluidInterface connect ars.thc.p_IF_ARS_12 to h2o.p_IF_ARS_12;
        interface <'IF-ARS-13'> IF_ARS_13 : FluidInterface connect ars.cac.p_IF_ARS_13 to als.p_IF_ARS_13;
        interface <'IF-ARS-14'> IF_ARS_14 : FluidInterface connect ars.cac.p_IF_ARS_14 to fds.p_IF_ARS_14;
        interface <'IF-ARS-15'> IF_ARS_15 : FluidBiInterface connect ars.avb.p_IF_ARS_15 to fds.p_IF_ARS_15;
        interface <'IF-ARS-22'> IF_ARS_22 : HeatInterface connect als.p_IF_ARS_22 to ars.wcl.p_IF_ARS_22;
        interface <'IF-ARS-23'> IF_ARS_23 : HeatInterface connect ars.wcl.p_IF_ARS_23 to h2o.p_IF_ARS_23;
        interface <'IF-ARS-24'> IF_ARS_24 : HeatInterface connect ars.wcl.p_IF_ARS_24 to cab.p_IF_ARS_24;
        interface <'IF-CAC-01'> IF_CAC_01 : FluidInterface connect cab.p_IF_CAC_01 to ars.cac.rtn.p_IF_CAC_01;
        interface <'IF-CAC-04'> IF_CAC_04 : FluidInterface connect ars.cac.rtn.p_IF_CAC_04 to fds.det.p_IF_CAC_04;
        interface <'IF-CAC-08'> IF_CAC_08 : FluidInterface connect ars.cac.fan.p_IF_CAC_08 to fds.det.p_IF_CAC_08;
        interface <'IF-CAC-14'> IF_CAC_14 : FluidInterface connect ars.cac.dct.p_IF_CAC_14 to als.vnt.p_IF_CAC_14;
        interface <'IF-ECL-02'> IF_ECL_02 : FluidInterface connect pcs.p_IF_ECL_02 to cab.p_IF_ECL_02;
        interface <'IF-ECL-03'> IF_ECL_03 : FluidInterface connect pcs.p_IF_ECL_03 to h2o.p_IF_ECL_03;
        interface <'IF-ECL-04'> IF_ECL_04 : FluidInterface connect pcs.p_IF_ECL_04 to als.p_IF_ECL_04;
        interface <'IF-ECL-05'> IF_ECL_05 : FluidBiInterface connect ars.p_IF_ECL_05 to cab.p_IF_ECL_05;
        interface <'IF-ECL-06'> IF_ECL_06 : HeatInterface connect ars.p_IF_ECL_06 to atcs.p_IF_ECL_06;
        interface <'IF-ECL-07'> IF_ECL_07 : FluidInterface connect ars.p_IF_ECL_07 to h2o.p_IF_ECL_07;
        interface <'IF-ECL-12'> IF_ECL_12 : FluidInterface connect h2o.p_IF_ECL_12 to atcs.p_IF_ECL_12;
        interface <'IF-ECL-13'> IF_ECL_13 : FluidInterface connect h2o.p_IF_ECL_13 to als.p_IF_ECL_13;
        interface <'IF-ECL-14'> IF_ECL_14 : FluidInterface connect wcs.p_IF_ECL_14 to h2o.p_IF_ECL_14;
        interface <'IF-ECL-15'> IF_ECL_15 : HeatInterface connect als.p_IF_ECL_15 to ars.p_IF_ECL_15;
        interface <'IF-ECL-17'> IF_ECL_17 : FluidBiInterface connect als.p_IF_ECL_17 to cab.p_IF_ECL_17;
        interface <'IF-ECL-19'> IF_ECL_19 : FluidInterface connect fds.p_IF_ECL_19 to cab.p_IF_ECL_19;
        interface <'IF-ECL-24'> IF_ECL_24 : HeatInterface connect atcs.p_IF_ECL_24 to pcs.p_IF_ECL_24;
        interface <'IF-ECL-26'> IF_ECL_26 : FluidInterface connect als.p_IF_ECL_26 to wcs.p_IF_ECL_26;
        interface <'IF-ECL-27'> IF_ECL_27 : FluidInterface connect ars.p_IF_ECL_27 to als.p_IF_ECL_27;
        interface <'IF-ECL-31'> IF_ECL_31 : FluidBiInterface connect wcs.p_IF_ECL_31 to cab.p_IF_ECL_31;
        interface <'IF-FDS-01'> IF_FDS_01 : FluidInterface connect ars.avb.cir.p_IF_FDS_01 to fds.det.p_IF_FDS_01;
        interface <'IF-FDS-08'> IF_FDS_08 : FluidInterface connect fds.fix.p_IF_FDS_08 to ars.avb.cir.p_IF_FDS_08;
        interface <'IF-FDS-11'> IF_FDS_11 : FluidInterface connect fds.pfe.p_IF_FDS_11 to ars.avb.cir.p_IF_FDS_11;
        interface <'IF-FDS-12'> IF_FDS_12 : FluidInterface connect fds.pfe.p_IF_FDS_12 to cab.p_IF_FDS_12;
        interface <'IF-H2O-02'> IF_H2O_02 : FluidInterface connect h2o.fcw.p_IF_H2O_02 to wcs.vac.p_IF_H2O_02;
        interface <'IF-H2O-07'> IF_H2O_07 : FluidInterface connect wcs.fsp.p_IF_H2O_07 to h2o.wst.p_IF_H2O_07;
        interface <'IF-IMU-01'> IF_IMU_01 : FluidInterface connect cab.p_IF_IMU_01 to ars.imu.inl.p_IF_IMU_01;
        interface <'IF-IMU-09'> IF_IMU_09 : FluidInterface connect ars.imu.hex.p_IF_IMU_09 to cab.p_IF_IMU_09;
        interface <'IF-PCS-03'> IF_PCS_03 : FluidInterface connect pcs.mnf.p_IF_PCS_03 to cab.p_IF_PCS_03;
        interface <'IF-PCS-04'> IF_PCS_04 : FluidInterface connect pcs.o2s.p_IF_PCS_04 to cab.p_IF_PCS_04;
        interface <'IF-PCS-05'> IF_PCS_05 : FluidInterface connect pcs.o2s.p_IF_PCS_05 to als.scu.p_IF_PCS_05;
        interface <'IF-PCS-06'> IF_PCS_06 : FluidInterface connect pcs.n2s.p_IF_PCS_06 to h2o.prs.p_IF_PCS_06;
        interface <'IF-PCS-07'> IF_PCS_07 : FluidBiInterface connect pcs.rlf.p_IF_PCS_07 to cab.p_IF_PCS_07;
        interface <'IF-PCS-09'> IF_PCS_09 : FluidInterface connect pcs.n2s.p_IF_PCS_09 to wcs.vac.p_IF_PCS_09;
        interface <'IF-PCS-10'> IF_PCS_10 : FluidInterface connect cab.p_IF_PCS_10 to pcs.mon.p_IF_PCS_10;
        interface <'IF-RCRS-03'> IF_RCRS_03 : FluidInterface connect ars.rcrs.bed.p_IF_RCRS_03 to wcs.vac.p_IF_RCRS_03;
        interface <'IF-TCS-01'> IF_TCS_01 : HeatInterface connect ars.wcl.p_IF_TCS_01 to atcs.hx.p_IF_TCS_01;
        interface <'IF-TCS-04'> IF_TCS_04 : HeatInterface connect atcs.hx.p_IF_TCS_04 to pcs.o2s.p_IF_TCS_04;
        interface <'IF-TCS-16'> IF_TCS_16 : FluidInterface connect h2o.spl.p_IF_TCS_16 to atcs.fes.p_IF_TCS_16;
        interface <'IF-THC-05'> IF_THC_05 : FluidInterface connect ars.thc.sep.p_IF_THC_05 to h2o.wst.p_IF_THC_05;
        interface <'IF-THC-06'> IF_THC_06 : FluidInterface connect ars.thc.sep.p_IF_THC_06 to cab.p_IF_THC_06;
        interface <'IF-THC-07'> IF_THC_07 : FluidInterface connect ars.thc.tcv.p_IF_THC_07 to cab.p_IF_THC_07;
        interface <'IF-WCL-19'> IF_WCL_19 : HeatInterface connect ars.wcl.avl.p_IF_WCL_19 to cab.p_IF_WCL_19;
        interface <'IF-WCL-20'> IF_WCL_20 : HeatInterface connect ars.wcl.ich.p_IF_WCL_20 to atcs.hx.p_IF_WCL_20;
        interface <'IF-WCL-21'> IF_WCL_21 : HeatInterface connect als.lcg.p_IF_WCL_21 to ars.wcl.cld.p_IF_WCL_21;
        interface <'IF-WCL-22'> IF_WCL_22 : HeatInterface connect ars.wcl.cld.p_IF_WCL_22 to h2o.gal.p_IF_WCL_22;
        interface <'IF-WCS-01'> IF_WCS_01 : FluidInterface connect cab.p_IF_WCS_01 to wcs.urn.p_IF_WCS_01;
        interface <'IF-WCS-02'> IF_WCS_02 : FluidInterface connect cab.p_IF_WCS_02 to wcs.cmd.p_IF_WCS_02;
        interface <'IF-WCS-06'> IF_WCS_06 : FluidInterface connect wcs.fsp.p_IF_WCS_06 to cab.p_IF_WCS_06;
        interface <'IF-WCS-07'> IF_WCS_07 : FluidInterface connect cab.p_IF_WCS_07 to wcs.vac.p_IF_WCS_07;
        interface <'IF-WCS-08'> IF_WCS_08 : FluidBiInterface connect wcs.vac.p_IF_WCS_08 to h2o.dmp.p_IF_WCS_08;
    }
    part def <'SSD-FD-ECL-ALS-001'> ECL_ALS {
        doc /* エアロック支援系（ALS）（SSD-FD-ECL-ALS-001） */
        part dep : ECL_ALS_DEP;
        part htr : ECL_ALS_HTR;
        part lcg : ECL_ALS_LCG;
        part mon : ECL_ALS_MON;
        part scu : ECL_ALS_SCU;
        part vnt : ECL_ALS_VNT;
        port p_IF_ARS_13 : ~FluidPort;
        port p_IF_ARS_22 : HeatPort;
        port p_IF_ECL_04 : ~FluidPort;
        port p_IF_ECL_13 : ~FluidPort;
        port p_IF_ECL_15 : HeatPort;
        port p_IF_ECL_16 : ~PowerPort;
        port p_IF_ECL_17 : FluidBiPort;
        port p_IF_ECL_20 : FluidBiPort;
        port p_IF_ECL_26 : FluidPort;
        port p_IF_ECL_27 : ~FluidPort;
        port p_IF_ECL_30 : FluidPort;
        port p_IF_ECL_38 : DataPort;
        port p_IF_EVA_04 : FluidBiPort;
        interface <'IF-ALS-11'> IF_ALS_11 : FluidInterface connect dep.p_IF_ALS_11 to mon.p_IF_ALS_11;
        interface <'IF-ALS-12'> IF_ALS_12 : FluidInterface connect lcg.p_IF_ALS_12 to mon.p_IF_ALS_12;
        interface <'IF-ALS-13'> IF_ALS_13 : HeatInterface connect htr.p_IF_ALS_13 to mon.p_IF_ALS_13;
        interface <'IF-ALS-14'> IF_ALS_14 : HeatInterface connect htr.p_IF_ALS_14 to lcg.p_IF_ALS_14;
        interface <'IF-ALS-15'> IF_ALS_15 : HeatInterface connect htr.p_IF_ALS_15 to scu.p_IF_ALS_15;
        interface <'IF-ALS-16'> IF_ALS_16 : HeatInterface connect htr.p_IF_ALS_16 to dep.p_IF_ALS_16;
        interface <'IF-ALS-17'> IF_ALS_17 : FluidInterface connect vnt.p_IF_ALS_17 to dep.p_IF_ALS_17;
    }
    part def <'SSD-FD-ECL-ALS-DEP-001'> ECL_ALS_DEP {
        doc /* 区画・減圧・再与圧（DEP）（SSD-FD-ECL-ALS-DEP-001） */
        port p_IF_ALS_01 : FluidBiPort;
        port p_IF_ALS_02 : FluidPort;
        port p_IF_ALS_11 : FluidPort;
        port p_IF_ALS_16 : ~HeatPort;
        port p_IF_ALS_17 : ~FluidPort;
    }
    part def <'SSD-FD-ECL-ALS-HTR-001'> ECL_ALS_HTR {
        doc /* 配管・構造ヒータ（HTR）（SSD-FD-ECL-ALS-HTR-001） */
        port p_IF_ALS_08 : ~PowerPort;
        port p_IF_ALS_13 : HeatPort;
        port p_IF_ALS_14 : HeatPort;
        port p_IF_ALS_15 : HeatPort;
        port p_IF_ALS_16 : HeatPort;
    }
    part def <'SSD-FD-ECL-ALS-LCG-001'> ECL_ALS_LCG {
        doc /* 液冷服冷却ループ（LCG）（SSD-FD-ECL-ALS-LCG-001） */
        port p_IF_ALS_07 : FluidBiPort;
        port p_IF_ALS_12 : FluidPort;
        port p_IF_ALS_14 : ~HeatPort;
        port p_IF_WCL_21 : HeatPort;
    }
    part def <'SSD-FD-ECL-ALS-MON-001'> ECL_ALS_MON {
        doc /* 計測・表示（MON）（SSD-FD-ECL-ALS-MON-001） */
        port p_IF_ALS_10 : DataPort;
        port p_IF_ALS_11 : ~FluidPort;
        port p_IF_ALS_12 : ~FluidPort;
        port p_IF_ALS_13 : ~HeatPort;
    }
    part def <'SSD-FD-ECL-ALS-SCU-001'> ECL_ALS_SCU {
        doc /* EMU補給・支援（SCU）（SSD-FD-ECL-ALS-SCU-001） */
        port p_IF_ALS_03 : ~FluidPort;
        port p_IF_ALS_04 : FluidPort;
        port p_IF_ALS_05 : ~PowerPort;
        port p_IF_ALS_06 : FluidBiPort;
        port p_IF_ALS_15 : ~HeatPort;
        port p_IF_PCS_05 : ~FluidPort;
    }
    part def <'SSD-FD-ECL-ALS-VNT-001'> ECL_ALS_VNT {
        doc /* 換気・ブースタファン（VNT）（SSD-FD-ECL-ALS-VNT-001） */
        port p_IF_ALS_09 : ~PowerPort;
        port p_IF_ALS_17 : FluidPort;
        port p_IF_CAC_14 : ~FluidPort;
    }
    part def <'SSD-FD-ECL-ARS-001'> ECL_ARS {
        doc /* 大気再生系（ARS）（SSD-FD-ECL-ARS-001） */
        part avb : ARS_AVB;
        part cac : ARS_CAC;
        part co2 : ARS_CO2;
        part imu : ARS_IMU;
        part rcrs : ARS_RCRS;
        part thc : ARS_THC;
        part wcl : ARS_WCL;
        port p_IF_ECL_05 : FluidBiPort;
        port p_IF_ECL_06 : HeatPort;
        port p_IF_ECL_07 : FluidPort;
        port p_IF_ECL_08 : HeatPort;
        port p_IF_ECL_15 : ~HeatPort;
        port p_IF_ECL_27 : FluidPort;
        port p_IF_ECL_29 : DataBiPort;
        port p_IF_ECL_32 : HeatPort;
        port p_IF_ECL_33 : HeatPort;
        port p_IF_ECL_39 : ~PowerPort;
        interface <'IF-ARS-01'> IF_ARS_01 : FluidInterface connect cac.p_IF_ARS_01 to co2.p_IF_ARS_01;
        interface <'IF-ARS-02'> IF_ARS_02 : FluidInterface connect cac.p_IF_ARS_02 to rcrs.p_IF_ARS_02;
        interface <'IF-ARS-03'> IF_ARS_03 : FluidInterface connect cac.p_IF_ARS_03 to thc.p_IF_ARS_03;
        interface <'IF-ARS-04'> IF_ARS_04 : FluidInterface connect rcrs.p_IF_ARS_04 to thc.p_IF_ARS_04;
        interface <'IF-ARS-05'> IF_ARS_05 : FluidInterface connect thc.p_IF_ARS_05 to co2.p_IF_ARS_05;
        interface <'IF-ARS-06'> IF_ARS_06 : HeatInterface connect thc.p_IF_ARS_06 to wcl.p_IF_ARS_06;
        interface <'IF-ARS-07'> IF_ARS_07 : HeatInterface connect avb.p_IF_ARS_07 to wcl.p_IF_ARS_07;
        interface <'IF-ARS-08'> IF_ARS_08 : HeatInterface connect imu.p_IF_ARS_08 to wcl.p_IF_ARS_08;
        interface <'IF-AVB-10'> IF_AVB_10 : HeatInterface connect avb.hx.p_IF_AVB_10 to wcl.avl.p_IF_AVB_10;
        interface <'IF-CAC-03'> IF_CAC_03 : FluidInterface connect cac.rtn.p_IF_CAC_03 to rcrs.fan.p_IF_CAC_03;
        interface <'IF-CAC-13'> IF_CAC_13 : FluidInterface connect cac.dct.p_IF_CAC_13 to thc.tcv.p_IF_CAC_13;
        interface <'IF-CO2-01'> IF_CO2_01 : FluidInterface connect cac.dct.p_IF_CO2_01 to co2.abs.p_IF_CO2_01;
        interface <'IF-CO2-05'> IF_CO2_05 : FluidInterface connect thc.hx.p_IF_CO2_05 to co2.atco.p_IF_CO2_05;
        interface <'IF-IMU-08'> IF_IMU_08 : HeatInterface connect imu.hex.p_IF_IMU_08 to wcl.cld.p_IF_IMU_08;
        interface <'IF-RCRS-02'> IF_RCRS_02 : FluidInterface connect rcrs.bed.p_IF_RCRS_02 to thc.hx.p_IF_RCRS_02;
        interface <'IF-THC-03'> IF_THC_03 : HeatInterface connect thc.hx.p_IF_THC_03 to wcl.cld.p_IF_THC_03;
    }
    part def <'SSD-FD-ARS-AVB-001'> ARS_AVB {
        doc /* アビオニクスベイ空冷（AVB）（SSD-FD-ARS-AVB-001） */
        part cir : ARS_AVB_CIR;
        part fan : ARS_AVB_FAN;
        part hx : ARS_AVB_HX;
        part mon : ARS_AVB_MON;
        part ops : ARS_AVB_OPS;
        port p_IF_ARS_07 : HeatPort;
        port p_IF_ARS_15 : FluidBiPort;
        port p_IF_ARS_17 : HeatPort;
        port p_IF_ARS_18 : HeatPort;
        port p_IF_ARS_28 : DataPort;
        port p_IF_ARS_34 : ~PowerPort;
        port p_IF_ARS_41 : HeatPort;
        interface <'IF-AVB-01'> IF_AVB_01 : FluidInterface connect cir.p_IF_AVB_01 to fan.p_IF_AVB_01;
        interface <'IF-AVB-05'> IF_AVB_05 : FluidInterface connect fan.p_IF_AVB_05 to hx.p_IF_AVB_05;
        interface <'IF-AVB-06'> IF_AVB_06 : FluidInterface connect fan.p_IF_AVB_06 to mon.p_IF_AVB_06;
        interface <'IF-AVB-08'> IF_AVB_08 : DataInterface connect ops.p_IF_AVB_08 to fan.p_IF_AVB_08;
        interface <'IF-AVB-09'> IF_AVB_09 : FluidInterface connect hx.p_IF_AVB_09 to cir.p_IF_AVB_09;
        interface <'IF-AVB-11'> IF_AVB_11 : FluidInterface connect hx.p_IF_AVB_11 to mon.p_IF_AVB_11;
        interface <'IF-AVB-12'> IF_AVB_12 : DataInterface connect mon.p_IF_AVB_12 to ops.p_IF_AVB_12;
    }
    part def <'SSD-FD-ARS-AVB-CIR-001'> ARS_AVB_CIR {
        doc /* ベイ内循環・機器空冷（CIR）（SSD-FD-ARS-AVB-CIR-001） */
        port p_IF_AVB_01 : FluidPort;
        port p_IF_AVB_02 : HeatPort;
        port p_IF_AVB_03 : HeatPort;
        port p_IF_AVB_04 : HeatPort;
        port p_IF_AVB_09 : ~FluidPort;
        port p_IF_FDS_01 : FluidPort;
        port p_IF_FDS_08 : ~FluidPort;
        port p_IF_FDS_11 : ~FluidPort;
    }
    part def <'SSD-FD-ARS-AVB-FAN-001'> ARS_AVB_FAN {
        doc /* ベイファン・逆止弁（FAN）（SSD-FD-ARS-AVB-FAN-001） */
        port p_IF_AVB_01 : ~FluidPort;
        port p_IF_AVB_05 : FluidPort;
        port p_IF_AVB_06 : FluidPort;
        port p_IF_AVB_07 : ~PowerPort;
        port p_IF_AVB_08 : ~DataPort;
    }
    part def <'SSD-FD-ARS-AVB-HX-001'> ARS_AVB_HX {
        doc /* ベイ熱交換器（HX）（SSD-FD-ARS-AVB-HX-001） */
        port p_IF_AVB_05 : ~FluidPort;
        port p_IF_AVB_09 : FluidPort;
        port p_IF_AVB_10 : HeatPort;
        port p_IF_AVB_11 : FluidPort;
    }
    part def <'SSD-FD-ARS-AVB-MON-001'> ARS_AVB_MON {
        doc /* 温度・差圧監視（MON）（SSD-FD-ARS-AVB-MON-001） */
        port p_IF_AVB_06 : ~FluidPort;
        port p_IF_AVB_11 : ~FluidPort;
        port p_IF_AVB_12 : DataPort;
        port p_IF_AVB_13 : DataPort;
        port p_IF_AVB_14 : DataPort;
        port p_IF_AVB_15 : ~PowerPort;
    }
    part def <'SSD-FD-ARS-AVB-OPS-001'> ARS_AVB_OPS {
        doc /* ベイ冷却運用管理（OPS）（SSD-FD-ARS-AVB-OPS-001） */
        port p_IF_AVB_08 : DataPort;
        port p_IF_AVB_12 : ~DataPort;
    }
    part def <'SSD-FD-ARS-CAC-001'> ARS_CAC {
        doc /* キャビン空気循環（CAC）（SSD-FD-ARS-CAC-001） */
        part dct : CAC_DCT;
        part fan : CAC_FAN;
        part mon : CAC_MON;
        part ops : CAC_OPS;
        part rtn : CAC_RTN;
        port p_IF_ARS_01 : FluidPort;
        port p_IF_ARS_02 : FluidPort;
        port p_IF_ARS_03 : FluidPort;
        port p_IF_ARS_09 : ~FluidPort;
        port p_IF_ARS_13 : FluidPort;
        port p_IF_ARS_14 : FluidPort;
        port p_IF_ARS_25 : DataPort;
        port p_IF_ARS_32 : ~PowerPort;
        port p_IF_ARS_39 : HeatPort;
        interface <'IF-CAC-02'> IF_CAC_02 : FluidInterface connect rtn.p_IF_CAC_02 to fan.p_IF_CAC_02;
        interface <'IF-CAC-06'> IF_CAC_06 : FluidInterface connect fan.p_IF_CAC_06 to dct.p_IF_CAC_06;
        interface <'IF-CAC-07'> IF_CAC_07 : FluidInterface connect fan.p_IF_CAC_07 to mon.p_IF_CAC_07;
        interface <'IF-CAC-10'> IF_CAC_10 : DataInterface connect ops.p_IF_CAC_10 to fan.p_IF_CAC_10;
        interface <'IF-CAC-11'> IF_CAC_11 : DataInterface connect mon.p_IF_CAC_11 to ops.p_IF_CAC_11;
    }
    part def <'SSD-FD-CAC-DCT-001'> CAC_DCT {
        doc /* 送風ダクト・分配（DCT）（SSD-FD-CAC-DCT-001） */
        port p_IF_CAC_06 : ~FluidPort;
        port p_IF_CAC_13 : FluidPort;
        port p_IF_CAC_14 : FluidPort;
        port p_IF_CO2_01 : FluidPort;
    }
    part def <'SSD-FD-CAC-FAN-001'> CAC_FAN {
        doc /* キャビンファン・逆止弁（FAN）（SSD-FD-CAC-FAN-001） */
        port p_IF_CAC_02 : ~FluidPort;
        port p_IF_CAC_06 : FluidPort;
        port p_IF_CAC_07 : FluidPort;
        port p_IF_CAC_08 : FluidPort;
        port p_IF_CAC_09 : ~PowerPort;
        port p_IF_CAC_10 : ~DataPort;
    }
    part def <'SSD-FD-CAC-MON-001'> CAC_MON {
        doc /* ファン差圧監視（MON）（SSD-FD-CAC-MON-001） */
        port p_IF_CAC_07 : ~FluidPort;
        port p_IF_CAC_11 : DataPort;
        port p_IF_CAC_12 : DataPort;
    }
    part def <'SSD-FD-CAC-OPS-001'> CAC_OPS {
        doc /* ファン運用管理（OPS）（SSD-FD-CAC-OPS-001） */
        port p_IF_CAC_10 : DataPort;
        port p_IF_CAC_11 : ~DataPort;
    }
    part def <'SSD-FD-CAC-RTN-001'> CAC_RTN {
        doc /* 還流・ろ過（RTN）（SSD-FD-CAC-RTN-001） */
        port p_IF_CAC_01 : ~FluidPort;
        port p_IF_CAC_02 : FluidPort;
        port p_IF_CAC_03 : FluidPort;
        port p_IF_CAC_04 : FluidPort;
        port p_IF_CAC_05 : HeatPort;
    }
    part def <'SSD-FD-ARS-CO2-001'> ARS_CO2 {
        doc /* CO2・CO除去（LiOH・ATCO）（SSD-FD-ARS-CO2-001） */
        part abs : CO2_ABS;
        part atco : CO2_ATCO;
        part can : CO2_CAN;
        part mon : CO2_MON;
        part stw : CO2_STW;
        port p_IF_ARS_01 : ~FluidPort;
        port p_IF_ARS_05 : ~FluidPort;
        port p_IF_ARS_37 : DataPort;
        port p_IF_ARS_38 : ~PowerPort;
        interface <'IF-CO2-02'> IF_CO2_02 : FluidInterface connect abs.p_IF_CO2_02 to can.p_IF_CO2_02;
        interface <'IF-CO2-03'> IF_CO2_03 : FluidInterface connect abs.p_IF_CO2_03 to mon.p_IF_CO2_03;
        interface <'IF-CO2-04'> IF_CO2_04 : LoadInterface connect stw.p_IF_CO2_04 to can.p_IF_CO2_04;
    }
    part def <'SSD-FD-CO2-ABS-001'> CO2_ABS {
        doc /* 吸収器装着部（ABS）（SSD-FD-CO2-ABS-001） */
        port p_IF_CO2_01 : ~FluidPort;
        port p_IF_CO2_02 : FluidPort;
        port p_IF_CO2_03 : FluidPort;
    }
    part def <'SSD-FD-CO2-ATCO-001'> CO2_ATCO {
        doc /* 常温触媒酸化器（ATCO）（SSD-FD-CO2-ATCO-001） */
        port p_IF_CO2_05 : ~FluidPort;
    }
    part def <'SSD-FD-CO2-CAN-001'> CO2_CAN {
        doc /* 交換式キャニスタ（CAN）（SSD-FD-CO2-CAN-001） */
        port p_IF_CO2_02 : ~FluidPort;
        port p_IF_CO2_04 : ~LoadPort;
    }
    part def <'SSD-FD-CO2-MON-001'> CO2_MON {
        doc /* CO2・CO監視（MON）（SSD-FD-CO2-MON-001） */
        port p_IF_CO2_03 : ~FluidPort;
        port p_IF_CO2_06 : DataPort;
        port p_IF_CO2_07 : ~PowerPort;
    }
    part def <'SSD-FD-CO2-STW-001'> CO2_STW {
        doc /* 予備キャニスタ収納・交換管理（STW）（SSD-FD-CO2-STW-001） */
        port p_IF_CO2_04 : LoadPort;
    }
    part def <'SSD-FD-ARS-IMU-001'> ARS_IMU {
        doc /* IMU空冷（IMU）（SSD-FD-ARS-IMU-001） */
        part fan : ARS_IMU_FAN;
        part hex : ARS_IMU_HEX;
        part inl : ARS_IMU_INL;
        part mon : ARS_IMU_MON;
        part ops : ARS_IMU_OPS;
        port p_IF_ARS_08 : HeatPort;
        port p_IF_ARS_11 : FluidBiPort;
        port p_IF_ARS_19 : HeatPort;
        port p_IF_ARS_29 : DataPort;
        port p_IF_ARS_35 : ~PowerPort;
        interface <'IF-IMU-03'> IF_IMU_03 : FluidInterface connect inl.p_IF_IMU_03 to fan.p_IF_IMU_03;
        interface <'IF-IMU-04'> IF_IMU_04 : FluidInterface connect fan.p_IF_IMU_04 to hex.p_IF_IMU_04;
        interface <'IF-IMU-05'> IF_IMU_05 : DataInterface connect fan.p_IF_IMU_05 to mon.p_IF_IMU_05;
        interface <'IF-IMU-07'> IF_IMU_07 : DataInterface connect ops.p_IF_IMU_07 to fan.p_IF_IMU_07;
        interface <'IF-IMU-12'> IF_IMU_12 : DataInterface connect mon.p_IF_IMU_12 to ops.p_IF_IMU_12;
    }
    part def <'SSD-FD-ARS-IMU-FAN-001'> ARS_IMU_FAN {
        doc /* IMUファン・逆止弁（FAN）（SSD-FD-ARS-IMU-FAN-001） */
        port p_IF_IMU_03 : ~FluidPort;
        port p_IF_IMU_04 : FluidPort;
        port p_IF_IMU_05 : DataPort;
        port p_IF_IMU_06 : ~PowerPort;
        port p_IF_IMU_07 : ~DataPort;
    }
    part def <'SSD-FD-ARS-IMU-HEX-001'> ARS_IMU_HEX {
        doc /* IMU熱交換器・ダクト（HEX）（SSD-FD-ARS-IMU-HEX-001） */
        port p_IF_IMU_04 : ~FluidPort;
        port p_IF_IMU_08 : HeatPort;
        port p_IF_IMU_09 : FluidPort;
    }
    part def <'SSD-FD-ARS-IMU-INL-001'> ARS_IMU_INL {
        doc /* 吸込み・IMU通風（INL）（SSD-FD-ARS-IMU-INL-001） */
        port p_IF_IMU_01 : ~FluidPort;
        port p_IF_IMU_02 : HeatPort;
        port p_IF_IMU_03 : FluidPort;
    }
    part def <'SSD-FD-ARS-IMU-MON-001'> ARS_IMU_MON {
        doc /* ファン監視・表示（MON）（SSD-FD-ARS-IMU-MON-001） */
        port p_IF_IMU_05 : ~DataPort;
        port p_IF_IMU_10 : DataPort;
        port p_IF_IMU_11 : ~PowerPort;
        port p_IF_IMU_12 : DataPort;
    }
    part def <'SSD-FD-ARS-IMU-OPS-001'> ARS_IMU_OPS {
        doc /* ファン運用管理（OPS）（SSD-FD-ARS-IMU-OPS-001） */
        port p_IF_IMU_07 : DataPort;
        port p_IF_IMU_12 : ~DataPort;
    }
    part def <'SSD-FD-ARS-RCRS-001'> ARS_RCRS {
        doc /* 再生式CO2除去装置（RCRS）（SSD-FD-ARS-RCRS-001） */
        part bed : ARS_RCRS_BED;
        part ctl : ARS_RCRS_CTL;
        part fan : ARS_RCRS_FAN;
        part mon : ARS_RCRS_MON;
        part ops : ARS_RCRS_OPS;
        part usc : ARS_RCRS_USC;
        port p_IF_ARS_02 : ~FluidPort;
        port p_IF_ARS_04 : FluidPort;
        port p_IF_ARS_16 : FluidPort;
        port p_IF_ARS_26 : DataPort;
        port p_IF_ARS_33 : ~PowerPort;
        interface <'IF-RCRS-01'> IF_RCRS_01 : FluidInterface connect fan.p_IF_RCRS_01 to bed.p_IF_RCRS_01;
        interface <'IF-RCRS-04'> IF_RCRS_04 : FluidInterface connect bed.p_IF_RCRS_04 to usc.p_IF_RCRS_04;
        interface <'IF-RCRS-05'> IF_RCRS_05 : DataInterface connect ctl.p_IF_RCRS_05 to bed.p_IF_RCRS_05;
        interface <'IF-RCRS-06'> IF_RCRS_06 : DataInterface connect ctl.p_IF_RCRS_06 to usc.p_IF_RCRS_06;
        interface <'IF-RCRS-07'> IF_RCRS_07 : FluidInterface connect fan.p_IF_RCRS_07 to mon.p_IF_RCRS_07;
        interface <'IF-RCRS-08'> IF_RCRS_08 : FluidInterface connect bed.p_IF_RCRS_08 to mon.p_IF_RCRS_08;
        interface <'IF-RCRS-09'> IF_RCRS_09 : DataInterface connect mon.p_IF_RCRS_09 to ctl.p_IF_RCRS_09;
        interface <'IF-RCRS-14'> IF_RCRS_14 : DataInterface connect ops.p_IF_RCRS_14 to ctl.p_IF_RCRS_14;
        interface <'IF-RCRS-15'> IF_RCRS_15 : DataInterface connect mon.p_IF_RCRS_15 to ops.p_IF_RCRS_15;
    }
    part def <'SSD-FD-ARS-RCRS-BED-001'> ARS_RCRS_BED {
        doc /* 吸着・再生ベッド（BED）（SSD-FD-ARS-RCRS-BED-001） */
        port p_IF_RCRS_01 : ~FluidPort;
        port p_IF_RCRS_02 : FluidPort;
        port p_IF_RCRS_03 : FluidPort;
        port p_IF_RCRS_04 : FluidPort;
        port p_IF_RCRS_05 : ~DataPort;
        port p_IF_RCRS_08 : FluidPort;
    }
    part def <'SSD-FD-ARS-RCRS-CTL-001'> ARS_RCRS_CTL {
        doc /* 制御器・運転シーケンス（CTL）（SSD-FD-ARS-RCRS-CTL-001） */
        port p_IF_RCRS_05 : DataPort;
        port p_IF_RCRS_06 : DataPort;
        port p_IF_RCRS_09 : ~DataPort;
        port p_IF_RCRS_11 : DataPort;
        port p_IF_RCRS_12 : ~PowerPort;
        port p_IF_RCRS_14 : ~DataPort;
    }
    part def <'SSD-FD-ARS-RCRS-FAN-001'> ARS_RCRS_FAN {
        doc /* 吸気・送風・流量設定（FAN）（SSD-FD-ARS-RCRS-FAN-001） */
        port p_IF_CAC_03 : ~FluidPort;
        port p_IF_RCRS_01 : FluidPort;
        port p_IF_RCRS_07 : FluidPort;
    }
    part def <'SSD-FD-ARS-RCRS-MON-001'> ARS_RCRS_MON {
        doc /* 計装・表示（MON）（SSD-FD-ARS-RCRS-MON-001） */
        port p_IF_RCRS_07 : ~FluidPort;
        port p_IF_RCRS_08 : ~FluidPort;
        port p_IF_RCRS_09 : DataPort;
        port p_IF_RCRS_10 : DataPort;
        port p_IF_RCRS_13 : ~PowerPort;
        port p_IF_RCRS_15 : DataPort;
    }
    part def <'SSD-FD-ARS-RCRS-OPS-001'> ARS_RCRS_OPS {
        doc /* RCRS運用管理（OPS）（SSD-FD-ARS-RCRS-OPS-001） */
        port p_IF_RCRS_14 : DataPort;
        port p_IF_RCRS_15 : ~DataPort;
    }
    part def <'SSD-FD-ARS-RCRS-USC-001'> ARS_RCRS_USC {
        doc /* 空気回収・均圧（USC）（SSD-FD-ARS-RCRS-USC-001） */
        port p_IF_RCRS_04 : ~FluidPort;
        port p_IF_RCRS_06 : ~DataPort;
    }
    part def <'SSD-FD-ARS-THC-001'> ARS_THC {
        doc /* キャビン温湿度制御（THC）（SSD-FD-ARS-THC-001） */
        part hx : ARS_THC_HX;
        part mon : ARS_THC_MON;
        part ops : ARS_THC_OPS;
        part sep : ARS_THC_SEP;
        part tcv : ARS_THC_TCV;
        port p_IF_ARS_03 : ~FluidPort;
        port p_IF_ARS_04 : ~FluidPort;
        port p_IF_ARS_05 : FluidPort;
        port p_IF_ARS_06 : HeatPort;
        port p_IF_ARS_10 : FluidPort;
        port p_IF_ARS_12 : FluidPort;
        port p_IF_ARS_27 : DataPort;
        port p_IF_ARS_40 : ~PowerPort;
        interface <'IF-THC-01'> IF_THC_01 : FluidInterface connect tcv.p_IF_THC_01 to hx.p_IF_THC_01;
        interface <'IF-THC-02'> IF_THC_02 : FluidInterface connect hx.p_IF_THC_02 to tcv.p_IF_THC_02;
        interface <'IF-THC-04'> IF_THC_04 : FluidInterface connect hx.p_IF_THC_04 to sep.p_IF_THC_04;
        interface <'IF-THC-08'> IF_THC_08 : FluidInterface connect hx.p_IF_THC_08 to mon.p_IF_THC_08;
        interface <'IF-THC-09'> IF_THC_09 : DataInterface connect sep.p_IF_THC_09 to mon.p_IF_THC_09;
        interface <'IF-THC-10'> IF_THC_10 : DataInterface connect mon.p_IF_THC_10 to tcv.p_IF_THC_10;
        interface <'IF-THC-13'> IF_THC_13 : DataInterface connect mon.p_IF_THC_13 to ops.p_IF_THC_13;
        interface <'IF-THC-14'> IF_THC_14 : DataInterface connect ops.p_IF_THC_14 to tcv.p_IF_THC_14;
        interface <'IF-THC-15'> IF_THC_15 : DataInterface connect ops.p_IF_THC_15 to sep.p_IF_THC_15;
    }
    part def <'SSD-FD-ARS-THC-HX-001'> ARS_THC_HX {
        doc /* キャビン熱交換器・凝縮（HX）（SSD-FD-ARS-THC-HX-001） */
        port p_IF_CO2_05 : FluidPort;
        port p_IF_RCRS_02 : ~FluidPort;
        port p_IF_THC_01 : ~FluidPort;
        port p_IF_THC_02 : FluidPort;
        port p_IF_THC_03 : HeatPort;
        port p_IF_THC_04 : FluidPort;
        port p_IF_THC_08 : FluidPort;
    }
    part def <'SSD-FD-ARS-THC-MON-001'> ARS_THC_MON {
        doc /* 温度・分離器監視（MON）（SSD-FD-ARS-THC-MON-001） */
        port p_IF_THC_08 : ~FluidPort;
        port p_IF_THC_09 : ~DataPort;
        port p_IF_THC_10 : DataPort;
        port p_IF_THC_11 : DataPort;
        port p_IF_THC_12 : DataPort;
        port p_IF_THC_13 : DataPort;
        port p_IF_THC_18 : ~PowerPort;
    }
    part def <'SSD-FD-ARS-THC-OPS-001'> ARS_THC_OPS {
        doc /* 温湿度運用管理（OPS）（SSD-FD-ARS-THC-OPS-001） */
        port p_IF_THC_13 : ~DataPort;
        port p_IF_THC_14 : DataPort;
        port p_IF_THC_15 : DataPort;
    }
    part def <'SSD-FD-ARS-THC-SEP-001'> ARS_THC_SEP {
        doc /* 湿度分離器・凝縮水排出（SEP）（SSD-FD-ARS-THC-SEP-001） */
        port p_IF_THC_04 : ~FluidPort;
        port p_IF_THC_05 : FluidPort;
        port p_IF_THC_06 : FluidPort;
        port p_IF_THC_09 : DataPort;
        port p_IF_THC_15 : ~DataPort;
        port p_IF_THC_17 : ~PowerPort;
    }
    part def <'SSD-FD-ARS-THC-TCV-001'> ARS_THC_TCV {
        doc /* 温度制御弁・給気混合（TCV）（SSD-FD-ARS-THC-TCV-001） */
        port p_IF_CAC_13 : ~FluidPort;
        port p_IF_THC_01 : FluidPort;
        port p_IF_THC_02 : ~FluidPort;
        port p_IF_THC_07 : FluidPort;
        port p_IF_THC_10 : ~DataPort;
        port p_IF_THC_14 : ~DataPort;
        port p_IF_THC_16 : ~PowerPort;
    }
    part def <'SSD-FD-ARS-WCL-001'> ARS_WCL {
        doc /* 水冷却ループ（WCL）（SSD-FD-ARS-WCL-001） */
        part avl : ARS_WCL_AVL;
        part cld : ARS_WCL_CLD;
        part ich : ARS_WCL_ICH;
        part mon : ARS_WCL_MON;
        part ops : ARS_WCL_OPS;
        part pmp : ARS_WCL_PMP;
        port p_IF_ARS_06 : ~HeatPort;
        port p_IF_ARS_07 : ~HeatPort;
        port p_IF_ARS_08 : ~HeatPort;
        port p_IF_ARS_20 : HeatPort;
        port p_IF_ARS_21 : HeatPort;
        port p_IF_ARS_22 : ~HeatPort;
        port p_IF_ARS_23 : HeatPort;
        port p_IF_ARS_24 : HeatPort;
        port p_IF_ARS_30 : ~DataPort;
        port p_IF_ARS_31 : DataPort;
        port p_IF_ARS_36 : ~PowerPort;
        port p_IF_TCS_01 : HeatPort;
        interface <'IF-WCL-01'> IF_WCL_01 : FluidInterface connect pmp.p_IF_WCL_01 to avl.p_IF_WCL_01;
        interface <'IF-WCL-02'> IF_WCL_02 : FluidInterface connect avl.p_IF_WCL_02 to ich.p_IF_WCL_02;
        interface <'IF-WCL-03'> IF_WCL_03 : FluidInterface connect ich.p_IF_WCL_03 to cld.p_IF_WCL_03;
        interface <'IF-WCL-04'> IF_WCL_04 : FluidInterface connect cld.p_IF_WCL_04 to pmp.p_IF_WCL_04;
        interface <'IF-WCL-05'> IF_WCL_05 : FluidInterface connect ich.p_IF_WCL_05 to pmp.p_IF_WCL_05;
        interface <'IF-WCL-06'> IF_WCL_06 : DataInterface connect pmp.p_IF_WCL_06 to ich.p_IF_WCL_06;
        interface <'IF-WCL-07'> IF_WCL_07 : FluidInterface connect pmp.p_IF_WCL_07 to mon.p_IF_WCL_07;
        interface <'IF-WCL-08'> IF_WCL_08 : FluidInterface connect ich.p_IF_WCL_08 to mon.p_IF_WCL_08;
        interface <'IF-WCL-09'> IF_WCL_09 : DataInterface connect ops.p_IF_WCL_09 to pmp.p_IF_WCL_09;
        interface <'IF-WCL-10'> IF_WCL_10 : DataInterface connect ops.p_IF_WCL_10 to ich.p_IF_WCL_10;
        interface <'IF-WCL-11'> IF_WCL_11 : DataInterface connect mon.p_IF_WCL_11 to ops.p_IF_WCL_11;
    }
    part def <'SSD-FD-ARS-WCL-AVL-001'> ARS_WCL_AVL {
        doc /* アビオニクス冷却経路（AVL）（SSD-FD-ARS-WCL-AVL-001） */
        port p_IF_AVB_10 : ~HeatPort;
        port p_IF_WCL_01 : ~FluidPort;
        port p_IF_WCL_02 : FluidPort;
        port p_IF_WCL_17 : HeatPort;
        port p_IF_WCL_18 : HeatPort;
        port p_IF_WCL_19 : HeatPort;
    }
    part def <'SSD-FD-ARS-WCL-CLD-001'> ARS_WCL_CLD {
        doc /* 冷側熱交換器（CLD）（SSD-FD-ARS-WCL-CLD-001） */
        port p_IF_IMU_08 : ~HeatPort;
        port p_IF_THC_03 : ~HeatPort;
        port p_IF_WCL_03 : ~FluidPort;
        port p_IF_WCL_04 : FluidPort;
        port p_IF_WCL_21 : ~HeatPort;
        port p_IF_WCL_22 : HeatPort;
    }
    part def <'SSD-FD-ARS-WCL-ICH-001'> ARS_WCL_ICH {
        doc /* インターチェンジャ・バイパス制御（ICH）（SSD-FD-ARS-WCL-ICH-001） */
        port p_IF_WCL_02 : ~FluidPort;
        port p_IF_WCL_03 : FluidPort;
        port p_IF_WCL_05 : FluidPort;
        port p_IF_WCL_06 : ~DataPort;
        port p_IF_WCL_08 : FluidPort;
        port p_IF_WCL_10 : ~DataPort;
        port p_IF_WCL_13 : ~PowerPort;
        port p_IF_WCL_20 : HeatPort;
    }
    part def <'SSD-FD-ARS-WCL-MON-001'> ARS_WCL_MON {
        doc /* ループ計測・警報（MON）（SSD-FD-ARS-WCL-MON-001） */
        port p_IF_WCL_07 : ~FluidPort;
        port p_IF_WCL_08 : ~FluidPort;
        port p_IF_WCL_11 : DataPort;
        port p_IF_WCL_14 : ~PowerPort;
        port p_IF_WCL_16 : DataPort;
    }
    part def <'SSD-FD-ARS-WCL-OPS-001'> ARS_WCL_OPS {
        doc /* ループ運用管理（OPS）（SSD-FD-ARS-WCL-OPS-001） */
        port p_IF_WCL_09 : DataPort;
        port p_IF_WCL_10 : DataPort;
        port p_IF_WCL_11 : ~DataPort;
    }
    part def <'SSD-FD-ARS-WCL-PMP-001'> ARS_WCL_PMP {
        doc /* ポンプパッケージ（PMP）（SSD-FD-ARS-WCL-PMP-001） */
        port p_IF_WCL_01 : FluidPort;
        port p_IF_WCL_04 : ~FluidPort;
        port p_IF_WCL_05 : ~FluidPort;
        port p_IF_WCL_06 : DataPort;
        port p_IF_WCL_07 : FluidPort;
        port p_IF_WCL_09 : ~DataPort;
        port p_IF_WCL_12 : ~PowerPort;
        port p_IF_WCL_15 : ~DataPort;
    }
    part def <'SSD-FD-ECL-ATCS-001'> ECL_ATCS {
        doc /* 能動熱制御系（ATCS）（SSD-FD-ECL-ATCS-001） */
        part fcl : TCS_FCL;
        part fes : TCS_FES;
        part gse : TCS_GSE;
        part hx : TCS_HX;
        part nh3 : TCS_NH3;
        part rad : TCS_RAD;
        port p_IF_ECL_06 : ~HeatPort;
        port p_IF_ECL_09 : ~HeatPort;
        port p_IF_ECL_11 : HeatBiPort;
        port p_IF_ECL_12 : ~FluidPort;
        port p_IF_ECL_21 : HeatPort;
        port p_IF_ECL_24 : HeatPort;
        port p_IF_ECL_25 : HeatPort;
        port p_IF_ECL_28 : ~DataPort;
        port p_IF_ECL_34 : ~HeatPort;
        interface <'IF-TCS-07'> IF_TCS_07 : HeatBiInterface connect hx.p_IF_TCS_07 to fcl.p_IF_TCS_07;
        interface <'IF-TCS-08'> IF_TCS_08 : HeatInterface connect fcl.p_IF_TCS_08 to rad.p_IF_TCS_08;
        interface <'IF-TCS-09'> IF_TCS_09 : HeatInterface connect fcl.p_IF_TCS_09 to fes.p_IF_TCS_09;
        interface <'IF-TCS-10'> IF_TCS_10 : HeatInterface connect fcl.p_IF_TCS_10 to nh3.p_IF_TCS_10;
        interface <'IF-TCS-11'> IF_TCS_11 : HeatInterface connect fcl.p_IF_TCS_11 to gse.p_IF_TCS_11;
    }
    part def <'SSD-FD-TCS-FCL-001'> TCS_FCL {
        doc /* フレオン21冷却ループ（FCL）（SSD-FD-TCS-FCL-001） */
        port p_IF_TCS_07 : HeatBiPort;
        port p_IF_TCS_08 : HeatPort;
        port p_IF_TCS_09 : HeatPort;
        port p_IF_TCS_10 : HeatPort;
        port p_IF_TCS_11 : HeatPort;
        port p_IF_TCS_21 : ~DataPort;
    }
    part def <'SSD-FD-TCS-FES-001'> TCS_FES {
        doc /* フラッシュエバポレータ（FES）（SSD-FD-TCS-FES-001） */
        port p_IF_TCS_09 : ~HeatPort;
        port p_IF_TCS_13 : FluidPort;
        port p_IF_TCS_16 : ~FluidPort;
        port p_IF_TCS_18 : ~DataPort;
    }
    part def <'SSD-FD-TCS-GSE-001'> TCS_GSE {
        doc /* GSE熱交換器・地上冷却（GSE）（SSD-FD-TCS-GSE-001） */
        port p_IF_TCS_11 : ~HeatPort;
        port p_IF_TCS_15 : ~HeatPort;
    }
    part def <'SSD-FD-TCS-HX-001'> TCS_HX {
        doc /* 熱取得：熱交換器・コールドプレート網（HX）（SSD-FD-TCS-HX-001） */
        port p_IF_EPS_07 : ~HeatPort;
        port p_IF_EPS_14 : HeatPort;
        port p_IF_TCS_01 : ~HeatPort;
        port p_IF_TCS_02 : ~HeatPort;
        port p_IF_TCS_03 : HeatBiPort;
        port p_IF_TCS_04 : HeatPort;
        port p_IF_TCS_05 : HeatPort;
        port p_IF_TCS_06 : HeatPort;
        port p_IF_TCS_07 : HeatBiPort;
        port p_IF_WCL_20 : ~HeatPort;
    }
    part def <'SSD-FD-TCS-NH3-001'> TCS_NH3 {
        doc /* アンモニアボイラ（NH3）（SSD-FD-TCS-NH3-001） */
        port p_IF_TCS_10 : ~HeatPort;
        port p_IF_TCS_14 : FluidPort;
        port p_IF_TCS_19 : ~DataPort;
    }
    part def <'SSD-FD-TCS-RAD-001'> TCS_RAD {
        doc /* 放熱器（RAD）（SSD-FD-TCS-RAD-001） */
        port p_IF_TCS_08 : ~HeatPort;
        port p_IF_TCS_12 : HeatPort;
    }
    part def <'SSD-FD-ECL-CAB-001'> ECL_CAB {
        doc /* 乗員室環境（制御対象）（SSD-FD-ECL-CAB-001） */
        port p_IF_ALS_01 : FluidBiPort;
        port p_IF_ARS_09 : FluidPort;
        port p_IF_ARS_10 : ~FluidPort;
        port p_IF_ARS_11 : FluidBiPort;
        port p_IF_ARS_24 : ~HeatPort;
        port p_IF_CAC_01 : FluidPort;
        port p_IF_ECL_02 : ~FluidPort;
        port p_IF_ECL_05 : FluidBiPort;
        port p_IF_ECL_17 : FluidBiPort;
        port p_IF_ECL_19 : ~FluidPort;
        port p_IF_ECL_31 : FluidBiPort;
        port p_IF_FDS_12 : ~FluidPort;
        port p_IF_IMU_01 : FluidPort;
        port p_IF_IMU_09 : ~FluidPort;
        port p_IF_PCS_03 : ~FluidPort;
        port p_IF_PCS_04 : ~FluidPort;
        port p_IF_PCS_07 : FluidBiPort;
        port p_IF_PCS_10 : FluidPort;
        port p_IF_THC_06 : ~FluidPort;
        port p_IF_THC_07 : ~FluidPort;
        port p_IF_WCL_19 : ~HeatPort;
        port p_IF_WCS_01 : FluidPort;
        port p_IF_WCS_02 : FluidPort;
        port p_IF_WCS_06 : ~FluidPort;
        port p_IF_WCS_07 : FluidPort;
    }
    part def <'SSD-FD-ECL-FDS-001'> ECL_FDS {
        doc /* 煙検知・消火系（FDS）（SSD-FD-ECL-FDS-001） */
        part alm : ECL_FDS_ALM;
        part det : ECL_FDS_DET;
        part fix : ECL_FDS_FIX;
        part ops : ECL_FDS_OPS;
        part pfe : ECL_FDS_PFE;
        port p_IF_ARS_14 : ~FluidPort;
        port p_IF_ARS_15 : FluidBiPort;
        port p_IF_ECL_18 : DataPort;
        port p_IF_ECL_19 : FluidPort;
        port p_IF_ECL_40 : ~PowerPort;
        interface <'IF-FDS-02'> IF_FDS_02 : DataInterface connect det.p_IF_FDS_02 to alm.p_IF_FDS_02;
        interface <'IF-FDS-05'> IF_FDS_05 : DataInterface connect alm.p_IF_FDS_05 to det.p_IF_FDS_05;
        interface <'IF-FDS-07'> IF_FDS_07 : DataInterface connect alm.p_IF_FDS_07 to ops.p_IF_FDS_07;
        interface <'IF-FDS-13'> IF_FDS_13 : DataInterface connect ops.p_IF_FDS_13 to fix.p_IF_FDS_13;
        interface <'IF-FDS-14'> IF_FDS_14 : DataInterface connect ops.p_IF_FDS_14 to pfe.p_IF_FDS_14;
    }
    part def <'SSD-FD-ECL-FDS-ALM-001'> ECL_FDS_ALM {
        doc /* 煙警報・回路試験（ALM）（SSD-FD-ECL-FDS-ALM-001） */
        port p_IF_FDS_02 : ~DataPort;
        port p_IF_FDS_05 : DataPort;
        port p_IF_FDS_06 : DataPort;
        port p_IF_FDS_07 : DataPort;
    }
    part def <'SSD-FD-ECL-FDS-DET-001'> ECL_FDS_DET {
        doc /* 煙感知器（DET）（SSD-FD-ECL-FDS-DET-001） */
        port p_IF_CAC_04 : ~FluidPort;
        port p_IF_CAC_08 : ~FluidPort;
        port p_IF_FDS_01 : ~FluidPort;
        port p_IF_FDS_02 : DataPort;
        port p_IF_FDS_03 : DataPort;
        port p_IF_FDS_04 : ~PowerPort;
        port p_IF_FDS_05 : ~DataPort;
    }
    part def <'SSD-FD-ECL-FDS-FIX-001'> ECL_FDS_FIX {
        doc /* ベイ固定消火ボトル（FIX）（SSD-FD-ECL-FDS-FIX-001） */
        port p_IF_FDS_08 : FluidPort;
        port p_IF_FDS_09 : DataPort;
        port p_IF_FDS_10 : ~PowerPort;
        port p_IF_FDS_13 : ~DataPort;
    }
    part def <'SSD-FD-ECL-FDS-OPS-001'> ECL_FDS_OPS {
        doc /* 火災対応・運用管理（OPS）（SSD-FD-ECL-FDS-OPS-001） */
        port p_IF_FDS_07 : ~DataPort;
        port p_IF_FDS_13 : DataPort;
        port p_IF_FDS_14 : DataPort;
    }
    part def <'SSD-FD-ECL-FDS-PFE-001'> ECL_FDS_PFE {
        doc /* 携帯消火器・消火ポート（PFE）（SSD-FD-ECL-FDS-PFE-001） */
        port p_IF_FDS_11 : FluidPort;
        port p_IF_FDS_12 : FluidPort;
        port p_IF_FDS_14 : ~DataPort;
    }
    part def <'SSD-FD-ECL-H2O-001'> ECL_H2O {
        doc /* 給水・廃水系（H2O）（SSD-FD-ECL-H2O-001） */
        part dmp : ECL_H2O_DMP;
        part fcw : ECL_H2O_FCW;
        part gal : ECL_H2O_GAL;
        part prs : ECL_H2O_PRS;
        part spl : ECL_H2O_SPL;
        part wst : ECL_H2O_WST;
        port p_IF_ARS_12 : ~FluidPort;
        port p_IF_ARS_23 : ~HeatPort;
        port p_IF_ECL_03 : ~FluidPort;
        port p_IF_ECL_07 : ~FluidPort;
        port p_IF_ECL_10 : ~FluidPort;
        port p_IF_ECL_12 : FluidPort;
        port p_IF_ECL_13 : FluidPort;
        port p_IF_ECL_14 : ~FluidPort;
        port p_IF_ECL_22 : FluidPort;
        port p_IF_ECL_35 : DataPort;
        port p_IF_ECL_41 : ~PowerPort;
        interface <'IF-H2O-01'> IF_H2O_01 : FluidInterface connect fcw.p_IF_H2O_01 to spl.p_IF_H2O_01;
        interface <'IF-H2O-03'> IF_H2O_03 : FluidInterface connect spl.p_IF_H2O_03 to gal.p_IF_H2O_03;
        interface <'IF-H2O-04'> IF_H2O_04 : FluidInterface connect spl.p_IF_H2O_04 to dmp.p_IF_H2O_04;
        interface <'IF-H2O-08'> IF_H2O_08 : FluidInterface connect wst.p_IF_H2O_08 to dmp.p_IF_H2O_08;
        interface <'IF-H2O-13'> IF_H2O_13 : FluidInterface connect prs.p_IF_H2O_13 to spl.p_IF_H2O_13;
        interface <'IF-H2O-14'> IF_H2O_14 : FluidInterface connect prs.p_IF_H2O_14 to wst.p_IF_H2O_14;
    }
    part def <'SSD-FD-ECL-H2O-DMP-001'> ECL_H2O_DMP {
        doc /* 船外ダンプ・クロスタイ（DMP）（SSD-FD-ECL-H2O-DMP-001） */
        port p_IF_H2O_04 : ~FluidPort;
        port p_IF_H2O_08 : ~FluidPort;
        port p_IF_H2O_10 : FluidPort;
        port p_IF_H2O_11 : ~PowerPort;
        port p_IF_H2O_12 : DataPort;
        port p_IF_WCS_08 : FluidBiPort;
    }
    part def <'SSD-FD-ECL-H2O-FCW-001'> ECL_H2O_FCW {
        doc /* 生成水受入れ・処理（FCW）（SSD-FD-ECL-H2O-FCW-001） */
        port p_IF_EPS_06 : ~FluidPort;
        port p_IF_H2O_01 : FluidPort;
        port p_IF_H2O_02 : FluidPort;
    }
    part def <'SSD-FD-ECL-H2O-GAL-001'> ECL_H2O_GAL {
        doc /* 飲料水供給（GAL）（SSD-FD-ECL-H2O-GAL-001） */
        port p_IF_CREW_01 : FluidPort;
        port p_IF_CREW_02 : FluidPort;
        port p_IF_H2O_03 : ~FluidPort;
        port p_IF_WCL_22 : ~HeatPort;
    }
    part def <'SSD-FD-ECL-H2O-PRS-001'> ECL_H2O_PRS {
        doc /* タンク加圧（PRS）（SSD-FD-ECL-H2O-PRS-001） */
        port p_IF_H2O_13 : FluidPort;
        port p_IF_H2O_14 : FluidPort;
        port p_IF_PCS_06 : ~FluidPort;
    }
    part def <'SSD-FD-ECL-H2O-SPL-001'> ECL_H2O_SPL {
        doc /* 給水貯蔵・分配（SPL）（SSD-FD-ECL-H2O-SPL-001） */
        port p_IF_ALS_03 : FluidPort;
        port p_IF_H2O_01 : ~FluidPort;
        port p_IF_H2O_03 : FluidPort;
        port p_IF_H2O_04 : FluidPort;
        port p_IF_H2O_05 : DataPort;
        port p_IF_H2O_06 : ~PowerPort;
        port p_IF_H2O_13 : ~FluidPort;
        port p_IF_TCS_16 : FluidPort;
    }
    part def <'SSD-FD-ECL-H2O-WST-001'> ECL_H2O_WST {
        doc /* 廃水貯蔵（WST）（SSD-FD-ECL-H2O-WST-001） */
        port p_IF_H2O_07 : ~FluidPort;
        port p_IF_H2O_08 : FluidPort;
        port p_IF_H2O_09 : DataPort;
        port p_IF_H2O_14 : ~FluidPort;
        port p_IF_THC_05 : ~FluidPort;
    }
    part def <'SSD-FD-ECL-PCS-001'> ECL_PCS {
        doc /* 圧力制御系（PCS／ARPCS）（SSD-FD-ECL-PCS-001） */
        part mnf : ECL_PCS_MNF;
        part mon : ECL_PCS_MON;
        part n2s : ECL_PCS_N2S;
        part o2s : ECL_PCS_O2S;
        part ops : ECL_PCS_OPS;
        part rlf : ECL_PCS_RLF;
        port p_IF_ECL_01 : ~FluidPort;
        port p_IF_ECL_02 : FluidPort;
        port p_IF_ECL_03 : FluidPort;
        port p_IF_ECL_04 : FluidPort;
        port p_IF_ECL_24 : ~HeatPort;
        port p_IF_ECL_36 : DataPort;
        port p_IF_ECL_42 : ~PowerPort;
        port p_IF_EVA_14 : FluidPort;
        interface <'IF-PCS-01'> IF_PCS_01 : FluidInterface connect o2s.p_IF_PCS_01 to mnf.p_IF_PCS_01;
        interface <'IF-PCS-02'> IF_PCS_02 : FluidInterface connect n2s.p_IF_PCS_02 to mnf.p_IF_PCS_02;
        interface <'IF-PCS-11'> IF_PCS_11 : FluidInterface connect o2s.p_IF_PCS_11 to mon.p_IF_PCS_11;
        interface <'IF-PCS-12'> IF_PCS_12 : FluidInterface connect n2s.p_IF_PCS_12 to mon.p_IF_PCS_12;
        interface <'IF-PCS-13'> IF_PCS_13 : DataInterface connect mon.p_IF_PCS_13 to mnf.p_IF_PCS_13;
        interface <'IF-PCS-15'> IF_PCS_15 : DataInterface connect mon.p_IF_PCS_15 to ops.p_IF_PCS_15;
        interface <'IF-PCS-16'> IF_PCS_16 : DataInterface connect ops.p_IF_PCS_16 to mnf.p_IF_PCS_16;
        interface <'IF-PCS-17'> IF_PCS_17 : DataInterface connect ops.p_IF_PCS_17 to o2s.p_IF_PCS_17;
    }
    part def <'SSD-FD-ECL-PCS-MNF-001'> ECL_PCS_MNF {
        doc /* O2/N2マニホールド・PPO2制御（MNF）（SSD-FD-ECL-PCS-MNF-001） */
        port p_IF_PCS_01 : ~FluidPort;
        port p_IF_PCS_02 : ~FluidPort;
        port p_IF_PCS_03 : FluidPort;
        port p_IF_PCS_13 : ~DataPort;
        port p_IF_PCS_16 : ~DataPort;
        port p_IF_PCS_18 : ~PowerPort;
    }
    part def <'SSD-FD-ECL-PCS-MON-001'> ECL_PCS_MON {
        doc /* 計測・表示・警報（MON）（SSD-FD-ECL-PCS-MON-001） */
        port p_IF_PCS_10 : ~FluidPort;
        port p_IF_PCS_11 : ~FluidPort;
        port p_IF_PCS_12 : ~FluidPort;
        port p_IF_PCS_13 : DataPort;
        port p_IF_PCS_14 : DataPort;
        port p_IF_PCS_15 : DataPort;
        port p_IF_PCS_22 : ~PowerPort;
    }
    part def <'SSD-FD-ECL-PCS-N2S-001'> ECL_PCS_N2S {
        doc /* 窒素供給（N2S）（SSD-FD-ECL-PCS-N2S-001） */
        port p_IF_PCS_02 : FluidPort;
        port p_IF_PCS_06 : FluidPort;
        port p_IF_PCS_09 : FluidPort;
        port p_IF_PCS_12 : FluidPort;
        port p_IF_PCS_20 : ~PowerPort;
    }
    part def <'SSD-FD-ECL-PCS-O2S-001'> ECL_PCS_O2S {
        doc /* 酸素供給・分配（O2S）（SSD-FD-ECL-PCS-O2S-001） */
        port p_IF_CREW_03 : FluidPort;
        port p_IF_CREW_04 : FluidPort;
        port p_IF_EPS_04 : ~FluidPort;
        port p_IF_PCS_01 : FluidPort;
        port p_IF_PCS_04 : FluidPort;
        port p_IF_PCS_05 : FluidPort;
        port p_IF_PCS_11 : FluidPort;
        port p_IF_PCS_17 : ~DataPort;
        port p_IF_PCS_19 : ~PowerPort;
        port p_IF_TCS_04 : ~HeatPort;
    }
    part def <'SSD-FD-ECL-PCS-OPS-001'> ECL_PCS_OPS {
        doc /* 与圧運用管理（OPS）（SSD-FD-ECL-PCS-OPS-001） */
        port p_IF_PCS_15 : ~DataPort;
        port p_IF_PCS_16 : DataPort;
        port p_IF_PCS_17 : DataPort;
    }
    part def <'SSD-FD-ECL-PCS-RLF-001'> ECL_PCS_RLF {
        doc /* 正負圧逃し・ベント（RLF）（SSD-FD-ECL-PCS-RLF-001） */
        port p_IF_PCS_07 : FluidBiPort;
        port p_IF_PCS_08 : FluidBiPort;
        port p_IF_PCS_21 : ~PowerPort;
    }
    part def <'SSD-FD-ECL-WCS-001'> ECL_WCS {
        doc /* 廃棄物収集系（WCS）（SSD-FD-ECL-WCS-001） */
        part cmd : ECL_WCS_CMD;
        part fsp : ECL_WCS_FSP;
        part ops : ECL_WCS_OPS;
        part urn : ECL_WCS_URN;
        part vac : ECL_WCS_VAC;
        port p_IF_ECL_14 : FluidPort;
        port p_IF_ECL_23 : FluidPort;
        port p_IF_ECL_26 : ~FluidPort;
        port p_IF_ECL_31 : FluidBiPort;
        port p_IF_ECL_37 : DataPort;
        port p_IF_ECL_43 : ~PowerPort;
        interface <'IF-WCS-03'> IF_WCS_03 : FluidInterface connect urn.p_IF_WCS_03 to fsp.p_IF_WCS_03;
        interface <'IF-WCS-04'> IF_WCS_04 : FluidInterface connect cmd.p_IF_WCS_04 to fsp.p_IF_WCS_04;
        interface <'IF-WCS-05'> IF_WCS_05 : FluidInterface connect cmd.p_IF_WCS_05 to vac.p_IF_WCS_05;
        interface <'IF-WCS-13'> IF_WCS_13 : DataInterface connect ops.p_IF_WCS_13 to fsp.p_IF_WCS_13;
        interface <'IF-WCS-14'> IF_WCS_14 : DataInterface connect ops.p_IF_WCS_14 to cmd.p_IF_WCS_14;
        interface <'IF-WCS-15'> IF_WCS_15 : DataInterface connect ops.p_IF_WCS_15 to vac.p_IF_WCS_15;
    }
    part def <'SSD-FD-ECL-WCS-CMD-001'> ECL_WCS_CMD {
        doc /* 便器・固形廃棄物（CMD）（SSD-FD-ECL-WCS-CMD-001） */
        port p_IF_WCS_02 : ~FluidPort;
        port p_IF_WCS_04 : FluidPort;
        port p_IF_WCS_05 : FluidPort;
        port p_IF_WCS_14 : ~DataPort;
    }
    part def <'SSD-FD-ECL-WCS-FSP-001'> ECL_WCS_FSP {
        doc /* ファンセパレータ・フィルタ（FSP）（SSD-FD-ECL-WCS-FSP-001） */
        port p_IF_H2O_07 : FluidPort;
        port p_IF_WCS_03 : ~FluidPort;
        port p_IF_WCS_04 : ~FluidPort;
        port p_IF_WCS_06 : FluidPort;
        port p_IF_WCS_10 : ~PowerPort;
        port p_IF_WCS_13 : ~DataPort;
    }
    part def <'SSD-FD-ECL-WCS-OPS-001'> ECL_WCS_OPS {
        doc /* 制御・運用管理（OPS）（SSD-FD-ECL-WCS-OPS-001） */
        port p_IF_WCS_13 : DataPort;
        port p_IF_WCS_14 : DataPort;
        port p_IF_WCS_15 : DataPort;
    }
    part def <'SSD-FD-ECL-WCS-URN-001'> ECL_WCS_URN {
        doc /* 尿・EMU凝縮水収集（URN）（SSD-FD-ECL-WCS-URN-001） */
        port p_IF_ALS_04 : ~FluidPort;
        port p_IF_WCS_01 : ~FluidPort;
        port p_IF_WCS_03 : FluidPort;
    }
    part def <'SSD-FD-ECL-WCS-VAC-001'> ECL_WCS_VAC {
        doc /* 真空ベント（VAC）（SSD-FD-ECL-WCS-VAC-001） */
        port p_IF_H2O_02 : ~FluidPort;
        port p_IF_PCS_09 : ~FluidPort;
        port p_IF_RCRS_03 : ~FluidPort;
        port p_IF_WCS_05 : ~FluidPort;
        port p_IF_WCS_07 : ~FluidPort;
        port p_IF_WCS_08 : FluidBiPort;
        port p_IF_WCS_09 : FluidPort;
        port p_IF_WCS_11 : ~PowerPort;
        port p_IF_WCS_12 : DataPort;
        port p_IF_WCS_15 : ~DataPort;
    }
    part def <'SSD-FD-EPS-001'> EPS {
        doc /* 電力系（EPS）（SSD-FD-EPS-001） */
        part ac : EPS_AC;
        part dc : EPS_DC;
        part fcp : EPS_FCP;
        part prsd : EPS_PRSD;
        port p_IF_ORB_09 : FluidPort;
        port p_IF_ORB_10 : FluidPort;
        port p_IF_ORB_11 : HeatPort;
        port p_IF_ORB_14 : PowerPort;
        port p_IF_ORB_20 : DataBiPort;
        port p_IF_ORB_27 : PowerPort;
        port p_IF_ORB_28 : PowerPort;
        port p_IF_ORB_30 : ~FluidPort;
        port p_IF_ORB_31 : ~PowerPort;
        port p_IF_ORB_35 : ~HeatPort;
        port p_IF_ORB_41 : DataPort;
        port p_IF_ALS_05 : PowerPort;
        port p_IF_ALS_08 : PowerPort;
        port p_IF_ALS_09 : PowerPort;
        port p_IF_ARS_18 : ~HeatPort;
        port p_IF_ARS_21 : ~HeatPort;
        port p_IF_ARS_32 : PowerPort;
        port p_IF_ARS_33 : PowerPort;
        port p_IF_ARS_34 : PowerPort;
        port p_IF_ARS_35 : PowerPort;
        port p_IF_ARS_36 : PowerPort;
        port p_IF_ARS_38 : PowerPort;
        port p_IF_ARS_40 : PowerPort;
        port p_IF_CAC_09 : PowerPort;
        port p_IF_CO2_07 : PowerPort;
        port p_IF_DPS_02 : PowerPort;
        port p_IF_ECL_01 : FluidPort;
        port p_IF_ECL_09 : HeatPort;
        port p_IF_ECL_10 : FluidPort;
        port p_IF_ECL_16 : PowerPort;
        port p_IF_ECL_33 : ~HeatPort;
        port p_IF_ECL_39 : PowerPort;
        port p_IF_ECL_40 : PowerPort;
        port p_IF_ECL_41 : PowerPort;
        port p_IF_ECL_42 : PowerPort;
        port p_IF_ECL_43 : PowerPort;
        port p_IF_GNC_11 : PowerPort;
        port p_IF_GNC_12 : PowerPort;
        port p_IF_IMU_06 : PowerPort;
        port p_IF_IMU_11 : PowerPort;
        port p_IF_MPS_05 : PowerPort;
        port p_IF_MPS_06 : PowerPort;
        port p_IF_OMS_12 : PowerPort;
        port p_IF_OMS_13 : PowerPort;
        port p_IF_PCS_18 : PowerPort;
        port p_IF_PCS_19 : PowerPort;
        port p_IF_PCS_20 : PowerPort;
        port p_IF_PCS_21 : PowerPort;
        port p_IF_PCS_22 : PowerPort;
        port p_IF_RCRS_12 : PowerPort;
        port p_IF_RCRS_13 : PowerPort;
        port p_IF_RCS_09 : PowerPort;
        port p_IF_RCS_10 : PowerPort;
        port p_IF_RCS_11 : PowerPort;
        port p_IF_TCS_02 : HeatPort;
        port p_IF_TCS_20 : PowerPort;
        port p_IF_THC_16 : PowerPort;
        port p_IF_THC_17 : PowerPort;
        port p_IF_THC_18 : PowerPort;
        port p_IF_WCL_12 : PowerPort;
        port p_IF_WCL_13 : PowerPort;
        port p_IF_WCL_14 : PowerPort;
        port p_IF_WCL_18 : ~HeatPort;
        port p_IF_WCS_10 : PowerPort;
        port p_IF_WCS_11 : PowerPort;
        interface <'IF-EPS-03'> IF_EPS_03 : FluidInterface connect prsd.p_IF_EPS_03 to fcp.p_IF_EPS_03;
        interface <'IF-EPS-05'> IF_EPS_05 : PowerInterface connect fcp.p_IF_EPS_05 to dc.p_IF_EPS_05;
        interface <'IF-EPS-10'> IF_EPS_10 : PowerInterface connect dc.p_IF_EPS_10 to ac.p_IF_EPS_10;
        interface <'IF-EPS-13'> IF_EPS_13 : PowerInterface connect ac.p_IF_EPS_13 to fcp.p_IF_EPS_13;
        interface <'IF-EPS-16'> IF_EPS_16 : PowerInterface connect dc.p_IF_EPS_16 to fcp.p_IF_EPS_16;
    }
    part def <'SSD-FD-EPS-AC-001'> EPS_AC {
        doc /* 交流発電・配電（EPDC-AC）（SSD-FD-EPS-AC-001） */
        port p_IF_AVB_03 : ~HeatPort;
        port p_IF_AVB_07 : PowerPort;
        port p_IF_AVB_15 : PowerPort;
        port p_IF_EPS_10 : ~PowerPort;
        port p_IF_EPS_12 : PowerPort;
        port p_IF_EPS_13 : PowerPort;
    }
    part def <'SSD-FD-EPS-DC-001'> EPS_DC {
        doc /* 直流配電（EPDC-DC）（SSD-FD-EPS-DC-001） */
        port p_IF_APU_17 : PowerPort;
        port p_IF_APU_18 : PowerPort;
        port p_IF_CREW_06 : PowerPort;
        port p_IF_CT_12 : PowerPort;
        port p_IF_CT_13 : PowerPort;
        port p_IF_CW_01 : PowerPort;
        port p_IF_EPS_02 : ~PowerPort;
        port p_IF_EPS_05 : ~PowerPort;
        port p_IF_EPS_10 : PowerPort;
        port p_IF_EPS_11 : PowerPort;
        port p_IF_EPS_14 : ~HeatPort;
        port p_IF_EPS_15 : PowerPort;
        port p_IF_EPS_16 : PowerPort;
        port p_IF_EVA_10 : PowerPort;
        port p_IF_FDS_04 : PowerPort;
        port p_IF_FDS_10 : PowerPort;
        port p_IF_H2O_06 : PowerPort;
        port p_IF_H2O_11 : PowerPort;
        port p_IF_MECH_01 : PowerPort;
        port p_IF_PLS_01 : PowerPort;
        port p_IF_PLS_02 : PowerPort;
    }
    part def <'SSD-FD-EPS-FCP-001'> EPS_FCP {
        doc /* 燃料電池発電装置（FCP）（SSD-FD-EPS-FCP-001） */
        port p_IF_EPS_03 : ~FluidPort;
        port p_IF_EPS_05 : PowerPort;
        port p_IF_EPS_06 : FluidPort;
        port p_IF_EPS_07 : HeatPort;
        port p_IF_EPS_08 : FluidPort;
        port p_IF_EPS_09 : DataBiPort;
        port p_IF_EPS_13 : ~PowerPort;
        port p_IF_EPS_16 : ~PowerPort;
    }
    part def <'SSD-FD-EPS-PRSD-001'> EPS_PRSD {
        doc /* 反応剤貯蔵・分配（PRSD）（SSD-FD-EPS-PRSD-001） */
        port p_IF_EPS_01 : ~FluidPort;
        port p_IF_EPS_03 : FluidPort;
        port p_IF_EPS_04 : FluidPort;
    }
    part def <'SSD-FD-EVA-001'> EVA {
        doc /* 船外活動（EVA/EMU）（SSD-FD-EVA-001） */
        part chk : EVA_CHK;
        part dpr : EVA_DPR;
        part emg : EVA_EMG;
        part mnt : EVA_MNT;
        part ops : EVA_OPS;
        part tls : EVA_TLS;
        port p_IF_ORB_45 : FluidBiPort;
        port p_IF_ORB_46 : RfBiPort;
        port p_IF_ECL_20 : FluidBiPort;
        interface <'IF-EVA-01'> IF_EVA_01 : DataInterface connect ops.p_IF_EVA_01 to chk.p_IF_EVA_01;
        interface <'IF-EVA-02'> IF_EVA_02 : DataInterface connect chk.p_IF_EVA_02 to dpr.p_IF_EVA_02;
        interface <'IF-EVA-03'> IF_EVA_03 : LoadInterface connect tls.p_IF_EVA_03 to chk.p_IF_EVA_03;
        interface <'IF-EVA-05'> IF_EVA_05 : DataInterface connect ops.p_IF_EVA_05 to dpr.p_IF_EVA_05;
        interface <'IF-EVA-06'> IF_EVA_06 : DataInterface connect dpr.p_IF_EVA_06 to mnt.p_IF_EVA_06;
        interface <'IF-EVA-07'> IF_EVA_07 : DataInterface connect emg.p_IF_EVA_07 to dpr.p_IF_EVA_07;
        interface <'IF-EVA-08'> IF_EVA_08 : LoadInterface connect tls.p_IF_EVA_08 to emg.p_IF_EVA_08;
        interface <'IF-EVA-09'> IF_EVA_09 : PowerInterface connect mnt.p_IF_EVA_09 to tls.p_IF_EVA_09;
        interface <'IF-EVA-13'> IF_EVA_13 : DataInterface connect ops.p_IF_EVA_13 to emg.p_IF_EVA_13;
    }
    part def <'SSD-FD-EVA-CHK-001'> EVA_CHK {
        doc /* EMU点検・準備（CHK）（SSD-FD-EVA-CHK-001） */
        port p_IF_ALS_07 : FluidBiPort;
        port p_IF_EVA_01 : ~DataPort;
        port p_IF_EVA_02 : DataPort;
        port p_IF_EVA_03 : ~LoadPort;
    }
    part def <'SSD-FD-EVA-DPR-001'> EVA_DPR {
        doc /* 減圧・再与圧（DPR）（SSD-FD-EVA-DPR-001） */
        port p_IF_EVA_02 : ~DataPort;
        port p_IF_EVA_04 : FluidBiPort;
        port p_IF_EVA_05 : ~DataPort;
        port p_IF_EVA_06 : DataPort;
        port p_IF_EVA_07 : ~DataPort;
    }
    part def <'SSD-FD-EVA-EMG-001'> EVA_EMG {
        doc /* 非常時の手順（EMG）（SSD-FD-EVA-EMG-001） */
        port p_IF_EVA_07 : DataPort;
        port p_IF_EVA_08 : ~LoadPort;
        port p_IF_EVA_11 : LoadPort;
        port p_IF_EVA_12 : LoadPort;
        port p_IF_EVA_13 : ~DataPort;
    }
    part def <'SSD-FD-EVA-MNT-001'> EVA_MNT {
        doc /* EVA後の手入れ・再充填（MNT）（SSD-FD-EVA-MNT-001） */
        port p_IF_ALS_06 : FluidBiPort;
        port p_IF_EVA_06 : ~DataPort;
        port p_IF_EVA_09 : PowerPort;
        port p_IF_EVA_10 : ~PowerPort;
    }
    part def <'SSD-FD-EVA-OPS-001'> EVA_OPS {
        doc /* 合図と運用管理（OPS）（SSD-FD-EVA-OPS-001） */
        port p_IF_CT_10 : RfBiPort;
        port p_IF_EVA_01 : DataPort;
        port p_IF_EVA_05 : DataPort;
        port p_IF_EVA_13 : DataPort;
        port p_IF_EVA_14 : ~FluidPort;
        port p_IF_EVA_15 : DataPort;
    }
    part def <'SSD-FD-EVA-TLS-001'> EVA_TLS {
        doc /* 工具・収納（TLS）（SSD-FD-EVA-TLS-001） */
        port p_IF_EVA_03 : LoadPort;
        port p_IF_EVA_08 : LoadPort;
        port p_IF_EVA_09 : ~PowerPort;
    }
    part def <'SSD-FD-GNC-001'> GNC {
        doc /* 誘導・航法・制御（GN&C）（SSD-FD-GNC-001） */
        part act : GNC_ACT;
        part ccd : GNC_CCD;
        part fcs : GNC_FCS;
        part gns : GNC_GNS;
        part ins : GNC_INS;
        part nas : GNC_NAS;
        part ops : GNC_OPS;
        port p_IF_ORB_02 : DataBiPort;
        port p_IF_ORB_03 : DataPort;
        port p_IF_ORB_04 : DataPort;
        port p_IF_ORB_08 : ~HydraulicPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_21 : DataPort;
        port p_IF_ORB_22 : DataPort;
        port p_IF_ORB_24 : ~DataPort;
        port p_IF_ORB_34 : ~HeatPort;
        port p_IF_ORB_41 : DataPort;
        port p_IF_ARS_19 : ~HeatPort;
        port p_IF_ARS_41 : ~HeatPort;
        port p_IF_AVB_04 : ~HeatPort;
        port p_IF_IMU_02 : ~HeatPort;
        interface <'IF-GNC-01'> IF_GNC_01 : DataInterface connect ins.p_IF_GNC_01 to gns.p_IF_GNC_01;
        interface <'IF-GNC-02'> IF_GNC_02 : DataInterface connect nas.p_IF_GNC_02 to gns.p_IF_GNC_02;
        interface <'IF-GNC-03'> IF_GNC_03 : DataInterface connect nas.p_IF_GNC_03 to fcs.p_IF_GNC_03;
        interface <'IF-GNC-04'> IF_GNC_04 : DataInterface connect gns.p_IF_GNC_04 to fcs.p_IF_GNC_04;
        interface <'IF-GNC-05'> IF_GNC_05 : DataBiInterface connect fcs.p_IF_GNC_05 to act.p_IF_GNC_05;
        interface <'IF-GNC-06'> IF_GNC_06 : DataInterface connect ccd.p_IF_GNC_06 to fcs.p_IF_GNC_06;
        interface <'IF-GNC-07'> IF_GNC_07 : DataInterface connect gns.p_IF_GNC_07 to ccd.p_IF_GNC_07;
        interface <'IF-GNC-08'> IF_GNC_08 : DataInterface connect ccd.p_IF_GNC_08 to ops.p_IF_GNC_08;
        interface <'IF-GNC-09'> IF_GNC_09 : DataInterface connect ops.p_IF_GNC_09 to act.p_IF_GNC_09;
        interface <'IF-GNC-10'> IF_GNC_10 : DataInterface connect ops.p_IF_GNC_10 to ins.p_IF_GNC_10;
    }
    part def <'SSD-FD-GNC-ACT-001'> GNC_ACT {
        doc /* 舵面・推力方向制御駆動（ACT）（SSD-FD-GNC-ACT-001） */
        port p_IF_APU_10 : ~HydraulicPort;
        port p_IF_GNC_05 : DataBiPort;
        port p_IF_GNC_09 : ~DataPort;
        port p_IF_GNC_16 : DataPort;
        port p_IF_GNC_18 : DataPort;
        port p_IF_GNC_20 : DataPort;
    }
    part def <'SSD-FD-GNC-CCD-001'> GNC_CCD {
        doc /* 乗員操縦・表示（CCD）（SSD-FD-GNC-CCD-001） */
        port p_IF_DPS_04 : DataPort;
        port p_IF_DPS_22 : ~DataPort;
        port p_IF_GNC_06 : DataPort;
        port p_IF_GNC_07 : ~DataPort;
        port p_IF_GNC_08 : DataPort;
    }
    part def <'SSD-FD-GNC-FCS-001'> GNC_FCS {
        doc /* DAP・飛行制御センサ（FCS）（SSD-FD-GNC-FCS-001） */
        port p_IF_GNC_03 : ~DataPort;
        port p_IF_GNC_04 : ~DataPort;
        port p_IF_GNC_05 : DataBiPort;
        port p_IF_GNC_06 : ~DataPort;
        port p_IF_GNC_14 : DataPort;
        port p_IF_GNC_15 : DataPort;
        port p_IF_GNC_19 : ~DataPort;
    }
    part def <'SSD-FD-GNC-GNS-001'> GNC_GNS {
        doc /* 誘導・航法演算（GNS）（SSD-FD-GNC-GNS-001） */
        port p_IF_CT_08 : ~DataPort;
        port p_IF_DPS_03 : DataBiPort;
        port p_IF_GNC_01 : ~DataPort;
        port p_IF_GNC_02 : ~DataPort;
        port p_IF_GNC_04 : DataPort;
        port p_IF_GNC_07 : DataPort;
        port p_IF_GNC_17 : DataPort;
    }
    part def <'SSD-FD-GNC-INS-001'> GNC_INS {
        doc /* 慣性計測・アライメント（INS）（SSD-FD-GNC-INS-001） */
        port p_IF_ECL_32 : ~HeatPort;
        port p_IF_GNC_01 : DataPort;
        port p_IF_GNC_10 : ~DataPort;
        port p_IF_GNC_11 : ~PowerPort;
    }
    part def <'SSD-FD-GNC-NAS-001'> GNC_NAS {
        doc /* 航法援助・エアデータ（NAS）（SSD-FD-GNC-NAS-001） */
        port p_IF_GNC_02 : DataPort;
        port p_IF_GNC_03 : DataPort;
        port p_IF_GNC_12 : ~PowerPort;
        port p_IF_GNC_13 : ~RfPort;
    }
    part def <'SSD-FD-GNC-OPS-001'> GNC_OPS {
        doc /* GNC運用管理（OPS）（SSD-FD-GNC-OPS-001） */
        port p_IF_GNC_08 : ~DataPort;
        port p_IF_GNC_09 : DataPort;
        port p_IF_GNC_10 : DataPort;
    }
    part def <'SSD-FD-MECH-001'> MECH {
        doc /* 機械系（MECH）（SSD-FD-MECH-001） */
        part act : MECH_ACT;
        part dec : MECH_DEC;
        part ldg : MECH_LDG;
        part ops : MECH_OPS;
        part plb : MECH_PLB;
        part vnt : MECH_VNT;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_38 : LoadBiPort;
        port p_IF_ORB_39 : ~HydraulicPort;
        port p_IF_ORB_40 : ~DataPort;
        interface <'IF-MECH-05'> IF_MECH_05 : LoadInterface connect act.p_IF_MECH_05 to plb.p_IF_MECH_05;
        interface <'IF-MECH-06'> IF_MECH_06 : LoadInterface connect act.p_IF_MECH_06 to vnt.p_IF_MECH_06;
        interface <'IF-MECH-07'> IF_MECH_07 : DataInterface connect ldg.p_IF_MECH_07 to dec.p_IF_MECH_07;
        interface <'IF-MECH-08'> IF_MECH_08 : DataInterface connect ops.p_IF_MECH_08 to ldg.p_IF_MECH_08;
        interface <'IF-MECH-09'> IF_MECH_09 : DataInterface connect ops.p_IF_MECH_09 to dec.p_IF_MECH_09;
        interface <'IF-MECH-10'> IF_MECH_10 : DataInterface connect ops.p_IF_MECH_10 to vnt.p_IF_MECH_10;
    }
    part def <'SSD-FD-MECH-ACT-001'> MECH_ACT {
        doc /* 電動駆動（PDU・MCA）（ACT）（SSD-FD-MECH-ACT-001） */
        port p_IF_DPS_10 : ~DataPort;
        port p_IF_MECH_01 : ~PowerPort;
        port p_IF_MECH_05 : LoadPort;
        port p_IF_MECH_06 : LoadPort;
    }
    part def <'SSD-FD-MECH-DEC-001'> MECH_DEC {
        doc /* 制動・操向・減速傘（DEC）（SSD-FD-MECH-DEC-001） */
        port p_IF_APU_11 : ~HydraulicPort;
        port p_IF_MECH_07 : ~DataPort;
        port p_IF_MECH_09 : ~DataPort;
    }
    part def <'SSD-FD-MECH-LDG-001'> MECH_LDG {
        doc /* 降着装置（LDG）（SSD-FD-MECH-LDG-001） */
        port p_IF_MECH_03 : LoadBiPort;
        port p_IF_MECH_07 : DataPort;
        port p_IF_MECH_08 : ~DataPort;
    }
    part def <'SSD-FD-MECH-OPS-001'> MECH_OPS {
        doc /* MECH運用管理（OPS）（SSD-FD-MECH-OPS-001） */
        port p_IF_MECH_08 : DataPort;
        port p_IF_MECH_09 : DataPort;
        port p_IF_MECH_10 : DataPort;
    }
    part def <'SSD-FD-MECH-PLB-001'> MECH_PLB {
        doc /* ペイロードベイドア（PLB）（SSD-FD-MECH-PLB-001） */
        port p_IF_EVA_11 : ~LoadPort;
        port p_IF_MECH_02 : LoadBiPort;
        port p_IF_MECH_05 : ~LoadPort;
    }
    part def <'SSD-FD-MECH-VNT-001'> MECH_VNT {
        doc /* ベント・ETアンビリカル扉（VNT）（SSD-FD-MECH-VNT-001） */
        port p_IF_MECH_04 : LoadBiPort;
        port p_IF_MECH_06 : ~LoadPort;
        port p_IF_MECH_10 : ~DataPort;
    }
    part def <'SSD-FD-MPS-001'> MPS {
        doc /* 主推進系（MPS）（SSD-FD-MPS-001） */
        part ctl : MPS_CTL;
        part dmp : MPS_DMP;
        part he : MPS_HE;
        part ops : MPS_OPS;
        part pms : MPS_PMS;
        part ssme : MPS_SSME;
        part tvc : MPS_TVC;
        port p_IF_ORB_06 : ~DataPort;
        port p_IF_ORB_07 : ~HydraulicPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_15 : ~FluidPort;
        port p_IF_ORB_21 : ~DataPort;
        port p_IF_ORB_29 : ~FluidPort;
        port p_IF_ORB_41 : DataPort;
        interface <'IF-MPS-09'> IF_MPS_09 : DataBiInterface connect ctl.p_IF_MPS_09 to ssme.p_IF_MPS_09;
        interface <'IF-MPS-10'> IF_MPS_10 : FluidInterface connect pms.p_IF_MPS_10 to ssme.p_IF_MPS_10;
        interface <'IF-MPS-11'> IF_MPS_11 : FluidInterface connect ssme.p_IF_MPS_11 to pms.p_IF_MPS_11;
        interface <'IF-MPS-12'> IF_MPS_12 : FluidInterface connect he.p_IF_MPS_12 to ssme.p_IF_MPS_12;
        interface <'IF-MPS-13'> IF_MPS_13 : FluidInterface connect he.p_IF_MPS_13 to pms.p_IF_MPS_13;
        interface <'IF-MPS-14'> IF_MPS_14 : FluidInterface connect he.p_IF_MPS_14 to dmp.p_IF_MPS_14;
        interface <'IF-MPS-15'> IF_MPS_15 : FluidBiInterface connect dmp.p_IF_MPS_15 to pms.p_IF_MPS_15;
        interface <'IF-MPS-16'> IF_MPS_16 : HydraulicInterface connect tvc.p_IF_MPS_16 to ssme.p_IF_MPS_16;
        interface <'IF-MPS-17'> IF_MPS_17 : DataBiInterface connect ops.p_IF_MPS_17 to ctl.p_IF_MPS_17;
        interface <'IF-MPS-18'> IF_MPS_18 : DataInterface connect ops.p_IF_MPS_18 to he.p_IF_MPS_18;
        interface <'IF-MPS-19'> IF_MPS_19 : DataInterface connect ops.p_IF_MPS_19 to dmp.p_IF_MPS_19;
        interface <'IF-MPS-20'> IF_MPS_20 : DataInterface connect ops.p_IF_MPS_20 to tvc.p_IF_MPS_20;
    }
    part def <'SSD-FD-MPS-CTL-001'> MPS_CTL {
        doc /* 主エンジン制御器（CTL）（SSD-FD-MPS-CTL-001） */
        port p_IF_DPS_05 : DataBiPort;
        port p_IF_GNC_17 : ~DataPort;
        port p_IF_MPS_05 : ~PowerPort;
        port p_IF_MPS_09 : DataBiPort;
        port p_IF_MPS_17 : DataBiPort;
    }
    part def <'SSD-FD-MPS-DMP-001'> MPS_DMP {
        doc /* 充填・ダンプ・不活性化（DMP）（SSD-FD-MPS-DMP-001） */
        port p_IF_MPS_03 : ~FluidPort;
        port p_IF_MPS_14 : ~FluidPort;
        port p_IF_MPS_15 : FluidBiPort;
        port p_IF_MPS_19 : ~DataPort;
        port p_IF_MPS_21 : FluidPort;
    }
    part def <'SSD-FD-MPS-HE-001'> MPS_HE {
        doc /* ヘリウム・空圧（HE）（SSD-FD-MPS-HE-001） */
        port p_IF_MPS_06 : ~PowerPort;
        port p_IF_MPS_07 : DataPort;
        port p_IF_MPS_12 : FluidPort;
        port p_IF_MPS_13 : FluidPort;
        port p_IF_MPS_14 : FluidPort;
        port p_IF_MPS_18 : ~DataPort;
    }
    part def <'SSD-FD-MPS-OPS-001'> MPS_OPS {
        doc /* MPS運用管理（OPS）（SSD-FD-MPS-OPS-001） */
        port p_IF_MPS_17 : DataBiPort;
        port p_IF_MPS_18 : DataPort;
        port p_IF_MPS_19 : DataPort;
        port p_IF_MPS_20 : DataPort;
    }
    part def <'SSD-FD-MPS-PMS-001'> MPS_PMS {
        doc /* 推進薬供給（PMS）（SSD-FD-MPS-PMS-001） */
        port p_IF_MPS_01 : FluidBiPort;
        port p_IF_MPS_02 : FluidPort;
        port p_IF_MPS_04 : ~FluidPort;
        port p_IF_MPS_08 : DataPort;
        port p_IF_MPS_10 : FluidPort;
        port p_IF_MPS_11 : ~FluidPort;
        port p_IF_MPS_13 : ~FluidPort;
        port p_IF_MPS_15 : FluidBiPort;
    }
    part def <'SSD-FD-MPS-SSME-001'> MPS_SSME {
        doc /* 主エンジン本体（SSME）（SSD-FD-MPS-SSME-001） */
        port p_IF_MPS_09 : DataBiPort;
        port p_IF_MPS_10 : ~FluidPort;
        port p_IF_MPS_11 : FluidPort;
        port p_IF_MPS_12 : ~FluidPort;
        port p_IF_MPS_16 : ~HydraulicPort;
        port p_IF_MPS_22 : LoadPort;
    }
    part def <'SSD-FD-MPS-TVC-001'> MPS_TVC {
        doc /* 油圧・推力方向制御（TVC）（SSD-FD-MPS-TVC-001） */
        port p_IF_APU_09 : ~HydraulicPort;
        port p_IF_GNC_16 : ~DataPort;
        port p_IF_MPS_16 : HydraulicPort;
        port p_IF_MPS_20 : ~DataPort;
    }
    part def <'SSD-FD-OMS-001'> OMS {
        doc /* 軌道制御系（OMS）（SSD-FD-OMS-001） */
        part eng : OMS_ENG;
        part he : OMS_HE;
        part ops : OMS_OPS;
        part psd : OMS_PSD;
        part thm : OMS_THM;
        part tvc : OMS_TVC;
        part xfd : OMS_XFD;
        port p_IF_ORB_04 : ~DataPort;
        port p_IF_ORB_05 : FluidPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_41 : DataPort;
        interface <'IF-OMS-01'> IF_OMS_01 : FluidInterface connect he.p_IF_OMS_01 to psd.p_IF_OMS_01;
        interface <'IF-OMS-02'> IF_OMS_02 : FluidInterface connect psd.p_IF_OMS_02 to eng.p_IF_OMS_02;
        interface <'IF-OMS-03'> IF_OMS_03 : FluidInterface connect psd.p_IF_OMS_03 to xfd.p_IF_OMS_03;
        interface <'IF-OMS-04'> IF_OMS_04 : FluidInterface connect xfd.p_IF_OMS_04 to eng.p_IF_OMS_04;
        interface <'IF-OMS-05'> IF_OMS_05 : LoadInterface connect eng.p_IF_OMS_05 to tvc.p_IF_OMS_05;
        interface <'IF-OMS-06'> IF_OMS_06 : DataInterface connect ops.p_IF_OMS_06 to eng.p_IF_OMS_06;
        interface <'IF-OMS-07'> IF_OMS_07 : DataInterface connect ops.p_IF_OMS_07 to he.p_IF_OMS_07;
        interface <'IF-OMS-08'> IF_OMS_08 : DataInterface connect ops.p_IF_OMS_08 to xfd.p_IF_OMS_08;
        interface <'IF-OMS-09'> IF_OMS_09 : DataInterface connect psd.p_IF_OMS_09 to ops.p_IF_OMS_09;
        interface <'IF-OMS-10'> IF_OMS_10 : DataInterface connect ops.p_IF_OMS_10 to thm.p_IF_OMS_10;
    }
    part def <'SSD-FD-OMS-ENG-001'> OMS_ENG {
        doc /* OMSエンジン・GN2系（ENG）（SSD-FD-OMS-ENG-001） */
        port p_IF_OMS_02 : ~FluidPort;
        port p_IF_OMS_04 : ~FluidPort;
        port p_IF_OMS_05 : LoadPort;
        port p_IF_OMS_06 : ~DataPort;
        port p_IF_OMS_14 : DataPort;
        port p_IF_OMS_17 : DataPort;
    }
    part def <'SSD-FD-OMS-HE-001'> OMS_HE {
        doc /* ヘリウム加圧（HE）（SSD-FD-OMS-HE-001） */
        port p_IF_OMS_01 : FluidPort;
        port p_IF_OMS_07 : ~DataPort;
    }
    part def <'SSD-FD-OMS-OPS-001'> OMS_OPS {
        doc /* 運用管理（規則・処置）（OPS）（SSD-FD-OMS-OPS-001） */
        port p_IF_OMS_06 : DataPort;
        port p_IF_OMS_07 : DataPort;
        port p_IF_OMS_08 : DataPort;
        port p_IF_OMS_09 : ~DataPort;
        port p_IF_OMS_10 : DataPort;
    }
    part def <'SSD-FD-OMS-PSD-001'> OMS_PSD {
        doc /* 推進薬貯蔵・分配（PSD）（SSD-FD-OMS-PSD-001） */
        port p_IF_OMS_01 : ~FluidPort;
        port p_IF_OMS_02 : FluidPort;
        port p_IF_OMS_03 : FluidPort;
        port p_IF_OMS_09 : DataPort;
        port p_IF_OMS_12 : ~PowerPort;
        port p_IF_OMS_15 : DataPort;
    }
    part def <'SSD-FD-OMS-THM-001'> OMS_THM {
        doc /* 推進薬熱管理（THM）（SSD-FD-OMS-THM-001） */
        port p_IF_OMS_10 : ~DataPort;
        port p_IF_OMS_19 : ~HeatPort;
    }
    part def <'SSD-FD-OMS-TVC-001'> OMS_TVC {
        doc /* 推力方向制御（ジンバル）（TVC）（SSD-FD-OMS-TVC-001） */
        port p_IF_GNC_15 : ~DataPort;
        port p_IF_OMS_05 : ~LoadPort;
        port p_IF_OMS_13 : ~PowerPort;
        port p_IF_OMS_16 : DataPort;
        port p_IF_OMS_18 : LoadPort;
    }
    part def <'SSD-FD-OMS-XFD-001'> OMS_XFD {
        doc /* クロスフィード・RCS連結（XFD）（SSD-FD-OMS-XFD-001） */
        port p_IF_OMS_03 : ~FluidPort;
        port p_IF_OMS_04 : FluidPort;
        port p_IF_OMS_08 : ~DataPort;
        port p_IF_OMS_11 : FluidPort;
    }
    part def <'SSD-FD-PLS-001'> PLS {
        doc /* ペイロード支援（PDRS・ODS）（SSD-FD-PLS-001） */
        part arm : PLS_ARM;
        part ctl : PLS_CTL;
        part mpm : PLS_MPM;
        part ods : PLS_ODS;
        part ops : PLS_OPS;
        part prl : PLS_PRL;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_47 : LoadBiPort;
        port p_IF_ORB_48 : DataBiPort;
        port p_IF_ORB_49 : DataBiPort;
        interface <'IF-PLS-06'> IF_PLS_06 : DataBiInterface connect ctl.p_IF_PLS_06 to arm.p_IF_PLS_06;
        interface <'IF-PLS-07'> IF_PLS_07 : LoadInterface connect mpm.p_IF_PLS_07 to arm.p_IF_PLS_07;
        interface <'IF-PLS-08'> IF_PLS_08 : DataInterface connect ops.p_IF_PLS_08 to ctl.p_IF_PLS_08;
        interface <'IF-PLS-09'> IF_PLS_09 : DataInterface connect ops.p_IF_PLS_09 to prl.p_IF_PLS_09;
    }
    part def <'SSD-FD-PLS-ARM-001'> PLS_ARM {
        doc /* RMSアーム（ARM）（SSD-FD-PLS-ARM-001） */
        port p_IF_CT_11 : DataBiPort;
        port p_IF_PLS_01 : ~PowerPort;
        port p_IF_PLS_06 : DataBiPort;
        port p_IF_PLS_07 : ~LoadPort;
    }
    part def <'SSD-FD-PLS-CTL-001'> PLS_CTL {
        doc /* RMS制御（MCIU・D&C）（CTL）（SSD-FD-PLS-CTL-001） */
        port p_IF_DPS_13 : DataBiPort;
        port p_IF_PLS_06 : DataBiPort;
        port p_IF_PLS_08 : ~DataPort;
    }
    part def <'SSD-FD-PLS-MPM-001'> PLS_MPM {
        doc /* MPM・保持ラッチ・投棄（MPM）（SSD-FD-PLS-MPM-001） */
        port p_IF_PLS_03 : LoadBiPort;
        port p_IF_PLS_07 : LoadPort;
    }
    part def <'SSD-FD-PLS-ODS-001'> PLS_ODS {
        doc /* オービタ・ドッキング系（ODS）（SSD-FD-PLS-ODS-001） */
        port p_IF_PLS_02 : ~PowerPort;
        port p_IF_PLS_05 : LoadBiPort;
    }
    part def <'SSD-FD-PLS-OPS-001'> PLS_OPS {
        doc /* PLS運用管理（OPS）（SSD-FD-PLS-OPS-001） */
        port p_IF_EVA_12 : ~LoadPort;
        port p_IF_PLS_08 : DataPort;
        port p_IF_PLS_09 : DataPort;
    }
    part def <'SSD-FD-PLS-PRL-001'> PLS_PRL {
        doc /* ペイロード保持ラッチ（PRL）（SSD-FD-PLS-PRL-001） */
        port p_IF_PLS_04 : LoadBiPort;
        port p_IF_PLS_09 : ~DataPort;
    }
    part def <'SSD-FD-RCS-001'> RCS {
        doc /* 姿勢制御系（RCS）（SSD-FD-RCS-001） */
        part hep : RCS_HEP;
        part htr : RCS_HTR;
        part jet : RCS_JET;
        part ops : RCS_OPS;
        part prp : RCS_PRP;
        part rjd : RCS_RJD;
        part rm : RCS_RM;
        port p_IF_ORB_03 : ~DataPort;
        port p_IF_ORB_05 : ~FluidPort;
        port p_IF_ORB_14 : ~PowerPort;
        port p_IF_ORB_41 : DataPort;
        interface <'IF-RCS-01'> IF_RCS_01 : FluidInterface connect hep.p_IF_RCS_01 to prp.p_IF_RCS_01;
        interface <'IF-RCS-02'> IF_RCS_02 : FluidInterface connect prp.p_IF_RCS_02 to jet.p_IF_RCS_02;
        interface <'IF-RCS-03'> IF_RCS_03 : DataBiInterface connect rjd.p_IF_RCS_03 to jet.p_IF_RCS_03;
        interface <'IF-RCS-04'> IF_RCS_04 : DataInterface connect rjd.p_IF_RCS_04 to rm.p_IF_RCS_04;
        interface <'IF-RCS-05'> IF_RCS_05 : DataInterface connect jet.p_IF_RCS_05 to rm.p_IF_RCS_05;
        interface <'IF-RCS-06'> IF_RCS_06 : DataBiInterface connect rm.p_IF_RCS_06 to prp.p_IF_RCS_06;
        interface <'IF-RCS-07'> IF_RCS_07 : HeatInterface connect htr.p_IF_RCS_07 to jet.p_IF_RCS_07;
        interface <'IF-RCS-08'> IF_RCS_08 : HeatInterface connect htr.p_IF_RCS_08 to prp.p_IF_RCS_08;
        interface <'IF-RCS-16'> IF_RCS_16 : DataInterface connect ops.p_IF_RCS_16 to prp.p_IF_RCS_16;
        interface <'IF-RCS-17'> IF_RCS_17 : DataInterface connect ops.p_IF_RCS_17 to hep.p_IF_RCS_17;
        interface <'IF-RCS-18'> IF_RCS_18 : DataInterface connect ops.p_IF_RCS_18 to rm.p_IF_RCS_18;
        interface <'IF-RCS-19'> IF_RCS_19 : DataInterface connect ops.p_IF_RCS_19 to htr.p_IF_RCS_19;
    }
    part def <'SSD-FD-RCS-HEP-001'> RCS_HEP {
        doc /* ヘリウム加圧（HEP）（SSD-FD-RCS-HEP-001） */
        port p_IF_RCS_01 : FluidPort;
        port p_IF_RCS_14 : DataPort;
        port p_IF_RCS_17 : ~DataPort;
    }
    part def <'SSD-FD-RCS-HTR-001'> RCS_HTR {
        doc /* 熱制御（ヒータ）（HTR）（SSD-FD-RCS-HTR-001） */
        port p_IF_RCS_07 : HeatPort;
        port p_IF_RCS_08 : HeatPort;
        port p_IF_RCS_11 : ~PowerPort;
        port p_IF_RCS_15 : DataPort;
        port p_IF_RCS_19 : ~DataPort;
    }
    part def <'SSD-FD-RCS-JET-001'> RCS_JET {
        doc /* 主・バーニア噴射器（JET）（SSD-FD-RCS-JET-001） */
        port p_IF_RCS_02 : ~FluidPort;
        port p_IF_RCS_03 : DataBiPort;
        port p_IF_RCS_05 : DataPort;
        port p_IF_RCS_07 : ~HeatPort;
        port p_IF_RCS_20 : LoadPort;
    }
    part def <'SSD-FD-RCS-OPS-001'> RCS_OPS {
        doc /* RCS運用管理（OPS）（SSD-FD-RCS-OPS-001） */
        port p_IF_RCS_16 : DataPort;
        port p_IF_RCS_17 : DataPort;
        port p_IF_RCS_18 : DataPort;
        port p_IF_RCS_19 : DataPort;
    }
    part def <'SSD-FD-RCS-PRP-001'> RCS_PRP {
        doc /* 推進薬貯蔵・分配（PRP）（SSD-FD-RCS-PRP-001） */
        port p_IF_OMS_11 : ~FluidPort;
        port p_IF_RCS_01 : ~FluidPort;
        port p_IF_RCS_02 : FluidPort;
        port p_IF_RCS_06 : DataBiPort;
        port p_IF_RCS_08 : ~HeatPort;
        port p_IF_RCS_09 : ~PowerPort;
        port p_IF_RCS_12 : DataPort;
        port p_IF_RCS_16 : ~DataPort;
    }
    part def <'SSD-FD-RCS-RJD-001'> RCS_RJD {
        doc /* 噴射器駆動回路（RJD）（SSD-FD-RCS-RJD-001） */
        port p_IF_GNC_14 : ~DataPort;
        port p_IF_RCS_03 : DataBiPort;
        port p_IF_RCS_04 : DataPort;
        port p_IF_RCS_10 : ~PowerPort;
    }
    part def <'SSD-FD-RCS-RM-001'> RCS_RM {
        doc /* 噴射器冗長管理（RM）（SSD-FD-RCS-RM-001） */
        port p_IF_RCS_04 : ~DataPort;
        port p_IF_RCS_05 : ~DataPort;
        port p_IF_RCS_06 : DataBiPort;
        port p_IF_RCS_13 : DataPort;
        port p_IF_RCS_18 : ~DataPort;
    }
    part def <'SSD-FD-STR-001'> STR {
        doc /* 構造（STR）（SSD-FD-STR-001） */
        part aft : STR_AFT;
        part crm : STR_CRM;
        part fwd : STR_FWD;
        part mid : STR_MID;
        part ops : STR_OPS;
        part wng : STR_WNG;
        port p_IF_ORB_33 : ~FluidPort;
        port p_IF_ORB_36 : LoadBiPort;
        port p_IF_ORB_37 : ~HeatPort;
        port p_IF_ORB_38 : LoadBiPort;
        port p_IF_ORB_47 : LoadBiPort;
        interface <'IF-STR-04'> IF_STR_04 : LoadInterface connect crm.p_IF_STR_04 to fwd.p_IF_STR_04;
        interface <'IF-STR-05'> IF_STR_05 : LoadBiInterface connect mid.p_IF_STR_05 to fwd.p_IF_STR_05;
        interface <'IF-STR-06'> IF_STR_06 : LoadBiInterface connect aft.p_IF_STR_06 to mid.p_IF_STR_06;
        interface <'IF-STR-07'> IF_STR_07 : LoadBiInterface connect wng.p_IF_STR_07 to mid.p_IF_STR_07;
        interface <'IF-STR-08'> IF_STR_08 : LoadBiInterface connect wng.p_IF_STR_08 to aft.p_IF_STR_08;
        interface <'IF-STR-09'> IF_STR_09 : DataInterface connect ops.p_IF_STR_09 to crm.p_IF_STR_09;
        interface <'IF-STR-10'> IF_STR_10 : DataInterface connect ops.p_IF_STR_10 to mid.p_IF_STR_10;
    }
    part def <'SSD-FD-STR-AFT-001'> STR_AFT {
        doc /* 後胴・推力構造・ポッド（AFT）（SSD-FD-STR-AFT-001） */
        port p_IF_MPS_22 : ~LoadPort;
        port p_IF_OMS_18 : ~LoadPort;
        port p_IF_RCS_20 : ~LoadPort;
        port p_IF_STR_02 : LoadBiPort;
        port p_IF_STR_06 : LoadBiPort;
        port p_IF_STR_08 : LoadBiPort;
    }
    part def <'SSD-FD-STR-CRM-001'> STR_CRM {
        doc /* 乗員室（与圧）・窓（CRM）（SSD-FD-STR-CRM-001） */
        port p_IF_CREW_07 : ~LoadPort;
        port p_IF_STR_04 : LoadPort;
        port p_IF_STR_09 : ~DataPort;
    }
    part def <'SSD-FD-STR-FWD-001'> STR_FWD {
        doc /* 前胴・前部RCSモジュール（FWD）（SSD-FD-STR-FWD-001） */
        port p_IF_STR_01 : LoadBiPort;
        port p_IF_STR_04 : ~LoadPort;
        port p_IF_STR_05 : LoadBiPort;
    }
    part def <'SSD-FD-STR-MID-001'> STR_MID {
        doc /* 中胴・ペイロードベイ（MID）（SSD-FD-STR-MID-001） */
        port p_IF_MECH_02 : LoadBiPort;
        port p_IF_MECH_04 : LoadBiPort;
        port p_IF_PLS_03 : LoadBiPort;
        port p_IF_PLS_04 : LoadBiPort;
        port p_IF_PLS_05 : LoadBiPort;
        port p_IF_STR_03 : ~HeatPort;
        port p_IF_STR_05 : LoadBiPort;
        port p_IF_STR_06 : LoadBiPort;
        port p_IF_STR_07 : LoadBiPort;
        port p_IF_STR_10 : ~DataPort;
    }
    part def <'SSD-FD-STR-OPS-001'> STR_OPS {
        doc /* 構造運用管理（OPS）（SSD-FD-STR-OPS-001） */
        port p_IF_STR_09 : DataPort;
        port p_IF_STR_10 : DataPort;
    }
    part def <'SSD-FD-STR-WNG-001'> STR_WNG {
        doc /* 翼・ボディフラップ・尾翼（WNG）（SSD-FD-STR-WNG-001） */
        port p_IF_MECH_03 : LoadBiPort;
        port p_IF_STR_07 : LoadBiPort;
        port p_IF_STR_08 : LoadBiPort;
    }
    part def <'SSD-FD-TCS-001'> TCS {
        doc /* 熱制御（能動・受動）（SSD-FD-TCS-001） */
        part ptc : TCS_PTC;
    }
    part def <'SSD-FD-TCS-PTC-001'> TCS_PTC {
        doc /* 受動熱制御（PTC：断熱・ヒータ・パージ）（SSD-FD-TCS-PTC-001） */
        port p_IF_OMS_19 : HeatPort;
        port p_IF_TCS_17 : ~FluidPort;
        port p_IF_TCS_20 : ~PowerPort;
    }
    part def <'SSD-FD-TPS-001'> TPS {
        doc /* 熱防護系（TPS）（SSD-FD-TPS-001） */
        port p_IF_ORB_37 : HeatPort;
        port p_IF_STR_03 : HeatPort;
    }
    part def <'SSD-FD-SRB-001'> SRB {
        doc /* 固体ロケットブースタ（SRB）（SSD-FD-SRB-001） */
        part att : SRB_ATT;
        part avn : SRB_AVN;
        part hdp : SRB_HDP;
        part mtr : SRB_MTR;
        part rec : SRB_REC;
        part tvc : SRB_TVC;
        port p_IF_SYS_02 : LoadBiPort;
        port p_IF_SYS_03 : ~DataPort;
        port p_IF_SYS_10 : LoadBiPort;
        port p_IF_ORB_18 : ~DataPort;
        port p_IF_ORB_22 : ~DataPort;
        port p_IF_ORB_26 : ~DataPort;
        port p_IF_ORB_28 : ~PowerPort;
        interface <'IF-SRB-04'> IF_SRB_04 : HydraulicInterface connect tvc.p_IF_SRB_04 to mtr.p_IF_SRB_04;
        interface <'IF-SRB-05'> IF_SRB_05 : DataInterface connect avn.p_IF_SRB_05 to tvc.p_IF_SRB_05;
        interface <'IF-SRB-06'> IF_SRB_06 : DataInterface connect hdp.p_IF_SRB_06 to mtr.p_IF_SRB_06;
        interface <'IF-SRB-07'> IF_SRB_07 : DataInterface connect mtr.p_IF_SRB_07 to att.p_IF_SRB_07;
        interface <'IF-SRB-08'> IF_SRB_08 : PowerInterface connect avn.p_IF_SRB_08 to rec.p_IF_SRB_08;
    }
    part def <'SSD-FD-SRB-ATT-001'> SRB_ATT {
        doc /* ET結合・分離（ATT）（SSD-FD-SRB-ATT-001） */
        port p_IF_SRB_01 : LoadBiPort;
        port p_IF_SRB_02 : LoadBiPort;
        port p_IF_SRB_07 : ~DataPort;
    }
    part def <'SSD-FD-SRB-AVN-001'> SRB_AVN {
        doc /* 電子・電力・射場安全（AVN）（SSD-FD-SRB-AVN-001） */
        port p_IF_DPS_07 : ~DataPort;
        port p_IF_EPS_11 : ~PowerPort;
        port p_IF_GNC_19 : DataPort;
        port p_IF_SRB_05 : DataPort;
        port p_IF_SRB_08 : PowerPort;
    }
    part def <'SSD-FD-SRB-HDP-001'> SRB_HDP {
        doc /* 保持・点火（HDP）（SSD-FD-SRB-HDP-001） */
        port p_IF_DPS_08 : ~DataPort;
        port p_IF_SRB_03 : LoadBiPort;
        port p_IF_SRB_06 : DataPort;
    }
    part def <'SSD-FD-SRB-MTR-001'> SRB_MTR {
        doc /* 固体ロケットモータ（MTR）（SSD-FD-SRB-MTR-001） */
        port p_IF_SRB_04 : ~HydraulicPort;
        port p_IF_SRB_06 : ~DataPort;
        port p_IF_SRB_07 : DataPort;
    }
    part def <'SSD-FD-SRB-REC-001'> SRB_REC {
        doc /* 降下・回収（REC）（SSD-FD-SRB-REC-001） */
        port p_IF_SRB_08 : ~PowerPort;
    }
    part def <'SSD-FD-SRB-TVC-001'> SRB_TVC {
        doc /* 推力方向制御（HPU）（TVC）（SSD-FD-SRB-TVC-001） */
        port p_IF_GNC_18 : ~DataPort;
        port p_IF_SRB_04 : HydraulicPort;
        port p_IF_SRB_05 : ~DataPort;
    }
    // ---- 上位 IF と下位 IF（下位が上位を詳細化する）
    package IfRefinement {
        #refinement dependency <'IF-ORB-15>IF-SYS-01'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_15 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_01;
        #refinement dependency <'IF-ORB-16>IF-SYS-04'> from SSD_BLK_SYS_001::MissionContext::IF_ORB_16 to SSD_BLK_SYS_001::MissionContext::IF_SYS_04;
        #refinement dependency <'IF-ORB-17>IF-SYS-06'> from SSD_BLK_SYS_001::MissionContext::IF_ORB_17 to SSD_BLK_SYS_001::MissionContext::IF_SYS_06;
        #refinement dependency <'IF-ORB-18>IF-SYS-03'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_18 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_03;
        #refinement dependency <'IF-ORB-22>IF-SYS-03'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_22 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_03;
        #refinement dependency <'IF-ORB-25>IF-SYS-08'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_25 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_08;
        #refinement dependency <'IF-ORB-26>IF-SYS-03'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_26 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_03;
        #refinement dependency <'IF-ORB-27>IF-SYS-08'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_27 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_08;
        #refinement dependency <'IF-ORB-28>IF-SYS-03'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_28 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_03;
        #refinement dependency <'IF-ORB-29>IF-SYS-09'> from SSD_BLK_SYS_001::MissionContext::IF_ORB_29 to SSD_BLK_SYS_001::MissionContext::IF_SYS_09;
        #refinement dependency <'IF-ORB-30>IF-SYS-09'> from SSD_BLK_SYS_001::MissionContext::IF_ORB_30 to SSD_BLK_SYS_001::MissionContext::IF_SYS_09;
        #refinement dependency <'IF-ORB-31>IF-SYS-09'> from SSD_BLK_SYS_001::MissionContext::IF_ORB_31 to SSD_BLK_SYS_001::MissionContext::IF_SYS_09;
        #refinement dependency <'IF-ORB-32>IF-SYS-09'> from SSD_BLK_SYS_001::MissionContext::IF_ORB_32 to SSD_BLK_SYS_001::MissionContext::IF_SYS_09;
        #refinement dependency <'IF-ORB-33>IF-SYS-09'> from SSD_BLK_SYS_001::MissionContext::IF_ORB_33 to SSD_BLK_SYS_001::MissionContext::IF_SYS_09;
        #refinement dependency <'IF-ORB-36>IF-SYS-07'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_36 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_07;
        #refinement dependency <'IF-ALS-01>IF-ECL-17'> from SSD_BLK_SYS_001::ECLSS::IF_ALS_01 to SSD_BLK_SYS_001::ECLSS::IF_ECL_17;
        #refinement dependency <'IF-ALS-02>IF-ECL-30'> from SSD_BLK_SYS_001::MissionContext::IF_ALS_02 to SSD_BLK_SYS_001::MissionContext::IF_ECL_30;
        #refinement dependency <'IF-ALS-03>IF-ECL-13'> from SSD_BLK_SYS_001::ECLSS::IF_ALS_03 to SSD_BLK_SYS_001::ECLSS::IF_ECL_13;
        #refinement dependency <'IF-ALS-04>IF-ECL-26'> from SSD_BLK_SYS_001::ECLSS::IF_ALS_04 to SSD_BLK_SYS_001::ECLSS::IF_ECL_26;
        #refinement dependency <'IF-ALS-05>IF-ECL-16'> from SSD_BLK_SYS_001::ORB::IF_ALS_05 to SSD_BLK_SYS_001::ORB::IF_ECL_16;
        #refinement dependency <'IF-ALS-06>IF-ECL-20'> from SSD_BLK_SYS_001::ORB::IF_ALS_06 to SSD_BLK_SYS_001::ORB::IF_ECL_20;
        #refinement dependency <'IF-ALS-07>IF-ECL-20'> from SSD_BLK_SYS_001::ORB::IF_ALS_07 to SSD_BLK_SYS_001::ORB::IF_ECL_20;
        #refinement dependency <'IF-ALS-08>IF-ECL-16'> from SSD_BLK_SYS_001::ORB::IF_ALS_08 to SSD_BLK_SYS_001::ORB::IF_ECL_16;
        #refinement dependency <'IF-ALS-09>IF-ECL-16'> from SSD_BLK_SYS_001::ORB::IF_ALS_09 to SSD_BLK_SYS_001::ORB::IF_ECL_16;
        #refinement dependency <'IF-ALS-10>IF-ECL-38'> from SSD_BLK_SYS_001::ORB::IF_ALS_10 to SSD_BLK_SYS_001::ORB::IF_ECL_38;
        #refinement dependency <'IF-APU-09>IF-ORB-07'> from SSD_BLK_SYS_001::ORB::IF_APU_09 to SSD_BLK_SYS_001::ORB::IF_ORB_07;
        #refinement dependency <'IF-APU-10>IF-ORB-08'> from SSD_BLK_SYS_001::ORB::IF_APU_10 to SSD_BLK_SYS_001::ORB::IF_ORB_08;
        #refinement dependency <'IF-APU-11>IF-ORB-39'> from SSD_BLK_SYS_001::ORB::IF_APU_11 to SSD_BLK_SYS_001::ORB::IF_ORB_39;
        #refinement dependency <'IF-APU-12>IF-ORB-23'> from SSD_BLK_SYS_001::ORB::IF_APU_12 to SSD_BLK_SYS_001::ORB::IF_ORB_23;
        #refinement dependency <'IF-APU-13>IF-ORB-23'> from SSD_BLK_SYS_001::ORB::IF_APU_13 to SSD_BLK_SYS_001::ORB::IF_ORB_23;
        #refinement dependency <'IF-APU-14>IF-ORB-23'> from SSD_BLK_SYS_001::ORB::IF_APU_14 to SSD_BLK_SYS_001::ORB::IF_ORB_23;
        #refinement dependency <'IF-APU-15>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_APU_15 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-APU-16>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_APU_16 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-APU-17>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_APU_17 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-APU-18>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_APU_18 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-APU-25>IF-ORB-23'> from SSD_BLK_SYS_001::ORB::IF_APU_25 to SSD_BLK_SYS_001::ORB::IF_ORB_23;
        #refinement dependency <'IF-ARS-09>IF-ECL-05'> from SSD_BLK_SYS_001::ECLSS::IF_ARS_09 to SSD_BLK_SYS_001::ECLSS::IF_ECL_05;
        #refinement dependency <'IF-ARS-10>IF-ECL-05'> from SSD_BLK_SYS_001::ECLSS::IF_ARS_10 to SSD_BLK_SYS_001::ECLSS::IF_ECL_05;
        #refinement dependency <'IF-ARS-11>IF-ECL-05'> from SSD_BLK_SYS_001::ECLSS::IF_ARS_11 to SSD_BLK_SYS_001::ECLSS::IF_ECL_05;
        #refinement dependency <'IF-ARS-12>IF-ECL-07'> from SSD_BLK_SYS_001::ECLSS::IF_ARS_12 to SSD_BLK_SYS_001::ECLSS::IF_ECL_07;
        #refinement dependency <'IF-ARS-13>IF-ECL-27'> from SSD_BLK_SYS_001::ECLSS::IF_ARS_13 to SSD_BLK_SYS_001::ECLSS::IF_ECL_27;
        #refinement dependency <'IF-ARS-17>IF-ECL-08'> from SSD_BLK_SYS_001::ORB::IF_ARS_17 to SSD_BLK_SYS_001::ORB::IF_ECL_08;
        #refinement dependency <'IF-ARS-18>IF-ECL-33'> from SSD_BLK_SYS_001::ORB::IF_ARS_18 to SSD_BLK_SYS_001::ORB::IF_ECL_33;
        #refinement dependency <'IF-ARS-19>IF-ECL-32'> from SSD_BLK_SYS_001::ORB::IF_ARS_19 to SSD_BLK_SYS_001::ORB::IF_ECL_32;
        #refinement dependency <'IF-ARS-20>IF-ECL-08'> from SSD_BLK_SYS_001::ORB::IF_ARS_20 to SSD_BLK_SYS_001::ORB::IF_ECL_08;
        #refinement dependency <'IF-ARS-21>IF-ECL-33'> from SSD_BLK_SYS_001::ORB::IF_ARS_21 to SSD_BLK_SYS_001::ORB::IF_ECL_33;
        #refinement dependency <'IF-ARS-22>IF-ECL-15'> from SSD_BLK_SYS_001::ECLSS::IF_ARS_22 to SSD_BLK_SYS_001::ECLSS::IF_ECL_15;
        #refinement dependency <'IF-ARS-25>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_25 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-26>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_26 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-27>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_27 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-28>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_28 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-29>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_29 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-30>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_30 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-31>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_31 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-32>IF-ECL-39'> from SSD_BLK_SYS_001::ORB::IF_ARS_32 to SSD_BLK_SYS_001::ORB::IF_ECL_39;
        #refinement dependency <'IF-ARS-33>IF-ECL-39'> from SSD_BLK_SYS_001::ORB::IF_ARS_33 to SSD_BLK_SYS_001::ORB::IF_ECL_39;
        #refinement dependency <'IF-ARS-34>IF-ECL-39'> from SSD_BLK_SYS_001::ORB::IF_ARS_34 to SSD_BLK_SYS_001::ORB::IF_ECL_39;
        #refinement dependency <'IF-ARS-35>IF-ECL-39'> from SSD_BLK_SYS_001::ORB::IF_ARS_35 to SSD_BLK_SYS_001::ORB::IF_ECL_39;
        #refinement dependency <'IF-ARS-36>IF-ECL-39'> from SSD_BLK_SYS_001::ORB::IF_ARS_36 to SSD_BLK_SYS_001::ORB::IF_ECL_39;
        #refinement dependency <'IF-ARS-37>IF-ECL-29'> from SSD_BLK_SYS_001::ORB::IF_ARS_37 to SSD_BLK_SYS_001::ORB::IF_ECL_29;
        #refinement dependency <'IF-ARS-38>IF-ECL-39'> from SSD_BLK_SYS_001::ORB::IF_ARS_38 to SSD_BLK_SYS_001::ORB::IF_ECL_39;
        #refinement dependency <'IF-ARS-39>IF-ECL-08'> from SSD_BLK_SYS_001::ORB::IF_ARS_39 to SSD_BLK_SYS_001::ORB::IF_ECL_08;
        #refinement dependency <'IF-ARS-40>IF-ECL-39'> from SSD_BLK_SYS_001::ORB::IF_ARS_40 to SSD_BLK_SYS_001::ORB::IF_ECL_39;
        #refinement dependency <'IF-ARS-41>IF-ECL-32'> from SSD_BLK_SYS_001::ORB::IF_ARS_41 to SSD_BLK_SYS_001::ORB::IF_ECL_32;
        #refinement dependency <'IF-AVB-02>IF-ARS-17'> from SSD_BLK_SYS_001::ORB::IF_AVB_02 to SSD_BLK_SYS_001::ORB::IF_ARS_17;
        #refinement dependency <'IF-AVB-03>IF-ARS-18'> from SSD_BLK_SYS_001::ORB::IF_AVB_03 to SSD_BLK_SYS_001::ORB::IF_ARS_18;
        #refinement dependency <'IF-AVB-04>IF-ARS-41'> from SSD_BLK_SYS_001::ORB::IF_AVB_04 to SSD_BLK_SYS_001::ORB::IF_ARS_41;
        #refinement dependency <'IF-AVB-07>IF-ARS-34'> from SSD_BLK_SYS_001::ORB::IF_AVB_07 to SSD_BLK_SYS_001::ORB::IF_ARS_34;
        #refinement dependency <'IF-AVB-10>IF-ARS-07'> from SSD_BLK_SYS_001::ECL_ARS::IF_AVB_10 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_07;
        #refinement dependency <'IF-AVB-13>IF-ARS-28'> from SSD_BLK_SYS_001::ORB::IF_AVB_13 to SSD_BLK_SYS_001::ORB::IF_ARS_28;
        #refinement dependency <'IF-AVB-14>IF-ARS-28'> from SSD_BLK_SYS_001::ORB::IF_AVB_14 to SSD_BLK_SYS_001::ORB::IF_ARS_28;
        #refinement dependency <'IF-AVB-15>IF-ARS-34'> from SSD_BLK_SYS_001::ORB::IF_AVB_15 to SSD_BLK_SYS_001::ORB::IF_ARS_34;
        #refinement dependency <'IF-CAC-01>IF-ARS-09'> from SSD_BLK_SYS_001::ECLSS::IF_CAC_01 to SSD_BLK_SYS_001::ECLSS::IF_ARS_09;
        #refinement dependency <'IF-CAC-03>IF-ARS-02'> from SSD_BLK_SYS_001::ECL_ARS::IF_CAC_03 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_02;
        #refinement dependency <'IF-CAC-04>IF-ARS-14'> from SSD_BLK_SYS_001::ECLSS::IF_CAC_04 to SSD_BLK_SYS_001::ECLSS::IF_ARS_14;
        #refinement dependency <'IF-CAC-05>IF-ARS-39'> from SSD_BLK_SYS_001::ORB::IF_CAC_05 to SSD_BLK_SYS_001::ORB::IF_ARS_39;
        #refinement dependency <'IF-CAC-08>IF-ARS-14'> from SSD_BLK_SYS_001::ECLSS::IF_CAC_08 to SSD_BLK_SYS_001::ECLSS::IF_ARS_14;
        #refinement dependency <'IF-CAC-09>IF-ARS-32'> from SSD_BLK_SYS_001::ORB::IF_CAC_09 to SSD_BLK_SYS_001::ORB::IF_ARS_32;
        #refinement dependency <'IF-CAC-12>IF-ARS-25'> from SSD_BLK_SYS_001::ORB::IF_CAC_12 to SSD_BLK_SYS_001::ORB::IF_ARS_25;
        #refinement dependency <'IF-CAC-13>IF-ARS-03'> from SSD_BLK_SYS_001::ECL_ARS::IF_CAC_13 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_03;
        #refinement dependency <'IF-CAC-14>IF-ARS-13'> from SSD_BLK_SYS_001::ECLSS::IF_CAC_14 to SSD_BLK_SYS_001::ECLSS::IF_ARS_13;
        #refinement dependency <'IF-CO2-01>IF-ARS-01'> from SSD_BLK_SYS_001::ECL_ARS::IF_CO2_01 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_01;
        #refinement dependency <'IF-CO2-05>IF-ARS-05'> from SSD_BLK_SYS_001::ECL_ARS::IF_CO2_05 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_05;
        #refinement dependency <'IF-CO2-06>IF-ARS-37'> from SSD_BLK_SYS_001::ORB::IF_CO2_06 to SSD_BLK_SYS_001::ORB::IF_ARS_37;
        #refinement dependency <'IF-CO2-07>IF-ARS-38'> from SSD_BLK_SYS_001::ORB::IF_CO2_07 to SSD_BLK_SYS_001::ORB::IF_ARS_38;
        #refinement dependency <'IF-CREW-01>IF-ORB-44'> from SSD_BLK_SYS_001::ORB::IF_CREW_01 to SSD_BLK_SYS_001::ORB::IF_ORB_44;
        #refinement dependency <'IF-CREW-02>IF-ORB-44'> from SSD_BLK_SYS_001::ORB::IF_CREW_02 to SSD_BLK_SYS_001::ORB::IF_ORB_44;
        #refinement dependency <'IF-CT-01>IF-ORB-16'> from SSD_BLK_SYS_001::MissionContext::IF_CT_01 to SSD_BLK_SYS_001::MissionContext::IF_ORB_16;
        #refinement dependency <'IF-CT-02>IF-ORB-16'> from SSD_BLK_SYS_001::MissionContext::IF_CT_02 to SSD_BLK_SYS_001::MissionContext::IF_ORB_16;
        #refinement dependency <'IF-CT-03>IF-ORB-16'> from SSD_BLK_SYS_001::MissionContext::IF_CT_03 to SSD_BLK_SYS_001::MissionContext::IF_ORB_16;
        #refinement dependency <'IF-CT-04>IF-ORB-16'> from SSD_BLK_SYS_001::MissionContext::IF_CT_04 to SSD_BLK_SYS_001::MissionContext::IF_ORB_16;
        #refinement dependency <'IF-CT-05>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_05 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CT-06>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_06 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CT-07>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_07 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CT-08>IF-ORB-24'> from SSD_BLK_SYS_001::ORB::IF_CT_08 to SSD_BLK_SYS_001::ORB::IF_ORB_24;
        #refinement dependency <'IF-CT-09>IF-ORB-43'> from SSD_BLK_SYS_001::ORB::IF_CT_09 to SSD_BLK_SYS_001::ORB::IF_ORB_43;
        #refinement dependency <'IF-CT-10>IF-ORB-46'> from SSD_BLK_SYS_001::ORB::IF_CT_10 to SSD_BLK_SYS_001::ORB::IF_ORB_46;
        #refinement dependency <'IF-CT-11>IF-ORB-49'> from SSD_BLK_SYS_001::ORB::IF_CT_11 to SSD_BLK_SYS_001::ORB::IF_ORB_49;
        #refinement dependency <'IF-CT-12>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_CT_12 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-CT-13>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_CT_13 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-CT-21>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_21 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CT-22>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_22 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CT-23>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_23 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CT-24>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_24 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CT-25>IF-ORB-01'> from SSD_BLK_SYS_001::ORB::IF_CT_25 to SSD_BLK_SYS_001::ORB::IF_ORB_01;
        #refinement dependency <'IF-CW-01>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_CW_01 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-CW-02>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_CW_02 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-CW-03>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_CW_03 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-DPS-02>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_DPS_02 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-DPS-03>IF-ORB-02'> from SSD_BLK_SYS_001::ORB::IF_DPS_03 to SSD_BLK_SYS_001::ORB::IF_ORB_02;
        #refinement dependency <'IF-DPS-04>IF-ORB-02'> from SSD_BLK_SYS_001::ORB::IF_DPS_04 to SSD_BLK_SYS_001::ORB::IF_ORB_02;
        #refinement dependency <'IF-DPS-05>IF-ORB-06'> from SSD_BLK_SYS_001::ORB::IF_DPS_05 to SSD_BLK_SYS_001::ORB::IF_ORB_06;
        #refinement dependency <'IF-DPS-06>IF-ORB-17'> from SSD_BLK_SYS_001::MissionContext::IF_DPS_06 to SSD_BLK_SYS_001::MissionContext::IF_ORB_17;
        #refinement dependency <'IF-DPS-07>IF-ORB-18'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_07 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_18;
        #refinement dependency <'IF-DPS-08>IF-ORB-26'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_08 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_26;
        #refinement dependency <'IF-DPS-09>IF-ORB-25'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_09 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_25;
        #refinement dependency <'IF-DPS-10>IF-ORB-40'> from SSD_BLK_SYS_001::ORB::IF_DPS_10 to SSD_BLK_SYS_001::ORB::IF_ORB_40;
        #refinement dependency <'IF-DPS-11>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_DPS_11 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-DPS-12>IF-ORB-42'> from SSD_BLK_SYS_001::ORB::IF_DPS_12 to SSD_BLK_SYS_001::ORB::IF_ORB_42;
        #refinement dependency <'IF-DPS-13>IF-ORB-48'> from SSD_BLK_SYS_001::ORB::IF_DPS_13 to SSD_BLK_SYS_001::ORB::IF_ORB_48;
        #refinement dependency <'IF-DPS-22>IF-ORB-02'> from SSD_BLK_SYS_001::ORB::IF_DPS_22 to SSD_BLK_SYS_001::ORB::IF_ORB_02;
        #refinement dependency <'IF-ECL-01>IF-ORB-09'> from SSD_BLK_SYS_001::ORB::IF_ECL_01 to SSD_BLK_SYS_001::ORB::IF_ORB_09;
        #refinement dependency <'IF-ECL-08>IF-ORB-13'> from SSD_BLK_SYS_001::ORB::IF_ECL_08 to SSD_BLK_SYS_001::ORB::IF_ORB_13;
        #refinement dependency <'IF-ECL-09>IF-ORB-11'> from SSD_BLK_SYS_001::ORB::IF_ECL_09 to SSD_BLK_SYS_001::ORB::IF_ORB_11;
        #refinement dependency <'IF-ECL-10>IF-ORB-10'> from SSD_BLK_SYS_001::ORB::IF_ECL_10 to SSD_BLK_SYS_001::ORB::IF_ORB_10;
        #refinement dependency <'IF-ECL-11>IF-ORB-12'> from SSD_BLK_SYS_001::ORB::IF_ECL_11 to SSD_BLK_SYS_001::ORB::IF_ORB_12;
        #refinement dependency <'IF-ECL-16>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_ECL_16 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-ECL-18>IF-ORB-19'> from SSD_BLK_SYS_001::ORB::IF_ECL_18 to SSD_BLK_SYS_001::ORB::IF_ORB_19;
        #refinement dependency <'IF-ECL-20>IF-ORB-45'> from SSD_BLK_SYS_001::ORB::IF_ECL_20 to SSD_BLK_SYS_001::ORB::IF_ORB_45;
        #refinement dependency <'IF-ECL-25>IF-ORB-13'> from SSD_BLK_SYS_001::ORB::IF_ECL_25 to SSD_BLK_SYS_001::ORB::IF_ORB_13;
        #refinement dependency <'IF-ECL-28>IF-ORB-19'> from SSD_BLK_SYS_001::ORB::IF_ECL_28 to SSD_BLK_SYS_001::ORB::IF_ORB_19;
        #refinement dependency <'IF-ECL-29>IF-ORB-19'> from SSD_BLK_SYS_001::ORB::IF_ECL_29 to SSD_BLK_SYS_001::ORB::IF_ORB_19;
        #refinement dependency <'IF-ECL-32>IF-ORB-34'> from SSD_BLK_SYS_001::ORB::IF_ECL_32 to SSD_BLK_SYS_001::ORB::IF_ORB_34;
        #refinement dependency <'IF-ECL-33>IF-ORB-35'> from SSD_BLK_SYS_001::ORB::IF_ECL_33 to SSD_BLK_SYS_001::ORB::IF_ORB_35;
        #refinement dependency <'IF-ECL-34>IF-ORB-32'> from SSD_BLK_SYS_001::MissionContext::IF_ECL_34 to SSD_BLK_SYS_001::MissionContext::IF_ORB_32;
        #refinement dependency <'IF-ECL-35>IF-ORB-19'> from SSD_BLK_SYS_001::ORB::IF_ECL_35 to SSD_BLK_SYS_001::ORB::IF_ORB_19;
        #refinement dependency <'IF-ECL-36>IF-ORB-19'> from SSD_BLK_SYS_001::ORB::IF_ECL_36 to SSD_BLK_SYS_001::ORB::IF_ORB_19;
        #refinement dependency <'IF-ECL-37>IF-ORB-19'> from SSD_BLK_SYS_001::ORB::IF_ECL_37 to SSD_BLK_SYS_001::ORB::IF_ORB_19;
        #refinement dependency <'IF-ECL-38>IF-ORB-19'> from SSD_BLK_SYS_001::ORB::IF_ECL_38 to SSD_BLK_SYS_001::ORB::IF_ORB_19;
        #refinement dependency <'IF-ECL-39>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_ECL_39 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-ECL-40>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_ECL_40 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-ECL-41>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_ECL_41 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-ECL-42>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_ECL_42 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-ECL-43>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_ECL_43 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-EPS-01>IF-ORB-30'> from SSD_BLK_SYS_001::MissionContext::IF_EPS_01 to SSD_BLK_SYS_001::MissionContext::IF_ORB_30;
        #refinement dependency <'IF-EPS-02>IF-ORB-31'> from SSD_BLK_SYS_001::MissionContext::IF_EPS_02 to SSD_BLK_SYS_001::MissionContext::IF_ORB_31;
        #refinement dependency <'IF-EPS-04>IF-ECL-01'> from SSD_BLK_SYS_001::ORB::IF_EPS_04 to SSD_BLK_SYS_001::ORB::IF_ECL_01;
        #refinement dependency <'IF-EPS-06>IF-ECL-10'> from SSD_BLK_SYS_001::ORB::IF_EPS_06 to SSD_BLK_SYS_001::ORB::IF_ECL_10;
        #refinement dependency <'IF-EPS-07>IF-ECL-09'> from SSD_BLK_SYS_001::ORB::IF_EPS_07 to SSD_BLK_SYS_001::ORB::IF_ECL_09;
        #refinement dependency <'IF-EPS-09>IF-ORB-20'> from SSD_BLK_SYS_001::ORB::IF_EPS_09 to SSD_BLK_SYS_001::ORB::IF_ORB_20;
        #refinement dependency <'IF-EPS-11>IF-ORB-14'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_EPS_11 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-EPS-11>IF-ORB-27'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_EPS_11 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_27;
        #refinement dependency <'IF-EPS-11>IF-ORB-28'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_EPS_11 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_28;
        #refinement dependency <'IF-EPS-12>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_EPS_12 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-EPS-14>IF-ORB-35'> from SSD_BLK_SYS_001::ORB::IF_EPS_14 to SSD_BLK_SYS_001::ORB::IF_ORB_35;
        #refinement dependency <'IF-EVA-04>IF-ORB-45'> from SSD_BLK_SYS_001::ORB::IF_EVA_04 to SSD_BLK_SYS_001::ORB::IF_ORB_45;
        #refinement dependency <'IF-EVA-14>IF-ORB-45'> from SSD_BLK_SYS_001::ORB::IF_EVA_14 to SSD_BLK_SYS_001::ORB::IF_ORB_45;
        #refinement dependency <'IF-FDS-01>IF-ARS-15'> from SSD_BLK_SYS_001::ECLSS::IF_FDS_01 to SSD_BLK_SYS_001::ECLSS::IF_ARS_15;
        #refinement dependency <'IF-FDS-03>IF-ECL-18'> from SSD_BLK_SYS_001::ORB::IF_FDS_03 to SSD_BLK_SYS_001::ORB::IF_ECL_18;
        #refinement dependency <'IF-FDS-04>IF-ECL-40'> from SSD_BLK_SYS_001::ORB::IF_FDS_04 to SSD_BLK_SYS_001::ORB::IF_ECL_40;
        #refinement dependency <'IF-FDS-06>IF-ECL-18'> from SSD_BLK_SYS_001::ORB::IF_FDS_06 to SSD_BLK_SYS_001::ORB::IF_ECL_18;
        #refinement dependency <'IF-FDS-08>IF-ARS-15'> from SSD_BLK_SYS_001::ECLSS::IF_FDS_08 to SSD_BLK_SYS_001::ECLSS::IF_ARS_15;
        #refinement dependency <'IF-FDS-09>IF-ECL-18'> from SSD_BLK_SYS_001::ORB::IF_FDS_09 to SSD_BLK_SYS_001::ORB::IF_ECL_18;
        #refinement dependency <'IF-FDS-10>IF-ECL-40'> from SSD_BLK_SYS_001::ORB::IF_FDS_10 to SSD_BLK_SYS_001::ORB::IF_ECL_40;
        #refinement dependency <'IF-FDS-11>IF-ARS-15'> from SSD_BLK_SYS_001::ECLSS::IF_FDS_11 to SSD_BLK_SYS_001::ECLSS::IF_ARS_15;
        #refinement dependency <'IF-FDS-12>IF-ECL-19'> from SSD_BLK_SYS_001::ECLSS::IF_FDS_12 to SSD_BLK_SYS_001::ECLSS::IF_ECL_19;
        #refinement dependency <'IF-GNC-11>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_GNC_11 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-GNC-12>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_GNC_12 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-GNC-14>IF-ORB-03'> from SSD_BLK_SYS_001::ORB::IF_GNC_14 to SSD_BLK_SYS_001::ORB::IF_ORB_03;
        #refinement dependency <'IF-GNC-15>IF-ORB-04'> from SSD_BLK_SYS_001::ORB::IF_GNC_15 to SSD_BLK_SYS_001::ORB::IF_ORB_04;
        #refinement dependency <'IF-GNC-16>IF-ORB-21'> from SSD_BLK_SYS_001::ORB::IF_GNC_16 to SSD_BLK_SYS_001::ORB::IF_ORB_21;
        #refinement dependency <'IF-GNC-17>IF-ORB-21'> from SSD_BLK_SYS_001::ORB::IF_GNC_17 to SSD_BLK_SYS_001::ORB::IF_ORB_21;
        #refinement dependency <'IF-GNC-18>IF-ORB-22'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_GNC_18 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_22;
        #refinement dependency <'IF-GNC-19>IF-ORB-22'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_GNC_19 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_22;
        #refinement dependency <'IF-GNC-20>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_GNC_20 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-H2O-02>IF-ECL-22'> from SSD_BLK_SYS_001::ECLSS::IF_H2O_02 to SSD_BLK_SYS_001::MissionContext::IF_ECL_22;
        #refinement dependency <'IF-H2O-05>IF-ECL-35'> from SSD_BLK_SYS_001::ORB::IF_H2O_05 to SSD_BLK_SYS_001::ORB::IF_ECL_35;
        #refinement dependency <'IF-H2O-06>IF-ECL-41'> from SSD_BLK_SYS_001::ORB::IF_H2O_06 to SSD_BLK_SYS_001::ORB::IF_ECL_41;
        #refinement dependency <'IF-H2O-07>IF-ECL-14'> from SSD_BLK_SYS_001::ECLSS::IF_H2O_07 to SSD_BLK_SYS_001::ECLSS::IF_ECL_14;
        #refinement dependency <'IF-H2O-09>IF-ECL-35'> from SSD_BLK_SYS_001::ORB::IF_H2O_09 to SSD_BLK_SYS_001::ORB::IF_ECL_35;
        #refinement dependency <'IF-H2O-10>IF-ECL-22'> from SSD_BLK_SYS_001::MissionContext::IF_H2O_10 to SSD_BLK_SYS_001::MissionContext::IF_ECL_22;
        #refinement dependency <'IF-H2O-11>IF-ECL-41'> from SSD_BLK_SYS_001::ORB::IF_H2O_11 to SSD_BLK_SYS_001::ORB::IF_ECL_41;
        #refinement dependency <'IF-H2O-12>IF-ECL-35'> from SSD_BLK_SYS_001::ORB::IF_H2O_12 to SSD_BLK_SYS_001::ORB::IF_ECL_35;
        #refinement dependency <'IF-IMU-01>IF-ARS-11'> from SSD_BLK_SYS_001::ECLSS::IF_IMU_01 to SSD_BLK_SYS_001::ECLSS::IF_ARS_11;
        #refinement dependency <'IF-IMU-02>IF-ARS-19'> from SSD_BLK_SYS_001::ORB::IF_IMU_02 to SSD_BLK_SYS_001::ORB::IF_ARS_19;
        #refinement dependency <'IF-IMU-06>IF-ARS-35'> from SSD_BLK_SYS_001::ORB::IF_IMU_06 to SSD_BLK_SYS_001::ORB::IF_ARS_35;
        #refinement dependency <'IF-IMU-08>IF-ARS-08'> from SSD_BLK_SYS_001::ECL_ARS::IF_IMU_08 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_08;
        #refinement dependency <'IF-IMU-09>IF-ARS-11'> from SSD_BLK_SYS_001::ECLSS::IF_IMU_09 to SSD_BLK_SYS_001::ECLSS::IF_ARS_11;
        #refinement dependency <'IF-IMU-10>IF-ARS-29'> from SSD_BLK_SYS_001::ORB::IF_IMU_10 to SSD_BLK_SYS_001::ORB::IF_ARS_29;
        #refinement dependency <'IF-IMU-11>IF-ARS-35'> from SSD_BLK_SYS_001::ORB::IF_IMU_11 to SSD_BLK_SYS_001::ORB::IF_ARS_35;
        #refinement dependency <'IF-MECH-01>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_MECH_01 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-MECH-02>IF-ORB-38'> from SSD_BLK_SYS_001::ORB::IF_MECH_02 to SSD_BLK_SYS_001::ORB::IF_ORB_38;
        #refinement dependency <'IF-MECH-03>IF-ORB-38'> from SSD_BLK_SYS_001::ORB::IF_MECH_03 to SSD_BLK_SYS_001::ORB::IF_ORB_38;
        #refinement dependency <'IF-MECH-04>IF-ORB-38'> from SSD_BLK_SYS_001::ORB::IF_MECH_04 to SSD_BLK_SYS_001::ORB::IF_ORB_38;
        #refinement dependency <'IF-MPS-01>IF-ORB-15'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_01 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_15;
        #refinement dependency <'IF-MPS-02>IF-ORB-15'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_02 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_15;
        #refinement dependency <'IF-MPS-03>IF-ORB-29'> from SSD_BLK_SYS_001::MissionContext::IF_MPS_03 to SSD_BLK_SYS_001::MissionContext::IF_ORB_29;
        #refinement dependency <'IF-MPS-04>IF-ORB-29'> from SSD_BLK_SYS_001::MissionContext::IF_MPS_04 to SSD_BLK_SYS_001::MissionContext::IF_ORB_29;
        #refinement dependency <'IF-MPS-05>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_MPS_05 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-MPS-06>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_MPS_06 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-MPS-07>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_MPS_07 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-MPS-08>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_MPS_08 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-OMS-11>IF-ORB-05'> from SSD_BLK_SYS_001::ORB::IF_OMS_11 to SSD_BLK_SYS_001::ORB::IF_ORB_05;
        #refinement dependency <'IF-OMS-12>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_OMS_12 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-OMS-13>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_OMS_13 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-OMS-14>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_OMS_14 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-OMS-15>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_OMS_15 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-OMS-16>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_OMS_16 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-PCS-03>IF-ECL-02'> from SSD_BLK_SYS_001::ECLSS::IF_PCS_03 to SSD_BLK_SYS_001::ECLSS::IF_ECL_02;
        #refinement dependency <'IF-PCS-04>IF-ECL-02'> from SSD_BLK_SYS_001::ECLSS::IF_PCS_04 to SSD_BLK_SYS_001::ECLSS::IF_ECL_02;
        #refinement dependency <'IF-PCS-05>IF-ECL-04'> from SSD_BLK_SYS_001::ECLSS::IF_PCS_05 to SSD_BLK_SYS_001::ECLSS::IF_ECL_04;
        #refinement dependency <'IF-PCS-06>IF-ECL-03'> from SSD_BLK_SYS_001::ECLSS::IF_PCS_06 to SSD_BLK_SYS_001::ECLSS::IF_ECL_03;
        #refinement dependency <'IF-PCS-07>IF-ECL-02'> from SSD_BLK_SYS_001::ECLSS::IF_PCS_07 to SSD_BLK_SYS_001::ECLSS::IF_ECL_02;
        #refinement dependency <'IF-PCS-10>IF-ECL-02'> from SSD_BLK_SYS_001::ECLSS::IF_PCS_10 to SSD_BLK_SYS_001::ECLSS::IF_ECL_02;
        #refinement dependency <'IF-PCS-14>IF-ECL-36'> from SSD_BLK_SYS_001::ORB::IF_PCS_14 to SSD_BLK_SYS_001::ORB::IF_ECL_36;
        #refinement dependency <'IF-PCS-18>IF-ECL-42'> from SSD_BLK_SYS_001::ORB::IF_PCS_18 to SSD_BLK_SYS_001::ORB::IF_ECL_42;
        #refinement dependency <'IF-PCS-19>IF-ECL-42'> from SSD_BLK_SYS_001::ORB::IF_PCS_19 to SSD_BLK_SYS_001::ORB::IF_ECL_42;
        #refinement dependency <'IF-PCS-20>IF-ECL-42'> from SSD_BLK_SYS_001::ORB::IF_PCS_20 to SSD_BLK_SYS_001::ORB::IF_ECL_42;
        #refinement dependency <'IF-PCS-21>IF-ECL-42'> from SSD_BLK_SYS_001::ORB::IF_PCS_21 to SSD_BLK_SYS_001::ORB::IF_ECL_42;
        #refinement dependency <'IF-PCS-22>IF-ECL-42'> from SSD_BLK_SYS_001::ORB::IF_PCS_22 to SSD_BLK_SYS_001::ORB::IF_ECL_42;
        #refinement dependency <'IF-PLS-01>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_PLS_01 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-PLS-02>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_PLS_02 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-PLS-03>IF-ORB-47'> from SSD_BLK_SYS_001::ORB::IF_PLS_03 to SSD_BLK_SYS_001::ORB::IF_ORB_47;
        #refinement dependency <'IF-PLS-04>IF-ORB-47'> from SSD_BLK_SYS_001::ORB::IF_PLS_04 to SSD_BLK_SYS_001::ORB::IF_ORB_47;
        #refinement dependency <'IF-PLS-05>IF-ORB-47'> from SSD_BLK_SYS_001::ORB::IF_PLS_05 to SSD_BLK_SYS_001::ORB::IF_ORB_47;
        #refinement dependency <'IF-RCRS-02>IF-ARS-04'> from SSD_BLK_SYS_001::ECL_ARS::IF_RCRS_02 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_04;
        #refinement dependency <'IF-RCRS-03>IF-ARS-16'> from SSD_BLK_SYS_001::ECLSS::IF_RCRS_03 to SSD_BLK_SYS_001::MissionContext::IF_ARS_16;
        #refinement dependency <'IF-RCRS-10>IF-ARS-26'> from SSD_BLK_SYS_001::ORB::IF_RCRS_10 to SSD_BLK_SYS_001::ORB::IF_ARS_26;
        #refinement dependency <'IF-RCRS-11>IF-ARS-26'> from SSD_BLK_SYS_001::ORB::IF_RCRS_11 to SSD_BLK_SYS_001::ORB::IF_ARS_26;
        #refinement dependency <'IF-RCRS-12>IF-ARS-33'> from SSD_BLK_SYS_001::ORB::IF_RCRS_12 to SSD_BLK_SYS_001::ORB::IF_ARS_33;
        #refinement dependency <'IF-RCRS-13>IF-ARS-33'> from SSD_BLK_SYS_001::ORB::IF_RCRS_13 to SSD_BLK_SYS_001::ORB::IF_ARS_33;
        #refinement dependency <'IF-RCS-09>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_RCS_09 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-RCS-10>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_RCS_10 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-RCS-11>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_RCS_11 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-RCS-12>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_RCS_12 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-RCS-13>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_RCS_13 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-RCS-14>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_RCS_14 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-RCS-15>IF-ORB-41'> from SSD_BLK_SYS_001::ORB::IF_RCS_15 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'IF-SRB-01>IF-SYS-02'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_01 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_02;
        #refinement dependency <'IF-SRB-02>IF-SYS-02'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_02 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_02;
        #refinement dependency <'IF-SRB-03>IF-SYS-10'> from SSD_BLK_SYS_001::MissionContext::IF_SRB_03 to SSD_BLK_SYS_001::MissionContext::IF_SYS_10;
        #refinement dependency <'IF-STR-01>IF-ORB-36'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_STR_01 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_36;
        #refinement dependency <'IF-STR-02>IF-ORB-36'> from SSD_BLK_SYS_001::SpaceTransportationSystem::IF_STR_02 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_36;
        #refinement dependency <'IF-STR-03>IF-ORB-37'> from SSD_BLK_SYS_001::ORB::IF_STR_03 to SSD_BLK_SYS_001::ORB::IF_ORB_37;
        #refinement dependency <'IF-TCS-01>IF-ECL-06'> from SSD_BLK_SYS_001::ECLSS::IF_TCS_01 to SSD_BLK_SYS_001::ECLSS::IF_ECL_06;
        #refinement dependency <'IF-TCS-02>IF-ECL-09'> from SSD_BLK_SYS_001::ORB::IF_TCS_02 to SSD_BLK_SYS_001::ORB::IF_ECL_09;
        #refinement dependency <'IF-TCS-03>IF-ECL-11'> from SSD_BLK_SYS_001::ORB::IF_TCS_03 to SSD_BLK_SYS_001::ORB::IF_ECL_11;
        #refinement dependency <'IF-TCS-04>IF-ECL-24'> from SSD_BLK_SYS_001::ECLSS::IF_TCS_04 to SSD_BLK_SYS_001::ECLSS::IF_ECL_24;
        #refinement dependency <'IF-TCS-05>IF-ECL-25'> from SSD_BLK_SYS_001::ORB::IF_TCS_05 to SSD_BLK_SYS_001::ORB::IF_ECL_25;
        #refinement dependency <'IF-TCS-12>IF-ECL-21'> from SSD_BLK_SYS_001::MissionContext::IF_TCS_12 to SSD_BLK_SYS_001::MissionContext::IF_ECL_21;
        #refinement dependency <'IF-TCS-13>IF-ECL-21'> from SSD_BLK_SYS_001::MissionContext::IF_TCS_13 to SSD_BLK_SYS_001::MissionContext::IF_ECL_21;
        #refinement dependency <'IF-TCS-14>IF-ECL-21'> from SSD_BLK_SYS_001::MissionContext::IF_TCS_14 to SSD_BLK_SYS_001::MissionContext::IF_ECL_21;
        #refinement dependency <'IF-TCS-15>IF-ECL-34'> from SSD_BLK_SYS_001::MissionContext::IF_TCS_15 to SSD_BLK_SYS_001::MissionContext::IF_ECL_34;
        #refinement dependency <'IF-TCS-16>IF-ECL-12'> from SSD_BLK_SYS_001::ECLSS::IF_TCS_16 to SSD_BLK_SYS_001::ECLSS::IF_ECL_12;
        #refinement dependency <'IF-TCS-17>IF-ORB-33'> from SSD_BLK_SYS_001::MissionContext::IF_TCS_17 to SSD_BLK_SYS_001::MissionContext::IF_ORB_33;
        #refinement dependency <'IF-TCS-18>IF-ECL-28'> from SSD_BLK_SYS_001::ORB::IF_TCS_18 to SSD_BLK_SYS_001::ORB::IF_ECL_28;
        #refinement dependency <'IF-TCS-19>IF-ECL-28'> from SSD_BLK_SYS_001::ORB::IF_TCS_19 to SSD_BLK_SYS_001::ORB::IF_ECL_28;
        #refinement dependency <'IF-TCS-20>IF-ORB-14'> from SSD_BLK_SYS_001::ORB::IF_TCS_20 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'IF-TCS-21>IF-ECL-28'> from SSD_BLK_SYS_001::ORB::IF_TCS_21 to SSD_BLK_SYS_001::ORB::IF_ECL_28;
        #refinement dependency <'IF-THC-03>IF-ARS-06'> from SSD_BLK_SYS_001::ECL_ARS::IF_THC_03 to SSD_BLK_SYS_001::ECL_ARS::IF_ARS_06;
        #refinement dependency <'IF-THC-05>IF-ARS-12'> from SSD_BLK_SYS_001::ECLSS::IF_THC_05 to SSD_BLK_SYS_001::ECLSS::IF_ARS_12;
        #refinement dependency <'IF-THC-06>IF-ARS-10'> from SSD_BLK_SYS_001::ECLSS::IF_THC_06 to SSD_BLK_SYS_001::ECLSS::IF_ARS_10;
        #refinement dependency <'IF-THC-07>IF-ARS-10'> from SSD_BLK_SYS_001::ECLSS::IF_THC_07 to SSD_BLK_SYS_001::ECLSS::IF_ARS_10;
        #refinement dependency <'IF-THC-11>IF-ARS-27'> from SSD_BLK_SYS_001::ORB::IF_THC_11 to SSD_BLK_SYS_001::ORB::IF_ARS_27;
        #refinement dependency <'IF-THC-12>IF-ARS-27'> from SSD_BLK_SYS_001::ORB::IF_THC_12 to SSD_BLK_SYS_001::ORB::IF_ARS_27;
        #refinement dependency <'IF-THC-16>IF-ARS-40'> from SSD_BLK_SYS_001::ORB::IF_THC_16 to SSD_BLK_SYS_001::ORB::IF_ARS_40;
        #refinement dependency <'IF-THC-17>IF-ARS-40'> from SSD_BLK_SYS_001::ORB::IF_THC_17 to SSD_BLK_SYS_001::ORB::IF_ARS_40;
        #refinement dependency <'IF-THC-18>IF-ARS-40'> from SSD_BLK_SYS_001::ORB::IF_THC_18 to SSD_BLK_SYS_001::ORB::IF_ARS_40;
        #refinement dependency <'IF-WCL-12>IF-ARS-36'> from SSD_BLK_SYS_001::ORB::IF_WCL_12 to SSD_BLK_SYS_001::ORB::IF_ARS_36;
        #refinement dependency <'IF-WCL-13>IF-ARS-36'> from SSD_BLK_SYS_001::ORB::IF_WCL_13 to SSD_BLK_SYS_001::ORB::IF_ARS_36;
        #refinement dependency <'IF-WCL-14>IF-ARS-36'> from SSD_BLK_SYS_001::ORB::IF_WCL_14 to SSD_BLK_SYS_001::ORB::IF_ARS_36;
        #refinement dependency <'IF-WCL-15>IF-ARS-30'> from SSD_BLK_SYS_001::ORB::IF_WCL_15 to SSD_BLK_SYS_001::ORB::IF_ARS_30;
        #refinement dependency <'IF-WCL-16>IF-ARS-31'> from SSD_BLK_SYS_001::ORB::IF_WCL_16 to SSD_BLK_SYS_001::ORB::IF_ARS_31;
        #refinement dependency <'IF-WCL-17>IF-ARS-20'> from SSD_BLK_SYS_001::ORB::IF_WCL_17 to SSD_BLK_SYS_001::ORB::IF_ARS_20;
        #refinement dependency <'IF-WCL-18>IF-ARS-21'> from SSD_BLK_SYS_001::ORB::IF_WCL_18 to SSD_BLK_SYS_001::ORB::IF_ARS_21;
        #refinement dependency <'IF-WCL-19>IF-ARS-24'> from SSD_BLK_SYS_001::ECLSS::IF_WCL_19 to SSD_BLK_SYS_001::ECLSS::IF_ARS_24;
        #refinement dependency <'IF-WCL-20>IF-TCS-01'> from SSD_BLK_SYS_001::ECLSS::IF_WCL_20 to SSD_BLK_SYS_001::ECLSS::IF_TCS_01;
        #refinement dependency <'IF-WCL-21>IF-ARS-22'> from SSD_BLK_SYS_001::ECLSS::IF_WCL_21 to SSD_BLK_SYS_001::ECLSS::IF_ARS_22;
        #refinement dependency <'IF-WCL-22>IF-ARS-23'> from SSD_BLK_SYS_001::ECLSS::IF_WCL_22 to SSD_BLK_SYS_001::ECLSS::IF_ARS_23;
        #refinement dependency <'IF-WCS-01>IF-ECL-31'> from SSD_BLK_SYS_001::ECLSS::IF_WCS_01 to SSD_BLK_SYS_001::ECLSS::IF_ECL_31;
        #refinement dependency <'IF-WCS-02>IF-ECL-31'> from SSD_BLK_SYS_001::ECLSS::IF_WCS_02 to SSD_BLK_SYS_001::ECLSS::IF_ECL_31;
        #refinement dependency <'IF-WCS-06>IF-ECL-31'> from SSD_BLK_SYS_001::ECLSS::IF_WCS_06 to SSD_BLK_SYS_001::ECLSS::IF_ECL_31;
        #refinement dependency <'IF-WCS-07>IF-ECL-31'> from SSD_BLK_SYS_001::ECLSS::IF_WCS_07 to SSD_BLK_SYS_001::ECLSS::IF_ECL_31;
        #refinement dependency <'IF-WCS-08>IF-ECL-14'> from SSD_BLK_SYS_001::ECLSS::IF_WCS_08 to SSD_BLK_SYS_001::ECLSS::IF_ECL_14;
        #refinement dependency <'IF-WCS-09>IF-ECL-23'> from SSD_BLK_SYS_001::MissionContext::IF_WCS_09 to SSD_BLK_SYS_001::MissionContext::IF_ECL_23;
        #refinement dependency <'IF-WCS-10>IF-ECL-43'> from SSD_BLK_SYS_001::ORB::IF_WCS_10 to SSD_BLK_SYS_001::ORB::IF_ECL_43;
        #refinement dependency <'IF-WCS-11>IF-ECL-43'> from SSD_BLK_SYS_001::ORB::IF_WCS_11 to SSD_BLK_SYS_001::ORB::IF_ECL_43;
        #refinement dependency <'IF-WCS-12>IF-ECL-37'> from SSD_BLK_SYS_001::ORB::IF_WCS_12 to SSD_BLK_SYS_001::ORB::IF_ECL_37;
    }
    // ---- 最上位の部品（この part から全体を辿れる）
    part context : MissionContext;
}

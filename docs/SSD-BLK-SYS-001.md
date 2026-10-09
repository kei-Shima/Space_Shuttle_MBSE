# 構造定義書（ブロック・ポート・インタフェース）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BLK-SYS-001 |
| 表題 | 構造定義書（ブロック・ポート・インタフェース） |
| 版・日付 | Rev. C／2026-10-08 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図89 システム構成 ブロック定義図 |

## 1. 目的

機体と外部系の構造を、SysML v2 のブロック（part def）・部品（part）・ポート（port）・インタフェース（interface・connection）で示す。各機能説明書の表題欄の上位文書と IF の表を、そのまま SysML v2 の要素に写し、同じ内容を SysML v2 のテキスト（SysML/SSD-BLK-SYS-001.sysml）と 図89 システム構成 ブロック定義図 で示す。これまで図と表にしか無かった構造を、振る舞い（SSD-BEH-ORB-001〜004）・パラメトリック（SSD-PAR-ORB-001）と同じモデルの言葉で表すことが目的である。

## 2. 書き方

文書の要素と SysML v2 の要素の対応を示す。IF の端は、IF の行を持つ機能説明書のうち、ほかの持ち主の祖先でないもの（親の文書に写した行は端にしない）である。端が1つしか無い IF（相手の文書に行が無いもの）は、行の「相手」の名前から端の部品を決めた（§5）。

| 文書の要素 | SysML v2 の要素 |
|---|---|
| 機能説明書（SSD-FD-*）1件 | part def 1つ（名前は文書番号の中の略号。例：SSD-FD-OMS-ENG-001 → OMS_ENG、短い名前は文書番号） |
| 表題欄の上位文書 | 親の part def の中の part（部品名は略号の小文字。例：part eng : OMS_ENG） |
| 文書の無い要素 | part def（運用の文脈・宇宙輸送システム・外部系の中の3部品・宇宙空間・航法の基準・ペイロード）。§6 に示す |
| IF の種別 | item def（流れる物）と、それを運ぶ port def・interface def。例：推進薬・流体 → Fluid・FluidPort・FluidInterface |
| IF の端（行を持つ文書） | その part def の port p_IF-ID。向きは行の「方向」：送信＝ポート、受信＝~ポート（逆向き）、双方向＝Bi のポート |
| IF（2端） | 端の共通の祖先の part def の中の interface（送り側から受け側へ connect）。双方向は Bi の interface |
| IF（3端以上） | 端の共通の祖先の part def の中の connection（n 項の connect） |
| IF の上位・下位 | 下位の IF から上位の IF への dependency（#refinement＝詳細化） |

## 3. ブロックの構成

part def 216件（機能説明書 208件と、文書の無い要素 8件）を、上の階層から順に示す。部品の欄は親の part def の中での部品名、下位の欄は子の部品の数、ポートの欄はその part def が端になる IF の数である。

| part def | 文書 | 表示名 | 親 | 部品 | 下位 | ポート |
|---|---|---|---|---|---|---|
| MissionContext | — | 運用の文脈（図1） | — | context（最上位） | 5 | 0 |
| EXT | [SSD-FD-EXT-001](SSD-FD-EXT-001.md) | 外部系（追跡・通信網／ミッション管制／打上げ処理） | MissionContext | ext | 3 | 0 |
| LaunchProcessing | — | 打上げ処理システム・地上支援設備（KSC） | EXT | lps | 0 | 18 |
| MissionControlCenter | — | ミッション管制センター（JSC） | EXT | mcc | 0 | 1 |
| TrackingNetwork | — | 追跡・通信網（TDRS・STDN） | EXT | net | 0 | 7 |
| NavigationAids | — | 地上航法局・GPS 衛星 | MissionContext | navAids | 0 | 1 |
| Payload | — | ペイロード | MissionContext | payload | 0 | 2 |
| SpaceEnvironment | — | 宇宙空間（船外） | MissionContext | space | 0 | 16 |
| SpaceTransportationSystem | — | 宇宙輸送システム（オービタ・ET・SRB） | MissionContext | sts | 3 | 0 |
| ET | [SSD-FD-ET-001](SSD-FD-ET-001.md) | 外部タンク（ET） | SpaceTransportationSystem | et | 6 | 8 |
| ET_ITK | [SSD-FD-ET-ITK-001](SSD-FD-ET-ITK-001.md) | インタタンク（ITK） | ET | itk | 0 | 3 |
| ET_LH2 | [SSD-FD-ET-LH2-001](SSD-FD-ET-LH2-001.md) | LH2タンク（LH2） | ET | lh2 | 0 | 6 |
| ET_LOX | [SSD-FD-ET-LOX-001](SSD-FD-ET-LOX-001.md) | LO2タンク（LOX） | ET | lox | 0 | 3 |
| ET_SEP | [SSD-FD-ET-SEP-001](SSD-FD-ET-SEP-001.md) | 分離・投棄・飛行安全（SEP） | ET | sep | 0 | 3 |
| ET_TPS | [SSD-FD-ET-TPS-001](SSD-FD-ET-TPS-001.md) | ET熱防護（TPS） | ET | tps | 0 | 1 |
| ET_UMB | [SSD-FD-ET-UMB-001](SSD-FD-ET-UMB-001.md) | アンビリカル・弁・センサ（UMB） | ET | umb | 0 | 6 |
| ORB | [SSD-FD-ORB-001](SSD-FD-ORB-001.md) | オービタ（OV） | SpaceTransportationSystem | orb | 17 | 8 |
| APU | [SSD-FD-APU-001](SSD-FD-APU-001.md) | 補助動力装置・油圧系（APU/HYD） | ORB | apu | 7 | 8 |
| APU_CIR | [SSD-FD-APU-CIR-001](SSD-FD-APU-CIR-001.md) | 循環ポンプ・熱調整（CIR） | APU | cir | 0 | 4 |
| APU_CTL | [SSD-FD-APU-CTL-001](SSD-FD-APU-CTL-001.md) | APU制御器（CTL） | APU | ctl | 0 | 6 |
| APU_FUL | [SSD-FD-APU-FUL-001](SSD-FD-APU-FUL-001.md) | ヒドラジン燃料供給（FUL） | APU | ful | 0 | 4 |
| APU_HYD | [SSD-FD-APU-HYD-001](SSD-FD-APU-HYD-001.md) | 主油圧ポンプ・供給（HYD） | APU | hyd | 0 | 9 |
| APU_OPS | [SSD-FD-APU-OPS-001](SSD-FD-APU-OPS-001.md) | APU/HYD運用管理（OPS） | APU | ops | 0 | 4 |
| APU_TRB | [SSD-FD-APU-TRB-001](SSD-FD-APU-TRB-001.md) | タービン・ギアボックス（TRB） | APU | trb | 0 | 6 |
| APU_WSB | [SSD-FD-APU-WSB-001](SSD-FD-APU-WSB-001.md) | 水噴霧ボイラ（WSB） | APU | wsb | 0 | 5 |
| CREW | [SSD-FD-CREW-001](SSD-FD-CREW-001.md) | 乗員系・脱出系（CREW） | ORB | crew | 6 | 1 |
| CREW_ESC | [SSD-FD-CREW-ESC-001](SSD-FD-CREW-ESC-001.md) | 脱出系（ESC） | CREW | esc | 0 | 3 |
| CREW_HAB | [SSD-FD-CREW-HAB-001](SSD-FD-CREW-HAB-001.md) | 居住・衛生（HAB） | CREW | hab | 0 | 2 |
| CREW_LTG | [SSD-FD-CREW-LTG-001](SSD-FD-CREW-LTG-001.md) | 照明（LTG） | CREW | ltg | 0 | 1 |
| CREW_MED | [SSD-FD-CREW-MED-001](SSD-FD-CREW-MED-001.md) | 医療・生体・放射線（MED） | CREW | med | 0 | 5 |
| CREW_OPS | [SSD-FD-CREW-OPS-001](SSD-FD-CREW-OPS-001.md) | 乗員系運用管理（OPS） | CREW | ops | 0 | 2 |
| CREW_STW | [SSD-FD-CREW-STW-001](SSD-FD-CREW-STW-001.md) | 収納・拘束（STW） | CREW | stw | 0 | 2 |
| CT | [SSD-FD-CT-001](SSD-FD-CT-001.md) | 通信・追跡系（C&T） | ORB | ct | 7 | 7 |
| CT_AUD | [SSD-FD-CT-AUD-001](SSD-FD-CT-AUD-001.md) | 音声分配（ACCU・ATU）（AUD） | CT | aud | 0 | 4 |
| CT_CCTV | [SSD-FD-CT-CCTV-001](SSD-FD-CT-CCTV-001.md) | 閉回路テレビ（CCTV） | CT | cctv | 0 | 3 |
| CT_INST | [SSD-FD-CT-INST-001](SSD-FD-CT-INST-001.md) | 計装・ペイロード通信（INST） | CT | inst | 0 | 4 |
| CT_KU | [SSD-FD-CT-KU-001](SSD-FD-CT-KU-001.md) | Ku帯通信・レーダ（KU） | CT | ku | 0 | 6 |
| CT_OPS | [SSD-FD-CT-OPS-001](SSD-FD-CT-OPS-001.md) | C&T運用管理（OPS） | CT | ops | 0 | 3 |
| CT_SBD | [SSD-FD-CT-SBD-001](SSD-FD-CT-SBD-001.md) | S帯PM・FM通信（SBD） | CT | sbd | 0 | 10 |
| CT_UHF | [SSD-FD-CT-UHF-001](SSD-FD-CT-UHF-001.md) | UHF（SPLX・SSOR）（UHF） | CT | uhf | 0 | 3 |
| CW | [SSD-FD-CW-001](SSD-FD-CW-001.md) | 警報系（C/W） | ORB | cw | 5 | 4 |
| CW_ALT | [SSD-FD-CW-ALT-001](SSD-FD-CW-ALT-001.md) | アラート・限界表示（ALT） | CW | alt | 0 | 3 |
| CW_ANN | [SSD-FD-CW-ANN-001](SSD-FD-CW-ANN-001.md) | 表示・警報音（ANN） | CW | ann | 0 | 5 |
| CW_BKP | [SSD-FD-CW-BKP-001](SSD-FD-CW-BKP-001.md) | バックアップC/W（ソフト）（BKP） | CW | bkp | 0 | 3 |
| CW_OPS | [SSD-FD-CW-OPS-001](SSD-FD-CW-OPS-001.md) | C/W運用管理（OPS） | CW | ops | 0 | 4 |
| CW_PRI | [SSD-FD-CW-PRI-001](SSD-FD-CW-PRI-001.md) | 主C/W（ハードウェア）（PRI） | CW | pri | 0 | 16 |
| DPS | [SSD-FD-DPS-001](SSD-FD-DPS-001.md) | データ処理系（DPS） | ORB | dps | 7 | 56 |
| DPS_ASC | [SSD-FD-DPS-ASC-001](SSD-FD-DPS-ASC-001.md) | 上昇系インタフェース（ASC） | DPS | asc | 0 | 7 |
| DPS_BUS | [SSD-FD-DPS-BUS-001](SSD-FD-DPS-BUS-001.md) | データバス網・MDM（BUS） | DPS | bus | 0 | 14 |
| DPS_FSW | [SSD-FD-DPS-FSW-001](SSD-FD-DPS-FSW-001.md) | 飛行ソフトウェア・MMU（FSW） | DPS | fsw | 0 | 12 |
| DPS_GPC | [SSD-FD-DPS-GPC-001](SSD-FD-DPS-GPC-001.md) | 汎用計算機・冗長セット（GPC） | DPS | gpc | 0 | 7 |
| DPS_MEDS | [SSD-FD-DPS-MEDS-001](SSD-FD-DPS-MEDS-001.md) | 表示・キーボード（MEDS） | DPS | meds | 0 | 6 |
| DPS_MTU | [SSD-FD-DPS-MTU-001](SSD-FD-DPS-MTU-001.md) | マスタタイミングユニット（MTU） | DPS | mtu | 0 | 3 |
| DPS_OPS | [SSD-FD-DPS-OPS-001](SSD-FD-DPS-OPS-001.md) | DPS運用管理（OPS） | DPS | ops | 0 | 3 |
| ECLSS | [SSD-FD-ECLSS-001](SSD-FD-ECLSS-001.md) | 環境制御・生命維持系（ECLSS） | ORB | eclss | 8 | 15 |
| ECL_ALS | [SSD-FD-ECL-ALS-001](SSD-FD-ECL-ALS-001.md) | エアロック支援系（ALS） | ECLSS | als | 6 | 13 |
| ECL_ALS_DEP | [SSD-FD-ECL-ALS-DEP-001](SSD-FD-ECL-ALS-DEP-001.md) | 区画・減圧・再与圧（DEP） | ECL_ALS | dep | 0 | 5 |
| ECL_ALS_HTR | [SSD-FD-ECL-ALS-HTR-001](SSD-FD-ECL-ALS-HTR-001.md) | 配管・構造ヒータ（HTR） | ECL_ALS | htr | 0 | 5 |
| ECL_ALS_LCG | [SSD-FD-ECL-ALS-LCG-001](SSD-FD-ECL-ALS-LCG-001.md) | 液冷服冷却ループ（LCG） | ECL_ALS | lcg | 0 | 4 |
| ECL_ALS_MON | [SSD-FD-ECL-ALS-MON-001](SSD-FD-ECL-ALS-MON-001.md) | 計測・表示（MON） | ECL_ALS | mon | 0 | 4 |
| ECL_ALS_SCU | [SSD-FD-ECL-ALS-SCU-001](SSD-FD-ECL-ALS-SCU-001.md) | EMU補給・支援（SCU） | ECL_ALS | scu | 0 | 7 |
| ECL_ALS_VNT | [SSD-FD-ECL-ALS-VNT-001](SSD-FD-ECL-ALS-VNT-001.md) | 換気・ブースタファン（VNT） | ECL_ALS | vnt | 0 | 3 |
| ECL_ARS | [SSD-FD-ECL-ARS-001](SSD-FD-ECL-ARS-001.md) | 大気再生系（ARS） | ECLSS | ars | 7 | 10 |
| ARS_AVB | [SSD-FD-ARS-AVB-001](SSD-FD-ARS-AVB-001.md) | アビオニクスベイ空冷（AVB） | ECL_ARS | avb | 5 | 7 |
| ARS_AVB_CIR | [SSD-FD-ARS-AVB-CIR-001](SSD-FD-ARS-AVB-CIR-001.md) | ベイ内循環・機器空冷（CIR） | ARS_AVB | cir | 0 | 8 |
| ARS_AVB_FAN | [SSD-FD-ARS-AVB-FAN-001](SSD-FD-ARS-AVB-FAN-001.md) | ベイファン・逆止弁（FAN） | ARS_AVB | fan | 0 | 5 |
| ARS_AVB_HX | [SSD-FD-ARS-AVB-HX-001](SSD-FD-ARS-AVB-HX-001.md) | ベイ熱交換器（HX） | ARS_AVB | hx | 0 | 4 |
| ARS_AVB_MON | [SSD-FD-ARS-AVB-MON-001](SSD-FD-ARS-AVB-MON-001.md) | 温度・差圧監視（MON） | ARS_AVB | mon | 0 | 6 |
| ARS_AVB_OPS | [SSD-FD-ARS-AVB-OPS-001](SSD-FD-ARS-AVB-OPS-001.md) | ベイ冷却運用管理（OPS） | ARS_AVB | ops | 0 | 2 |
| ARS_CAC | [SSD-FD-ARS-CAC-001](SSD-FD-ARS-CAC-001.md) | キャビン空気循環（CAC） | ECL_ARS | cac | 5 | 9 |
| CAC_DCT | [SSD-FD-CAC-DCT-001](SSD-FD-CAC-DCT-001.md) | 送風ダクト・分配（DCT） | ARS_CAC | dct | 0 | 4 |
| CAC_FAN | [SSD-FD-CAC-FAN-001](SSD-FD-CAC-FAN-001.md) | キャビンファン・逆止弁（FAN） | ARS_CAC | fan | 0 | 6 |
| CAC_MON | [SSD-FD-CAC-MON-001](SSD-FD-CAC-MON-001.md) | ファン差圧監視（MON） | ARS_CAC | mon | 0 | 3 |
| CAC_OPS | [SSD-FD-CAC-OPS-001](SSD-FD-CAC-OPS-001.md) | ファン運用管理（OPS） | ARS_CAC | ops | 0 | 2 |
| CAC_RTN | [SSD-FD-CAC-RTN-001](SSD-FD-CAC-RTN-001.md) | 還流・ろ過（RTN） | ARS_CAC | rtn | 0 | 5 |
| ARS_CO2 | [SSD-FD-ARS-CO2-001](SSD-FD-ARS-CO2-001.md) | CO2・CO除去（LiOH・ATCO） | ECL_ARS | co2 | 5 | 4 |
| CO2_ABS | [SSD-FD-CO2-ABS-001](SSD-FD-CO2-ABS-001.md) | 吸収器装着部（ABS） | ARS_CO2 | abs | 0 | 3 |
| CO2_ATCO | [SSD-FD-CO2-ATCO-001](SSD-FD-CO2-ATCO-001.md) | 常温触媒酸化器（ATCO） | ARS_CO2 | atco | 0 | 1 |
| CO2_CAN | [SSD-FD-CO2-CAN-001](SSD-FD-CO2-CAN-001.md) | 交換式キャニスタ（CAN） | ARS_CO2 | can | 0 | 2 |
| CO2_MON | [SSD-FD-CO2-MON-001](SSD-FD-CO2-MON-001.md) | CO2・CO監視（MON） | ARS_CO2 | mon | 0 | 3 |
| CO2_STW | [SSD-FD-CO2-STW-001](SSD-FD-CO2-STW-001.md) | 予備キャニスタ収納・交換管理（STW） | ARS_CO2 | stw | 0 | 1 |
| ARS_IMU | [SSD-FD-ARS-IMU-001](SSD-FD-ARS-IMU-001.md) | IMU空冷（IMU） | ECL_ARS | imu | 5 | 5 |
| ARS_IMU_FAN | [SSD-FD-ARS-IMU-FAN-001](SSD-FD-ARS-IMU-FAN-001.md) | IMUファン・逆止弁（FAN） | ARS_IMU | fan | 0 | 5 |
| ARS_IMU_HEX | [SSD-FD-ARS-IMU-HEX-001](SSD-FD-ARS-IMU-HEX-001.md) | IMU熱交換器・ダクト（HEX） | ARS_IMU | hex | 0 | 3 |
| ARS_IMU_INL | [SSD-FD-ARS-IMU-INL-001](SSD-FD-ARS-IMU-INL-001.md) | 吸込み・IMU通風（INL） | ARS_IMU | inl | 0 | 3 |
| ARS_IMU_MON | [SSD-FD-ARS-IMU-MON-001](SSD-FD-ARS-IMU-MON-001.md) | ファン監視・表示（MON） | ARS_IMU | mon | 0 | 4 |
| ARS_IMU_OPS | [SSD-FD-ARS-IMU-OPS-001](SSD-FD-ARS-IMU-OPS-001.md) | ファン運用管理（OPS） | ARS_IMU | ops | 0 | 2 |
| ARS_RCRS | [SSD-FD-ARS-RCRS-001](SSD-FD-ARS-RCRS-001.md) | 再生式CO2除去装置（RCRS） | ECL_ARS | rcrs | 6 | 5 |
| ARS_RCRS_BED | [SSD-FD-ARS-RCRS-BED-001](SSD-FD-ARS-RCRS-BED-001.md) | 吸着・再生ベッド（BED） | ARS_RCRS | bed | 0 | 6 |
| ARS_RCRS_CTL | [SSD-FD-ARS-RCRS-CTL-001](SSD-FD-ARS-RCRS-CTL-001.md) | 制御器・運転シーケンス（CTL） | ARS_RCRS | ctl | 0 | 6 |
| ARS_RCRS_FAN | [SSD-FD-ARS-RCRS-FAN-001](SSD-FD-ARS-RCRS-FAN-001.md) | 吸気・送風・流量設定（FAN） | ARS_RCRS | fan | 0 | 3 |
| ARS_RCRS_MON | [SSD-FD-ARS-RCRS-MON-001](SSD-FD-ARS-RCRS-MON-001.md) | 計装・表示（MON） | ARS_RCRS | mon | 0 | 6 |
| ARS_RCRS_OPS | [SSD-FD-ARS-RCRS-OPS-001](SSD-FD-ARS-RCRS-OPS-001.md) | RCRS運用管理（OPS） | ARS_RCRS | ops | 0 | 2 |
| ARS_RCRS_USC | [SSD-FD-ARS-RCRS-USC-001](SSD-FD-ARS-RCRS-USC-001.md) | 空気回収・均圧（USC） | ARS_RCRS | usc | 0 | 2 |
| ARS_THC | [SSD-FD-ARS-THC-001](SSD-FD-ARS-THC-001.md) | キャビン温湿度制御（THC） | ECL_ARS | thc | 5 | 8 |
| ARS_THC_HX | [SSD-FD-ARS-THC-HX-001](SSD-FD-ARS-THC-HX-001.md) | キャビン熱交換器・凝縮（HX） | ARS_THC | hx | 0 | 7 |
| ARS_THC_MON | [SSD-FD-ARS-THC-MON-001](SSD-FD-ARS-THC-MON-001.md) | 温度・分離器監視（MON） | ARS_THC | mon | 0 | 7 |
| ARS_THC_OPS | [SSD-FD-ARS-THC-OPS-001](SSD-FD-ARS-THC-OPS-001.md) | 温湿度運用管理（OPS） | ARS_THC | ops | 0 | 3 |
| ARS_THC_SEP | [SSD-FD-ARS-THC-SEP-001](SSD-FD-ARS-THC-SEP-001.md) | 湿度分離器・凝縮水排出（SEP） | ARS_THC | sep | 0 | 6 |
| ARS_THC_TCV | [SSD-FD-ARS-THC-TCV-001](SSD-FD-ARS-THC-TCV-001.md) | 温度制御弁・給気混合（TCV） | ARS_THC | tcv | 0 | 7 |
| ARS_WCL | [SSD-FD-ARS-WCL-001](SSD-FD-ARS-WCL-001.md) | 水冷却ループ（WCL） | ECL_ARS | wcl | 6 | 13 |
| ARS_WCL_AVL | [SSD-FD-ARS-WCL-AVL-001](SSD-FD-ARS-WCL-AVL-001.md) | アビオニクス冷却経路（AVL） | ARS_WCL | avl | 0 | 6 |
| ARS_WCL_CLD | [SSD-FD-ARS-WCL-CLD-001](SSD-FD-ARS-WCL-CLD-001.md) | 冷側熱交換器（CLD） | ARS_WCL | cld | 0 | 6 |
| ARS_WCL_ICH | [SSD-FD-ARS-WCL-ICH-001](SSD-FD-ARS-WCL-ICH-001.md) | インターチェンジャ・バイパス制御（ICH） | ARS_WCL | ich | 0 | 8 |
| ARS_WCL_MON | [SSD-FD-ARS-WCL-MON-001](SSD-FD-ARS-WCL-MON-001.md) | ループ計測・警報（MON） | ARS_WCL | mon | 0 | 5 |
| ARS_WCL_OPS | [SSD-FD-ARS-WCL-OPS-001](SSD-FD-ARS-WCL-OPS-001.md) | ループ運用管理（OPS） | ARS_WCL | ops | 0 | 3 |
| ARS_WCL_PMP | [SSD-FD-ARS-WCL-PMP-001](SSD-FD-ARS-WCL-PMP-001.md) | ポンプパッケージ（PMP） | ARS_WCL | pmp | 0 | 8 |
| ECL_ATCS | [SSD-FD-ECL-ATCS-001](SSD-FD-ECL-ATCS-001.md) | 能動熱制御系（ATCS） | ECLSS | atcs | 6 | 9 |
| TCS_FCL | [SSD-FD-TCS-FCL-001](SSD-FD-TCS-FCL-001.md) | フレオン21冷却ループ（FCL） | ECL_ATCS | fcl | 0 | 6 |
| TCS_FES | [SSD-FD-TCS-FES-001](SSD-FD-TCS-FES-001.md) | フラッシュエバポレータ（FES） | ECL_ATCS | fes | 0 | 4 |
| TCS_GSE | [SSD-FD-TCS-GSE-001](SSD-FD-TCS-GSE-001.md) | GSE熱交換器・地上冷却（GSE） | ECL_ATCS | gse | 0 | 2 |
| TCS_HX | [SSD-FD-TCS-HX-001](SSD-FD-TCS-HX-001.md) | 熱取得：熱交換器・コールドプレート網（HX） | ECL_ATCS | hx | 0 | 10 |
| TCS_NH3 | [SSD-FD-TCS-NH3-001](SSD-FD-TCS-NH3-001.md) | アンモニアボイラ（NH3） | ECL_ATCS | nh3 | 0 | 3 |
| TCS_RAD | [SSD-FD-TCS-RAD-001](SSD-FD-TCS-RAD-001.md) | 放熱器（RAD） | ECL_ATCS | rad | 0 | 2 |
| ECL_CAB | [SSD-FD-ECL-CAB-001](SSD-FD-ECL-CAB-001.md) | 乗員室環境（制御対象） | ECLSS | cab | 0 | 26 |
| ECL_FDS | [SSD-FD-ECL-FDS-001](SSD-FD-ECL-FDS-001.md) | 煙検知・消火系（FDS） | ECLSS | fds | 5 | 5 |
| ECL_FDS_ALM | [SSD-FD-ECL-FDS-ALM-001](SSD-FD-ECL-FDS-ALM-001.md) | 煙警報・回路試験（ALM） | ECL_FDS | alm | 0 | 4 |
| ECL_FDS_DET | [SSD-FD-ECL-FDS-DET-001](SSD-FD-ECL-FDS-DET-001.md) | 煙感知器（DET） | ECL_FDS | det | 0 | 7 |
| ECL_FDS_FIX | [SSD-FD-ECL-FDS-FIX-001](SSD-FD-ECL-FDS-FIX-001.md) | ベイ固定消火ボトル（FIX） | ECL_FDS | fix | 0 | 4 |
| ECL_FDS_OPS | [SSD-FD-ECL-FDS-OPS-001](SSD-FD-ECL-FDS-OPS-001.md) | 火災対応・運用管理（OPS） | ECL_FDS | ops | 0 | 3 |
| ECL_FDS_PFE | [SSD-FD-ECL-FDS-PFE-001](SSD-FD-ECL-FDS-PFE-001.md) | 携帯消火器・消火ポート（PFE） | ECL_FDS | pfe | 0 | 3 |
| ECL_H2O | [SSD-FD-ECL-H2O-001](SSD-FD-ECL-H2O-001.md) | 給水・廃水系（H2O） | ECLSS | h2o | 6 | 11 |
| ECL_H2O_DMP | [SSD-FD-ECL-H2O-DMP-001](SSD-FD-ECL-H2O-DMP-001.md) | 船外ダンプ・クロスタイ（DMP） | ECL_H2O | dmp | 0 | 6 |
| ECL_H2O_FCW | [SSD-FD-ECL-H2O-FCW-001](SSD-FD-ECL-H2O-FCW-001.md) | 生成水受入れ・処理（FCW） | ECL_H2O | fcw | 0 | 3 |
| ECL_H2O_GAL | [SSD-FD-ECL-H2O-GAL-001](SSD-FD-ECL-H2O-GAL-001.md) | 飲料水供給（GAL） | ECL_H2O | gal | 0 | 4 |
| ECL_H2O_PRS | [SSD-FD-ECL-H2O-PRS-001](SSD-FD-ECL-H2O-PRS-001.md) | タンク加圧（PRS） | ECL_H2O | prs | 0 | 4 |
| ECL_H2O_SPL | [SSD-FD-ECL-H2O-SPL-001](SSD-FD-ECL-H2O-SPL-001.md) | 給水貯蔵・分配（SPL） | ECL_H2O | spl | 0 | 8 |
| ECL_H2O_WST | [SSD-FD-ECL-H2O-WST-001](SSD-FD-ECL-H2O-WST-001.md) | 廃水貯蔵（WST） | ECL_H2O | wst | 0 | 6 |
| ECL_PCS | [SSD-FD-ECL-PCS-001](SSD-FD-ECL-PCS-001.md) | 圧力制御系（PCS／ARPCS） | ECLSS | pcs | 6 | 8 |
| ECL_PCS_MNF | [SSD-FD-ECL-PCS-MNF-001](SSD-FD-ECL-PCS-MNF-001.md) | O2/N2マニホールド・PPO2制御（MNF） | ECL_PCS | mnf | 0 | 6 |
| ECL_PCS_MON | [SSD-FD-ECL-PCS-MON-001](SSD-FD-ECL-PCS-MON-001.md) | 計測・表示・警報（MON） | ECL_PCS | mon | 0 | 7 |
| ECL_PCS_N2S | [SSD-FD-ECL-PCS-N2S-001](SSD-FD-ECL-PCS-N2S-001.md) | 窒素供給（N2S） | ECL_PCS | n2s | 0 | 6 |
| ECL_PCS_O2S | [SSD-FD-ECL-PCS-O2S-001](SSD-FD-ECL-PCS-O2S-001.md) | 酸素供給・分配（O2S） | ECL_PCS | o2s | 0 | 10 |
| ECL_PCS_OPS | [SSD-FD-ECL-PCS-OPS-001](SSD-FD-ECL-PCS-OPS-001.md) | 与圧運用管理（OPS） | ECL_PCS | ops | 0 | 3 |
| ECL_PCS_RLF | [SSD-FD-ECL-PCS-RLF-001](SSD-FD-ECL-PCS-RLF-001.md) | 正負圧逃し・ベント（RLF） | ECL_PCS | rlf | 0 | 3 |
| ECL_WCS | [SSD-FD-ECL-WCS-001](SSD-FD-ECL-WCS-001.md) | 廃棄物収集系（WCS） | ECLSS | wcs | 5 | 6 |
| ECL_WCS_CMD | [SSD-FD-ECL-WCS-CMD-001](SSD-FD-ECL-WCS-CMD-001.md) | 便器・固形廃棄物（CMD） | ECL_WCS | cmd | 0 | 4 |
| ECL_WCS_FSP | [SSD-FD-ECL-WCS-FSP-001](SSD-FD-ECL-WCS-FSP-001.md) | ファンセパレータ・フィルタ（FSP） | ECL_WCS | fsp | 0 | 6 |
| ECL_WCS_OPS | [SSD-FD-ECL-WCS-OPS-001](SSD-FD-ECL-WCS-OPS-001.md) | 制御・運用管理（OPS） | ECL_WCS | ops | 0 | 3 |
| ECL_WCS_URN | [SSD-FD-ECL-WCS-URN-001](SSD-FD-ECL-WCS-URN-001.md) | 尿・EMU凝縮水収集（URN） | ECL_WCS | urn | 0 | 3 |
| ECL_WCS_VAC | [SSD-FD-ECL-WCS-VAC-001](SSD-FD-ECL-WCS-VAC-001.md) | 真空ベント（VAC） | ECL_WCS | vac | 0 | 10 |
| EPS | [SSD-FD-EPS-001](SSD-FD-EPS-001.md) | 電力系（EPS） | ORB | eps | 4 | 65 |
| EPS_AC | [SSD-FD-EPS-AC-001](SSD-FD-EPS-AC-001.md) | 交流発電・配電（EPDC-AC） | EPS | ac | 0 | 6 |
| EPS_DC | [SSD-FD-EPS-DC-001](SSD-FD-EPS-DC-001.md) | 直流配電（EPDC-DC） | EPS | dc | 0 | 21 |
| EPS_FCP | [SSD-FD-EPS-FCP-001](SSD-FD-EPS-FCP-001.md) | 燃料電池発電装置（FCP） | EPS | fcp | 0 | 8 |
| EPS_PRSD | [SSD-FD-EPS-PRSD-001](SSD-FD-EPS-PRSD-001.md) | 反応剤貯蔵・分配（PRSD） | EPS | prsd | 0 | 3 |
| EVA | [SSD-FD-EVA-001](SSD-FD-EVA-001.md) | 船外活動（EVA/EMU） | ORB | eva | 6 | 3 |
| EVA_CHK | [SSD-FD-EVA-CHK-001](SSD-FD-EVA-CHK-001.md) | EMU点検・準備（CHK） | EVA | chk | 0 | 4 |
| EVA_DPR | [SSD-FD-EVA-DPR-001](SSD-FD-EVA-DPR-001.md) | 減圧・再与圧（DPR） | EVA | dpr | 0 | 5 |
| EVA_EMG | [SSD-FD-EVA-EMG-001](SSD-FD-EVA-EMG-001.md) | 非常時の手順（EMG） | EVA | emg | 0 | 5 |
| EVA_MNT | [SSD-FD-EVA-MNT-001](SSD-FD-EVA-MNT-001.md) | EVA後の手入れ・再充填（MNT） | EVA | mnt | 0 | 5 |
| EVA_OPS | [SSD-FD-EVA-OPS-001](SSD-FD-EVA-OPS-001.md) | 合図と運用管理（OPS） | EVA | ops | 0 | 6 |
| EVA_TLS | [SSD-FD-EVA-TLS-001](SSD-FD-EVA-TLS-001.md) | 工具・収納（TLS） | EVA | tls | 0 | 3 |
| GNC | [SSD-FD-GNC-001](SSD-FD-GNC-001.md) | 誘導・航法・制御（GN&C） | ORB | gnc | 7 | 15 |
| GNC_ACT | [SSD-FD-GNC-ACT-001](SSD-FD-GNC-ACT-001.md) | 舵面・推力方向制御駆動（ACT） | GNC | act | 0 | 6 |
| GNC_CCD | [SSD-FD-GNC-CCD-001](SSD-FD-GNC-CCD-001.md) | 乗員操縦・表示（CCD） | GNC | ccd | 0 | 5 |
| GNC_FCS | [SSD-FD-GNC-FCS-001](SSD-FD-GNC-FCS-001.md) | DAP・飛行制御センサ（FCS） | GNC | fcs | 0 | 7 |
| GNC_GNS | [SSD-FD-GNC-GNS-001](SSD-FD-GNC-GNS-001.md) | 誘導・航法演算（GNS） | GNC | gns | 0 | 7 |
| GNC_INS | [SSD-FD-GNC-INS-001](SSD-FD-GNC-INS-001.md) | 慣性計測・アライメント（INS） | GNC | ins | 0 | 4 |
| GNC_NAS | [SSD-FD-GNC-NAS-001](SSD-FD-GNC-NAS-001.md) | 航法援助・エアデータ（NAS） | GNC | nas | 0 | 4 |
| GNC_OPS | [SSD-FD-GNC-OPS-001](SSD-FD-GNC-OPS-001.md) | GNC運用管理（OPS） | GNC | ops | 0 | 3 |
| MECH | [SSD-FD-MECH-001](SSD-FD-MECH-001.md) | 機械系（MECH） | ORB | mech | 6 | 4 |
| MECH_ACT | [SSD-FD-MECH-ACT-001](SSD-FD-MECH-ACT-001.md) | 電動駆動（PDU・MCA）（ACT） | MECH | act | 0 | 4 |
| MECH_DEC | [SSD-FD-MECH-DEC-001](SSD-FD-MECH-DEC-001.md) | 制動・操向・減速傘（DEC） | MECH | dec | 0 | 3 |
| MECH_LDG | [SSD-FD-MECH-LDG-001](SSD-FD-MECH-LDG-001.md) | 降着装置（LDG） | MECH | ldg | 0 | 3 |
| MECH_OPS | [SSD-FD-MECH-OPS-001](SSD-FD-MECH-OPS-001.md) | MECH運用管理（OPS） | MECH | ops | 0 | 3 |
| MECH_PLB | [SSD-FD-MECH-PLB-001](SSD-FD-MECH-PLB-001.md) | ペイロードベイドア（PLB） | MECH | plb | 0 | 3 |
| MECH_VNT | [SSD-FD-MECH-VNT-001](SSD-FD-MECH-VNT-001.md) | ベント・ETアンビリカル扉（VNT） | MECH | vnt | 0 | 3 |
| MPS | [SSD-FD-MPS-001](SSD-FD-MPS-001.md) | 主推進系（MPS） | ORB | mps | 7 | 7 |
| MPS_CTL | [SSD-FD-MPS-CTL-001](SSD-FD-MPS-CTL-001.md) | 主エンジン制御器（CTL） | MPS | ctl | 0 | 5 |
| MPS_DMP | [SSD-FD-MPS-DMP-001](SSD-FD-MPS-DMP-001.md) | 充填・ダンプ・不活性化（DMP） | MPS | dmp | 0 | 5 |
| MPS_HE | [SSD-FD-MPS-HE-001](SSD-FD-MPS-HE-001.md) | ヘリウム・空圧（HE） | MPS | he | 0 | 6 |
| MPS_OPS | [SSD-FD-MPS-OPS-001](SSD-FD-MPS-OPS-001.md) | MPS運用管理（OPS） | MPS | ops | 0 | 4 |
| MPS_PMS | [SSD-FD-MPS-PMS-001](SSD-FD-MPS-PMS-001.md) | 推進薬供給（PMS） | MPS | pms | 0 | 8 |
| MPS_SSME | [SSD-FD-MPS-SSME-001](SSD-FD-MPS-SSME-001.md) | 主エンジン本体（SSME） | MPS | ssme | 0 | 6 |
| MPS_TVC | [SSD-FD-MPS-TVC-001](SSD-FD-MPS-TVC-001.md) | 油圧・推力方向制御（TVC） | MPS | tvc | 0 | 4 |
| OMS | [SSD-FD-OMS-001](SSD-FD-OMS-001.md) | 軌道制御系（OMS） | ORB | oms | 7 | 4 |
| OMS_ENG | [SSD-FD-OMS-ENG-001](SSD-FD-OMS-ENG-001.md) | OMSエンジン・GN2系（ENG） | OMS | eng | 0 | 6 |
| OMS_HE | [SSD-FD-OMS-HE-001](SSD-FD-OMS-HE-001.md) | ヘリウム加圧（HE） | OMS | he | 0 | 2 |
| OMS_OPS | [SSD-FD-OMS-OPS-001](SSD-FD-OMS-OPS-001.md) | 運用管理（規則・処置）（OPS） | OMS | ops | 0 | 5 |
| OMS_PSD | [SSD-FD-OMS-PSD-001](SSD-FD-OMS-PSD-001.md) | 推進薬貯蔵・分配（PSD） | OMS | psd | 0 | 6 |
| OMS_THM | [SSD-FD-OMS-THM-001](SSD-FD-OMS-THM-001.md) | 推進薬熱管理（THM） | OMS | thm | 0 | 2 |
| OMS_TVC | [SSD-FD-OMS-TVC-001](SSD-FD-OMS-TVC-001.md) | 推力方向制御（ジンバル）（TVC） | OMS | tvc | 0 | 5 |
| OMS_XFD | [SSD-FD-OMS-XFD-001](SSD-FD-OMS-XFD-001.md) | クロスフィード・RCS連結（XFD） | OMS | xfd | 0 | 4 |
| PLS | [SSD-FD-PLS-001](SSD-FD-PLS-001.md) | ペイロード支援（PDRS・ODS） | ORB | pls | 6 | 4 |
| PLS_ARM | [SSD-FD-PLS-ARM-001](SSD-FD-PLS-ARM-001.md) | RMSアーム（ARM） | PLS | arm | 0 | 4 |
| PLS_CTL | [SSD-FD-PLS-CTL-001](SSD-FD-PLS-CTL-001.md) | RMS制御（MCIU・D&C）（CTL） | PLS | ctl | 0 | 3 |
| PLS_MPM | [SSD-FD-PLS-MPM-001](SSD-FD-PLS-MPM-001.md) | MPM・保持ラッチ・投棄（MPM） | PLS | mpm | 0 | 2 |
| PLS_ODS | [SSD-FD-PLS-ODS-001](SSD-FD-PLS-ODS-001.md) | オービタ・ドッキング系（ODS） | PLS | ods | 0 | 2 |
| PLS_OPS | [SSD-FD-PLS-OPS-001](SSD-FD-PLS-OPS-001.md) | PLS運用管理（OPS） | PLS | ops | 0 | 3 |
| PLS_PRL | [SSD-FD-PLS-PRL-001](SSD-FD-PLS-PRL-001.md) | ペイロード保持ラッチ（PRL） | PLS | prl | 0 | 2 |
| RCS | [SSD-FD-RCS-001](SSD-FD-RCS-001.md) | 姿勢制御系（RCS） | ORB | rcs | 7 | 4 |
| RCS_HEP | [SSD-FD-RCS-HEP-001](SSD-FD-RCS-HEP-001.md) | ヘリウム加圧（HEP） | RCS | hep | 0 | 3 |
| RCS_HTR | [SSD-FD-RCS-HTR-001](SSD-FD-RCS-HTR-001.md) | 熱制御（ヒータ）（HTR） | RCS | htr | 0 | 5 |
| RCS_JET | [SSD-FD-RCS-JET-001](SSD-FD-RCS-JET-001.md) | 主・バーニア噴射器（JET） | RCS | jet | 0 | 5 |
| RCS_OPS | [SSD-FD-RCS-OPS-001](SSD-FD-RCS-OPS-001.md) | RCS運用管理（OPS） | RCS | ops | 0 | 4 |
| RCS_PRP | [SSD-FD-RCS-PRP-001](SSD-FD-RCS-PRP-001.md) | 推進薬貯蔵・分配（PRP） | RCS | prp | 0 | 8 |
| RCS_RJD | [SSD-FD-RCS-RJD-001](SSD-FD-RCS-RJD-001.md) | 噴射器駆動回路（RJD） | RCS | rjd | 0 | 4 |
| RCS_RM | [SSD-FD-RCS-RM-001](SSD-FD-RCS-RM-001.md) | 噴射器冗長管理（RM） | RCS | rm | 0 | 5 |
| STR | [SSD-FD-STR-001](SSD-FD-STR-001.md) | 構造（STR） | ORB | str | 6 | 5 |
| STR_AFT | [SSD-FD-STR-AFT-001](SSD-FD-STR-AFT-001.md) | 後胴・推力構造・ポッド（AFT） | STR | aft | 0 | 6 |
| STR_CRM | [SSD-FD-STR-CRM-001](SSD-FD-STR-CRM-001.md) | 乗員室（与圧）・窓（CRM） | STR | crm | 0 | 3 |
| STR_FWD | [SSD-FD-STR-FWD-001](SSD-FD-STR-FWD-001.md) | 前胴・前部RCSモジュール（FWD） | STR | fwd | 0 | 3 |
| STR_MID | [SSD-FD-STR-MID-001](SSD-FD-STR-MID-001.md) | 中胴・ペイロードベイ（MID） | STR | mid | 0 | 10 |
| STR_OPS | [SSD-FD-STR-OPS-001](SSD-FD-STR-OPS-001.md) | 構造運用管理（OPS） | STR | ops | 0 | 2 |
| STR_WNG | [SSD-FD-STR-WNG-001](SSD-FD-STR-WNG-001.md) | 翼・ボディフラップ・尾翼（WNG） | STR | wng | 0 | 3 |
| TCS | [SSD-FD-TCS-001](SSD-FD-TCS-001.md) | 熱制御（能動・受動） | ORB | tcs | 1 | 0 |
| TCS_PTC | [SSD-FD-TCS-PTC-001](SSD-FD-TCS-PTC-001.md) | 受動熱制御（PTC：断熱・ヒータ・パージ） | TCS | ptc | 0 | 3 |
| TPS | [SSD-FD-TPS-001](SSD-FD-TPS-001.md) | 熱防護系（TPS） | ORB | tps | 0 | 2 |
| SRB | [SSD-FD-SRB-001](SSD-FD-SRB-001.md) | 固体ロケットブースタ（SRB） | SpaceTransportationSystem | srb[2] | 6 | 7 |
| SRB_ATT | [SSD-FD-SRB-ATT-001](SSD-FD-SRB-ATT-001.md) | ET結合・分離（ATT） | SRB | att | 0 | 3 |
| SRB_AVN | [SSD-FD-SRB-AVN-001](SSD-FD-SRB-AVN-001.md) | 電子・電力・射場安全（AVN） | SRB | avn | 0 | 5 |
| SRB_HDP | [SSD-FD-SRB-HDP-001](SSD-FD-SRB-HDP-001.md) | 保持・点火（HDP） | SRB | hdp | 0 | 3 |
| SRB_MTR | [SSD-FD-SRB-MTR-001](SSD-FD-SRB-MTR-001.md) | 固体ロケットモータ（MTR） | SRB | mtr | 0 | 3 |
| SRB_REC | [SSD-FD-SRB-REC-001](SSD-FD-SRB-REC-001.md) | 降下・回収（REC） | SRB | rec | 0 | 1 |
| SRB_TVC | [SSD-FD-SRB-TVC-001](SSD-FD-SRB-TVC-001.md) | 推力方向制御（HPU）（TVC） | SRB | tvc | 0 | 3 |

## 4. IF の対応

IF 601件の SysML v2 での表し方を示す（所有文書の順ではなく IF の番号の順）。置き場所は interface・connection を持つ part def、端は置き場所から見た部品の道筋（送り側 → 受け側、双方向は ↔）である。端の決め方は「行」（端の両方の文書に IF の行がある）431件、「名前」（相手の名前から決めた。§5）170件である。

| 所有文書 | IF | 種別 | 置き場所 | 端 | 型 | 端の決め方 |
|---|---|---|---|---|---|---|
| SSD-FD-ET-001 | IF-SYS-01 | 推進薬・流体 | SpaceTransportationSystem | et → orb | FluidInterface | 行 |
| SSD-FD-SRB-001 | IF-SYS-02 | 構造・荷重 | SpaceTransportationSystem | srb ↔ et | LoadBiInterface | 行 |
| SSD-FD-ORB-001 | IF-SYS-03 | データ・指令 | SpaceTransportationSystem | orb → srb | DataInterface | 行 |
| SSD-FD-ORB-001 | IF-SYS-04 | RF（無線） | MissionContext | sts.orb ↔ ext.net | RfBiInterface | 行 |
| SSD-FD-EXT-001 | IF-SYS-05 | データ・指令 | EXT | net ↔ mcc | DataBiInterface | 名前 |
| SSD-FD-ORB-001 | IF-SYS-06 | データ・指令 | MissionContext | sts.orb ↔ ext.lps | DataBiInterface | 行 |
| SSD-FD-ORB-001 | IF-SYS-07 | 構造・荷重 | SpaceTransportationSystem | orb ↔ et | LoadBiInterface | 行 |
| SSD-FD-ORB-001 | IF-SYS-08 | データ・指令 | SpaceTransportationSystem | orb → et | DataInterface | 行 |
| SSD-FD-EXT-001 | IF-SYS-09 | 推進薬・流体 | MissionContext | ext.lps → sts.orb | FluidInterface | 行 |
| SSD-FD-SRB-001 | IF-SYS-10 | 構造・荷重 | MissionContext | sts.srb ↔ ext.lps | LoadBiInterface | 行 |
| SSD-FD-CT-001 | IF-ORB-01 | データ・指令 | ORB | ct ↔ dps | DataBiInterface | 行 |
| SSD-FD-DPS-001 | IF-ORB-02 | データ・指令 | ORB | dps ↔ gnc | DataBiInterface | 行 |
| SSD-FD-GNC-001 | IF-ORB-03 | データ・指令 | ORB | gnc → rcs | DataInterface | 行 |
| SSD-FD-GNC-001 | IF-ORB-04 | データ・指令 | ORB | gnc → oms | DataInterface | 行 |
| SSD-FD-OMS-001 | IF-ORB-05 | 推進薬・流体 | ORB | oms → rcs | FluidInterface | 行 |
| SSD-FD-DPS-001 | IF-ORB-06 | データ・指令 | ORB | dps → mps | DataInterface | 行 |
| SSD-FD-APU-001 | IF-ORB-07 | 油圧 | ORB | apu → mps | HydraulicInterface | 行 |
| SSD-FD-APU-001 | IF-ORB-08 | 油圧 | ORB | apu → gnc | HydraulicInterface | 行 |
| SSD-FD-EPS-001 | IF-ORB-09 | 推進薬・流体 | ORB | eps → eclss | FluidInterface | 行 |
| SSD-FD-EPS-001 | IF-ORB-10 | 推進薬・流体 | ORB | eps → eclss | FluidInterface | 行 |
| SSD-FD-EPS-001 | IF-ORB-11 | 熱 | ORB | eps → eclss | HeatInterface | 行 |
| SSD-FD-ECLSS-001 | IF-ORB-12 | 熱 | ORB | eclss → apu | HeatInterface | 行 |
| SSD-FD-ECLSS-001 | IF-ORB-13 | 熱 | ORB | eclss → dps | HeatInterface | 行 |
| SSD-FD-EPS-001 | IF-ORB-14 | 電力（28 VDC） | ORB | eps、apu、ct、cw、dps、eclss、gnc、mech、mps、oms、pls、rcs | connection（n 項） | 行 |
| SSD-FD-MPS-001 | IF-ORB-15 | 推進薬・流体 | SpaceTransportationSystem | et → orb.mps | FluidInterface | 行 |
| SSD-FD-CT-001 | IF-ORB-16 | RF（無線） | MissionContext | sts.orb.ct ↔ ext.net | RfBiInterface | 行 |
| SSD-FD-DPS-001 | IF-ORB-17 | データ・指令 | MissionContext | sts.orb.dps ↔ ext.lps | DataBiInterface | 行 |
| SSD-FD-DPS-001 | IF-ORB-18 | データ・指令 | SpaceTransportationSystem | orb.dps → srb | DataInterface | 行 |
| SSD-FD-ECLSS-001 | IF-ORB-19 | データ・指令 | ORB | eclss ↔ dps | DataBiInterface | 行 |
| SSD-FD-EPS-001 | IF-ORB-20 | データ・指令 | ORB | eps ↔ dps | DataBiInterface | 行 |
| SSD-FD-GNC-001 | IF-ORB-21 | データ・指令 | ORB | gnc → mps | DataInterface | 行 |
| SSD-FD-GNC-001 | IF-ORB-22 | データ・指令 | SpaceTransportationSystem | orb.gnc → srb | DataInterface | 行 |
| SSD-FD-APU-001 | IF-ORB-23 | データ・指令 | ORB | apu ↔ dps | DataBiInterface | 行 |
| SSD-FD-CT-001 | IF-ORB-24 | データ・指令 | ORB | ct → gnc | DataInterface | 行 |
| SSD-FD-DPS-001 | IF-ORB-25 | データ・指令 | SpaceTransportationSystem | orb.dps → et | DataInterface | 行 |
| SSD-FD-DPS-001 | IF-ORB-26 | データ・指令 | SpaceTransportationSystem | orb.dps → srb | DataInterface | 行 |
| SSD-FD-EPS-001 | IF-ORB-27 | 電力（28 VDC） | SpaceTransportationSystem | orb.eps → et | PowerInterface | 行 |
| SSD-FD-EPS-001 | IF-ORB-28 | 電力（28 VDC） | SpaceTransportationSystem | orb.eps → srb | PowerInterface | 行 |
| SSD-FD-EXT-001 | IF-ORB-29 | 推進薬・流体 | MissionContext | ext.lps → sts.orb.mps | FluidInterface | 行 |
| SSD-FD-EXT-001 | IF-ORB-30 | 推進薬・流体 | MissionContext | ext.lps → sts.orb.eps | FluidInterface | 行 |
| SSD-FD-EXT-001 | IF-ORB-31 | 電力（28 VDC） | MissionContext | ext.lps → sts.orb.eps | PowerInterface | 行 |
| SSD-FD-EXT-001 | IF-ORB-32 | 熱 | MissionContext | ext.lps → sts.orb.eclss | HeatInterface | 行 |
| SSD-FD-EXT-001 | IF-ORB-33 | 推進薬・流体 | MissionContext | ext.lps → sts.orb.str | FluidInterface | 行 |
| SSD-FD-ECLSS-001 | IF-ORB-34 | 熱 | ORB | eclss → gnc | HeatInterface | 行 |
| SSD-FD-ECLSS-001 | IF-ORB-35 | 熱 | ORB | eclss → eps | HeatInterface | 行 |
| SSD-FD-STR-001 | IF-ORB-36 | 構造・荷重 | SpaceTransportationSystem | orb.str ↔ et | LoadBiInterface | 行 |
| SSD-FD-TPS-001 | IF-ORB-37 | 熱 | ORB | tps → str | HeatInterface | 行 |
| SSD-FD-MECH-001 | IF-ORB-38 | 構造・荷重 | ORB | mech ↔ str | LoadBiInterface | 行 |
| SSD-FD-APU-001 | IF-ORB-39 | 油圧 | ORB | apu → mech | HydraulicInterface | 行 |
| SSD-FD-DPS-001 | IF-ORB-40 | データ・指令 | ORB | dps → mech | DataInterface | 行 |
| SSD-FD-CW-001 | IF-ORB-41 | データ・指令 | ORB | cw、apu、dps、eclss、eps、gnc、mps、oms、rcs | connection（n 項） | 行 |
| SSD-FD-CW-001 | IF-ORB-42 | データ・指令 | ORB | dps → cw | DataInterface | 行 |
| SSD-FD-CW-001 | IF-ORB-43 | データ・指令 | ORB | cw → ct | DataInterface | 行 |
| SSD-FD-CREW-001 | IF-ORB-44 | 推進薬・流体 | ORB | eclss → crew | FluidInterface | 行 |
| SSD-FD-ECLSS-001 | IF-ORB-45 | 推進薬・流体 | ORB | eclss ↔ eva | FluidBiInterface | 行 |
| SSD-FD-CT-001 | IF-ORB-46 | RF（無線） | ORB | ct ↔ eva | RfBiInterface | 行 |
| SSD-FD-PLS-001 | IF-ORB-47 | 構造・荷重 | ORB | pls ↔ str | LoadBiInterface | 行 |
| SSD-FD-PLS-001 | IF-ORB-48 | データ・指令 | ORB | pls ↔ dps | DataBiInterface | 行 |
| SSD-FD-PLS-001 | IF-ORB-49 | データ・指令 | ORB | pls ↔ ct | DataBiInterface | 行 |
| SSD-FD-ECL-ALS-DEP-001 | IF-ALS-01 | 推進薬・流体 | ECLSS | als.dep ↔ cab | FluidBiInterface | 名前 |
| SSD-FD-ECL-ALS-DEP-001 | IF-ALS-02 | 推進薬・流体 | MissionContext | sts.orb.eclss.als.dep → space | FluidInterface | 名前 |
| SSD-FD-ECL-ALS-SCU-001 | IF-ALS-03 | 推進薬・流体 | ECLSS | h2o.spl → als.scu | FluidInterface | 行 |
| SSD-FD-ECL-ALS-SCU-001 | IF-ALS-04 | 推進薬・流体 | ECLSS | als.scu → wcs.urn | FluidInterface | 行 |
| SSD-FD-ECL-ALS-SCU-001 | IF-ALS-05 | 電力（28 VDC） | ORB | eps → eclss.als.scu | PowerInterface | 名前 |
| SSD-FD-ECL-ALS-SCU-001 | IF-ALS-06 | 推進薬・流体 | ORB | eclss.als.scu ↔ eva.mnt | FluidBiInterface | 行 |
| SSD-FD-ECL-ALS-LCG-001 | IF-ALS-07 | 推進薬・流体 | ORB | eclss.als.lcg ↔ eva.chk | FluidBiInterface | 行 |
| SSD-FD-ECL-ALS-HTR-001 | IF-ALS-08 | 電力（28 VDC） | ORB | eps → eclss.als.htr | PowerInterface | 名前 |
| SSD-FD-ECL-ALS-VNT-001 | IF-ALS-09 | 電力（28 VDC） | ORB | eps → eclss.als.vnt | PowerInterface | 名前 |
| SSD-FD-ECL-ALS-MON-001 | IF-ALS-10 | データ・指令 | ORB | eclss.als.mon → dps | DataInterface | 名前 |
| SSD-FD-ECL-ALS-DEP-001 | IF-ALS-11 | 推進薬・流体 | ECL_ALS | dep → mon | FluidInterface | 行 |
| SSD-FD-ECL-ALS-LCG-001 | IF-ALS-12 | 推進薬・流体 | ECL_ALS | lcg → mon | FluidInterface | 行 |
| SSD-FD-ECL-ALS-HTR-001 | IF-ALS-13 | 熱 | ECL_ALS | htr → mon | HeatInterface | 行 |
| SSD-FD-ECL-ALS-HTR-001 | IF-ALS-14 | 熱 | ECL_ALS | htr → lcg | HeatInterface | 行 |
| SSD-FD-ECL-ALS-HTR-001 | IF-ALS-15 | 熱 | ECL_ALS | htr → scu | HeatInterface | 行 |
| SSD-FD-ECL-ALS-HTR-001 | IF-ALS-16 | 熱 | ECL_ALS | htr → dep | HeatInterface | 行 |
| SSD-FD-ECL-ALS-VNT-001 | IF-ALS-17 | 推進薬・流体 | ECL_ALS | vnt → dep | FluidInterface | 行 |
| SSD-FD-APU-FUL-001 | IF-APU-01 | 推進薬・流体 | APU | ful → trb | FluidInterface | 行 |
| SSD-FD-APU-CTL-001 | IF-APU-02 | データ・指令 | APU | ctl ↔ ful | DataBiInterface | 行 |
| SSD-FD-APU-OPS-001 | IF-APU-03 | データ・指令 | APU | ops → ful | DataInterface | 行 |
| SSD-FD-APU-TRB-001 | IF-APU-04 | 構造・荷重 | APU | trb → hyd | LoadInterface | 行 |
| SSD-FD-APU-TRB-001 | IF-APU-05 | 熱 | APU | trb → wsb | HeatInterface | 行 |
| SSD-FD-APU-CTL-001 | IF-APU-06 | データ・指令 | APU | ctl ↔ trb | DataBiInterface | 行 |
| SSD-FD-APU-HYD-001 | IF-APU-07 | 熱 | APU | hyd → wsb | HeatInterface | 行 |
| SSD-FD-APU-CIR-001 | IF-APU-08 | 油圧 | APU | cir → hyd | HydraulicInterface | 行 |
| SSD-FD-APU-HYD-001 | IF-APU-09 | 油圧 | ORB | apu.hyd → mps.tvc | HydraulicInterface | 行 |
| SSD-FD-APU-HYD-001 | IF-APU-10 | 油圧 | ORB | apu.hyd → gnc.act | HydraulicInterface | 行 |
| SSD-FD-APU-HYD-001 | IF-APU-11 | 油圧 | ORB | apu.hyd → mech.dec | HydraulicInterface | 行 |
| SSD-FD-APU-CTL-001 | IF-APU-12 | データ・指令 | ORB | apu.ctl → dps.fsw | DataInterface | 行 |
| SSD-FD-APU-CIR-001 | IF-APU-13 | データ・指令 | ORB | apu.cir ↔ dps.fsw | DataBiInterface | 行 |
| SSD-FD-APU-WSB-001 | IF-APU-14 | データ・指令 | ORB | apu.wsb → dps.fsw | DataInterface | 行 |
| SSD-FD-APU-CTL-001 | IF-APU-15 | データ・指令 | ORB | apu.ctl → cw.pri | DataInterface | 行 |
| SSD-FD-APU-HYD-001 | IF-APU-16 | データ・指令 | ORB | apu.hyd → cw.pri | DataInterface | 行 |
| SSD-FD-APU-CTL-001 | IF-APU-17 | 電力（28 VDC） | ORB | eps.dc → apu.ctl | PowerInterface | 名前 |
| SSD-FD-APU-CIR-001 | IF-APU-18 | 電力（28 VDC） | ORB | eps.dc → apu.cir | PowerInterface | 名前 |
| SSD-FD-APU-OPS-001 | IF-APU-19 | データ・指令 | APU | ops → ctl | DataInterface | 行 |
| SSD-FD-APU-OPS-001 | IF-APU-20 | データ・指令 | APU | ops → hyd | DataInterface | 行 |
| SSD-FD-APU-OPS-001 | IF-APU-21 | データ・指令 | APU | ops ↔ wsb | DataBiInterface | 行 |
| SSD-FD-APU-TRB-001 | IF-APU-22 | 推進薬・流体 | MissionContext | sts.orb.apu.trb → space | FluidInterface | 名前 |
| SSD-FD-APU-WSB-001 | IF-APU-23 | 推進薬・流体 | MissionContext | sts.orb.apu.wsb → space | FluidInterface | 名前 |
| SSD-FD-APU-TRB-001 | IF-APU-24 | 構造・荷重 | APU | trb → ful | LoadInterface | 行 |
| SSD-FD-APU-HYD-001 | IF-APU-25 | データ・指令 | ORB | dps.bus → apu.hyd | DataInterface | 行 |
| SSD-FD-ARS-CAC-001 | IF-ARS-01 | 推進薬・流体 | ECL_ARS | cac → co2 | FluidInterface | 行 |
| SSD-FD-ARS-CAC-001 | IF-ARS-02 | 推進薬・流体 | ECL_ARS | cac → rcrs | FluidInterface | 行 |
| SSD-FD-ARS-CAC-001 | IF-ARS-03 | 推進薬・流体 | ECL_ARS | cac → thc | FluidInterface | 行 |
| SSD-FD-ARS-RCRS-001 | IF-ARS-04 | 推進薬・流体 | ECL_ARS | rcrs → thc | FluidInterface | 行 |
| SSD-FD-ARS-THC-001 | IF-ARS-05 | 推進薬・流体 | ECL_ARS | thc → co2 | FluidInterface | 行 |
| SSD-FD-ARS-THC-001 | IF-ARS-06 | 熱 | ECL_ARS | thc → wcl | HeatInterface | 行 |
| SSD-FD-ARS-AVB-001 | IF-ARS-07 | 熱 | ECL_ARS | avb → wcl | HeatInterface | 行 |
| SSD-FD-ARS-IMU-001 | IF-ARS-08 | 熱 | ECL_ARS | imu → wcl | HeatInterface | 行 |
| SSD-FD-ARS-CAC-001 | IF-ARS-09 | 推進薬・流体 | ECLSS | cab → ars.cac | FluidInterface | 名前 |
| SSD-FD-ARS-THC-001 | IF-ARS-10 | 推進薬・流体 | ECLSS | ars.thc → cab | FluidInterface | 名前 |
| SSD-FD-ARS-IMU-001 | IF-ARS-11 | 推進薬・流体 | ECLSS | ars.imu ↔ cab | FluidBiInterface | 名前 |
| SSD-FD-ARS-THC-001 | IF-ARS-12 | 推進薬・流体 | ECLSS | ars.thc → h2o | FluidInterface | 名前 |
| SSD-FD-ARS-CAC-001 | IF-ARS-13 | 推進薬・流体 | ECLSS | ars.cac → als | FluidInterface | 名前 |
| SSD-FD-ARS-CAC-001 | IF-ARS-14 | 推進薬・流体 | ECLSS | ars.cac → fds | FluidInterface | 名前 |
| SSD-FD-ARS-AVB-001 | IF-ARS-15 | 推進薬・流体 | ECLSS | ars.avb ↔ fds | FluidBiInterface | 名前 |
| SSD-FD-ARS-RCRS-001 | IF-ARS-16 | 推進薬・流体 | MissionContext | sts.orb.eclss.ars.rcrs → space | FluidInterface | 名前 |
| SSD-FD-ARS-AVB-001 | IF-ARS-17 | 熱 | ORB | eclss.ars.avb → dps | HeatInterface | 名前 |
| SSD-FD-ARS-AVB-001 | IF-ARS-18 | 熱 | ORB | eclss.ars.avb → eps | HeatInterface | 名前 |
| SSD-FD-ARS-IMU-001 | IF-ARS-19 | 熱 | ORB | eclss.ars.imu → gnc | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-20 | 熱 | ORB | eclss.ars.wcl → dps | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-21 | 熱 | ORB | eclss.ars.wcl → eps | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-22 | 熱 | ECLSS | als → ars.wcl | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-23 | 熱 | ECLSS | ars.wcl → h2o | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-24 | 熱 | ECLSS | ars.wcl → cab | HeatInterface | 名前 |
| SSD-FD-ARS-CAC-001 | IF-ARS-25 | データ・指令 | ORB | eclss.ars.cac → dps | DataInterface | 名前 |
| SSD-FD-ARS-RCRS-001 | IF-ARS-26 | データ・指令 | ORB | eclss.ars.rcrs → dps | DataInterface | 名前 |
| SSD-FD-ARS-THC-001 | IF-ARS-27 | データ・指令 | ORB | eclss.ars.thc → dps | DataInterface | 名前 |
| SSD-FD-ARS-AVB-001 | IF-ARS-28 | データ・指令 | ORB | eclss.ars.avb → dps | DataInterface | 名前 |
| SSD-FD-ARS-IMU-001 | IF-ARS-29 | データ・指令 | ORB | eclss.ars.imu → dps | DataInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-30 | データ・指令 | ORB | dps → eclss.ars.wcl | DataInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-31 | データ・指令 | ORB | eclss.ars.wcl → dps | DataInterface | 名前 |
| SSD-FD-ARS-CAC-001 | IF-ARS-32 | 電力（28 VDC） | ORB | eps → eclss.ars.cac | PowerInterface | 名前 |
| SSD-FD-ARS-RCRS-001 | IF-ARS-33 | 電力（28 VDC） | ORB | eps → eclss.ars.rcrs | PowerInterface | 名前 |
| SSD-FD-ARS-AVB-001 | IF-ARS-34 | 電力（28 VDC） | ORB | eps → eclss.ars.avb | PowerInterface | 名前 |
| SSD-FD-ARS-IMU-001 | IF-ARS-35 | 電力（28 VDC） | ORB | eps → eclss.ars.imu | PowerInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-36 | 電力（28 VDC） | ORB | eps → eclss.ars.wcl | PowerInterface | 名前 |
| SSD-FD-ARS-CO2-001 | IF-ARS-37 | データ・指令 | ORB | eclss.ars.co2 → dps | DataInterface | 名前 |
| SSD-FD-ARS-CO2-001 | IF-ARS-38 | 電力（28 VDC） | ORB | eps → eclss.ars.co2 | PowerInterface | 名前 |
| SSD-FD-ARS-CAC-001 | IF-ARS-39 | 熱 | ORB | eclss.ars.cac → dps | HeatInterface | 名前 |
| SSD-FD-ARS-THC-001 | IF-ARS-40 | 電力（28 VDC） | ORB | eps → eclss.ars.thc | PowerInterface | 名前 |
| SSD-FD-ARS-AVB-001 | IF-ARS-41 | 熱 | ORB | eclss.ars.avb → gnc | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-001 | IF-ARS-42 | 熱 | ORB | gnc → eclss.ars.wcl | HeatInterface | 行 |
| SSD-FD-ARS-AVB-CIR-001 | IF-AVB-01 | 推進薬・流体 | ARS_AVB | cir → fan | FluidInterface | 行 |
| SSD-FD-ARS-AVB-CIR-001 | IF-AVB-02 | 熱 | ORB | eclss.ars.avb.cir → dps | HeatInterface | 名前 |
| SSD-FD-ARS-AVB-CIR-001 | IF-AVB-03 | 熱 | ORB | eclss.ars.avb.cir → eps.ac | HeatInterface | 名前 |
| SSD-FD-ARS-AVB-CIR-001 | IF-AVB-04 | 熱 | ORB | eclss.ars.avb.cir → gnc | HeatInterface | 名前 |
| SSD-FD-ARS-AVB-FAN-001 | IF-AVB-05 | 推進薬・流体 | ARS_AVB | fan → hx | FluidInterface | 行 |
| SSD-FD-ARS-AVB-FAN-001 | IF-AVB-06 | 推進薬・流体 | ARS_AVB | fan → mon | FluidInterface | 行 |
| SSD-FD-ARS-AVB-FAN-001 | IF-AVB-07 | 電力（28 VDC） | ORB | eps.ac → eclss.ars.avb.fan | PowerInterface | 名前 |
| SSD-FD-ARS-AVB-OPS-001 | IF-AVB-08 | データ・指令 | ARS_AVB | ops → fan | DataInterface | 行 |
| SSD-FD-ARS-AVB-HX-001 | IF-AVB-09 | 推進薬・流体 | ARS_AVB | hx → cir | FluidInterface | 行 |
| SSD-FD-ARS-AVB-HX-001 | IF-AVB-10 | 熱 | ECL_ARS | avb.hx → wcl.avl | HeatInterface | 行 |
| SSD-FD-ARS-AVB-HX-001 | IF-AVB-11 | 推進薬・流体 | ARS_AVB | hx → mon | FluidInterface | 行 |
| SSD-FD-ARS-AVB-MON-001 | IF-AVB-12 | データ・指令 | ARS_AVB | mon → ops | DataInterface | 行 |
| SSD-FD-ARS-AVB-MON-001 | IF-AVB-13 | データ・指令 | ORB | eclss.ars.avb.mon → dps | DataInterface | 名前 |
| SSD-FD-ARS-AVB-MON-001 | IF-AVB-14 | データ・指令 | ORB | eclss.ars.avb.mon → dps | DataInterface | 名前 |
| SSD-FD-ARS-AVB-MON-001 | IF-AVB-15 | 電力（28 VDC） | ORB | eps.ac → eclss.ars.avb.mon | PowerInterface | 名前 |
| SSD-FD-CAC-RTN-001 | IF-CAC-01 | 推進薬・流体 | ECLSS | cab → ars.cac.rtn | FluidInterface | 名前 |
| SSD-FD-CAC-RTN-001 | IF-CAC-02 | 推進薬・流体 | ARS_CAC | rtn → fan | FluidInterface | 行 |
| SSD-FD-CAC-RTN-001 | IF-CAC-03 | 推進薬・流体 | ECL_ARS | cac.rtn → rcrs.fan | FluidInterface | 行 |
| SSD-FD-CAC-RTN-001 | IF-CAC-04 | 推進薬・流体 | ECLSS | ars.cac.rtn → fds.det | FluidInterface | 行 |
| SSD-FD-CAC-RTN-001 | IF-CAC-05 | 熱 | ORB | eclss.ars.cac.rtn → dps | HeatInterface | 名前 |
| SSD-FD-CAC-FAN-001 | IF-CAC-06 | 推進薬・流体 | ARS_CAC | fan → dct | FluidInterface | 行 |
| SSD-FD-CAC-FAN-001 | IF-CAC-07 | 推進薬・流体 | ARS_CAC | fan → mon | FluidInterface | 行 |
| SSD-FD-CAC-FAN-001 | IF-CAC-08 | 推進薬・流体 | ECLSS | ars.cac.fan → fds.det | FluidInterface | 行 |
| SSD-FD-CAC-FAN-001 | IF-CAC-09 | 電力（28 VDC） | ORB | eps → eclss.ars.cac.fan | PowerInterface | 名前 |
| SSD-FD-CAC-OPS-001 | IF-CAC-10 | データ・指令 | ARS_CAC | ops → fan | DataInterface | 行 |
| SSD-FD-CAC-MON-001 | IF-CAC-11 | データ・指令 | ARS_CAC | mon → ops | DataInterface | 行 |
| SSD-FD-CAC-MON-001 | IF-CAC-12 | データ・指令 | ORB | eclss.ars.cac.mon → dps | DataInterface | 名前 |
| SSD-FD-CAC-DCT-001 | IF-CAC-13 | 推進薬・流体 | ECL_ARS | cac.dct → thc.tcv | FluidInterface | 行 |
| SSD-FD-CAC-DCT-001 | IF-CAC-14 | 推進薬・流体 | ECLSS | ars.cac.dct → als.vnt | FluidInterface | 行 |
| SSD-FD-CO2-ABS-001 | IF-CO2-01 | 推進薬・流体 | ECL_ARS | cac.dct → co2.abs | FluidInterface | 行 |
| SSD-FD-CO2-ABS-001 | IF-CO2-02 | 推進薬・流体 | ARS_CO2 | abs → can | FluidInterface | 行 |
| SSD-FD-CO2-ABS-001 | IF-CO2-03 | 推進薬・流体 | ARS_CO2 | abs → mon | FluidInterface | 行 |
| SSD-FD-CO2-STW-001 | IF-CO2-04 | 構造・荷重 | ARS_CO2 | stw → can | LoadInterface | 行 |
| SSD-FD-CO2-ATCO-001 | IF-CO2-05 | 推進薬・流体 | ECL_ARS | thc.hx → co2.atco | FluidInterface | 行 |
| SSD-FD-CO2-MON-001 | IF-CO2-06 | データ・指令 | ORB | eclss.ars.co2.mon → dps | DataInterface | 名前 |
| SSD-FD-CO2-MON-001 | IF-CO2-07 | 電力（28 VDC） | ORB | eps → eclss.ars.co2.mon | PowerInterface | 名前 |
| SSD-FD-CREW-HAB-001 | IF-CREW-01 | 推進薬・流体 | ORB | eclss.h2o.gal → crew.hab | FluidInterface | 名前 |
| SSD-FD-CREW-MED-001 | IF-CREW-02 | 推進薬・流体 | ORB | eclss.h2o.gal → crew.med | FluidInterface | 名前 |
| SSD-FD-CREW-ESC-001 | IF-CREW-03 | 推進薬・流体 | ORB | eclss.pcs.o2s → crew.esc | FluidInterface | 名前 |
| SSD-FD-CREW-MED-001 | IF-CREW-04 | 推進薬・流体 | ORB | eclss.pcs.o2s → crew.med | FluidInterface | 名前 |
| SSD-FD-CREW-MED-001 | IF-CREW-05 | データ・指令 | ORB | crew.med → ct.inst | DataInterface | 名前 |
| SSD-FD-CREW-LTG-001 | IF-CREW-06 | 電力（28 VDC） | ORB | eps.dc → crew.ltg | PowerInterface | 名前 |
| SSD-FD-CREW-ESC-001 | IF-CREW-07 | 構造・荷重 | ORB | crew.esc → str.crm | LoadInterface | 行 |
| SSD-FD-CREW-STW-001 | IF-CREW-08 | 構造・荷重 | CREW | stw → hab | LoadInterface | 行 |
| SSD-FD-CREW-STW-001 | IF-CREW-09 | 構造・荷重 | CREW | stw → med | LoadInterface | 行 |
| SSD-FD-CREW-OPS-001 | IF-CREW-10 | データ・指令 | CREW | ops → med | DataInterface | 行 |
| SSD-FD-CREW-OPS-001 | IF-CREW-11 | データ・指令 | CREW | ops → esc | DataInterface | 行 |
| SSD-FD-CT-SBD-001 | IF-CT-01 | RF（無線） | MissionContext | sts.orb.ct.sbd ↔ ext.net | RfBiInterface | 名前 |
| SSD-FD-CT-SBD-001 | IF-CT-02 | RF（無線） | MissionContext | sts.orb.ct.sbd → ext.net | RfInterface | 名前 |
| SSD-FD-CT-KU-001 | IF-CT-03 | RF（無線） | MissionContext | sts.orb.ct.ku ↔ ext.net | RfBiInterface | 名前 |
| SSD-FD-CT-UHF-001 | IF-CT-04 | RF（無線） | MissionContext | sts.orb.ct.uhf ↔ ext.net | RfBiInterface | 名前 |
| SSD-FD-CT-SBD-001 | IF-CT-05 | データ・指令 | ORB | ct.sbd → dps.bus | DataInterface | 行 |
| SSD-FD-CT-INST-001 | IF-CT-06 | データ・指令 | ORB | ct.inst ↔ dps.bus | DataBiInterface | 行 |
| SSD-FD-CT-OPS-001 | IF-CT-07 | データ・指令 | ORB | dps.bus → ct.ops | DataInterface | 行 |
| SSD-FD-CT-KU-001 | IF-CT-08 | データ・指令 | ORB | ct.ku → gnc.gns | DataInterface | 行 |
| SSD-FD-CT-AUD-001 | IF-CT-09 | データ・指令 | ORB | cw.ann → ct.aud | DataInterface | 行 |
| SSD-FD-CT-UHF-001 | IF-CT-10 | RF（無線） | ORB | ct.uhf ↔ eva.ops | RfBiInterface | 行 |
| SSD-FD-CT-CCTV-001 | IF-CT-11 | データ・指令 | ORB | ct.cctv ↔ pls.arm | DataBiInterface | 行 |
| SSD-FD-CT-AUD-001 | IF-CT-12 | 電力（28 VDC） | ORB | eps.dc → ct.aud | PowerInterface | 名前 |
| SSD-FD-CT-CCTV-001 | IF-CT-13 | 電力（28 VDC） | ORB | eps.dc → ct.cctv | PowerInterface | 名前 |
| SSD-FD-CT-INST-001 | IF-CT-14 | データ・指令 | CT | inst → sbd | DataInterface | 行 |
| SSD-FD-CT-AUD-001 | IF-CT-15 | データ・指令 | CT | aud ↔ sbd | DataBiInterface | 行 |
| SSD-FD-CT-KU-001 | IF-CT-16 | データ・指令 | CT | ku ↔ sbd | DataBiInterface | 行 |
| SSD-FD-CT-UHF-001 | IF-CT-17 | データ・指令 | CT | uhf ↔ aud | DataBiInterface | 行 |
| SSD-FD-CT-CCTV-001 | IF-CT-18 | データ・指令 | CT | cctv → ku | DataInterface | 行 |
| SSD-FD-CT-OPS-001 | IF-CT-19 | データ・指令 | CT | ops → sbd | DataInterface | 行 |
| SSD-FD-CT-OPS-001 | IF-CT-20 | データ・指令 | CT | ops → ku | DataInterface | 行 |
| SSD-FD-CT-SBD-001 | IF-CT-21 | データ・指令 | ORB | dps.asc → ct.sbd | DataInterface | 行 |
| SSD-FD-CT-INST-001 | IF-CT-22 | データ・指令 | ORB | dps.mtu → ct.inst | DataInterface | 行 |
| SSD-FD-CT-SBD-001 | IF-CT-23 | データ・指令 | ORB | ct.sbd ↔ dps.fsw | DataBiInterface | 行 |
| SSD-FD-CT-KU-001 | IF-CT-24 | データ・指令 | ORB | dps.fsw → ct.ku | DataInterface | 行 |
| SSD-FD-CT-SBD-001 | IF-CT-25 | データ・指令 | ORB | dps.bus → ct.sbd | DataInterface | 行 |
| SSD-FD-CW-PRI-001 | IF-CW-01 | 電力（28 VDC） | ORB | eps.dc → cw.pri | PowerInterface | 名前 |
| SSD-FD-CW-PRI-001 | IF-CW-02 | データ・指令 | ORB | eclss → cw.pri | DataInterface | 名前 |
| SSD-FD-CW-ANN-001 | IF-CW-03 | データ・指令 | ORB | eclss → cw.ann | DataInterface | 名前 |
| SSD-FD-CW-PRI-001 | IF-CW-04 | データ・指令 | CW | pri → ann | DataInterface | 行 |
| SSD-FD-CW-BKP-001 | IF-CW-05 | データ・指令 | CW | bkp → ann | DataInterface | 行 |
| SSD-FD-CW-ALT-001 | IF-CW-06 | データ・指令 | CW | alt → ann | DataInterface | 行 |
| SSD-FD-CW-OPS-001 | IF-CW-07 | データ・指令 | CW | ops → pri | DataInterface | 行 |
| SSD-FD-CW-OPS-001 | IF-CW-08 | データ・指令 | CW | ops → bkp | DataInterface | 行 |
| SSD-FD-CW-OPS-001 | IF-CW-09 | データ・指令 | CW | ops → alt | DataInterface | 行 |
| SSD-FD-DPS-GPC-001 | IF-DPS-01 | データ・指令 | DPS | gpc ↔ bus | DataBiInterface | 行 |
| SSD-FD-DPS-GPC-001 | IF-DPS-02 | 電力（28 VDC） | ORB | eps → dps.gpc | PowerInterface | 名前 |
| SSD-FD-DPS-BUS-001 | IF-DPS-03 | データ・指令 | ORB | dps.bus ↔ gnc.gns | DataBiInterface | 行 |
| SSD-FD-DPS-FSW-001 | IF-DPS-04 | データ・指令 | ORB | gnc.ccd → dps.fsw | DataInterface | 行 |
| SSD-FD-DPS-ASC-001 | IF-DPS-05 | データ・指令 | ORB | dps.asc ↔ mps.ctl | DataBiInterface | 行 |
| SSD-FD-DPS-ASC-001 | IF-DPS-06 | データ・指令 | MissionContext | sts.orb.dps.asc ↔ ext.lps | DataBiInterface | 名前 |
| SSD-FD-DPS-ASC-001 | IF-DPS-07 | データ・指令 | SpaceTransportationSystem | orb.dps.asc → srb.avn | DataInterface | 行 |
| SSD-FD-DPS-ASC-001 | IF-DPS-08 | データ・指令 | SpaceTransportationSystem | orb.dps.asc → srb.hdp | DataInterface | 行 |
| SSD-FD-DPS-ASC-001 | IF-DPS-09 | データ・指令 | SpaceTransportationSystem | orb.dps.asc → et.sep | DataInterface | 行 |
| SSD-FD-DPS-BUS-001 | IF-DPS-10 | データ・指令 | ORB | dps.bus → mech.act | DataInterface | 行 |
| SSD-FD-DPS-BUS-001 | IF-DPS-11 | データ・指令 | ORB | dps.bus → cw.pri | DataInterface | 行 |
| SSD-FD-DPS-FSW-001 | IF-DPS-12 | データ・指令 | ORB | dps.fsw → cw.bkp | DataInterface | 行 |
| SSD-FD-DPS-FSW-001 | IF-DPS-13 | データ・指令 | ORB | dps.fsw ↔ pls.ctl | DataBiInterface | 行 |
| SSD-FD-DPS-ASC-001 | IF-DPS-14 | データ・指令 | DPS | asc ↔ bus | DataBiInterface | 行 |
| SSD-FD-DPS-FSW-001 | IF-DPS-15 | データ・指令 | DPS | fsw → gpc | DataInterface | 行 |
| SSD-FD-DPS-MTU-001 | IF-DPS-16 | データ・指令 | DPS | mtu → gpc | DataInterface | 行 |
| SSD-FD-DPS-MEDS-001 | IF-DPS-17 | データ・指令 | DPS | meds ↔ gpc | DataBiInterface | 行 |
| SSD-FD-DPS-OPS-001 | IF-DPS-18 | データ・指令 | DPS | ops ↔ gpc | DataBiInterface | 行 |
| SSD-FD-DPS-OPS-001 | IF-DPS-19 | データ・指令 | DPS | ops → bus | DataInterface | 行 |
| SSD-FD-DPS-OPS-001 | IF-DPS-20 | データ・指令 | DPS | ops → mtu | DataInterface | 行 |
| SSD-FD-DPS-BUS-001 | IF-DPS-21 | データ・指令 | DPS | bus → meds | DataInterface | 行 |
| SSD-FD-DPS-BUS-001 | IF-DPS-22 | データ・指令 | ORB | dps.bus → gnc.ccd | DataInterface | 行 |
| SSD-FD-ECL-PCS-001 | IF-ECL-01 | 推進薬・流体 | ORB | eps → eclss.pcs | FluidInterface | 行 |
| SSD-FD-ECL-PCS-001 | IF-ECL-02 | 推進薬・流体 | ECLSS | pcs → cab | FluidInterface | 行 |
| SSD-FD-ECL-PCS-001 | IF-ECL-03 | 推進薬・流体 | ECLSS | pcs → h2o | FluidInterface | 行 |
| SSD-FD-ECL-PCS-001 | IF-ECL-04 | 推進薬・流体 | ECLSS | pcs → als | FluidInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-05 | 推進薬・流体 | ECLSS | ars ↔ cab | FluidBiInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-06 | 熱 | ECLSS | ars → atcs | HeatInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-07 | 推進薬・流体 | ECLSS | ars → h2o | FluidInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-08 | 熱 | ORB | eclss.ars → dps.gpc | HeatInterface | 行 |
| SSD-FD-ECL-ATCS-001 | IF-ECL-09 | 熱 | ORB | eps → eclss.atcs | HeatInterface | 行 |
| SSD-FD-ECL-H2O-001 | IF-ECL-10 | 推進薬・流体 | ORB | eps → eclss.h2o | FluidInterface | 行 |
| SSD-FD-ECL-ATCS-001 | IF-ECL-11 | 熱 | ORB | eclss.atcs ↔ apu | HeatBiInterface | 行 |
| SSD-FD-ECL-H2O-001 | IF-ECL-12 | 推進薬・流体 | ECLSS | h2o → atcs | FluidInterface | 行 |
| SSD-FD-ECL-H2O-001 | IF-ECL-13 | 推進薬・流体 | ECLSS | h2o → als | FluidInterface | 行 |
| SSD-FD-ECL-WCS-001 | IF-ECL-14 | 推進薬・流体 | ECLSS | wcs → h2o | FluidInterface | 行 |
| SSD-FD-ECL-ALS-001 | IF-ECL-15 | 熱 | ECLSS | als → ars | HeatInterface | 行 |
| SSD-FD-ECL-ALS-001 | IF-ECL-16 | 電力（28 VDC） | ORB | eps → eclss.als | PowerInterface | 行 |
| SSD-FD-ECL-ALS-001 | IF-ECL-17 | 推進薬・流体 | ECLSS | als ↔ cab | FluidBiInterface | 行 |
| SSD-FD-ECL-FDS-001 | IF-ECL-18 | データ・指令 | ORB | eclss.fds → dps.meds | DataInterface | 行 |
| SSD-FD-ECL-FDS-001 | IF-ECL-19 | 推進薬・流体 | ECLSS | fds → cab | FluidInterface | 行 |
| SSD-FD-ECL-ALS-001 | IF-ECL-20 | 推進薬・流体 | ORB | eclss.als ↔ eva | FluidBiInterface | 名前 |
| SSD-FD-ECL-ATCS-001 | IF-ECL-21 | 熱 | MissionContext | sts.orb.eclss.atcs → space | HeatInterface | 名前 |
| SSD-FD-ECL-H2O-001 | IF-ECL-22 | 推進薬・流体 | MissionContext | sts.orb.eclss.h2o → space | FluidInterface | 名前 |
| SSD-FD-ECL-WCS-001 | IF-ECL-23 | 推進薬・流体 | MissionContext | sts.orb.eclss.wcs → space | FluidInterface | 名前 |
| SSD-FD-ECL-ATCS-001 | IF-ECL-24 | 熱 | ECLSS | atcs → pcs | HeatInterface | 行 |
| SSD-FD-ECL-ATCS-001 | IF-ECL-25 | 熱 | ORB | eclss.atcs → dps.bus | HeatInterface | 行 |
| SSD-FD-ECL-ALS-001 | IF-ECL-26 | 推進薬・流体 | ECLSS | als → wcs | FluidInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-27 | 推進薬・流体 | ECLSS | ars → als | FluidInterface | 行 |
| SSD-FD-ECL-ATCS-001 | IF-ECL-28 | データ・指令 | ORB | dps.fsw → eclss.atcs | DataInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-29 | データ・指令 | ORB | eclss.ars ↔ dps.fsw | DataBiInterface | 行 |
| SSD-FD-ECL-ALS-001 | IF-ECL-30 | 推進薬・流体 | MissionContext | sts.orb.eclss.als → space | FluidInterface | 名前 |
| SSD-FD-ECL-WCS-001 | IF-ECL-31 | 推進薬・流体 | ECLSS | wcs ↔ cab | FluidBiInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-32 | 熱 | ORB | eclss.ars → gnc.ins | HeatInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-33 | 熱 | ORB | eclss.ars → eps | HeatInterface | 行 |
| SSD-FD-ECL-ATCS-001 | IF-ECL-34 | 熱 | MissionContext | ext.lps → sts.orb.eclss.atcs | HeatInterface | 行 |
| SSD-FD-ECL-H2O-001 | IF-ECL-35 | データ・指令 | ORB | eclss.h2o → dps.meds | DataInterface | 行 |
| SSD-FD-ECL-PCS-001 | IF-ECL-36 | データ・指令 | ORB | eclss.pcs → dps | DataInterface | 行 |
| SSD-FD-ECL-WCS-001 | IF-ECL-37 | データ・指令 | ORB | eclss.wcs → dps.meds | DataInterface | 行 |
| SSD-FD-ECL-ALS-001 | IF-ECL-38 | データ・指令 | ORB | eclss.als → dps.meds | DataInterface | 行 |
| SSD-FD-ECL-ARS-001 | IF-ECL-39 | 電力（28 VDC） | ORB | eps → eclss.ars | PowerInterface | 行 |
| SSD-FD-ECL-FDS-001 | IF-ECL-40 | 電力（28 VDC） | ORB | eps → eclss.fds | PowerInterface | 行 |
| SSD-FD-ECL-H2O-001 | IF-ECL-41 | 電力（28 VDC） | ORB | eps → eclss.h2o | PowerInterface | 行 |
| SSD-FD-ECL-PCS-001 | IF-ECL-42 | 電力（28 VDC） | ORB | eps → eclss.pcs | PowerInterface | 行 |
| SSD-FD-ECL-WCS-001 | IF-ECL-43 | 電力（28 VDC） | ORB | eps → eclss.wcs | PowerInterface | 行 |
| SSD-FD-EPS-PRSD-001 | IF-EPS-01 | 推進薬・流体 | MissionContext | ext.lps → sts.orb.eps.prsd | FluidInterface | 名前 |
| SSD-FD-EPS-DC-001 | IF-EPS-02 | 電力（28 VDC） | MissionContext | ext.lps → sts.orb.eps.dc | PowerInterface | 名前 |
| SSD-FD-EPS-PRSD-001 | IF-EPS-03 | 推進薬・流体 | EPS | prsd → fcp | FluidInterface | 行 |
| SSD-FD-EPS-PRSD-001 | IF-EPS-04 | 推進薬・流体 | ORB | eps.prsd → eclss.pcs.o2s | FluidInterface | 行 |
| SSD-FD-EPS-FCP-001 | IF-EPS-05 | 電力（28 VDC） | EPS | fcp → dc | PowerInterface | 行 |
| SSD-FD-EPS-FCP-001 | IF-EPS-06 | 推進薬・流体 | ORB | eps.fcp → eclss.h2o.fcw | FluidInterface | 行 |
| SSD-FD-EPS-FCP-001 | IF-EPS-07 | 熱 | ORB | eps.fcp → eclss.atcs.hx | HeatInterface | 行 |
| SSD-FD-EPS-FCP-001 | IF-EPS-08 | 推進薬・流体 | MissionContext | sts.orb.eps.fcp → space | FluidInterface | 名前 |
| SSD-FD-EPS-FCP-001 | IF-EPS-09 | データ・指令 | ORB | eps.fcp ↔ dps.fsw | DataBiInterface | 行 |
| SSD-FD-EPS-DC-001 | IF-EPS-10 | 電力（28 VDC） | EPS | dc → ac | PowerInterface | 行 |
| SSD-FD-EPS-DC-001 | IF-EPS-11 | 電力（28 VDC） | SpaceTransportationSystem | orb.eps.dc、et.umb、srb.avn | connection（n 項） | 行 |
| SSD-FD-EPS-AC-001 | IF-EPS-12 | 電力（28 VDC） | ORB | eps.ac → （ORB の境界） | PowerInterface | 名前 |
| SSD-FD-EPS-AC-001 | IF-EPS-13 | 電力（28 VDC） | EPS | ac → fcp | PowerInterface | 行 |
| SSD-FD-EPS-DC-001 | IF-EPS-14 | 熱 | ORB | eclss.atcs.hx → eps.dc | HeatInterface | 行 |
| SSD-FD-EPS-DC-001 | IF-EPS-15 | 電力（28 VDC） | MissionContext | sts.orb.eps.dc → payload | PowerInterface | 名前 |
| SSD-FD-EPS-DC-001 | IF-EPS-16 | 電力（28 VDC） | EPS | dc → fcp | PowerInterface | 行 |
| SSD-FD-ET-LOX-001 | IF-ET-01 | 推進薬・流体 | ET | lox → umb | FluidInterface | 行 |
| SSD-FD-ET-LH2-001 | IF-ET-02 | 推進薬・流体 | ET | lh2 → umb | FluidInterface | 行 |
| SSD-FD-ET-ITK-001 | IF-ET-03 | 構造・荷重 | ET | itk ↔ lox | LoadBiInterface | 行 |
| SSD-FD-ET-ITK-001 | IF-ET-04 | 構造・荷重 | ET | itk ↔ lh2 | LoadBiInterface | 行 |
| SSD-FD-ET-TPS-001 | IF-ET-05 | 熱 | ET | tps → lh2 | HeatInterface | 行 |
| SSD-FD-ET-SEP-001 | IF-ET-06 | 構造・荷重 | ET | sep → umb | LoadInterface | 行 |
| SSD-FD-ET-SEP-001 | IF-ET-07 | 推進薬・流体 | ET | sep → lox | FluidInterface | 行 |
| SSD-FD-EVA-OPS-001 | IF-EVA-01 | データ・指令 | EVA | ops → chk | DataInterface | 行 |
| SSD-FD-EVA-CHK-001 | IF-EVA-02 | データ・指令 | EVA | chk → dpr | DataInterface | 行 |
| SSD-FD-EVA-TLS-001 | IF-EVA-03 | 構造・荷重 | EVA | tls → chk | LoadInterface | 行 |
| SSD-FD-EVA-DPR-001 | IF-EVA-04 | 推進薬・流体 | ORB | eva.dpr ↔ eclss.als | FluidBiInterface | 名前 |
| SSD-FD-EVA-OPS-001 | IF-EVA-05 | データ・指令 | EVA | ops → dpr | DataInterface | 行 |
| SSD-FD-EVA-DPR-001 | IF-EVA-06 | データ・指令 | EVA | dpr → mnt | DataInterface | 行 |
| SSD-FD-EVA-EMG-001 | IF-EVA-07 | データ・指令 | EVA | emg → dpr | DataInterface | 行 |
| SSD-FD-EVA-TLS-001 | IF-EVA-08 | 構造・荷重 | EVA | tls → emg | LoadInterface | 行 |
| SSD-FD-EVA-MNT-001 | IF-EVA-09 | 電力（28 VDC） | EVA | mnt → tls | PowerInterface | 行 |
| SSD-FD-EVA-MNT-001 | IF-EVA-10 | 電力（28 VDC） | ORB | eps.dc → eva.mnt | PowerInterface | 名前 |
| SSD-FD-EVA-EMG-001 | IF-EVA-11 | 構造・荷重 | ORB | eva.emg → mech.plb | LoadInterface | 行 |
| SSD-FD-EVA-EMG-001 | IF-EVA-12 | 構造・荷重 | ORB | eva.emg → pls.ops | LoadInterface | 行 |
| SSD-FD-EVA-OPS-001 | IF-EVA-13 | データ・指令 | EVA | ops → emg | DataInterface | 行 |
| SSD-FD-EVA-OPS-001 | IF-EVA-14 | 推進薬・流体 | ORB | eclss.pcs → eva.ops | FluidInterface | 名前 |
| SSD-FD-EVA-OPS-001 | IF-EVA-15 | データ・指令 | ORB | eva.ops → cw.ops | DataInterface | 行 |
| SSD-FD-ECL-FDS-DET-001 | IF-FDS-01 | 推進薬・流体 | ECLSS | ars.avb.cir → fds.det | FluidInterface | 行 |
| SSD-FD-ECL-FDS-DET-001 | IF-FDS-02 | データ・指令 | ECL_FDS | det → alm | DataInterface | 行 |
| SSD-FD-ECL-FDS-DET-001 | IF-FDS-03 | データ・指令 | ORB | eclss.fds.det → dps | DataInterface | 名前 |
| SSD-FD-ECL-FDS-DET-001 | IF-FDS-04 | 電力（28 VDC） | ORB | eps.dc → eclss.fds.det | PowerInterface | 名前 |
| SSD-FD-ECL-FDS-ALM-001 | IF-FDS-05 | データ・指令 | ECL_FDS | alm → det | DataInterface | 行 |
| SSD-FD-ECL-FDS-ALM-001 | IF-FDS-06 | データ・指令 | ORB | eclss.fds.alm → dps | DataInterface | 名前 |
| SSD-FD-ECL-FDS-ALM-001 | IF-FDS-07 | データ・指令 | ECL_FDS | alm → ops | DataInterface | 行 |
| SSD-FD-ECL-FDS-FIX-001 | IF-FDS-08 | 推進薬・流体 | ECLSS | fds.fix → ars.avb.cir | FluidInterface | 行 |
| SSD-FD-ECL-FDS-FIX-001 | IF-FDS-09 | データ・指令 | ORB | eclss.fds.fix → dps | DataInterface | 名前 |
| SSD-FD-ECL-FDS-FIX-001 | IF-FDS-10 | 電力（28 VDC） | ORB | eps.dc → eclss.fds.fix | PowerInterface | 名前 |
| SSD-FD-ECL-FDS-PFE-001 | IF-FDS-11 | 推進薬・流体 | ECLSS | fds.pfe → ars.avb.cir | FluidInterface | 行 |
| SSD-FD-ECL-FDS-PFE-001 | IF-FDS-12 | 推進薬・流体 | ECLSS | fds.pfe → cab | FluidInterface | 名前 |
| SSD-FD-ECL-FDS-OPS-001 | IF-FDS-13 | データ・指令 | ECL_FDS | ops → fix | DataInterface | 行 |
| SSD-FD-ECL-FDS-OPS-001 | IF-FDS-14 | データ・指令 | ECL_FDS | ops → pfe | DataInterface | 行 |
| SSD-FD-GNC-INS-001 | IF-GNC-01 | データ・指令 | GNC | ins → gns | DataInterface | 行 |
| SSD-FD-GNC-NAS-001 | IF-GNC-02 | データ・指令 | GNC | nas → gns | DataInterface | 行 |
| SSD-FD-GNC-NAS-001 | IF-GNC-03 | データ・指令 | GNC | nas → fcs | DataInterface | 行 |
| SSD-FD-GNC-GNS-001 | IF-GNC-04 | データ・指令 | GNC | gns → fcs | DataInterface | 行 |
| SSD-FD-GNC-FCS-001 | IF-GNC-05 | データ・指令 | GNC | fcs ↔ act | DataBiInterface | 行 |
| SSD-FD-GNC-CCD-001 | IF-GNC-06 | データ・指令 | GNC | ccd → fcs | DataInterface | 行 |
| SSD-FD-GNC-GNS-001 | IF-GNC-07 | データ・指令 | GNC | gns → ccd | DataInterface | 行 |
| SSD-FD-GNC-CCD-001 | IF-GNC-08 | データ・指令 | GNC | ccd → ops | DataInterface | 行 |
| SSD-FD-GNC-OPS-001 | IF-GNC-09 | データ・指令 | GNC | ops → act | DataInterface | 行 |
| SSD-FD-GNC-OPS-001 | IF-GNC-10 | データ・指令 | GNC | ops → ins | DataInterface | 行 |
| SSD-FD-GNC-INS-001 | IF-GNC-11 | 電力（28 VDC） | ORB | eps → gnc.ins | PowerInterface | 名前 |
| SSD-FD-GNC-NAS-001 | IF-GNC-12 | 電力（28 VDC） | ORB | eps → gnc.nas | PowerInterface | 名前 |
| SSD-FD-GNC-NAS-001 | IF-GNC-13 | RF（無線） | MissionContext | navAids → sts.orb.gnc.nas | RfInterface | 名前 |
| SSD-FD-GNC-FCS-001 | IF-GNC-14 | データ・指令 | ORB | gnc.fcs → rcs.rjd | DataInterface | 行 |
| SSD-FD-GNC-FCS-001 | IF-GNC-15 | データ・指令 | ORB | gnc.fcs → oms.tvc | DataInterface | 行 |
| SSD-FD-GNC-ACT-001 | IF-GNC-16 | データ・指令 | ORB | gnc.act → mps.tvc | DataInterface | 行 |
| SSD-FD-GNC-GNS-001 | IF-GNC-17 | データ・指令 | ORB | gnc.gns → mps.ctl | DataInterface | 行 |
| SSD-FD-GNC-ACT-001 | IF-GNC-18 | データ・指令 | SpaceTransportationSystem | orb.gnc.act → srb.tvc | DataInterface | 行 |
| SSD-FD-GNC-FCS-001 | IF-GNC-19 | データ・指令 | SpaceTransportationSystem | srb.avn → orb.gnc.fcs | DataInterface | 行 |
| SSD-FD-GNC-ACT-001 | IF-GNC-20 | データ・指令 | ORB | gnc.act → cw.pri | DataInterface | 行 |
| SSD-FD-ECL-H2O-FCW-001 | IF-H2O-01 | 推進薬・流体 | ECL_H2O | fcw → spl | FluidInterface | 行 |
| SSD-FD-ECL-H2O-FCW-001 | IF-H2O-02 | 推進薬・流体 | ECLSS | h2o.fcw → wcs.vac | FluidInterface | 行 |
| SSD-FD-ECL-H2O-SPL-001 | IF-H2O-03 | 推進薬・流体 | ECL_H2O | spl → gal | FluidInterface | 行 |
| SSD-FD-ECL-H2O-SPL-001 | IF-H2O-04 | 推進薬・流体 | ECL_H2O | spl → dmp | FluidInterface | 行 |
| SSD-FD-ECL-H2O-SPL-001 | IF-H2O-05 | データ・指令 | ORB | eclss.h2o.spl → dps | DataInterface | 名前 |
| SSD-FD-ECL-H2O-SPL-001 | IF-H2O-06 | 電力（28 VDC） | ORB | eps.dc → eclss.h2o.spl | PowerInterface | 名前 |
| SSD-FD-ECL-H2O-WST-001 | IF-H2O-07 | 推進薬・流体 | ECLSS | wcs.fsp → h2o.wst | FluidInterface | 行 |
| SSD-FD-ECL-H2O-WST-001 | IF-H2O-08 | 推進薬・流体 | ECL_H2O | wst → dmp | FluidInterface | 行 |
| SSD-FD-ECL-H2O-WST-001 | IF-H2O-09 | データ・指令 | ORB | eclss.h2o.wst → dps | DataInterface | 名前 |
| SSD-FD-ECL-H2O-DMP-001 | IF-H2O-10 | 推進薬・流体 | MissionContext | sts.orb.eclss.h2o.dmp → space | FluidInterface | 名前 |
| SSD-FD-ECL-H2O-DMP-001 | IF-H2O-11 | 電力（28 VDC） | ORB | eps.dc → eclss.h2o.dmp | PowerInterface | 名前 |
| SSD-FD-ECL-H2O-DMP-001 | IF-H2O-12 | データ・指令 | ORB | eclss.h2o.dmp → dps | DataInterface | 名前 |
| SSD-FD-ECL-H2O-PRS-001 | IF-H2O-13 | 推進薬・流体 | ECL_H2O | prs → spl | FluidInterface | 行 |
| SSD-FD-ECL-H2O-PRS-001 | IF-H2O-14 | 推進薬・流体 | ECL_H2O | prs → wst | FluidInterface | 行 |
| SSD-FD-ECL-H2O-WST-001 | IF-H2O-15 | 推進薬・流体 | ECLSS | als.scu → h2o.wst | FluidInterface | 行 |
| SSD-FD-ECL-H2O-PRS-001 | IF-H2O-16 | 推進薬・流体 | ECLSS | h2o.prs → cab | FluidInterface | 行 |
| SSD-FD-ARS-IMU-INL-001 | IF-IMU-01 | 推進薬・流体 | ECLSS | cab → ars.imu.inl | FluidInterface | 名前 |
| SSD-FD-ARS-IMU-INL-001 | IF-IMU-02 | 熱 | ORB | eclss.ars.imu.inl → gnc | HeatInterface | 名前 |
| SSD-FD-ARS-IMU-INL-001 | IF-IMU-03 | 推進薬・流体 | ARS_IMU | inl → fan | FluidInterface | 行 |
| SSD-FD-ARS-IMU-FAN-001 | IF-IMU-04 | 推進薬・流体 | ARS_IMU | fan → hex | FluidInterface | 行 |
| SSD-FD-ARS-IMU-FAN-001 | IF-IMU-05 | データ・指令 | ARS_IMU | fan → mon | DataInterface | 行 |
| SSD-FD-ARS-IMU-FAN-001 | IF-IMU-06 | 電力（28 VDC） | ORB | eps → eclss.ars.imu.fan | PowerInterface | 名前 |
| SSD-FD-ARS-IMU-OPS-001 | IF-IMU-07 | データ・指令 | ARS_IMU | ops → fan | DataInterface | 行 |
| SSD-FD-ARS-IMU-HEX-001 | IF-IMU-08 | 熱 | ECL_ARS | imu.hex → wcl.cld | HeatInterface | 行 |
| SSD-FD-ARS-IMU-HEX-001 | IF-IMU-09 | 推進薬・流体 | ECLSS | ars.imu.hex → cab | FluidInterface | 名前 |
| SSD-FD-ARS-IMU-MON-001 | IF-IMU-10 | データ・指令 | ORB | eclss.ars.imu.mon → dps | DataInterface | 名前 |
| SSD-FD-ARS-IMU-MON-001 | IF-IMU-11 | 電力（28 VDC） | ORB | eps → eclss.ars.imu.mon | PowerInterface | 名前 |
| SSD-FD-ARS-IMU-MON-001 | IF-IMU-12 | データ・指令 | ARS_IMU | mon → ops | DataInterface | 行 |
| SSD-FD-MECH-ACT-001 | IF-MECH-01 | 電力（28 VDC） | ORB | eps.dc → mech.act | PowerInterface | 名前 |
| SSD-FD-MECH-PLB-001 | IF-MECH-02 | 構造・荷重 | ORB | mech.plb ↔ str.mid | LoadBiInterface | 行 |
| SSD-FD-MECH-LDG-001 | IF-MECH-03 | 構造・荷重 | ORB | mech.ldg ↔ str.wng | LoadBiInterface | 行 |
| SSD-FD-MECH-VNT-001 | IF-MECH-04 | 構造・荷重 | ORB | mech.vnt ↔ str.mid | LoadBiInterface | 行 |
| SSD-FD-MECH-ACT-001 | IF-MECH-05 | 構造・荷重 | MECH | act → plb | LoadInterface | 行 |
| SSD-FD-MECH-ACT-001 | IF-MECH-06 | 構造・荷重 | MECH | act → vnt | LoadInterface | 行 |
| SSD-FD-MECH-LDG-001 | IF-MECH-07 | データ・指令 | MECH | ldg → dec | DataInterface | 行 |
| SSD-FD-MECH-OPS-001 | IF-MECH-08 | データ・指令 | MECH | ops → ldg | DataInterface | 行 |
| SSD-FD-MECH-OPS-001 | IF-MECH-09 | データ・指令 | MECH | ops → dec | DataInterface | 行 |
| SSD-FD-MECH-OPS-001 | IF-MECH-10 | データ・指令 | MECH | ops → vnt | DataInterface | 行 |
| SSD-FD-MPS-PMS-001 | IF-MPS-01 | 推進薬・流体 | SpaceTransportationSystem | orb.mps.pms ↔ et.umb | FluidBiInterface | 行 |
| SSD-FD-MPS-PMS-001 | IF-MPS-02 | 推進薬・流体 | SpaceTransportationSystem | orb.mps.pms → et.umb | FluidInterface | 行 |
| SSD-FD-MPS-DMP-001 | IF-MPS-03 | 推進薬・流体 | MissionContext | ext.lps → sts.orb.mps.dmp | FluidInterface | 名前 |
| SSD-FD-MPS-PMS-001 | IF-MPS-04 | 推進薬・流体 | MissionContext | ext.lps → sts.orb.mps.pms | FluidInterface | 名前 |
| SSD-FD-MPS-CTL-001 | IF-MPS-05 | 電力（28 VDC） | ORB | eps → mps.ctl | PowerInterface | 名前 |
| SSD-FD-MPS-HE-001 | IF-MPS-06 | 電力（28 VDC） | ORB | eps → mps.he | PowerInterface | 名前 |
| SSD-FD-MPS-HE-001 | IF-MPS-07 | データ・指令 | ORB | mps.he → cw.pri | DataInterface | 行 |
| SSD-FD-MPS-PMS-001 | IF-MPS-08 | データ・指令 | ORB | mps.pms → cw.pri | DataInterface | 行 |
| SSD-FD-MPS-CTL-001 | IF-MPS-09 | データ・指令 | MPS | ctl ↔ ssme | DataBiInterface | 行 |
| SSD-FD-MPS-PMS-001 | IF-MPS-10 | 推進薬・流体 | MPS | pms → ssme | FluidInterface | 行 |
| SSD-FD-MPS-SSME-001 | IF-MPS-11 | 推進薬・流体 | MPS | ssme → pms | FluidInterface | 行 |
| SSD-FD-MPS-HE-001 | IF-MPS-12 | 推進薬・流体 | MPS | he → ssme | FluidInterface | 行 |
| SSD-FD-MPS-HE-001 | IF-MPS-13 | 推進薬・流体 | MPS | he → pms | FluidInterface | 行 |
| SSD-FD-MPS-HE-001 | IF-MPS-14 | 推進薬・流体 | MPS | he → dmp | FluidInterface | 行 |
| SSD-FD-MPS-DMP-001 | IF-MPS-15 | 推進薬・流体 | MPS | dmp ↔ pms | FluidBiInterface | 行 |
| SSD-FD-MPS-TVC-001 | IF-MPS-16 | 油圧 | MPS | tvc → ssme | HydraulicInterface | 行 |
| SSD-FD-MPS-OPS-001 | IF-MPS-17 | データ・指令 | MPS | ops ↔ ctl | DataBiInterface | 行 |
| SSD-FD-MPS-OPS-001 | IF-MPS-18 | データ・指令 | MPS | ops → he | DataInterface | 行 |
| SSD-FD-MPS-OPS-001 | IF-MPS-19 | データ・指令 | MPS | ops → dmp | DataInterface | 行 |
| SSD-FD-MPS-OPS-001 | IF-MPS-20 | データ・指令 | MPS | ops → tvc | DataInterface | 行 |
| SSD-FD-MPS-DMP-001 | IF-MPS-21 | 推進薬・流体 | MissionContext | sts.orb.mps.dmp → space | FluidInterface | 名前 |
| SSD-FD-MPS-SSME-001 | IF-MPS-22 | 構造・荷重 | ORB | mps.ssme → str.aft | LoadInterface | 行 |
| SSD-FD-OMS-HE-001 | IF-OMS-01 | 推進薬・流体 | OMS | he → psd | FluidInterface | 行 |
| SSD-FD-OMS-PSD-001 | IF-OMS-02 | 推進薬・流体 | OMS | psd → eng | FluidInterface | 行 |
| SSD-FD-OMS-XFD-001 | IF-OMS-03 | 推進薬・流体 | OMS | psd → xfd | FluidInterface | 行 |
| SSD-FD-OMS-XFD-001 | IF-OMS-04 | 推進薬・流体 | OMS | xfd → eng | FluidInterface | 行 |
| SSD-FD-OMS-TVC-001 | IF-OMS-05 | 構造・荷重 | OMS | eng → tvc | LoadInterface | 行 |
| SSD-FD-OMS-OPS-001 | IF-OMS-06 | データ・指令 | OMS | ops → eng | DataInterface | 行 |
| SSD-FD-OMS-OPS-001 | IF-OMS-07 | データ・指令 | OMS | ops → he | DataInterface | 行 |
| SSD-FD-OMS-OPS-001 | IF-OMS-08 | データ・指令 | OMS | ops → xfd | DataInterface | 行 |
| SSD-FD-OMS-PSD-001 | IF-OMS-09 | データ・指令 | OMS | psd → ops | DataInterface | 行 |
| SSD-FD-OMS-OPS-001 | IF-OMS-10 | データ・指令 | OMS | ops → thm | DataInterface | 行 |
| SSD-FD-OMS-XFD-001 | IF-OMS-11 | 推進薬・流体 | ORB | oms.xfd → rcs.prp | FluidInterface | 行 |
| SSD-FD-OMS-PSD-001 | IF-OMS-12 | 電力（28 VDC） | ORB | eps → oms.psd | PowerInterface | 名前 |
| SSD-FD-OMS-TVC-001 | IF-OMS-13 | 電力（28 VDC） | ORB | eps → oms.tvc | PowerInterface | 名前 |
| SSD-FD-OMS-ENG-001 | IF-OMS-14 | データ・指令 | ORB | oms.eng → cw.pri | DataInterface | 行 |
| SSD-FD-OMS-PSD-001 | IF-OMS-15 | データ・指令 | ORB | oms.psd → cw.pri | DataInterface | 行 |
| SSD-FD-OMS-TVC-001 | IF-OMS-16 | データ・指令 | ORB | oms.tvc → cw.pri | DataInterface | 行 |
| SSD-FD-OMS-ENG-001 | IF-OMS-17 | データ・指令 | ORB | oms.eng → dps | DataInterface | 名前 |
| SSD-FD-OMS-TVC-001 | IF-OMS-18 | 構造・荷重 | ORB | oms.tvc → str.aft | LoadInterface | 行 |
| SSD-FD-OMS-THM-001 | IF-OMS-19 | 熱 | ORB | tcs.ptc → oms.thm | HeatInterface | 名前 |
| SSD-FD-ECL-PCS-O2S-001 | IF-PCS-01 | 推進薬・流体 | ECL_PCS | o2s → mnf | FluidInterface | 行 |
| SSD-FD-ECL-PCS-N2S-001 | IF-PCS-02 | 推進薬・流体 | ECL_PCS | n2s → mnf | FluidInterface | 行 |
| SSD-FD-ECL-PCS-MNF-001 | IF-PCS-03 | 推進薬・流体 | ECLSS | pcs.mnf → cab | FluidInterface | 名前 |
| SSD-FD-ECL-PCS-O2S-001 | IF-PCS-04 | 推進薬・流体 | ECLSS | pcs.o2s → cab | FluidInterface | 名前 |
| SSD-FD-ECL-PCS-O2S-001 | IF-PCS-05 | 推進薬・流体 | ECLSS | pcs.o2s → als.scu | FluidInterface | 行 |
| SSD-FD-ECL-PCS-N2S-001 | IF-PCS-06 | 推進薬・流体 | ECLSS | pcs.n2s → h2o.prs | FluidInterface | 行 |
| SSD-FD-ECL-PCS-RLF-001 | IF-PCS-07 | 推進薬・流体 | ECLSS | pcs.rlf ↔ cab | FluidBiInterface | 名前 |
| SSD-FD-ECL-PCS-RLF-001 | IF-PCS-08 | 推進薬・流体 | MissionContext | sts.orb.eclss.pcs.rlf ↔ space | FluidBiInterface | 名前 |
| SSD-FD-ECL-PCS-N2S-001 | IF-PCS-09 | 推進薬・流体 | ECLSS | pcs.n2s → wcs.vac | FluidInterface | 行 |
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-10 | 推進薬・流体 | ECLSS | cab → pcs.mon | FluidInterface | 名前 |
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-11 | 推進薬・流体 | ECL_PCS | o2s → mon | FluidInterface | 行 |
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-12 | 推進薬・流体 | ECL_PCS | n2s → mon | FluidInterface | 行 |
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-13 | データ・指令 | ECL_PCS | mon → mnf | DataInterface | 行 |
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-14 | データ・指令 | ORB | eclss.pcs.mon → dps | DataInterface | 名前 |
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-15 | データ・指令 | ECL_PCS | mon → ops | DataInterface | 行 |
| SSD-FD-ECL-PCS-OPS-001 | IF-PCS-16 | データ・指令 | ECL_PCS | ops → mnf | DataInterface | 行 |
| SSD-FD-ECL-PCS-OPS-001 | IF-PCS-17 | データ・指令 | ECL_PCS | ops → o2s | DataInterface | 行 |
| SSD-FD-ECL-PCS-MNF-001 | IF-PCS-18 | 電力（28 VDC） | ORB | eps → eclss.pcs.mnf | PowerInterface | 名前 |
| SSD-FD-ECL-PCS-O2S-001 | IF-PCS-19 | 電力（28 VDC） | ORB | eps → eclss.pcs.o2s | PowerInterface | 名前 |
| SSD-FD-ECL-PCS-N2S-001 | IF-PCS-20 | 電力（28 VDC） | ORB | eps → eclss.pcs.n2s | PowerInterface | 名前 |
| SSD-FD-ECL-PCS-RLF-001 | IF-PCS-21 | 電力（28 VDC） | ORB | eps → eclss.pcs.rlf | PowerInterface | 名前 |
| SSD-FD-ECL-PCS-MON-001 | IF-PCS-22 | 電力（28 VDC） | ORB | eps → eclss.pcs.mon | PowerInterface | 名前 |
| SSD-FD-ECL-PCS-N2S-001 | IF-PCS-23 | 推進薬・流体 | ORB | eclss.pcs.n2s → eva.mnt | FluidInterface | 行 |
| SSD-FD-PLS-ARM-001 | IF-PLS-01 | 電力（28 VDC） | ORB | eps.dc → pls.arm | PowerInterface | 名前 |
| SSD-FD-PLS-ODS-001 | IF-PLS-02 | 電力（28 VDC） | ORB | eps.dc → pls.ods | PowerInterface | 名前 |
| SSD-FD-PLS-MPM-001 | IF-PLS-03 | 構造・荷重 | ORB | pls.mpm ↔ str.mid | LoadBiInterface | 行 |
| SSD-FD-PLS-PRL-001 | IF-PLS-04 | 構造・荷重 | ORB | pls.prl ↔ str.mid | LoadBiInterface | 行 |
| SSD-FD-PLS-ODS-001 | IF-PLS-05 | 構造・荷重 | ORB | pls.ods ↔ str.mid | LoadBiInterface | 行 |
| SSD-FD-PLS-CTL-001 | IF-PLS-06 | データ・指令 | PLS | ctl ↔ arm | DataBiInterface | 行 |
| SSD-FD-PLS-MPM-001 | IF-PLS-07 | 構造・荷重 | PLS | mpm → arm | LoadInterface | 行 |
| SSD-FD-PLS-OPS-001 | IF-PLS-08 | データ・指令 | PLS | ops → ctl | DataInterface | 行 |
| SSD-FD-PLS-OPS-001 | IF-PLS-09 | データ・指令 | PLS | ops → prl | DataInterface | 行 |
| SSD-FD-ARS-RCRS-FAN-001 | IF-RCRS-01 | 推進薬・流体 | ARS_RCRS | fan → bed | FluidInterface | 行 |
| SSD-FD-ARS-RCRS-BED-001 | IF-RCRS-02 | 推進薬・流体 | ECL_ARS | rcrs.bed → thc.hx | FluidInterface | 行 |
| SSD-FD-ARS-RCRS-BED-001 | IF-RCRS-03 | 推進薬・流体 | ECLSS | ars.rcrs.bed → wcs.vac | FluidInterface | 行 |
| SSD-FD-ARS-RCRS-BED-001 | IF-RCRS-04 | 推進薬・流体 | ARS_RCRS | bed → usc | FluidInterface | 行 |
| SSD-FD-ARS-RCRS-CTL-001 | IF-RCRS-05 | データ・指令 | ARS_RCRS | ctl → bed | DataInterface | 行 |
| SSD-FD-ARS-RCRS-CTL-001 | IF-RCRS-06 | データ・指令 | ARS_RCRS | ctl → usc | DataInterface | 行 |
| SSD-FD-ARS-RCRS-FAN-001 | IF-RCRS-07 | 推進薬・流体 | ARS_RCRS | fan → mon | FluidInterface | 行 |
| SSD-FD-ARS-RCRS-BED-001 | IF-RCRS-08 | 推進薬・流体 | ARS_RCRS | bed → mon | FluidInterface | 行 |
| SSD-FD-ARS-RCRS-MON-001 | IF-RCRS-09 | データ・指令 | ARS_RCRS | mon → ctl | DataInterface | 行 |
| SSD-FD-ARS-RCRS-MON-001 | IF-RCRS-10 | データ・指令 | ORB | eclss.ars.rcrs.mon → dps | DataInterface | 名前 |
| SSD-FD-ARS-RCRS-CTL-001 | IF-RCRS-11 | データ・指令 | ORB | eclss.ars.rcrs.ctl → dps | DataInterface | 名前 |
| SSD-FD-ARS-RCRS-CTL-001 | IF-RCRS-12 | 電力（28 VDC） | ORB | eps → eclss.ars.rcrs.ctl | PowerInterface | 名前 |
| SSD-FD-ARS-RCRS-MON-001 | IF-RCRS-13 | 電力（28 VDC） | ORB | eps → eclss.ars.rcrs.mon | PowerInterface | 名前 |
| SSD-FD-ARS-RCRS-OPS-001 | IF-RCRS-14 | データ・指令 | ARS_RCRS | ops → ctl | DataInterface | 行 |
| SSD-FD-ARS-RCRS-MON-001 | IF-RCRS-15 | データ・指令 | ARS_RCRS | mon → ops | DataInterface | 行 |
| SSD-FD-RCS-HEP-001 | IF-RCS-01 | 推進薬・流体 | RCS | hep → prp | FluidInterface | 行 |
| SSD-FD-RCS-PRP-001 | IF-RCS-02 | 推進薬・流体 | RCS | prp → jet | FluidInterface | 行 |
| SSD-FD-RCS-RJD-001 | IF-RCS-03 | データ・指令 | RCS | rjd ↔ jet | DataBiInterface | 行 |
| SSD-FD-RCS-RJD-001 | IF-RCS-04 | データ・指令 | RCS | rjd → rm | DataInterface | 行 |
| SSD-FD-RCS-JET-001 | IF-RCS-05 | データ・指令 | RCS | jet → rm | DataInterface | 行 |
| SSD-FD-RCS-RM-001 | IF-RCS-06 | データ・指令 | RCS | rm ↔ prp | DataBiInterface | 行 |
| SSD-FD-RCS-HTR-001 | IF-RCS-07 | 熱 | RCS | htr → jet | HeatInterface | 行 |
| SSD-FD-RCS-HTR-001 | IF-RCS-08 | 熱 | RCS | htr → prp | HeatInterface | 行 |
| SSD-FD-RCS-PRP-001 | IF-RCS-09 | 電力（28 VDC） | ORB | eps → rcs.prp | PowerInterface | 名前 |
| SSD-FD-RCS-RJD-001 | IF-RCS-10 | 電力（28 VDC） | ORB | eps → rcs.rjd | PowerInterface | 名前 |
| SSD-FD-RCS-HTR-001 | IF-RCS-11 | 電力（28 VDC） | ORB | eps → rcs.htr | PowerInterface | 名前 |
| SSD-FD-RCS-PRP-001 | IF-RCS-12 | データ・指令 | ORB | rcs.prp → cw.pri | DataInterface | 行 |
| SSD-FD-RCS-RM-001 | IF-RCS-13 | データ・指令 | ORB | rcs.rm → cw.pri | DataInterface | 行 |
| SSD-FD-RCS-HEP-001 | IF-RCS-14 | データ・指令 | ORB | rcs.hep → cw.pri | DataInterface | 行 |
| SSD-FD-RCS-HTR-001 | IF-RCS-15 | データ・指令 | ORB | rcs.htr → cw.alt | DataInterface | 行 |
| SSD-FD-RCS-OPS-001 | IF-RCS-16 | データ・指令 | RCS | ops → prp | DataInterface | 行 |
| SSD-FD-RCS-OPS-001 | IF-RCS-17 | データ・指令 | RCS | ops → hep | DataInterface | 行 |
| SSD-FD-RCS-OPS-001 | IF-RCS-18 | データ・指令 | RCS | ops → rm | DataInterface | 行 |
| SSD-FD-RCS-OPS-001 | IF-RCS-19 | データ・指令 | RCS | ops → htr | DataInterface | 行 |
| SSD-FD-RCS-JET-001 | IF-RCS-20 | 構造・荷重 | ORB | rcs.jet → str.aft | LoadInterface | 行 |
| SSD-FD-SRB-ATT-001 | IF-SRB-01 | 構造・荷重 | SpaceTransportationSystem | srb.att ↔ et.itk | LoadBiInterface | 行 |
| SSD-FD-SRB-ATT-001 | IF-SRB-02 | 構造・荷重 | SpaceTransportationSystem | srb.att ↔ et.lh2 | LoadBiInterface | 行 |
| SSD-FD-SRB-HDP-001 | IF-SRB-03 | 構造・荷重 | MissionContext | sts.srb.hdp ↔ ext.lps | LoadBiInterface | 名前 |
| SSD-FD-SRB-TVC-001 | IF-SRB-04 | 油圧 | SRB | tvc → mtr | HydraulicInterface | 行 |
| SSD-FD-SRB-AVN-001 | IF-SRB-05 | データ・指令 | SRB | avn → tvc | DataInterface | 行 |
| SSD-FD-SRB-HDP-001 | IF-SRB-06 | データ・指令 | SRB | hdp → mtr | DataInterface | 行 |
| SSD-FD-SRB-MTR-001 | IF-SRB-07 | データ・指令 | SRB | mtr → att | DataInterface | 行 |
| SSD-FD-SRB-AVN-001 | IF-SRB-08 | 電力（28 VDC） | SRB | avn → rec | PowerInterface | 行 |
| SSD-FD-STR-FWD-001 | IF-STR-01 | 構造・荷重 | SpaceTransportationSystem | orb.str.fwd ↔ et.lh2 | LoadBiInterface | 行 |
| SSD-FD-STR-AFT-001 | IF-STR-02 | 構造・荷重 | SpaceTransportationSystem | orb.str.aft ↔ et.lh2 | LoadBiInterface | 行 |
| SSD-FD-STR-MID-001 | IF-STR-03 | 熱 | ORB | tps → str.mid | HeatInterface | 名前 |
| SSD-FD-STR-CRM-001 | IF-STR-04 | 構造・荷重 | STR | crm → fwd | LoadInterface | 行 |
| SSD-FD-STR-MID-001 | IF-STR-05 | 構造・荷重 | STR | mid ↔ fwd | LoadBiInterface | 行 |
| SSD-FD-STR-AFT-001 | IF-STR-06 | 構造・荷重 | STR | aft ↔ mid | LoadBiInterface | 行 |
| SSD-FD-STR-WNG-001 | IF-STR-07 | 構造・荷重 | STR | wng ↔ mid | LoadBiInterface | 行 |
| SSD-FD-STR-WNG-001 | IF-STR-08 | 構造・荷重 | STR | wng ↔ aft | LoadBiInterface | 行 |
| SSD-FD-STR-OPS-001 | IF-STR-09 | データ・指令 | STR | ops → crm | DataInterface | 行 |
| SSD-FD-STR-OPS-001 | IF-STR-10 | データ・指令 | STR | ops → mid | DataInterface | 行 |
| SSD-FD-TCS-HX-001 | IF-TCS-01 | 熱 | ECLSS | ars.wcl → atcs.hx | HeatInterface | 行 |
| SSD-FD-TCS-HX-001 | IF-TCS-02 | 熱 | ORB | eps → eclss.atcs.hx | HeatInterface | 行 |
| SSD-FD-TCS-HX-001 | IF-TCS-03 | 熱 | ORB | eclss.atcs.hx ↔ apu.cir | HeatBiInterface | 行 |
| SSD-FD-TCS-HX-001 | IF-TCS-04 | 熱 | ECLSS | atcs.hx → pcs.o2s | HeatInterface | 行 |
| SSD-FD-TCS-HX-001 | IF-TCS-05 | 熱 | ORB | eclss.atcs.hx → dps | HeatInterface | 行 |
| SSD-FD-TCS-HX-001 | IF-TCS-06 | 熱 | MissionContext | sts.orb.eclss.atcs.hx → payload | HeatInterface | 名前 |
| SSD-FD-TCS-HX-001 | IF-TCS-07 | 熱 | ECL_ATCS | hx ↔ fcl | HeatBiInterface | 行 |
| SSD-FD-TCS-FCL-001 | IF-TCS-08 | 熱 | ECL_ATCS | fcl → rad | HeatInterface | 行 |
| SSD-FD-TCS-FCL-001 | IF-TCS-09 | 熱 | ECL_ATCS | fcl → fes | HeatInterface | 行 |
| SSD-FD-TCS-FCL-001 | IF-TCS-10 | 熱 | ECL_ATCS | fcl → nh3 | HeatInterface | 行 |
| SSD-FD-TCS-FCL-001 | IF-TCS-11 | 熱 | ECL_ATCS | fcl → gse | HeatInterface | 行 |
| SSD-FD-TCS-RAD-001 | IF-TCS-12 | 熱 | MissionContext | sts.orb.eclss.atcs.rad → space | HeatInterface | 名前 |
| SSD-FD-TCS-FES-001 | IF-TCS-13 | 推進薬・流体 | MissionContext | sts.orb.eclss.atcs.fes → space | FluidInterface | 名前 |
| SSD-FD-TCS-NH3-001 | IF-TCS-14 | 推進薬・流体 | MissionContext | sts.orb.eclss.atcs.nh3 → space | FluidInterface | 名前 |
| SSD-FD-TCS-GSE-001 | IF-TCS-15 | 熱 | MissionContext | ext.lps → sts.orb.eclss.atcs.gse | HeatInterface | 名前 |
| SSD-FD-TCS-FES-001 | IF-TCS-16 | 推進薬・流体 | ECLSS | h2o.spl → atcs.fes | FluidInterface | 行 |
| SSD-FD-TCS-PTC-001 | IF-TCS-17 | 推進薬・流体 | MissionContext | ext.lps → sts.orb.tcs.ptc | FluidInterface | 名前 |
| SSD-FD-TCS-FES-001 | IF-TCS-18 | データ・指令 | ORB | dps → eclss.atcs.fes | DataInterface | 行 |
| SSD-FD-TCS-NH3-001 | IF-TCS-19 | データ・指令 | ORB | dps → eclss.atcs.nh3 | DataInterface | 行 |
| SSD-FD-TCS-PTC-001 | IF-TCS-20 | 電力（28 VDC） | ORB | eps → tcs.ptc | PowerInterface | 行 |
| SSD-FD-TCS-FCL-001 | IF-TCS-21 | データ・指令 | ORB | dps → eclss.atcs.fcl | DataInterface | 行 |
| SSD-FD-ARS-THC-TCV-001 | IF-THC-01 | 推進薬・流体 | ARS_THC | tcv → hx | FluidInterface | 行 |
| SSD-FD-ARS-THC-HX-001 | IF-THC-02 | 推進薬・流体 | ARS_THC | hx → tcv | FluidInterface | 行 |
| SSD-FD-ARS-THC-HX-001 | IF-THC-03 | 熱 | ECL_ARS | thc.hx → wcl.cld | HeatInterface | 行 |
| SSD-FD-ARS-THC-HX-001 | IF-THC-04 | 推進薬・流体 | ARS_THC | hx → sep | FluidInterface | 行 |
| SSD-FD-ARS-THC-SEP-001 | IF-THC-05 | 推進薬・流体 | ECLSS | ars.thc.sep → h2o.wst | FluidInterface | 行 |
| SSD-FD-ARS-THC-SEP-001 | IF-THC-06 | 推進薬・流体 | ECLSS | ars.thc.sep → cab | FluidInterface | 名前 |
| SSD-FD-ARS-THC-TCV-001 | IF-THC-07 | 推進薬・流体 | ECLSS | ars.thc.tcv → cab | FluidInterface | 名前 |
| SSD-FD-ARS-THC-HX-001 | IF-THC-08 | 推進薬・流体 | ARS_THC | hx → mon | FluidInterface | 行 |
| SSD-FD-ARS-THC-SEP-001 | IF-THC-09 | データ・指令 | ARS_THC | sep → mon | DataInterface | 行 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-10 | データ・指令 | ARS_THC | mon → tcv | DataInterface | 行 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-11 | データ・指令 | ORB | eclss.ars.thc.mon → dps | DataInterface | 名前 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-12 | データ・指令 | ORB | eclss.ars.thc.mon → dps | DataInterface | 名前 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-13 | データ・指令 | ARS_THC | mon → ops | DataInterface | 行 |
| SSD-FD-ARS-THC-OPS-001 | IF-THC-14 | データ・指令 | ARS_THC | ops → tcv | DataInterface | 行 |
| SSD-FD-ARS-THC-OPS-001 | IF-THC-15 | データ・指令 | ARS_THC | ops → sep | DataInterface | 行 |
| SSD-FD-ARS-THC-TCV-001 | IF-THC-16 | 電力（28 VDC） | ORB | eps → eclss.ars.thc.tcv | PowerInterface | 名前 |
| SSD-FD-ARS-THC-SEP-001 | IF-THC-17 | 電力（28 VDC） | ORB | eps → eclss.ars.thc.sep | PowerInterface | 名前 |
| SSD-FD-ARS-THC-MON-001 | IF-THC-18 | 電力（28 VDC） | ORB | eps → eclss.ars.thc.mon | PowerInterface | 名前 |
| SSD-FD-ARS-WCL-PMP-001 | IF-WCL-01 | 推進薬・流体 | ARS_WCL | pmp → avl | FluidInterface | 行 |
| SSD-FD-ARS-WCL-AVL-001 | IF-WCL-02 | 推進薬・流体 | ARS_WCL | avl → ich | FluidInterface | 行 |
| SSD-FD-ARS-WCL-ICH-001 | IF-WCL-03 | 推進薬・流体 | ARS_WCL | ich → cld | FluidInterface | 行 |
| SSD-FD-ARS-WCL-CLD-001 | IF-WCL-04 | 推進薬・流体 | ARS_WCL | cld → pmp | FluidInterface | 行 |
| SSD-FD-ARS-WCL-ICH-001 | IF-WCL-05 | 推進薬・流体 | ARS_WCL | ich → pmp | FluidInterface | 行 |
| SSD-FD-ARS-WCL-PMP-001 | IF-WCL-06 | データ・指令 | ARS_WCL | pmp → ich | DataInterface | 行 |
| SSD-FD-ARS-WCL-PMP-001 | IF-WCL-07 | 推進薬・流体 | ARS_WCL | pmp → mon | FluidInterface | 行 |
| SSD-FD-ARS-WCL-ICH-001 | IF-WCL-08 | 推進薬・流体 | ARS_WCL | ich → mon | FluidInterface | 行 |
| SSD-FD-ARS-WCL-OPS-001 | IF-WCL-09 | データ・指令 | ARS_WCL | ops → pmp | DataInterface | 行 |
| SSD-FD-ARS-WCL-OPS-001 | IF-WCL-10 | データ・指令 | ARS_WCL | ops → ich | DataInterface | 行 |
| SSD-FD-ARS-WCL-MON-001 | IF-WCL-11 | データ・指令 | ARS_WCL | mon → ops | DataInterface | 行 |
| SSD-FD-ARS-WCL-PMP-001 | IF-WCL-12 | 電力（28 VDC） | ORB | eps → eclss.ars.wcl.pmp | PowerInterface | 名前 |
| SSD-FD-ARS-WCL-ICH-001 | IF-WCL-13 | 電力（28 VDC） | ORB | eps → eclss.ars.wcl.ich | PowerInterface | 名前 |
| SSD-FD-ARS-WCL-MON-001 | IF-WCL-14 | 電力（28 VDC） | ORB | eps → eclss.ars.wcl.mon | PowerInterface | 名前 |
| SSD-FD-ARS-WCL-PMP-001 | IF-WCL-15 | データ・指令 | ORB | dps → eclss.ars.wcl.pmp | DataInterface | 名前 |
| SSD-FD-ARS-WCL-MON-001 | IF-WCL-16 | データ・指令 | ORB | eclss.ars.wcl.mon → dps | DataInterface | 名前 |
| SSD-FD-ARS-WCL-AVL-001 | IF-WCL-17 | 熱 | ORB | eclss.ars.wcl.avl → dps | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-AVL-001 | IF-WCL-18 | 熱 | ORB | eclss.ars.wcl.avl → eps | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-AVL-001 | IF-WCL-19 | 熱 | ECLSS | ars.wcl.avl → cab | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-ICH-001 | IF-WCL-20 | 熱 | ECLSS | ars.wcl.ich → atcs.hx | HeatInterface | 名前 |
| SSD-FD-ARS-WCL-CLD-001 | IF-WCL-21 | 熱 | ECLSS | als.lcg → ars.wcl.cld | HeatInterface | 行 |
| SSD-FD-ARS-WCL-CLD-001 | IF-WCL-22 | 熱 | ECLSS | ars.wcl.cld → h2o.gal | HeatInterface | 行 |
| SSD-FD-ECL-WCS-URN-001 | IF-WCS-01 | 推進薬・流体 | ECLSS | cab → wcs.urn | FluidInterface | 名前 |
| SSD-FD-ECL-WCS-CMD-001 | IF-WCS-02 | 推進薬・流体 | ECLSS | cab → wcs.cmd | FluidInterface | 名前 |
| SSD-FD-ECL-WCS-URN-001 | IF-WCS-03 | 推進薬・流体 | ECL_WCS | urn → fsp | FluidInterface | 行 |
| SSD-FD-ECL-WCS-CMD-001 | IF-WCS-04 | 推進薬・流体 | ECL_WCS | cmd → fsp | FluidInterface | 行 |
| SSD-FD-ECL-WCS-CMD-001 | IF-WCS-05 | 推進薬・流体 | ECL_WCS | cmd → vac | FluidInterface | 行 |
| SSD-FD-ECL-WCS-FSP-001 | IF-WCS-06 | 推進薬・流体 | ECLSS | wcs.fsp → cab | FluidInterface | 名前 |
| SSD-FD-ECL-WCS-VAC-001 | IF-WCS-07 | 推進薬・流体 | ECLSS | cab → wcs.vac | FluidInterface | 名前 |
| SSD-FD-ECL-WCS-VAC-001 | IF-WCS-08 | 推進薬・流体 | ECLSS | wcs.vac ↔ h2o.dmp | FluidBiInterface | 行 |
| SSD-FD-ECL-WCS-VAC-001 | IF-WCS-09 | 推進薬・流体 | MissionContext | sts.orb.eclss.wcs.vac → space | FluidInterface | 名前 |
| SSD-FD-ECL-WCS-FSP-001 | IF-WCS-10 | 電力（28 VDC） | ORB | eps → eclss.wcs.fsp | PowerInterface | 名前 |
| SSD-FD-ECL-WCS-VAC-001 | IF-WCS-11 | 電力（28 VDC） | ORB | eps → eclss.wcs.vac | PowerInterface | 名前 |
| SSD-FD-ECL-WCS-VAC-001 | IF-WCS-12 | データ・指令 | ORB | eclss.wcs.vac → dps | DataInterface | 名前 |
| SSD-FD-ECL-WCS-OPS-001 | IF-WCS-13 | データ・指令 | ECL_WCS | ops → fsp | DataInterface | 行 |
| SSD-FD-ECL-WCS-OPS-001 | IF-WCS-14 | データ・指令 | ECL_WCS | ops → cmd | DataInterface | 行 |
| SSD-FD-ECL-WCS-OPS-001 | IF-WCS-15 | データ・指令 | ECL_WCS | ops → vac | DataInterface | 行 |

## 5. 相手の名前で決めた端

端が1つしか無い IF 170件の、相手の名前と端にした part def を示す。名前は文書ごとに書き方が違う（例：「電力系：直流配電（EPS）」と「直流配電（EPDC-DC）」）ので、同じ部品に寄せた。下位の系が特定できない名前（「電力系（EPS）」「DPS・アビオニクス」）は系の part def を端にした。

| 相手の名前 | 端の part def | 文書 | 件数 | 備考 |
|---|---|---|---|---|
| 電力系（EPS） | EPS | [SSD-FD-EPS-001](SSD-FD-EPS-001.md) | 42 | — |
| DPS・アビオニクス | DPS | [SSD-FD-DPS-001](SSD-FD-DPS-001.md) | 34 | — |
| 乗員室（制御対象） | ECL_CAB | [SSD-FD-ECL-CAB-001](SSD-FD-ECL-CAB-001.md) | 20 | — |
| 宇宙空間（船外） | SpaceEnvironment | — | 16 | — |
| 電力系（EPS）：直流配電 | EPS_DC | [SSD-FD-EPS-DC-001](SSD-FD-EPS-DC-001.md) | 5 | — |
| 電力系：直流配電（EPS） | EPS_DC | [SSD-FD-EPS-DC-001](SSD-FD-EPS-DC-001.md) | 5 | — |
| 電力系：直流配電（EPDC-DC） | EPS_DC | [SSD-FD-EPS-DC-001](SSD-FD-EPS-DC-001.md) | 2 | — |
| 直流配電（EPDC-DC） | EPS_DC | [SSD-FD-EPS-DC-001](SSD-FD-EPS-DC-001.md) | 2 | — |
| 誘導・航法・制御（GN&C） | GNC | [SSD-FD-GNC-001](SSD-FD-GNC-001.md) | 4 | — |
| 追跡・通信網（TDRS・STDN） | TrackingNetwork | — | 4 | — |
| 電力系：交流配電（EPDC-AC） | EPS_AC | [SSD-FD-EPS-AC-001](SSD-FD-EPS-AC-001.md) | 3 | — |
| 打上げ処理システム（KSC） | LaunchProcessing | — | 3 | — |
| 打上げ処理システム（LPS） | LaunchProcessing | — | 1 | — |
| 煙検知・消火系（FDS） | ECL_FDS | [SSD-FD-ECL-FDS-001](SSD-FD-ECL-FDS-001.md) | 2 | — |
| エアロック支援系（ALS） | ECL_ALS | [SSD-FD-ECL-ALS-001](SSD-FD-ECL-ALS-001.md) | 2 | — |
| 区画・減圧・再与圧（ALS） | ECL_ALS | [SSD-FD-ECL-ALS-001](SSD-FD-ECL-ALS-001.md) | 1 | — |
| 給水・廃水系（H2O） | ECL_H2O | [SSD-FD-ECL-H2O-001](SSD-FD-ECL-H2O-001.md) | 2 | — |
| ECLSS：酸素供給 | ECL_PCS_O2S | [SSD-FD-ECL-PCS-O2S-001](SSD-FD-ECL-PCS-O2S-001.md) | 2 | — |
| ECLSS：ギャレー給水 | ECL_H2O_GAL | [SSD-FD-ECL-H2O-GAL-001](SSD-FD-ECL-H2O-GAL-001.md) | 2 | — |
| 環境制御・生命維持（ECLSS） | ECLSS | [SSD-FD-ECLSS-001](SSD-FD-ECLSS-001.md) | 2 | — |
| 圧力制御系（PCS） | ECL_PCS | [SSD-FD-ECL-PCS-001](SSD-FD-ECL-PCS-001.md) | 1 | — |
| 地上支援設備（GSE） | LaunchProcessing | — | 2 | — |
| 地上冷却・パージ設備 | LaunchProcessing | — | 2 | — |
| 熱交換器・コールドプレート網 | TCS_HX | [SSD-FD-TCS-HX-001](SSD-FD-TCS-HX-001.md) | 1 | — |
| C&T：計装・ペイロード通信 | CT_INST | [SSD-FD-CT-INST-001](SSD-FD-CT-INST-001.md) | 1 | — |
| EMU（船外活動ユニット） | EVA | [SSD-FD-EVA-001](SSD-FD-EVA-001.md) | 1 | EMU は EVA の機能説明書が受け持つ |
| 電力負荷（オービタ各系・SRB・ET・ペイロード） | ORB | [SSD-FD-ORB-001](SSD-FD-ORB-001.md) | 1 | 負荷の総称のため、オービタの境界のポートを端とした |
| ミッション管制センター（JSC） | MissionControlCenter | — | 1 | — |
| 地上航法局・GPS衛星 | NavigationAids | — | 1 | — |
| データ処理系（DPS） | DPS | [SSD-FD-DPS-001](SSD-FD-DPS-001.md) | 1 | — |
| 熱制御：受動熱制御（PTC） | TCS_PTC | [SSD-FD-TCS-PTC-001](SSD-FD-TCS-PTC-001.md) | 1 | — |
| 熱防護系（TPS） | TPS | [SSD-FD-TPS-001](SSD-FD-TPS-001.md) | 1 | — |
| ペイロード | Payload | — | 2 | — |

## 6. 文書の無い要素

機能説明書の無い要素を示す。外部系（SSD-FD-EXT-001）は1つの文書だが、IF の相手が追跡・通信網・ミッション管制・打上げ処理に分かれるので、3つの部品に分けた（外部系の文書の IF の行の振り分けは、RF と IF-SYS-05 を追跡・通信網、ほかを打上げ処理にした）。

| part def | 表示名 | 親 | 説明 | 端になる IF |
|---|---|---|---|---|
| MissionContext | 運用の文脈（図1） | — | 宇宙輸送システムと、外部系・宇宙空間・航法の基準・ペイロードを含む最上位の文脈。図1 に当たる。 | — |
| SpaceTransportationSystem | 宇宙輸送システム（オービタ・ET・SRB） | MissionContext | 打ち上げる機体（オービタ・外部タンク・固体ロケットブースタ2本）。 | — |
| TrackingNetwork | 追跡・通信網（TDRS・STDN） | EXT | 外部系のうち、TDRS と地上局網（STDN）・ホワイトサンズ地上局。 | IF-CT-01・IF-CT-02・IF-CT-03・IF-CT-04・IF-ORB-16・IF-SYS-04・IF-SYS-05 |
| MissionControlCenter | ミッション管制センター（JSC） | EXT | 外部系のうち、ミッション管制センター。 | IF-SYS-05 |
| LaunchProcessing | 打上げ処理システム・地上支援設備（KSC） | EXT | 外部系のうち、打上げ処理システム（LPS）と地上支援設備（GSE・地上冷却・パージ設備・移動式発射台）。 | IF-DPS-06・IF-ECL-34・IF-EPS-01・IF-EPS-02・IF-MPS-03・IF-MPS-04・IF-ORB-17・IF-ORB-29・IF-ORB-30・IF-ORB-31・IF-ORB-32・IF-ORB-33・IF-SRB-03・IF-SYS-06・IF-SYS-09・IF-SYS-10・IF-TCS-15・IF-TCS-17 |
| SpaceEnvironment | 宇宙空間（船外） | MissionContext | 船外の真空。排気・ベント・放熱の相手。 | IF-ALS-02・IF-APU-22・IF-APU-23・IF-ARS-16・IF-ECL-21・IF-ECL-22・IF-ECL-23・IF-ECL-30・IF-EPS-08・IF-H2O-10・IF-MPS-21・IF-PCS-08・IF-TCS-12・IF-TCS-13・IF-TCS-14・IF-WCS-09 |
| NavigationAids | 地上航法局・GPS 衛星 | MissionContext | TACAN・MSBLS などの地上航法局と GPS 衛星。 | IF-GNC-13 |
| Payload | ペイロード | MissionContext | ペイロードベイに搭載する荷物（機体の外の要素として扱う）。 | IF-EPS-15・IF-TCS-06 |

## 7. ブロック定義図

図89 システム構成 ブロック定義図 は、part def の入れ子（親の箱の中に子の箱）で構成を示す。オービタの系（17件）・ET・SRB・外部系は、部品の欄に子の部品（部品名 : part def）を並べた。箱と部品の行をクリックすると機能説明書を開く。

## 8. SysML v2 テキスト

同じ構造を SysML v2 のテキスト [SysML/SSD-BLK-SYS-001.sysml](../SysML/SSD-BLK-SYS-001.sysml) に示す。part def 216件、part 215件、port 1220件、interface 598件、connection 3件、詳細化の dependency 290件から成る。本書の表と同じデータから作り、OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 9. 注記（出典間の相違・構成変更）

> **注記** IF の端は、機能説明書の IF の行から機械的に決めた。親の文書に写した行（例：IF-ECL-08 は DPS と DPS-GPC の両方にある）は、子の文書の行だけを端にした。2端の IF は、両端の行の方向（送信・受信・双方向）がすべて互いに逆向き（または両方とも双方向）であることを確かめた。

> **注記** 端を名前で決めた IF（§5）は、相手の文書に行が無いため、相手の部品のどのポートかは文書から決まらない。本書は相手の part def にその IF 用のポートを足して端にしたので、相手の機能説明書の IF の表と SysML のポートは一致しない（SysML の方が多い）。

> **注記** ポートの委譲（親の境界のポートと子のポートの結び付け）は表していない。上位 IF と下位 IF の対応は、下位から上位への詳細化（#refinement の dependency）で示した。このため、上位 IF（IF-ORB など）は系の part def のポートどうしを、下位 IF は下位の部品のポートどうしを、別々につないでいる。

> **注記** IF-ORB-14（28 VDC 母線、12端）、IF-ORB-41（C/W への入力、9端）、IF-EPS-11（ET・SRB への直流電力、3端）は n 項の connection にした。SRB は2本あるので部品の多重度を [2] とし、IF は2本に共通の部品の道筋（sts.srb.…）でつないだ。

> **注記** 外部系を3つの部品に分けたことと、宇宙空間・航法の基準・ペイロードを部品にしたことは、本書のモデル化の判断で、機能説明書には無い。

## 10. 参考文献

1. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
2. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 11. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（part def 216件、IF 581件のポート・interface・connection、詳細化 281件、図89 システム構成 ブロック定義図、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | 内部ブロック・流れ定義書 SSD-IBD-ORB-001 への参照を注記（Rev. AN） |
| Rev. B | 2026-10-04 | IF 16件の追加（Rev. AU の内部ブロック図の機能ブロックをまたぐ流れ）に合わせて、ポート・interface を作り直した（Rev. AU） |
| Rev. C | 2026-10-08 | IF 4件の追加（Rev. BI の ECLSS の内部ブロック図の機能ブロックをまたぐ流れ）に合わせて、ポート・interface を作り直した（Rev. BI） |

// SysML v2 テキスト：オービタの系の機能の故障モード（ECLSS 以外）
// SSD-FMX-ORB-001 オービタの系の機能の故障モード定義書（ECLSS 以外の系：GN&C・RCS・DPS・C/W・C&T・EVA・CREW・PLS・APU・MECH・STR・EPS・MPS） の表から生成（lib/build_docs_by.py・rev_by/bydata.py）。根拠の頁は SSD-FMX-ORB-001 にある。
package SSD_FMX_ORB_001 {
    doc /* SSD-FMX-ORB-001 オービタの系の機能の故障モード定義書（ECLSS 以外の系：GN&C・RCS・DPS・C/W・C&T・EVA・CREW・PLS・APU・MECH・STR・EPS・MPS）。図227〜229 と同じ内容。故障モードの型は SSD_FMM_ORB_001 の FailureMode、原因は SSD_HAZ_ORB_001 の HazardModel、警報は SSD_FDIR_ORB_001 の item def。 */
    private import CauseAndEffect::*;
    private import SSD_HAZ_ORB_001::Involves;
    private import SSD_FMM_ORB_001::DetectedBy;
    // ---- 機能の故障モード（系ごと）
    package FunctionalFailureModes {
        #cause occurrence <'FMX-GNC-01'> fmx_gnc_01 : SSD_FMM_ORB_001::FailureMode { doc /* 上昇中の姿勢・角速度が説明できない形で逸脱し、減衰しない振動や機体の無応答になる（飛行制御の喪失が差し迫った状態）。（誤作動） */ attribute :>> itemName = "上昇中の姿勢・角速度が説明できない形で逸脱し、減衰しない振動や機体の無応答になる（飛行制御の喪失が差し迫った状態）。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-02'> fmx_gnc_02 : SSD_FMM_ORB_001::FailureMode { doc /* 再突入に必須の航法センサ（IMU・TACAN・MSBLS・ADTA など）の冗長が使い切られ、故障許容が恒久的に失われる。（喪失） */ attribute :>> itemName = "再突入に必須の航法センサ（IMU・TACAN・MSBLS・ADTA など）の冗長が使い切られ、故障許容が恒久的に失われる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-03'> fmx_gnc_03 : SSD_FMM_ORB_001::FailureMode { doc /* サーボ弁の不具合で二次差圧が高い状態が続き、ASA または ATVC がそのサーボ弁を切り離して、アクチュエータの制御チャネルが減る。（劣化） */ attribute :>> itemName = "サーボ弁の不具合で二次差圧が高い状態が続き、ASA または ATVC がそのサーボ弁を切り離して、アクチュエータの制御チャネルが減る。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-04'> fmx_gnc_04 : SSD_FMM_ORB_001::FailureMode { doc /* FA MDM または GPC の故障でフライトコントロールチャネルのアクチュエータ指令が無効になり、他の健全なチャネルと力の衝突を起こす。（誤作動） */ attribute :>> itemName = "FA MDM または GPC の故障でフライトコントロールチャネルのアクチュエータ指令が無効になり、他の健全なチャネルと力の衝突を起こす。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-05'> fmx_gnc_05 : SSD_FMM_ORB_001::FailureMode { doc /* ラダー・スピードブレーキの3台の油圧モータのうち2台が故障し、舵面の駆動の速度が下がる。（劣化） */ attribute :>> itemName = "ラダー・スピードブレーキの3台の油圧モータのうち2台が故障し、舵面の駆動の速度が下がる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-06'> fmx_gnc_06 : SSD_FMM_ORB_001::FailureMode { doc /* 3系統の油圧のうち2系統を喪失し、エレボンのアクチュエータに必要な油圧が得られなくなって舵面の速度が下がる。（喪失） */ attribute :>> itemName = "3系統の油圧のうち2系統を喪失し、エレボンのアクチュエータに必要な油圧が得られなくなって舵面の速度が下がる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-07'> fmx_gnc_07 : SSD_FMM_ORB_001::FailureMode { doc /* SSME の TVC 作動器が指令によらずハードオーバー（一方向に固着）し、多数決の切り離しで排除できない。（誤作動） */ attribute :>> itemName = "SSME の TVC 作動器が指令によらずハードオーバー（一方向に固着）し、多数決の切り離しで排除できない。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-08'> fmx_gnc_08 : SSD_FMM_ORB_001::FailureMode { doc /* RHC の3つのチャネルのうち2つが故障し、残る1つの変換器だけで機能する。（劣化） */ attribute :>> itemName = "RHC の3つのチャネルのうち2つが故障し、残る1つの変換器だけで機能する。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-09'> fmx_gnc_09 : SSD_FMM_ORB_001::FailureMode { doc /* ADI の姿勢球が故障して姿勢の基準を示さなくなる。（喪失） */ attribute :>> itemName = "ADI の姿勢球が故障して姿勢の基準を示さなくなる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-10'> fmx_gnc_10 : SSD_FMM_ORB_001::FailureMode { doc /* 較正された HUD（または COAS）が使えなくなり、スタートラッカの故障時の再突入のアラインメントの代替を失う。（喪失） */ attribute :>> itemName = "較正された HUD（または COAS）が使えなくなり、スタートラッカの故障時の再突入のアラインメントの代替を失う。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-11'> fmx_gnc_11 : SSD_FMM_ORB_001::FailureMode { doc /* IMU が BITE を出す・スタンバイへ落ちる・冗長レート故障を起こして使えなくなる。（喪失） */ attribute :>> itemName = "IMU が BITE を出す・スタンバイへ落ちる・冗長レート故障を起こして使えなくなる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-12'> fmx_gnc_12 : SSD_FMM_ORB_001::FailureMode { doc /* TACAN などの航法援助のデータが誤差を持ち、再突入のカルマンフィルタに取り込まれて状態ベクトルを汚染する。（誤作動） */ attribute :>> itemName = "TACAN などの航法援助のデータが誤差を持ち、再突入のカルマンフィルタに取り込まれて状態ベクトルを汚染する。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-13'> fmx_gnc_13 : SSD_FMM_ORB_001::FailureMode { doc /* IMU のジャイロのドリフトの増大や誤った状態ベクトルにより、伝播した状態ベクトルの誤差が許容を超える。（劣化） */ attribute :>> itemName = "IMU のジャイロのドリフトの増大や誤った状態ベクトルにより、伝播した状態ベクトルの誤差が許容を超える。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-GNC-14'> fmx_gnc_14 : SSD_FMM_ORB_001::FailureMode { doc /* GPS の追尾が劣化し、FOM が高い状態や4機未満の衛星の追尾が続いて、取り込む GPS のベクトルが使えなくなる。（劣化） */ attribute :>> itemName = "GPS の追尾が劣化し、FOM が高い状態や4機未満の衛星の追尾が続いて、取り込む GPS のベクトルが使えなくなる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-01'> fmx_rcs_01 : SSD_FMM_ORB_001::FailureMode { doc /* ヘリウムタンクまたはヘリウム系統（leg）から漏れ、ヘリウム圧が下がり続けて推進薬タンクの加圧を失う。（外部漏れ） */ attribute :>> itemName = "ヘリウムタンクまたはヘリウム系統（leg）から漏れ、ヘリウム圧が下がり続けて推進薬タンクの加圧を失う。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-02'> fmx_rcs_02 : SSD_FMM_ORB_001::FailureMode { doc /* 調圧器が開いたまま故障して（Regulator Failed High）、推進薬タンクの圧が上がる。（誤作動） */ attribute :>> itemName = "調圧器が開いたまま故障して（Regulator Failed High）、推進薬タンクの圧が上がる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-03'> fmx_rcs_03 : SSD_FMM_ORB_001::FailureMode { doc /* 調圧器の出力が低下し、流量が増えると推進薬タンクの圧が公称より低くなる。（劣化） */ attribute :>> itemName = "調圧器の出力が低下し、流量が増えると推進薬タンクの圧が公称より低くなる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-04'> fmx_rcs_04 : SSD_FMM_ORB_001::FailureMode { doc /* 主噴射器のヒータがOFFに故障し、噴射器温度が下がる。（喪失） */ attribute :>> itemName = "主噴射器のヒータがOFFに故障し、噴射器温度が下がる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-05'> fmx_rcs_05 : SSD_FMM_ORB_001::FailureMode { doc /* 主噴射器のヒータがONに故障し、噴射器温度が上がり続ける。（誤作動） */ attribute :>> itemName = "主噴射器のヒータがONに故障し、噴射器温度が上がり続ける。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-06'> fmx_rcs_06 : SSD_FMM_ORB_001::FailureMode { doc /* ポッドまたは前部 RCS モジュールのヒータが ON のまま故障し、あるいは A・B 両系を同時に使って過熱する。（誤作動） */ attribute :>> itemName = "ポッドまたは前部 RCS モジュールのヒータが ON のまま故障し、あるいは A・B 両系を同時に使って過熱する。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-07'> fmx_rcs_07 : SSD_FMM_ORB_001::FailureMode { doc /* バーニア噴射器のヒータが不十分または OFF に故障し、噴射器温度が 130°F を下回る。（劣化） */ attribute :>> itemName = "バーニア噴射器のヒータが不十分または OFF に故障し、噴射器温度が 130°F を下回る。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-08'> fmx_rcs_08 : SSD_FMM_ORB_001::FailureMode { doc /* 噴射器が指令を受けても噴かない（fail-off）。（喪失） */ attribute :>> itemName = "噴射器が指令を受けても噴かない（fail-off）。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-09'> fmx_rcs_09 : SSD_FMM_ORB_001::FailureMode { doc /* 噴射器が GPC の ON 指令なしに噴く（fail-on）。（誤作動） */ attribute :>> itemName = "噴射器が GPC の ON 指令なしに噴く（fail-on）。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-10'> fmx_rcs_10 : SSD_FMM_ORB_001::FailureMode { doc /* 噴射器の弁から推進薬が漏れる（fail-leak）。（外部漏れ） */ attribute :>> itemName = "噴射器の弁から推進薬が漏れる（fail-leak）。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-11'> fmx_rcs_11 : SSD_FMM_ORB_001::FailureMode { doc /* 連続噴射の運用限界を超える噴射や低い入口圧の噴射で、噴射器の部品が過熱し、燃焼が不安定になる。（劣化） */ attribute :>> itemName = "連続噴射の運用限界を超える噴射や低い入口圧の噴射で、噴射器の部品が過熱し、燃焼が不安定になる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-12'> fmx_rcs_12 : SSD_FMM_ORB_001::FailureMode { doc /* RM が使うトランスデューサ（Pc・ドライバ出力・噴射器温度）の故障で、ジェットの故障を検知できなくなる。（喪失） */ attribute :>> itemName = "RM が使うトランスデューサ（Pc・ドライバ出力・噴射器温度）の故障で、ジェットの故障を検知できなくなる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-13'> fmx_rcs_13 : SSD_FMM_ORB_001::FailureMode { doc /* MDM の故障などで GPC が RCS の状態情報を失い、健全なジェットを RM が故障または使用不可と宣言して噴射器可用表から外す。（誤作動） */ attribute :>> itemName = "MDM の故障などで GPC が RCS の状態情報を失い、健全なジェットを RM が故障または使用不可と宣言して噴射器可用表から外す。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-14'> fmx_rcs_14 : SSD_FMM_ORB_001::FailureMode { doc /* ポッドの故障ジェット計数が PRI JET FAIL LIM に達し、以後の故障ジェットを自動で選択解除できなくなる。（劣化） */ attribute :>> itemName = "ポッドの故障ジェット計数が PRI JET FAIL LIM に達し、以後の故障ジェットを自動で選択解除できなくなる。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-RCS-15'> fmx_rcs_15 : SSD_FMM_ORB_001::FailureMode { doc /* マニホールドのマイクロスイッチの離散信号の異常で、RM が電源故障またはジレンマを誤って宣言し、あるいは commfault でマニホールドの状態を失う。（誤作動） */ attribute :>> itemName = "マニホールドのマイクロスイッチの離散信号の異常で、RM が電源故障またはジレンマを誤って宣言し、あるいは commfault でマニホールドの状態を失う。"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-01'> fmx_dps_01 : SSD_FMM_ORB_001::FailureMode { doc /* PASS の冗長セット全体の喪失：全 PASS GPC が互いに通信を止める分断、または PASS の共通のソフトウェア致命誤りで4台が同時に quit・halt できない（喪失） */ attribute :>> itemName = "PASS の冗長セット全体の喪失：全 PASS GPC が互いに通信を止める分断、または PASS の共通のソフトウェア致命誤りで4台が同時に quit・halt できない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-02'> fmx_dps_02 : SSD_FMM_ORB_001::FailureMode { doc /* データバス・MDM 経由のデータ経路の喪失：GPC の故障、MDM の I/O エラー、BCE の故障でストリングまたは MDM が使えなくなる（喪失） */ attribute :>> itemName = "データバス・MDM 経由のデータ経路の喪失：GPC の故障、MDM の I/O エラー、BCE の故障でストリングまたは MDM が使えなくなる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-03'> fmx_dps_03 : SSD_FMM_ORB_001::FailureMode { doc /* EIU の喪失（電源の喪失を含む）：対応する SSME が GPC の指令を受けられず、データも返らない（喪失） */ attribute :>> itemName = "EIU の喪失（電源の喪失を含む）：対応する SSME が GPC の指令を受けられず、データも返らない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-04'> fmx_dps_04 : SSD_FMM_ORB_001::FailureMode { doc /* 上昇中の冗長セットの分断：4つの指令を受ける EIU に割り当てた飛行重要バスの指令元が分かれる（誤作動） */ attribute :>> itemName = "上昇中の冗長セットの分断：4つの指令を受ける EIU に割り当てた飛行重要バスの指令元が分かれる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-05'> fmx_dps_05 : SSD_FMM_ORB_001::FailureMode { doc /* EIU の一過性の故障：電源投入リセットによる一時的な指令・データ転送の喪失、または MECO 後の電源断に伴うバイパス（劣化） */ attribute :>> itemName = "EIU の一過性の故障：電源投入リセットによる一時的な指令・データ転送の喪失、または MECO 後の電源断に伴うバイパス"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-06'> fmx_dps_06 : SSD_FMM_ORB_001::FailureMode { doc /* 打上げ MDM のポートの入出力エラー：打上げ前に LF1 または LA1 で入出力エラーが出る（劣化） */ attribute :>> itemName = "打上げ MDM のポートの入出力エラー：打上げ前に LF1 または LA1 で入出力エラーが出る"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-07'> fmx_dps_07 : SSD_FMM_ORB_001::FailureMode { doc /* MDM の喪失：MDM のポートまたは MDM 本体が応答せず、I/O エラーが続く（喪失） */ attribute :>> itemName = "MDM の喪失：MDM のポートまたは MDM 本体が応答せず、I/O エラーが続く"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-08'> fmx_dps_08 : SSD_FMM_ORB_001::FailureMode { doc /* ポートモードによる回復の代償：ポート1が故障した MDM を回復するため、ストリングの別の MDM を失う（劣化） */ attribute :>> itemName = "ポートモードによる回復の代償：ポート1が故障した MDM を回復するため、ストリングの別の MDM を失う"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-09'> fmx_dps_09 : SSD_FMM_ORB_001::FailureMode { doc /* MDM の一過性の入出力エラー：1周期だけ MDM の出力が打ち切られる（誤作動） */ attribute :>> itemName = "MDM の一過性の入出力エラー：1周期だけ MDM の出力が打ち切られる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-10'> fmx_dps_10 : SSD_FMM_ORB_001::FailureMode { doc /* GPC の fail-to-sync：冗長セットの GPC が同期点を満たさず、動き続けて誤った指令を出しうる（誤作動） */ attribute :>> itemName = "GPC の fail-to-sync：冗長セットの GPC が同期点を満たさず、動き続けて誤った指令を出しうる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-11'> fmx_dps_11 : SSD_FMM_ORB_001::FailureMode { doc /* アビオニクスベイの冷却喪失による GPC の過熱：ベイのファン2台が故障する（喪失） */ attribute :>> itemName = "アビオニクスベイの冷却喪失による GPC の過熱：ベイのファン2台が故障する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-12'> fmx_dps_12 : SSD_FMM_ORB_001::FailureMode { doc /* GPC の記憶の誤りの蓄積：ソフト誤りが増え続ける、または電源を切った間の誤りが二重ビット誤りになる（劣化） */ attribute :>> itemName = "GPC の記憶の誤りの蓄積：ソフト誤りが増え続ける、または電源を切った間の誤りが二重ビット誤りになる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-13'> fmx_dps_13 : SSD_FMM_ORB_001::FailureMode { doc /* IDP への GPC の駆動の喪失：IDP が GPC に呼び出されなくなり DPS 表示を失う（IDP の故障を含む）（喪失） */ attribute :>> itemName = "IDP への GPC の駆動の喪失：IDP が GPC に呼び出されなくなり DPS 表示を失う（IDP の故障を含む）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-14'> fmx_dps_14 : SSD_FMM_ORB_001::FailureMode { doc /* MDU と IDP の通信の喪失：MDU が選択中の IDP との通信を失い、自動でポートを切り替える。両ポートを失うと自律モードになる（劣化） */ attribute :>> itemName = "MDU と IDP の通信の喪失：MDU が選択中の IDP との通信を失い、自動でポートを切り替える。両ポートを失うと自律モードになる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-15'> fmx_dps_15 : SSD_FMM_ORB_001::FailureMode { doc /* キーボードの喪失：二重接点のキーの故障、またはキーボード本体の故障（喪失） */ attribute :>> itemName = "キーボードの喪失：二重接点のキーの故障、またはキーボード本体の故障"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-16'> fmx_dps_16 : SSD_FMM_ORB_001::FailureMode { doc /* MTU の発振器の周波数のずれ：2つの発振器の周波数差が出て、MTU BITE ビット4が立つ（劣化） */ attribute :>> itemName = "MTU の発振器の周波数のずれ：2つの発振器の周波数差が出て、MTU BITE ビット4が立つ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-17'> fmx_dps_17 : SSD_FMM_ORB_001::FailureMode { doc /* MTU の時刻源の喪失：累算器または MTU の電子部品が故障して GPC が MTU の時刻を使えなくなる（喪失） */ attribute :>> itemName = "MTU の時刻源の喪失：累算器または MTU の電子部品が故障して GPC が MTU の時刻を使えなくなる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-18'> fmx_dps_18 : SSD_FMM_ORB_001::FailureMode { doc /* GMT の誤差：MTU または GPC の GMT が真の GMT から 100 ms を超えてずれる（誤作動） */ attribute :>> itemName = "GMT の誤差：MTU または GPC の GMT が真の GMT から 100 ms を超えてずれる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-19'> fmx_dps_19 : SSD_FMM_ORB_001::FailureMode { doc /* DPS の冗長度の基準の喪失：回復不能と宣言した GPC が2台に達する、または必要なデータ経路・軌道離脱用ソフトウェアの源を失う（喪失） */ attribute :>> itemName = "DPS の冗長度の基準の喪失：回復不能と宣言した GPC が2台に達する、または必要なデータ経路・軌道離脱用ソフトウェアの源を失う"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-20'> fmx_dps_20 : SSD_FMM_ORB_001::FailureMode { doc /* GPC・IDP・MMU の多重の喪失：GPC 2台、IDP 2台、または MMU 2台を失う（喪失） */ attribute :>> itemName = "GPC・IDP・MMU の多重の喪失：GPC 2台、IDP 2台、または MMU 2台を失う"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-DPS-21'> fmx_dps_21 : SSD_FMM_ORB_001::FailureMode { doc /* 回復不能な GPC：IPL に応答しない、原因不明で2回以上故障する、または FC・ICC の BCE の受信器が故障する（喪失） */ attribute :>> itemName = "回復不能な GPC：IPL に応答しない、原因不明で2回以上故障する、または FC・ICC の BCE の受信器が故障する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CW-01'> fmx_cw_01 : SSD_FMM_ORB_001::FailureMode { doc /* C/W 電子ユニットの電源 A または B の喪失：電源 A を失うと主 C/W を失い、B を失うと B/U C&W 灯が点灯し続ける（喪失） */ attribute :>> itemName = "C/W 電子ユニットの電源 A または B の喪失：電源 A を失うと主 C/W を失い、B を失うと B/U C&W 灯が点灯し続ける"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CW-02'> fmx_cw_02 : SSD_FMM_ORB_001::FailureMode { doc /* クラス1の急減圧の警報（クラクソン）が作動しない：dP/dT の設定点に達しても警報が出ない（誤作動） */ attribute :>> itemName = "クラス1の急減圧の警報（クラクソン）が作動しない：dP/dT の設定点に達しても警報が出ない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CW-03'> fmx_cw_03 : SSD_FMM_ORB_001::FailureMode { doc /* FDA の抑止によるアラート・限界表示の喪失：FDA が抑止され、アラート（クラス3）、B/U C&W、クラス0の矢印の警報が出ない（喪失） */ attribute :>> itemName = "FDA の抑止によるアラート・限界表示の喪失：FDA が抑止され、アラート（クラス3）、B/U C&W、クラス0の矢印の警報が出ない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CW-04'> fmx_cw_04 : SSD_FMM_ORB_001::FailureMode { doc /* 迷惑アラート：限界外の状態が続くパラメータが、故障メッセージと MASTER ALARM を絶え間なく出す（誤作動） */ attribute :>> itemName = "迷惑アラート：限界外の状態が続くパラメータが、故障メッセージと MASTER ALARM を絶え間なく出す"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-01'> fmx_ct_01 : SSD_FMM_ORB_001::FailureMode { doc /* 地上との全音声の喪失：A/G 1・2 と UHF のどの音声源も使えない（喪失） */ attribute :>> itemName = "地上との全音声の喪失：A/G 1・2 と UHF のどの音声源も使えない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-02'> fmx_ct_02 : SSD_FMM_ORB_001::FailureMode { doc /* 機上の機器によらない通信の喪失：地上局・衛星の問題、アンテナの遮蔽、除外域（ZOE）、LOS（劣化） */ attribute :>> itemName = "機上の機器によらない通信の喪失：地上局・衛星の問題、アンテナの遮蔽、除外域（ZOE）、LOS"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-03'> fmx_ct_03 : SSD_FMM_ORB_001::FailureMode { doc /* ACCU の喪失：A/G 1・A/G 2・A/A の2方向音声が使えない（喪失） */ attribute :>> itemName = "ACCU の喪失：A/G 1・A/G 2・A/A の2方向音声が使えない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-04'> fmx_ct_04 : SSD_FMM_ORB_001::FailureMode { doc /* ATU の喪失：乗員局でインターコムや空地ループが使えない（喪失） */ attribute :>> itemName = "ATU の喪失：乗員局でインターコムや空地ループが使えない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-05'> fmx_ct_05 : SSD_FMM_ORB_001::FailureMode { doc /* 音声系の電源・設定の誤作動：AUD CTR の給電や ACCU の設定データの故障で音声ループの構成が不定になる（誤作動） */ attribute :>> itemName = "音声系の電源・設定の誤作動：AUD CTR の給電や ACCU の設定データの故障で音声ループの構成が不定になる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-06'> fmx_ct_06 : SSD_FMM_ORB_001::FailureMode { doc /* PCMMU の喪失：テレメトリの整形と乗員表示用データの供給が止まる（喪失） */ attribute :>> itemName = "PCMMU の喪失：テレメトリの整形と乗員表示用データの供給が止まる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-07'> fmx_ct_07 : SSD_FMM_ORB_001::FailureMode { doc /* OI MDM・DSC の喪失：一部の計測値が失われる（劣化） */ attribute :>> itemName = "OI MDM・DSC の喪失：一部の計測値が失われる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-08'> fmx_ct_08 : SSD_FMM_ORB_001::FailureMode { doc /* PI の不用意な作動：S帯ペイロード系が S帯 PM と干渉する（誤作動） */ attribute :>> itemName = "PI の不用意な作動：S帯ペイロード系が S帯 PM と干渉する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-09'> fmx_ct_09 : SSD_FMM_ORB_001::FailureMode { doc /* 記録器の喪失：運用データと音声の記録が失われる（喪失） */ attribute :>> itemName = "記録器の喪失：運用データと音声の記録が失われる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-10'> fmx_ct_10 : SSD_FMM_ORB_001::FailureMode { doc /* PCMMU の2台の喪失：実時間・記録テレメトリと乗員表示用データの大幅な喪失（喪失） */ attribute :>> itemName = "PCMMU の2台の喪失：実時間・記録テレメトリと乗員表示用データの大幅な喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-11'> fmx_ct_11 : SSD_FMM_ORB_001::FailureMode { doc /* ACCU の2台の喪失：ACCU バイパス IFM に頼る限界（喪失） */ attribute :>> itemName = "ACCU の2台の喪失：ACCU バイパス IFM に頼る限界"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-12'> fmx_ct_12 : SSD_FMM_ORB_001::FailureMode { doc /* 全音声の喪失：ACCU バイパスと OCA でも音声が戻らない（喪失） */ attribute :>> itemName = "全音声の喪失：ACCU バイパスと OCA でも音声が戻らない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-13'> fmx_ct_13 : SSD_FMM_ORB_001::FailureMode { doc /* コマンドまたはテレメトリの全喪失：Go/No-Go 基準の限界（喪失） */ attribute :>> itemName = "コマンドまたはテレメトリの全喪失：Go/No-Go 基準の限界"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-14'> fmx_ct_14 : SSD_FMM_ORB_001::FailureMode { doc /* トランスポンダの喪失：S帯のコマンド・音声・テレメトリが通らない（喪失） */ attribute :>> itemName = "トランスポンダの喪失：S帯のコマンド・音声・テレメトリが通らない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-15'> fmx_ct_15 : SSD_FMM_ORB_001::FailureMode { doc /* NSP の故障：S帯のダウンリンク音声の雑音、アップリンク・ダウンリンクの喪失（劣化） */ attribute :>> itemName = "NSP の故障：S帯のダウンリンク音声の雑音、アップリンク・ダウンリンクの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-16'> fmx_ct_16 : SSD_FMM_ORB_001::FailureMode { doc /* クワッドアンテナの不安定：フォワードリンクの途切れと断続的な喪失（劣化） */ attribute :>> itemName = "クワッドアンテナの不安定：フォワードリンクの途切れと断続的な喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-17'> fmx_ct_17 : SSD_FMM_ORB_001::FailureMode { doc /* 電力増幅器の出力低下または未起動：高電力モードのダウンリンクが弱い（劣化） */ attribute :>> itemName = "電力増幅器の出力低下または未起動：高電力モードのダウンリンクが弱い"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-18'> fmx_ct_18 : SSD_FMM_ORB_001::FailureMode { doc /* UHF の喪失：EVA 通信とガード周波数・上昇進入の代替の音声が使えない（喪失） */ attribute :>> itemName = "UHF の喪失：EVA 通信とガード周波数・上昇進入の代替の音声が使えない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-19'> fmx_ct_19 : SSD_FMM_ORB_001::FailureMode { doc /* UHF の周波数・電力増幅・スケルチの故障：送信または受信だけを失う（劣化） */ attribute :>> itemName = "UHF の周波数・電力増幅・スケルチの故障：送信または受信だけを失う"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CT-20'> fmx_ct_20 : SSD_FMM_ORB_001::FailureMode { doc /* EVA の UHF（SSOR）通信の喪失：EV 乗員との2方向通信が成り立たない（喪失） */ attribute :>> itemName = "EVA の UHF（SSOR）通信の喪失：EV 乗員との2方向通信が成り立たない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-01'> fmx_eva_01 : SSD_FMM_ORB_001::FailureMode { doc /* EMU の服圧の漏れ：服圧の低下（外部漏れ） */ attribute :>> itemName = "EMU の服圧の漏れ：服圧の低下"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-02'> fmx_eva_02 : SSD_FMM_ORB_001::FailureMode { doc /* EMU の消耗品（O2・電力・LiOH・水）の枯渇：7時間の EVA の予備に食い込む（喪失） */ attribute :>> itemName = "EMU の消耗品（O2・電力・LiOH・水）の枯渇：7時間の EVA の予備に食い込む"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-03'> fmx_eva_03 : SSD_FMM_ORB_001::FailureMode { doc /* エアロックのハッチの漏れ：エアロック圧の低下（外部漏れ） */ attribute :>> itemName = "エアロックのハッチの漏れ：エアロック圧の低下"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-04'> fmx_eva_04 : SSD_FMM_ORB_001::FailureMode { doc /* EMU の PPRV が閉じたまま開かない：過加圧に対する保護の喪失（誤作動） */ attribute :>> itemName = "EMU の PPRV が閉じたまま開かない：過加圧に対する保護の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-05'> fmx_eva_05 : SSD_FMM_ORB_001::FailureMode { doc /* 脱窒素の不足：減圧症（劣化） */ attribute :>> itemName = "脱窒素の不足：減圧症"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-06'> fmx_eva_06 : SSD_FMM_ORB_001::FailureMode { doc /* 均圧弁・減圧弁の流量不良：エアロックの減圧が遅い、または減圧できない（劣化） */ attribute :>> itemName = "均圧弁・減圧弁の流量不良：エアロックの減圧が遅い、または減圧できない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-07'> fmx_eva_07 : SSD_FMM_ORB_001::FailureMode { doc /* EMU の化学汚染：ヒドラジン・アンモニア・酸化剤の付着（誤作動） */ attribute :>> itemName = "EMU の化学汚染：ヒドラジン・アンモニア・酸化剤の付着"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-08'> fmx_eva_08 : SSD_FMM_ORB_001::FailureMode { doc /* SAFER の喪失または不調：離れた EVA 乗員の自力の帰還ができない（喪失） */ attribute :>> itemName = "SAFER の喪失または不調：離れた EVA 乗員の自力の帰還ができない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-09'> fmx_eva_09 : SSD_FMM_ORB_001::FailureMode { doc /* RCS ジェットの誤噴射・漏れ：EVA 乗員が噴流を浴びる（誤作動） */ attribute :>> itemName = "RCS ジェットの誤噴射・漏れ：EVA 乗員が噴流を浴びる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-10'> fmx_eva_10 : SSD_FMM_ORB_001::FailureMode { doc /* EMU の電池の喪失：電力を供給できない（喪失） */ attribute :>> itemName = "EMU の電池の喪失：電力を供給できない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-11'> fmx_eva_11 : SSD_FMM_ORB_001::FailureMode { doc /* 消耗品の残りが 30 分：EVA を打ち切る限界（喪失） */ attribute :>> itemName = "消耗品の残りが 30 分：EVA を打ち切る限界"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-12'> fmx_eva_12 : SSD_FMM_ORB_001::FailureMode { doc /* 重い減圧症（カフ区分4）：ABORT EVA の限界（劣化） */ attribute :>> itemName = "重い減圧症（カフ区分4）：ABORT EVA の限界"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-13'> fmx_eva_13 : SSD_FMM_ORB_001::FailureMode { doc /* 服圧の喪失と乗員の離隔：エアロックに入る時間が重要になる（外部漏れ） */ attribute :>> itemName = "服圧の喪失と乗員の離隔：エアロックに入る時間が重要になる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-14'> fmx_eva_14 : SSD_FMM_ORB_001::FailureMode { doc /* EVA 中の2方向通信の喪失：TERMINATE EVA の限界（喪失） */ attribute :>> itemName = "EVA 中の2方向通信の喪失：TERMINATE EVA の限界"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-15'> fmx_eva_15 : SSD_FMM_ORB_001::FailureMode { doc /* テザーの外れ・工具の浮遊：乗員の漂流と機体の損傷（喪失） */ attribute :>> itemName = "テザーの外れ・工具の浮遊：乗員の漂流と機体の損傷"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-16'> fmx_eva_16 : SSD_FMM_ORB_001::FailureMode { doc /* TSA のラッチが開かない：収納した工具が取り出せない（劣化） */ attribute :>> itemName = "TSA のラッチが開かない：収納した工具が取り出せない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-17'> fmx_eva_17 : SSD_FMM_ORB_001::FailureMode { doc /* PGT の異常：電池の温度・電圧、校正失敗、過電流など（誤作動） */ attribute :>> itemName = "PGT の異常：電池の温度・電圧、校正失敗、過電流など"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EVA-18'> fmx_eva_18 : SSD_FMM_ORB_001::FailureMode { doc /* RMS による EMU への過大荷重：PLSS の損傷（誤作動） */ attribute :>> itemName = "RMS による EMU への過大荷重：PLSS の損傷"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-01'> fmx_crew_01 : SSD_FMM_ORB_001::FailureMode { doc /* 宇宙酔い（SMS）による乗員の効率の低下（劣化） */ attribute :>> itemName = "宇宙酔い（SMS）による乗員の効率の低下"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-ESC-01'> fmx_crew_esc_01 : SSD_FMM_ORB_001::FailureMode { doc /* ベイルアウトで、キャビンを外気圧まで減圧する前に側面ハッチを投棄する（誤作動） */ attribute :>> itemName = "ベイルアウトで、キャビンを外気圧まで減圧する前に側面ハッチを投棄する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-ESC-02'> fmx_crew_esc_02 : SSD_FMM_ORB_001::FailureMode { doc /* 着陸後の脱出で火工品ベント弁を作動させる（誤作動） */ attribute :>> itemName = "着陸後の脱出で火工品ベント弁を作動させる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-ESC-03'> fmx_crew_esc_03 : SSD_FMM_ORB_001::FailureMode { doc /* 脱出ポールが完全に伸びない（喪失） */ attribute :>> itemName = "脱出ポールが完全に伸びない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-ESC-04'> fmx_crew_esc_04 : SSD_FMM_ORB_001::FailureMode { doc /* 側面ハッチから脱出できない（喪失） */ attribute :>> itemName = "側面ハッチから脱出できない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-HAB-01'> fmx_crew_hab_01 : SSD_FMM_ORB_001::FailureMode { doc /* サイクルエルゴメータの締結具の破損（喪失） */ attribute :>> itemName = "サイクルエルゴメータの締結具の破損"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-HAB-02'> fmx_crew_hab_02 : SSD_FMM_ORB_001::FailureMode { doc /* 湿ったごみの区画（Volume F）の排気ができない（喪失） */ attribute :>> itemName = "湿ったごみの区画（Volume F）の排気ができない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-HAB-03'> fmx_crew_hab_03 : SSD_FMM_ORB_001::FailureMode { doc /* 睡眠区画の騒音が基準を超える（劣化） */ attribute :>> itemName = "睡眠区画の騒音が基準を超える"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-LTG-01'> fmx_crew_ltg_01 : SSD_FMM_ORB_001::FailureMode { doc /* ペイロードベイの投光照明が点灯しない（喪失） */ attribute :>> itemName = "ペイロードベイの投光照明が点灯しない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-LTG-02'> fmx_crew_ltg_02 : SSD_FMM_ORB_001::FailureMode { doc /* メタルハライド灯の早い故障（劣化） */ attribute :>> itemName = "メタルハライド灯の早い故障"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-LTG-03'> fmx_crew_ltg_03 : SSD_FMM_ORB_001::FailureMode { doc /* 通常の乗員室の照明の喪失（喪失） */ attribute :>> itemName = "通常の乗員室の照明の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-LTG-04'> fmx_crew_ltg_04 : SSD_FMM_ORB_001::FailureMode { doc /* 数字表示の灯の断線（表示の欠け）（劣化） */ attribute :>> itemName = "数字表示の灯の断線（表示の欠け）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-MED-01'> fmx_crew_med_01 : SSD_FMM_ORB_001::FailureMode { doc /* 生体計測系（OBS）の心電図信号の喪失（喪失） */ attribute :>> itemName = "生体計測系（OBS）の心電図信号の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-MED-02'> fmx_crew_med_02 : SSD_FMM_ORB_001::FailureMode { doc /* TEPC（能動の放射線計）が動かない（喪失） */ attribute :>> itemName = "TEPC（能動の放射線計）が動かない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-MED-03'> fmx_crew_med_03 : SSD_FMM_ORB_001::FailureMode { doc /* CSA-CP のセンサの規格外れ（劣化） */ attribute :>> itemName = "CSA-CP のセンサの規格外れ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-OPS-01'> fmx_crew_ops_01 : SSD_FMM_ORB_001::FailureMode { doc /* LES の O2 供給系2系統のうち1系統の喪失（喪失） */ attribute :>> itemName = "LES の O2 供給系2系統のうち1系統の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-OPS-02'> fmx_crew_ops_02 : SSD_FMM_ORB_001::FailureMode { doc /* LES の O2 供給系の2系統とも喪失（喪失） */ attribute :>> itemName = "LES の O2 供給系の2系統とも喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-OPS-03'> fmx_crew_ops_03 : SSD_FMM_ORB_001::FailureMode { doc /* 居住区画の24時間平均の騒音が 74 dBA 以上（劣化） */ attribute :>> itemName = "居住区画の24時間平均の騒音が 74 dBA 以上"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-OPS-04'> fmx_crew_ops_04 : SSD_FMM_ORB_001::FailureMode { doc /* 軌道上で受け入れられる治療ができない傷病（喪失） */ attribute :>> itemName = "軌道上で受け入れられる治療ができない傷病"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-STW-01'> fmx_crew_stw_01 : SSD_FMM_ORB_001::FailureMode { doc /* モジュラーロッカーの扉が位置ずれで閉まらない・ラッチできない（劣化） */ attribute :>> itemName = "モジュラーロッカーの扉が位置ずれで閉まらない・ラッチできない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-STW-02'> fmx_crew_stw_02 : SSD_FMM_ORB_001::FailureMode { doc /* 突入・着陸でロッカーのサムラッチが締まっていない（誤作動） */ attribute :>> itemName = "突入・着陸でロッカーのサムラッチが締まっていない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-CREW-STW-03'> fmx_crew_stw_03 : SSD_FMM_ORB_001::FailureMode { doc /* 収納品の固定の漏れ（STS-65 でスペースラブの床に落ちていた消火器）（誤作動） */ attribute :>> itemName = "収納品の固定の漏れ（STS-65 でスペースラブの床に落ちていた消火器）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-01'> fmx_pls_01 : SSD_FMM_ORB_001::FailureMode { doc /* MCIU が自己試験に失敗する（喪失） */ attribute :>> itemName = "MCIU が自己試験に失敗する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-02'> fmx_pls_02 : SSD_FMM_ORB_001::FailureMode { doc /* RMS のアームを台座に収められない（喪失） */ attribute :>> itemName = "RMS のアームを台座に収められない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-03'> fmx_pls_03 : SSD_FMM_ORB_001::FailureMode { doc /* APDS のダンパが固着してリングの引込みが止まる（劣化） */ attribute :>> itemName = "APDS のダンパが固着してリングの引込みが止まる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-04'> fmx_pls_04 : SSD_FMM_ORB_001::FailureMode { doc /* 構造フックが開かない（アンドッキングの不能）（喪失） */ attribute :>> itemName = "構造フックが開かない（アンドッキングの不能）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-05'> fmx_pls_05 : SSD_FMM_ORB_001::FailureMode { doc /* センサ接点 1つの地絡による APDS 電子系の誤動作（誤作動） */ attribute :>> itemName = "センサ接点 1つの地絡による APDS 電子系の誤動作"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-06'> fmx_pls_06 : SSD_FMM_ORB_001::FailureMode { doc /* 捕獲センサの故障で捕獲が確認できない（誤作動） */ attribute :>> itemName = "捕獲センサの故障で捕獲が確認できない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-07'> fmx_pls_07 : SSD_FMM_ORB_001::FailureMode { doc /* PRLA が解放またはラッチしない（喪失） */ attribute :>> itemName = "PRLA が解放またはラッチしない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-08'> fmx_pls_08 : SSD_FMM_ORB_001::FailureMode { doc /* 解放側マイクロスイッチ「A」の故障でラッチを過駆動する（誤作動） */ attribute :>> itemName = "解放側マイクロスイッチ「A」の故障でラッチを過駆動する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-09'> fmx_pls_09 : SSD_FMM_ORB_001::FailureMode { doc /* PRLA の電動機の片方の喪失（劣化） */ attribute :>> itemName = "PRLA の電動機の片方の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-PLS-10'> fmx_pls_10 : SSD_FMM_ORB_001::FailureMode { doc /* ラッチを閉じるとき、トラニオンが範囲外でモータが失速する（誤作動） */ attribute :>> itemName = "ラッチを閉じるとき、トラニオンが範囲外でモータが失速する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-01'> fmx_apu_01 : SSD_FMM_ORB_001::FailureMode { doc /* 油圧1系統の喪失（APU の停止、ポンプの劣化、配管の閉塞、漏れ）（喪失） */ attribute :>> itemName = "油圧1系統の喪失（APU の停止、ポンプの劣化、配管の閉塞、漏れ）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-02'> fmx_apu_02 : SSD_FMM_ORB_001::FailureMode { doc /* APU の燃料（ヒドラジン）・窒素の漏れ（外部漏れ） */ attribute :>> itemName = "APU の燃料（ヒドラジン）・窒素の漏れ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-03'> fmx_apu_03 : SSD_FMM_ORB_001::FailureMode { doc /* 切替弁の故障で舵面を動かす油圧系が選ばれない（優先レート制限の混乱を含む）（誤作動） */ attribute :>> itemName = "切替弁の故障で舵面を動かす油圧系が選ばれない（優先レート制限の混乱を含む）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-04'> fmx_apu_04 : SSD_FMM_ORB_001::FailureMode { doc /* 断熱材に残った水の凍結による APU の燃料配管の閉塞（喪失） */ attribute :>> itemName = "断熱材に残った水の凍結による APU の燃料配管の閉塞"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-05'> fmx_apu_05 : SSD_FMM_ORB_001::FailureMode { doc /* APU が高速側（113%）へ移行する（誤作動） */ attribute :>> itemName = "APU が高速側（113%）へ移行する"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-06'> fmx_apu_06 : SSD_FMM_ORB_001::FailureMode { doc /* 磁気ピックアップ（MPU）の故障による APU の誤った不足速度停止（誤作動） */ attribute :>> itemName = "磁気ピックアップ（MPU）の故障による APU の誤った不足速度停止"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-07'> fmx_apu_07 : SSD_FMM_ORB_001::FailureMode { doc /* 過速度による APU の自動停止と再始動の禁止（喪失） */ attribute :>> itemName = "過速度による APU の自動停止と再始動の禁止"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-08'> fmx_apu_08 : SSD_FMM_ORB_001::FailureMode { doc /* 自動停止の抑止中は過速度・不足速度の保護を失う（劣化） */ attribute :>> itemName = "自動停止の抑止中は過速度・不足速度の保護を失う"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-09'> fmx_apu_09 : SSD_FMM_ORB_001::FailureMode { doc /* ガス発生器ヒータの喪失（喪失） */ attribute :>> itemName = "ガス発生器ヒータの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-10'> fmx_apu_10 : SSD_FMM_ORB_001::FailureMode { doc /* 水噴霧ボイラの凍結（予め入れた水の蒸発後、能動冷却の開始前）（喪失） */ attribute :>> itemName = "水噴霧ボイラの凍結（予め入れた水の蒸発後、能動冷却の開始前）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-11'> fmx_apu_11 : SSD_FMM_ORB_001::FailureMode { doc /* ボイラの水・窒素の漏れ（外部漏れ） */ attribute :>> itemName = "ボイラの水・窒素の漏れ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-12'> fmx_apu_12 : SSD_FMM_ORB_001::FailureMode { doc /* 制御器の故障・センサの故障による過剰な噴霧（誤作動） */ attribute :>> itemName = "制御器の故障・センサの故障による過剰な噴霧"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-APU-13'> fmx_apu_13 : SSD_FMM_ORB_001::FailureMode { doc /* 蒸気ベントヒータの喪失による蒸気ベントの氷詰まり（喪失） */ attribute :>> itemName = "蒸気ベントヒータの喪失による蒸気ベントの氷詰まり"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-01'> fmx_mech_01 : SSD_FMM_ORB_001::FailureMode { doc /* 脚の展開の失敗（油圧系1の圧力の喪失、近接ボックスの喪失）（喪失） */ attribute :>> itemName = "脚の展開の失敗（油圧系1の圧力の喪失、近接ボックスの喪失）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-02'> fmx_mech_02 : SSD_FMM_ORB_001::FailureMode { doc /* ドラッグシュートの不用意な展開（誤作動） */ attribute :>> itemName = "ドラッグシュートの不用意な展開"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-03'> fmx_mech_03 : SSD_FMM_ORB_001::FailureMode { doc /* 2モータ駆動のうち1つのモータの喪失（劣化） */ attribute :>> itemName = "2モータ駆動のうち1つのモータの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-04'> fmx_mech_04 : SSD_FMM_ORB_001::FailureMode { doc /* MCA の給電の喪失などによる両モータの喪失（喪失） */ attribute :>> itemName = "MCA の給電の喪失などによる両モータの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-05'> fmx_mech_05 : SSD_FMM_ORB_001::FailureMode { doc /* 機構のジャム・固着（アクチュエータの停止）（劣化） */ attribute :>> itemName = "機構のジャム・固着（アクチュエータの停止）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-06'> fmx_mech_06 : SSD_FMM_ORB_001::FailureMode { doc /* マイクロスイッチ・リミットスイッチの故障による誤った状態表示（誤作動） */ attribute :>> itemName = "マイクロスイッチ・リミットスイッチの故障による誤った状態表示"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-07'> fmx_mech_07 : SSD_FMM_ORB_001::FailureMode { doc /* 複数のラッチギャングが外れたままになる（喪失） */ attribute :>> itemName = "複数のラッチギャングが外れたままになる"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-08'> fmx_mech_08 : SSD_FMM_ORB_001::FailureMode { doc /* 脚の展開系（油圧・火工品）の2つの喪失（喪失） */ attribute :>> itemName = "脚の展開系（油圧・火工品）の2つの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-09'> fmx_mech_09 : SSD_FMM_ORB_001::FailureMode { doc /* ET 扉の閉鎖の喪失（喪失） */ attribute :>> itemName = "ET 扉の閉鎖の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MECH-10'> fmx_mech_10 : SSD_FMM_ORB_001::FailureMode { doc /* 制動・前輪操向による方向制御の劣化（意図しない制動圧、ブレーキの損傷）（劣化） */ attribute :>> itemName = "制動・前輪操向による方向制御の劣化（意図しない制動圧、ブレーキの損傷）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-01'> fmx_str_01 : SSD_FMM_ORB_001::FailureMode { doc /* 打上げ機の構造の破壊（オービタと ET・SRB）（喪失） */ attribute :>> itemName = "打上げ機の構造の破壊（オービタと ET・SRB）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-02'> fmx_str_02 : SSD_FMM_ORB_001::FailureMode { doc /* 軌道デブリ・微小隕石の衝突による外板・窓・ラジエータの損傷（劣化） */ attribute :>> itemName = "軌道デブリ・微小隕石の衝突による外板・窓・ラジエータの損傷"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-03'> fmx_str_03 : SSD_FMM_ORB_001::FailureMode { doc /* 窓の圧力ペイン・冗長ペインの破損（喪失） */ attribute :>> itemName = "窓の圧力ペイン・冗長ペインの破損"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-04'> fmx_str_04 : SSD_FMM_ORB_001::FailureMode { doc /* 圧力殻・貫通部・窓シールからの客室の漏れ（外部漏れ） */ attribute :>> itemName = "圧力殻・貫通部・窓シールからの客室の漏れ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-05'> fmx_str_05 : SSD_FMM_ORB_001::FailureMode { doc /* 窓の外側板・熱ペインの衝突損傷（劣化） */ attribute :>> itemName = "窓の外側板・熱ペインの衝突損傷"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-06'> fmx_str_06 : SSD_FMM_ORB_001::FailureMode { doc /* 熱変形によるペイロードベイドアと後部隔壁の干渉（誤作動） */ attribute :>> itemName = "熱変形によるペイロードベイドアと後部隔壁の干渉"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-07'> fmx_str_07 : SSD_FMM_ORB_001::FailureMode { doc /* シルのロンジロンの熱ずれ（予測との差）（劣化） */ attribute :>> itemName = "シルのロンジロンの熱ずれ（予測との差）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-08'> fmx_str_08 : SSD_FMM_ORB_001::FailureMode { doc /* ラッチギャングが外れたままの再突入でのドアの荷重分担の喪失（劣化） */ attribute :>> itemName = "ラッチギャングが外れたままの再突入でのドアの荷重分担の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-09'> fmx_str_09 : SSD_FMM_ORB_001::FailureMode { doc /* 翼前縁桁の溶け破り（前縁の RCC パネルの破れ）（喪失） */ attribute :>> itemName = "翼前縁桁の溶け破り（前縁の RCC パネルの破れ）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-10'> fmx_str_10 : SSD_FMM_ORB_001::FailureMode { doc /* ボディフラップのアクチュエータの摩耗（劣化） */ attribute :>> itemName = "ボディフラップのアクチュエータの摩耗"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-STR-11'> fmx_str_11 : SSD_FMM_ORB_001::FailureMode { doc /* ラダー/スピードブレーキとボディフラップのアクチュエータの腐食（劣化） */ attribute :>> itemName = "ラダー/スピードブレーキとボディフラップのアクチュエータの腐食"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-01'> fmx_eps_01 : SSD_FMM_ORB_001::FailureMode { doc /* 過電圧・過負荷によるインバータの自動切り離し（AUTO TRIP）（誤作動） */ attribute :>> itemName = "過電圧・過負荷によるインバータの自動切り離し（AUTO TRIP）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-02'> fmx_eps_02 : SSD_FMM_ORB_001::FailureMode { doc /* 上昇中の AC バスセンサの誤った切り離しによる SSME コントローラの喪失（誤作動） */ attribute :>> itemName = "上昇中の AC バスセンサの誤った切り離しによる SSME コントローラの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-03'> fmx_eps_03 : SSD_FMM_ORB_001::FailureMode { doc /* AC バス（インバータ）の喪失（喪失） */ attribute :>> itemName = "AC バス（インバータ）の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-04'> fmx_eps_04 : SSD_FMM_ORB_001::FailureMode { doc /* モータ制御組立（MCA）の交流給電の喪失（喪失） */ attribute :>> itemName = "モータ制御組立（MCA）の交流給電の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-05'> fmx_eps_05 : SSD_FMM_ORB_001::FailureMode { doc /* 主バスの短絡（誤作動） */ attribute :>> itemName = "主バスの短絡"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-06'> fmx_eps_06 : SSD_FMM_ORB_001::FailureMode { doc /* 主バスの喪失（喪失） */ attribute :>> itemName = "主バスの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-07'> fmx_eps_07 : SSD_FMM_ORB_001::FailureMode { doc /* 遠隔電力制御器（RPC）・制御バスの故障による負荷の喪失（誤作動） */ attribute :>> itemName = "遠隔電力制御器（RPC）・制御バスの故障による負荷の喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-EPS-08'> fmx_eps_08 : SSD_FMM_ORB_001::FailureMode { doc /* 短絡したバスへの不用意なバスタイ（誤作動） */ attribute :>> itemName = "短絡したバスへの不用意なバスタイ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MPS-01'> fmx_mps_01 : SSD_FMM_ORB_001::FailureMode { doc /* SSME の停止（エンジン故障）（喪失） */ attribute :>> itemName = "SSME の停止（エンジン故障）"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MPS-02'> fmx_mps_02 : SSD_FMM_ORB_001::FailureMode { doc /* エンジン制御器のデータ経路・指令経路の故障（誤作動） */ attribute :>> itemName = "エンジン制御器のデータ経路・指令経路の故障"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MPS-03'> fmx_mps_03 : SSD_FMM_ORB_001::FailureMode { doc /* エンジン弁の油圧ロックアップ（誤作動） */ attribute :>> itemName = "エンジン弁の油圧ロックアップ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MPS-04'> fmx_mps_04 : SSD_FMM_ORB_001::FailureMode { doc /* 2つの油圧系の喪失によるジンバルの喪失（喪失） */ attribute :>> itemName = "2つの油圧系の喪失によるジンバルの喪失"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MPS-05'> fmx_mps_05 : SSD_FMM_ORB_001::FailureMode { doc /* 動力飛行中の MPS/TVC 遮断弁の閉じ込み（誤作動） */ attribute :>> itemName = "動力飛行中の MPS/TVC 遮断弁の閉じ込み"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MPS-06'> fmx_mps_06 : SSD_FMM_ORB_001::FailureMode { doc /* 遮断弁より下流の油圧漏れ（外部漏れ） */ attribute :>> itemName = "遮断弁より下流の油圧漏れ"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #cause occurrence <'FMX-MPS-07'> fmx_mps_07 : SSD_FMM_ORB_001::FailureMode { doc /* APU 停止後も油圧供給圧が下がらない（誤作動） */ attribute :>> itemName = "APU 停止後も油圧供給圧が下がらない"; attribute :>> sourceTable = "SSD-FMX-ORB-001"; }
        #causation connection <'FMX-GNC-01>HC-41'> fmx_gnc_01_hc_41 connect fmx_gnc_01 to SSD_HAZ_ORB_001::HazardModel::hc41;
        #causation connection <'FMX-GNC-01>HC-48'> fmx_gnc_01_hc_48 connect fmx_gnc_01 to SSD_HAZ_ORB_001::HazardModel::hc48;
        #causation connection <'FMX-GNC-02>HC-49'> fmx_gnc_02_hc_49 connect fmx_gnc_02 to SSD_HAZ_ORB_001::HazardModel::hc49;
        #causation connection <'FMX-GNC-03>HC-48'> fmx_gnc_03_hc_48 connect fmx_gnc_03 to SSD_HAZ_ORB_001::HazardModel::hc48;
        #causation connection <'FMX-GNC-03>HC-40'> fmx_gnc_03_hc_40 connect fmx_gnc_03 to SSD_HAZ_ORB_001::HazardModel::hc40;
        #causation connection <'FMX-GNC-04>HC-48'> fmx_gnc_04_hc_48 connect fmx_gnc_04 to SSD_HAZ_ORB_001::HazardModel::hc48;
        #causation connection <'FMX-GNC-04>HC-47'> fmx_gnc_04_hc_47 connect fmx_gnc_04 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-GNC-06>HC-19'> fmx_gnc_06_hc_19 connect fmx_gnc_06 to SSD_HAZ_ORB_001::HazardModel::hc19;
        #causation connection <'FMX-GNC-06>HC-48'> fmx_gnc_06_hc_48 connect fmx_gnc_06 to SSD_HAZ_ORB_001::HazardModel::hc48;
        #causation connection <'FMX-GNC-07>HC-40'> fmx_gnc_07_hc_40 connect fmx_gnc_07 to SSD_HAZ_ORB_001::HazardModel::hc40;
        #causation connection <'FMX-GNC-11>HC-49'> fmx_gnc_11_hc_49 connect fmx_gnc_11 to SSD_HAZ_ORB_001::HazardModel::hc49;
        #causation connection <'FMX-GNC-12>HC-49'> fmx_gnc_12_hc_49 connect fmx_gnc_12 to SSD_HAZ_ORB_001::HazardModel::hc49;
        #causation connection <'FMX-GNC-13>HC-49'> fmx_gnc_13_hc_49 connect fmx_gnc_13 to SSD_HAZ_ORB_001::HazardModel::hc49;
        #causation connection <'FMX-RCS-01>HC-28'> fmx_rcs_01_hc_28 connect fmx_rcs_01 to SSD_HAZ_ORB_001::HazardModel::hc28;
        #causation connection <'FMX-RCS-02>HC-28'> fmx_rcs_02_hc_28 connect fmx_rcs_02 to SSD_HAZ_ORB_001::HazardModel::hc28;
        #causation connection <'FMX-RCS-03>HC-28'> fmx_rcs_03_hc_28 connect fmx_rcs_03 to SSD_HAZ_ORB_001::HazardModel::hc28;
        #causation connection <'FMX-RCS-04>HC-27'> fmx_rcs_04_hc_27 connect fmx_rcs_04 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-07>HC-27'> fmx_rcs_07_hc_27 connect fmx_rcs_07 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-08>HC-27'> fmx_rcs_08_hc_27 connect fmx_rcs_08 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-09>HC-27'> fmx_rcs_09_hc_27 connect fmx_rcs_09 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-10>HC-27'> fmx_rcs_10_hc_27 connect fmx_rcs_10 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-11>HC-27'> fmx_rcs_11_hc_27 connect fmx_rcs_11 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-12>HC-27'> fmx_rcs_12_hc_27 connect fmx_rcs_12 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-13>HC-27'> fmx_rcs_13_hc_27 connect fmx_rcs_13 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-14>HC-27'> fmx_rcs_14_hc_27 connect fmx_rcs_14 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-RCS-15>HC-27'> fmx_rcs_15_hc_27 connect fmx_rcs_15 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-DPS-01>HC-47'> fmx_dps_01_hc_47 connect fmx_dps_01 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-02>HC-23'> fmx_dps_02_hc_23 connect fmx_dps_02 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-DPS-02>HC-47'> fmx_dps_02_hc_47 connect fmx_dps_02 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-03>HC-23'> fmx_dps_03_hc_23 connect fmx_dps_03 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-DPS-04>HC-23'> fmx_dps_04_hc_23 connect fmx_dps_04 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-DPS-04>HC-47'> fmx_dps_04_hc_47 connect fmx_dps_04 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-05>HC-23'> fmx_dps_05_hc_23 connect fmx_dps_05 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-DPS-07>HC-47'> fmx_dps_07_hc_47 connect fmx_dps_07 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-10>HC-47'> fmx_dps_10_hc_47 connect fmx_dps_10 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-12>HC-47'> fmx_dps_12_hc_47 connect fmx_dps_12 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-19>HC-47'> fmx_dps_19_hc_47 connect fmx_dps_19 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-20>HC-47'> fmx_dps_20_hc_47 connect fmx_dps_20 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-DPS-21>HC-47'> fmx_dps_21_hc_47 connect fmx_dps_21 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'FMX-CT-01>HC-45'> fmx_ct_01_hc_45 connect fmx_ct_01 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-02>HC-46'> fmx_ct_02_hc_46 connect fmx_ct_02 to SSD_HAZ_ORB_001::HazardModel::hc46;
        #causation connection <'FMX-CT-03>HC-45'> fmx_ct_03_hc_45 connect fmx_ct_03 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-04>HC-45'> fmx_ct_04_hc_45 connect fmx_ct_04 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-05>HC-45'> fmx_ct_05_hc_45 connect fmx_ct_05 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-08>HC-45'> fmx_ct_08_hc_45 connect fmx_ct_08 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-11>HC-45'> fmx_ct_11_hc_45 connect fmx_ct_11 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-12>HC-45'> fmx_ct_12_hc_45 connect fmx_ct_12 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-13>HC-46'> fmx_ct_13_hc_46 connect fmx_ct_13 to SSD_HAZ_ORB_001::HazardModel::hc46;
        #causation connection <'FMX-CT-14>HC-45'> fmx_ct_14_hc_45 connect fmx_ct_14 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-15>HC-45'> fmx_ct_15_hc_45 connect fmx_ct_15 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-16>HC-45'> fmx_ct_16_hc_45 connect fmx_ct_16 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-17>HC-45'> fmx_ct_17_hc_45 connect fmx_ct_17 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-18>HC-45'> fmx_ct_18_hc_45 connect fmx_ct_18 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-19>HC-45'> fmx_ct_19_hc_45 connect fmx_ct_19 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-CT-20>HC-45'> fmx_ct_20_hc_45 connect fmx_ct_20 to SSD_HAZ_ORB_001::HazardModel::hc45;
        #causation connection <'FMX-EVA-01>HC-35'> fmx_eva_01_hc_35 connect fmx_eva_01 to SSD_HAZ_ORB_001::HazardModel::hc35;
        #causation connection <'FMX-EVA-02>HC-36'> fmx_eva_02_hc_36 connect fmx_eva_02 to SSD_HAZ_ORB_001::HazardModel::hc36;
        #causation connection <'FMX-EVA-03>HC-37'> fmx_eva_03_hc_37 connect fmx_eva_03 to SSD_HAZ_ORB_001::HazardModel::hc37;
        #causation connection <'FMX-EVA-05>HC-38'> fmx_eva_05_hc_38 connect fmx_eva_05 to SSD_HAZ_ORB_001::HazardModel::hc38;
        #causation connection <'FMX-EVA-07>HC-10'> fmx_eva_07_hc_10 connect fmx_eva_07 to SSD_HAZ_ORB_001::HazardModel::hc10;
        #causation connection <'FMX-EVA-08>HC-37'> fmx_eva_08_hc_37 connect fmx_eva_08 to SSD_HAZ_ORB_001::HazardModel::hc37;
        #causation connection <'FMX-EVA-09>HC-27'> fmx_eva_09_hc_27 connect fmx_eva_09 to SSD_HAZ_ORB_001::HazardModel::hc27;
        #causation connection <'FMX-EVA-10>HC-36'> fmx_eva_10_hc_36 connect fmx_eva_10 to SSD_HAZ_ORB_001::HazardModel::hc36;
        #causation connection <'FMX-EVA-11>HC-36'> fmx_eva_11_hc_36 connect fmx_eva_11 to SSD_HAZ_ORB_001::HazardModel::hc36;
        #causation connection <'FMX-EVA-12>HC-38'> fmx_eva_12_hc_38 connect fmx_eva_12 to SSD_HAZ_ORB_001::HazardModel::hc38;
        #causation connection <'FMX-EVA-13>HC-35'> fmx_eva_13_hc_35 connect fmx_eva_13 to SSD_HAZ_ORB_001::HazardModel::hc35;
        #causation connection <'FMX-EVA-15>HC-37'> fmx_eva_15_hc_37 connect fmx_eva_15 to SSD_HAZ_ORB_001::HazardModel::hc37;
        #causation connection <'FMX-CREW-OPS-02>HC-05'> fmx_crew_ops_02_hc_05 connect fmx_crew_ops_02 to SSD_HAZ_ORB_001::HazardModel::hc05;
        #causation connection <'FMX-PLS-02>HC-34'> fmx_pls_02_hc_34 connect fmx_pls_02 to SSD_HAZ_ORB_001::HazardModel::hc34;
        #causation connection <'FMX-APU-01>HC-19'> fmx_apu_01_hc_19 connect fmx_apu_01 to SSD_HAZ_ORB_001::HazardModel::hc19;
        #causation connection <'FMX-APU-01>HC-23'> fmx_apu_01_hc_23 connect fmx_apu_01 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-APU-02>HC-18'> fmx_apu_02_hc_18 connect fmx_apu_02 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'FMX-APU-03>HC-19'> fmx_apu_03_hc_19 connect fmx_apu_03 to SSD_HAZ_ORB_001::HazardModel::hc19;
        #causation connection <'FMX-APU-04>HC-18'> fmx_apu_04_hc_18 connect fmx_apu_04 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'FMX-APU-05>HC-18'> fmx_apu_05_hc_18 connect fmx_apu_05 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'FMX-APU-06>HC-18'> fmx_apu_06_hc_18 connect fmx_apu_06 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'FMX-APU-07>HC-18'> fmx_apu_07_hc_18 connect fmx_apu_07 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'FMX-APU-08>HC-18'> fmx_apu_08_hc_18 connect fmx_apu_08 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'FMX-APU-09>HC-18'> fmx_apu_09_hc_18 connect fmx_apu_09 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'FMX-APU-10>HC-20'> fmx_apu_10_hc_20 connect fmx_apu_10 to SSD_HAZ_ORB_001::HazardModel::hc20;
        #causation connection <'FMX-APU-11>HC-20'> fmx_apu_11_hc_20 connect fmx_apu_11 to SSD_HAZ_ORB_001::HazardModel::hc20;
        #causation connection <'FMX-APU-12>HC-20'> fmx_apu_12_hc_20 connect fmx_apu_12 to SSD_HAZ_ORB_001::HazardModel::hc20;
        #causation connection <'FMX-APU-13>HC-20'> fmx_apu_13_hc_20 connect fmx_apu_13 to SSD_HAZ_ORB_001::HazardModel::hc20;
        #causation connection <'FMX-MECH-01>HC-43'> fmx_mech_01_hc_43 connect fmx_mech_01 to SSD_HAZ_ORB_001::HazardModel::hc43;
        #causation connection <'FMX-MECH-02>HC-44'> fmx_mech_02_hc_44 connect fmx_mech_02 to SSD_HAZ_ORB_001::HazardModel::hc44;
        #causation connection <'FMX-MECH-03>HC-33'> fmx_mech_03_hc_33 connect fmx_mech_03 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'FMX-MECH-04>HC-33'> fmx_mech_04_hc_33 connect fmx_mech_04 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'FMX-MECH-05>HC-33'> fmx_mech_05_hc_33 connect fmx_mech_05 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'FMX-MECH-07>HC-33'> fmx_mech_07_hc_33 connect fmx_mech_07 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'FMX-MECH-08>HC-43'> fmx_mech_08_hc_43 connect fmx_mech_08 to SSD_HAZ_ORB_001::HazardModel::hc43;
        #causation connection <'FMX-MECH-10>HC-42'> fmx_mech_10_hc_42 connect fmx_mech_10 to SSD_HAZ_ORB_001::HazardModel::hc42;
        #causation connection <'FMX-MECH-10>HC-44'> fmx_mech_10_hc_44 connect fmx_mech_10 to SSD_HAZ_ORB_001::HazardModel::hc44;
        #causation connection <'FMX-STR-02>HC-30'> fmx_str_02_hc_30 connect fmx_str_02 to SSD_HAZ_ORB_001::HazardModel::hc30;
        #causation connection <'FMX-STR-03>HC-04'> fmx_str_03_hc_04 connect fmx_str_03 to SSD_HAZ_ORB_001::HazardModel::hc04;
        #causation connection <'FMX-STR-04>HC-04'> fmx_str_04_hc_04 connect fmx_str_04 to SSD_HAZ_ORB_001::HazardModel::hc04;
        #causation connection <'FMX-STR-05>HC-31'> fmx_str_05_hc_31 connect fmx_str_05 to SSD_HAZ_ORB_001::HazardModel::hc31;
        #causation connection <'FMX-STR-06>HC-32'> fmx_str_06_hc_32 connect fmx_str_06 to SSD_HAZ_ORB_001::HazardModel::hc32;
        #causation connection <'FMX-STR-07>HC-32'> fmx_str_07_hc_32 connect fmx_str_07 to SSD_HAZ_ORB_001::HazardModel::hc32;
        #causation connection <'FMX-STR-08>HC-33'> fmx_str_08_hc_33 connect fmx_str_08 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'FMX-STR-09>HC-29'> fmx_str_09_hc_29 connect fmx_str_09 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMX-EPS-01>HC-12'> fmx_eps_01_hc_12 connect fmx_eps_01 to SSD_HAZ_ORB_001::HazardModel::hc12;
        #causation connection <'FMX-EPS-02>HC-22'> fmx_eps_02_hc_22 connect fmx_eps_02 to SSD_HAZ_ORB_001::HazardModel::hc22;
        #causation connection <'FMX-EPS-03>HC-12'> fmx_eps_03_hc_12 connect fmx_eps_03 to SSD_HAZ_ORB_001::HazardModel::hc12;
        #causation connection <'FMX-EPS-04>HC-33'> fmx_eps_04_hc_33 connect fmx_eps_04 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'FMX-EPS-05>HC-14'> fmx_eps_05_hc_14 connect fmx_eps_05 to SSD_HAZ_ORB_001::HazardModel::hc14;
        #causation connection <'FMX-EPS-05>HC-01'> fmx_eps_05_hc_01 connect fmx_eps_05 to SSD_HAZ_ORB_001::HazardModel::hc01;
        #causation connection <'FMX-EPS-06>HC-14'> fmx_eps_06_hc_14 connect fmx_eps_06 to SSD_HAZ_ORB_001::HazardModel::hc14;
        #causation connection <'FMX-EPS-07>HC-14'> fmx_eps_07_hc_14 connect fmx_eps_07 to SSD_HAZ_ORB_001::HazardModel::hc14;
        #causation connection <'FMX-EPS-08>HC-14'> fmx_eps_08_hc_14 connect fmx_eps_08 to SSD_HAZ_ORB_001::HazardModel::hc14;
        #causation connection <'FMX-MPS-01>HC-22'> fmx_mps_01_hc_22 connect fmx_mps_01 to SSD_HAZ_ORB_001::HazardModel::hc22;
        #causation connection <'FMX-MPS-02>HC-23'> fmx_mps_02_hc_23 connect fmx_mps_02 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-MPS-03>HC-23'> fmx_mps_03_hc_23 connect fmx_mps_03 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-MPS-04>HC-19'> fmx_mps_04_hc_19 connect fmx_mps_04 to SSD_HAZ_ORB_001::HazardModel::hc19;
        #causation connection <'FMX-MPS-04>HC-23'> fmx_mps_04_hc_23 connect fmx_mps_04 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-MPS-05>HC-23'> fmx_mps_05_hc_23 connect fmx_mps_05 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'FMX-MPS-06>HC-19'> fmx_mps_06_hc_19 connect fmx_mps_06 to SSD_HAZ_ORB_001::HazardModel::hc19;
    }
    #Involves dependency <'FMX-GNC-01>SSD-FD-GNC-001'> from FunctionalFailureModes::fmx_gnc_01 to SSD_BLK_SYS_001::GNC;
    #DetectedBy dependency <'FMX-GNC-01>CW-33'> from FunctionalFailureModes::fmx_gnc_01 to SSD_FDIR_ORB_001::FcsChannelAlarm;
    #DetectedBy dependency <'FMX-GNC-01>CW-36'> from FunctionalFailureModes::fmx_gnc_01 to SSD_FDIR_ORB_001::BackupCWAlarm;
    #Involves dependency <'FMX-GNC-02>SSD-FD-GNC-001'> from FunctionalFailureModes::fmx_gnc_02 to SSD_BLK_SYS_001::GNC;
    #DetectedBy dependency <'FMX-GNC-02>CW-13'> from FunctionalFailureModes::fmx_gnc_02 to SSD_FDIR_ORB_001::ImuAlarm;
    #DetectedBy dependency <'FMX-GNC-02>CW-18'> from FunctionalFailureModes::fmx_gnc_02 to SSD_FDIR_ORB_001::AirDataAlarm;
    #Involves dependency <'FMX-GNC-03>SSD-FD-GNC-ACT-001'> from FunctionalFailureModes::fmx_gnc_03 to SSD_BLK_SYS_001::GNC_ACT;
    #DetectedBy dependency <'FMX-GNC-03>CW-33'> from FunctionalFailureModes::fmx_gnc_03 to SSD_FDIR_ORB_001::FcsChannelAlarm;
    #DetectedBy dependency <'FMX-GNC-03>CW-36'> from FunctionalFailureModes::fmx_gnc_03 to SSD_FDIR_ORB_001::BackupCWAlarm;
    #Involves dependency <'FMX-GNC-04>SSD-FD-GNC-ACT-001'> from FunctionalFailureModes::fmx_gnc_04 to SSD_BLK_SYS_001::GNC_ACT;
    #DetectedBy dependency <'FMX-GNC-04>CW-27'> from FunctionalFailureModes::fmx_gnc_04 to SSD_FDIR_ORB_001::GpcAlarm;
    #DetectedBy dependency <'FMX-GNC-04>CW-33'> from FunctionalFailureModes::fmx_gnc_04 to SSD_FDIR_ORB_001::FcsChannelAlarm;
    #Involves dependency <'FMX-GNC-05>SSD-FD-GNC-ACT-001'> from FunctionalFailureModes::fmx_gnc_05 to SSD_BLK_SYS_001::GNC_ACT;
    #DetectedBy dependency <'FMX-GNC-05>CW-33'> from FunctionalFailureModes::fmx_gnc_05 to SSD_FDIR_ORB_001::FcsChannelAlarm;
    #Involves dependency <'FMX-GNC-06>SSD-FD-GNC-ACT-001'> from FunctionalFailureModes::fmx_gnc_06 to SSD_BLK_SYS_001::GNC_ACT;
    #DetectedBy dependency <'FMX-GNC-06>CW-40'> from FunctionalFailureModes::fmx_gnc_06 to SSD_FDIR_ORB_001::HydPressAlarm;
    #DetectedBy dependency <'FMX-GNC-06>CW-28'> from FunctionalFailureModes::fmx_gnc_06 to SSD_FDIR_ORB_001::FcsSaturationAlarm;
    #Involves dependency <'FMX-GNC-07>SSD-FD-GNC-ACT-001'> from FunctionalFailureModes::fmx_gnc_07 to SSD_BLK_SYS_001::GNC_ACT;
    #DetectedBy dependency <'FMX-GNC-07>CW-33'> from FunctionalFailureModes::fmx_gnc_07 to SSD_FDIR_ORB_001::FcsChannelAlarm;
    #DetectedBy dependency <'FMX-GNC-07>CW-36'> from FunctionalFailureModes::fmx_gnc_07 to SSD_FDIR_ORB_001::BackupCWAlarm;
    #Involves dependency <'FMX-GNC-08>SSD-FD-GNC-CCD-001'> from FunctionalFailureModes::fmx_gnc_08 to SSD_BLK_SYS_001::GNC_CCD;
    #DetectedBy dependency <'FMX-GNC-08>CW-22'> from FunctionalFailureModes::fmx_gnc_08 to SSD_FDIR_ORB_001::LeftRhcAlarm;
    #DetectedBy dependency <'FMX-GNC-08>CW-23'> from FunctionalFailureModes::fmx_gnc_08 to SSD_FDIR_ORB_001::RightAftRhcAlarm;
    #Involves dependency <'FMX-GNC-09>SSD-FD-GNC-CCD-001'> from FunctionalFailureModes::fmx_gnc_09 to SSD_BLK_SYS_001::GNC_CCD;
    #Involves dependency <'FMX-GNC-10>SSD-FD-GNC-CCD-001'> from FunctionalFailureModes::fmx_gnc_10 to SSD_BLK_SYS_001::GNC_CCD;
    #Involves dependency <'FMX-GNC-11>SSD-FD-GNC-GNS-001'> from FunctionalFailureModes::fmx_gnc_11 to SSD_BLK_SYS_001::GNC_GNS;
    #DetectedBy dependency <'FMX-GNC-11>CW-13'> from FunctionalFailureModes::fmx_gnc_11 to SSD_FDIR_ORB_001::ImuAlarm;
    #Involves dependency <'FMX-GNC-12>SSD-FD-GNC-GNS-001'> from FunctionalFailureModes::fmx_gnc_12 to SSD_BLK_SYS_001::GNC_GNS;
    #Involves dependency <'FMX-GNC-13>SSD-FD-GNC-GNS-001'> from FunctionalFailureModes::fmx_gnc_13 to SSD_BLK_SYS_001::GNC_GNS;
    #Involves dependency <'FMX-GNC-14>SSD-FD-GNC-GNS-001'> from FunctionalFailureModes::fmx_gnc_14 to SSD_BLK_SYS_001::GNC_GNS;
    #Involves dependency <'FMX-RCS-01>SSD-FD-RCS-HEP-001'> from FunctionalFailureModes::fmx_rcs_01 to SSD_BLK_SYS_001::RCS_HEP;
    #DetectedBy dependency <'FMX-RCS-01>CW-14'> from FunctionalFailureModes::fmx_rcs_01 to SSD_FDIR_ORB_001::FwdRcsAlarm;
    #DetectedBy dependency <'FMX-RCS-01>CW-19'> from FunctionalFailureModes::fmx_rcs_01 to SSD_FDIR_ORB_001::LeftRcsAlarm;
    #DetectedBy dependency <'FMX-RCS-01>CW-20'> from FunctionalFailureModes::fmx_rcs_01 to SSD_FDIR_ORB_001::RightRcsAlarm;
    #Involves dependency <'FMX-RCS-02>SSD-FD-RCS-HEP-001'> from FunctionalFailureModes::fmx_rcs_02 to SSD_BLK_SYS_001::RCS_HEP;
    #DetectedBy dependency <'FMX-RCS-02>CW-14'> from FunctionalFailureModes::fmx_rcs_02 to SSD_FDIR_ORB_001::FwdRcsAlarm;
    #DetectedBy dependency <'FMX-RCS-02>CW-19'> from FunctionalFailureModes::fmx_rcs_02 to SSD_FDIR_ORB_001::LeftRcsAlarm;
    #DetectedBy dependency <'FMX-RCS-02>CW-20'> from FunctionalFailureModes::fmx_rcs_02 to SSD_FDIR_ORB_001::RightRcsAlarm;
    #Involves dependency <'FMX-RCS-03>SSD-FD-RCS-HEP-001'> from FunctionalFailureModes::fmx_rcs_03 to SSD_BLK_SYS_001::RCS_HEP;
    #DetectedBy dependency <'FMX-RCS-03>CW-14'> from FunctionalFailureModes::fmx_rcs_03 to SSD_FDIR_ORB_001::FwdRcsAlarm;
    #DetectedBy dependency <'FMX-RCS-03>CW-19'> from FunctionalFailureModes::fmx_rcs_03 to SSD_FDIR_ORB_001::LeftRcsAlarm;
    #DetectedBy dependency <'FMX-RCS-03>CW-20'> from FunctionalFailureModes::fmx_rcs_03 to SSD_FDIR_ORB_001::RightRcsAlarm;
    #Involves dependency <'FMX-RCS-04>SSD-FD-RCS-HTR-001'> from FunctionalFailureModes::fmx_rcs_04 to SSD_BLK_SYS_001::RCS_HTR;
    #DetectedBy dependency <'FMX-RCS-04>CW-15'> from FunctionalFailureModes::fmx_rcs_04 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #Involves dependency <'FMX-RCS-05>SSD-FD-RCS-HTR-001'> from FunctionalFailureModes::fmx_rcs_05 to SSD_BLK_SYS_001::RCS_HTR;
    #Involves dependency <'FMX-RCS-06>SSD-FD-RCS-HTR-001'> from FunctionalFailureModes::fmx_rcs_06 to SSD_BLK_SYS_001::RCS_HTR;
    #Involves dependency <'FMX-RCS-07>SSD-FD-RCS-HTR-001'> from FunctionalFailureModes::fmx_rcs_07 to SSD_BLK_SYS_001::RCS_HTR;
    #DetectedBy dependency <'FMX-RCS-07>CW-15'> from FunctionalFailureModes::fmx_rcs_07 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #Involves dependency <'FMX-RCS-08>SSD-FD-RCS-JET-001'> from FunctionalFailureModes::fmx_rcs_08 to SSD_BLK_SYS_001::RCS_JET;
    #DetectedBy dependency <'FMX-RCS-08>CW-15'> from FunctionalFailureModes::fmx_rcs_08 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #DetectedBy dependency <'FMX-RCS-08>CW-36'> from FunctionalFailureModes::fmx_rcs_08 to SSD_FDIR_ORB_001::BackupCWAlarm;
    #Involves dependency <'FMX-RCS-09>SSD-FD-RCS-JET-001'> from FunctionalFailureModes::fmx_rcs_09 to SSD_BLK_SYS_001::RCS_JET;
    #DetectedBy dependency <'FMX-RCS-09>CW-15'> from FunctionalFailureModes::fmx_rcs_09 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #DetectedBy dependency <'FMX-RCS-09>CW-36'> from FunctionalFailureModes::fmx_rcs_09 to SSD_FDIR_ORB_001::BackupCWAlarm;
    #Involves dependency <'FMX-RCS-10>SSD-FD-RCS-JET-001'> from FunctionalFailureModes::fmx_rcs_10 to SSD_BLK_SYS_001::RCS_JET;
    #DetectedBy dependency <'FMX-RCS-10>CW-15'> from FunctionalFailureModes::fmx_rcs_10 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #DetectedBy dependency <'FMX-RCS-10>CW-14'> from FunctionalFailureModes::fmx_rcs_10 to SSD_FDIR_ORB_001::FwdRcsAlarm;
    #Involves dependency <'FMX-RCS-11>SSD-FD-RCS-JET-001'> from FunctionalFailureModes::fmx_rcs_11 to SSD_BLK_SYS_001::RCS_JET;
    #DetectedBy dependency <'FMX-RCS-11>CW-15'> from FunctionalFailureModes::fmx_rcs_11 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #Involves dependency <'FMX-RCS-12>SSD-FD-RCS-RM-001'> from FunctionalFailureModes::fmx_rcs_12 to SSD_BLK_SYS_001::RCS_RM;
    #DetectedBy dependency <'FMX-RCS-12>CW-15'> from FunctionalFailureModes::fmx_rcs_12 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #Involves dependency <'FMX-RCS-13>SSD-FD-RCS-RM-001'> from FunctionalFailureModes::fmx_rcs_13 to SSD_BLK_SYS_001::RCS_RM;
    #DetectedBy dependency <'FMX-RCS-13>CW-15'> from FunctionalFailureModes::fmx_rcs_13 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #Involves dependency <'FMX-RCS-14>SSD-FD-RCS-RM-001'> from FunctionalFailureModes::fmx_rcs_14 to SSD_BLK_SYS_001::RCS_RM;
    #DetectedBy dependency <'FMX-RCS-14>CW-15'> from FunctionalFailureModes::fmx_rcs_14 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #Involves dependency <'FMX-RCS-15>SSD-FD-RCS-RM-001'> from FunctionalFailureModes::fmx_rcs_15 to SSD_BLK_SYS_001::RCS_RM;
    #Involves dependency <'FMX-DPS-01>SSD-FD-DPS-001'> from FunctionalFailureModes::fmx_dps_01 to SSD_BLK_SYS_001::DPS;
    #DetectedBy dependency <'FMX-DPS-01>CW-27'> from FunctionalFailureModes::fmx_dps_01 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-DPS-02>SSD-FD-DPS-001'> from FunctionalFailureModes::fmx_dps_02 to SSD_BLK_SYS_001::DPS;
    #DetectedBy dependency <'FMX-DPS-02>CW-27'> from FunctionalFailureModes::fmx_dps_02 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-DPS-03>SSD-FD-DPS-ASC-001'> from FunctionalFailureModes::fmx_dps_03 to SSD_BLK_SYS_001::DPS_ASC;
    #Involves dependency <'FMX-DPS-04>SSD-FD-DPS-ASC-001'> from FunctionalFailureModes::fmx_dps_04 to SSD_BLK_SYS_001::DPS_ASC;
    #DetectedBy dependency <'FMX-DPS-04>CW-27'> from FunctionalFailureModes::fmx_dps_04 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-DPS-05>SSD-FD-DPS-ASC-001'> from FunctionalFailureModes::fmx_dps_05 to SSD_BLK_SYS_001::DPS_ASC;
    #Involves dependency <'FMX-DPS-06>SSD-FD-DPS-ASC-001'> from FunctionalFailureModes::fmx_dps_06 to SSD_BLK_SYS_001::DPS_ASC;
    #Involves dependency <'FMX-DPS-07>SSD-FD-DPS-BUS-001'> from FunctionalFailureModes::fmx_dps_07 to SSD_BLK_SYS_001::DPS_BUS;
    #Involves dependency <'FMX-DPS-08>SSD-FD-DPS-BUS-001'> from FunctionalFailureModes::fmx_dps_08 to SSD_BLK_SYS_001::DPS_BUS;
    #Involves dependency <'FMX-DPS-09>SSD-FD-DPS-BUS-001'> from FunctionalFailureModes::fmx_dps_09 to SSD_BLK_SYS_001::DPS_BUS;
    #Involves dependency <'FMX-DPS-10>SSD-FD-DPS-GPC-001'> from FunctionalFailureModes::fmx_dps_10 to SSD_BLK_SYS_001::DPS_GPC;
    #DetectedBy dependency <'FMX-DPS-10>CW-27'> from FunctionalFailureModes::fmx_dps_10 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-DPS-11>SSD-FD-DPS-GPC-001'> from FunctionalFailureModes::fmx_dps_11 to SSD_BLK_SYS_001::DPS_GPC;
    #DetectedBy dependency <'FMX-DPS-11>CW-12'> from FunctionalFailureModes::fmx_dps_11 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #Involves dependency <'FMX-DPS-12>SSD-FD-DPS-GPC-001'> from FunctionalFailureModes::fmx_dps_12 to SSD_BLK_SYS_001::DPS_GPC;
    #DetectedBy dependency <'FMX-DPS-12>CW-27'> from FunctionalFailureModes::fmx_dps_12 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-DPS-13>SSD-FD-DPS-MEDS-001'> from FunctionalFailureModes::fmx_dps_13 to SSD_BLK_SYS_001::DPS_MEDS;
    #Involves dependency <'FMX-DPS-14>SSD-FD-DPS-MEDS-001'> from FunctionalFailureModes::fmx_dps_14 to SSD_BLK_SYS_001::DPS_MEDS;
    #Involves dependency <'FMX-DPS-15>SSD-FD-DPS-MEDS-001'> from FunctionalFailureModes::fmx_dps_15 to SSD_BLK_SYS_001::DPS_MEDS;
    #Involves dependency <'FMX-DPS-16>SSD-FD-DPS-MTU-001'> from FunctionalFailureModes::fmx_dps_16 to SSD_BLK_SYS_001::DPS_MTU;
    #Involves dependency <'FMX-DPS-17>SSD-FD-DPS-MTU-001'> from FunctionalFailureModes::fmx_dps_17 to SSD_BLK_SYS_001::DPS_MTU;
    #Involves dependency <'FMX-DPS-18>SSD-FD-DPS-MTU-001'> from FunctionalFailureModes::fmx_dps_18 to SSD_BLK_SYS_001::DPS_MTU;
    #Involves dependency <'FMX-DPS-19>SSD-FD-DPS-OPS-001'> from FunctionalFailureModes::fmx_dps_19 to SSD_BLK_SYS_001::DPS_OPS;
    #DetectedBy dependency <'FMX-DPS-19>CW-27'> from FunctionalFailureModes::fmx_dps_19 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-DPS-20>SSD-FD-DPS-OPS-001'> from FunctionalFailureModes::fmx_dps_20 to SSD_BLK_SYS_001::DPS_OPS;
    #DetectedBy dependency <'FMX-DPS-20>CW-27'> from FunctionalFailureModes::fmx_dps_20 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-DPS-21>SSD-FD-DPS-OPS-001'> from FunctionalFailureModes::fmx_dps_21 to SSD_BLK_SYS_001::DPS_OPS;
    #DetectedBy dependency <'FMX-DPS-21>CW-27'> from FunctionalFailureModes::fmx_dps_21 to SSD_FDIR_ORB_001::GpcAlarm;
    #Involves dependency <'FMX-CW-01>SSD-FD-CW-001'> from FunctionalFailureModes::fmx_cw_01 to SSD_BLK_SYS_001::CW;
    #DetectedBy dependency <'FMX-CW-01>CW-32'> from FunctionalFailureModes::fmx_cw_01 to SSD_FDIR_ORB_001::PrimaryCWAlarm;
    #Involves dependency <'FMX-CW-02>SSD-FD-CW-001'> from FunctionalFailureModes::fmx_cw_02 to SSD_BLK_SYS_001::CW;
    #DetectedBy dependency <'FMX-CW-02>EM-02'> from FunctionalFailureModes::fmx_cw_02 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #Involves dependency <'FMX-CW-03>SSD-FD-CW-ALT-001'> from FunctionalFailureModes::fmx_cw_03 to SSD_BLK_SYS_001::CW_ALT;
    #Involves dependency <'FMX-CW-04>SSD-FD-CW-ALT-001'> from FunctionalFailureModes::fmx_cw_04 to SSD_BLK_SYS_001::CW_ALT;
    #Involves dependency <'FMX-CT-01>SSD-FD-CT-001'> from FunctionalFailureModes::fmx_ct_01 to SSD_BLK_SYS_001::CT;
    #Involves dependency <'FMX-CT-02>SSD-FD-CT-001'> from FunctionalFailureModes::fmx_ct_02 to SSD_BLK_SYS_001::CT;
    #Involves dependency <'FMX-CT-03>SSD-FD-CT-AUD-001'> from FunctionalFailureModes::fmx_ct_03 to SSD_BLK_SYS_001::CT_AUD;
    #Involves dependency <'FMX-CT-04>SSD-FD-CT-AUD-001'> from FunctionalFailureModes::fmx_ct_04 to SSD_BLK_SYS_001::CT_AUD;
    #Involves dependency <'FMX-CT-05>SSD-FD-CT-AUD-001'> from FunctionalFailureModes::fmx_ct_05 to SSD_BLK_SYS_001::CT_AUD;
    #Involves dependency <'FMX-CT-06>SSD-FD-CT-INST-001'> from FunctionalFailureModes::fmx_ct_06 to SSD_BLK_SYS_001::CT_INST;
    #Involves dependency <'FMX-CT-07>SSD-FD-CT-INST-001'> from FunctionalFailureModes::fmx_ct_07 to SSD_BLK_SYS_001::CT_INST;
    #Involves dependency <'FMX-CT-08>SSD-FD-CT-INST-001'> from FunctionalFailureModes::fmx_ct_08 to SSD_BLK_SYS_001::CT_INST;
    #Involves dependency <'FMX-CT-09>SSD-FD-CT-INST-001'> from FunctionalFailureModes::fmx_ct_09 to SSD_BLK_SYS_001::CT_INST;
    #Involves dependency <'FMX-CT-10>SSD-FD-CT-OPS-001'> from FunctionalFailureModes::fmx_ct_10 to SSD_BLK_SYS_001::CT_OPS;
    #Involves dependency <'FMX-CT-11>SSD-FD-CT-OPS-001'> from FunctionalFailureModes::fmx_ct_11 to SSD_BLK_SYS_001::CT_OPS;
    #Involves dependency <'FMX-CT-12>SSD-FD-CT-OPS-001'> from FunctionalFailureModes::fmx_ct_12 to SSD_BLK_SYS_001::CT_OPS;
    #Involves dependency <'FMX-CT-13>SSD-FD-CT-OPS-001'> from FunctionalFailureModes::fmx_ct_13 to SSD_BLK_SYS_001::CT_OPS;
    #Involves dependency <'FMX-CT-14>SSD-FD-CT-SBD-001'> from FunctionalFailureModes::fmx_ct_14 to SSD_BLK_SYS_001::CT_SBD;
    #Involves dependency <'FMX-CT-15>SSD-FD-CT-SBD-001'> from FunctionalFailureModes::fmx_ct_15 to SSD_BLK_SYS_001::CT_SBD;
    #Involves dependency <'FMX-CT-16>SSD-FD-CT-SBD-001'> from FunctionalFailureModes::fmx_ct_16 to SSD_BLK_SYS_001::CT_SBD;
    #Involves dependency <'FMX-CT-17>SSD-FD-CT-SBD-001'> from FunctionalFailureModes::fmx_ct_17 to SSD_BLK_SYS_001::CT_SBD;
    #Involves dependency <'FMX-CT-18>SSD-FD-CT-UHF-001'> from FunctionalFailureModes::fmx_ct_18 to SSD_BLK_SYS_001::CT_UHF;
    #Involves dependency <'FMX-CT-19>SSD-FD-CT-UHF-001'> from FunctionalFailureModes::fmx_ct_19 to SSD_BLK_SYS_001::CT_UHF;
    #Involves dependency <'FMX-CT-20>SSD-FD-CT-UHF-001'> from FunctionalFailureModes::fmx_ct_20 to SSD_BLK_SYS_001::CT_UHF;
    #Involves dependency <'FMX-EVA-01>SSD-FD-EVA-001'> from FunctionalFailureModes::fmx_eva_01 to SSD_BLK_SYS_001::EVA;
    #Involves dependency <'FMX-EVA-02>SSD-FD-EVA-001'> from FunctionalFailureModes::fmx_eva_02 to SSD_BLK_SYS_001::EVA;
    #Involves dependency <'FMX-EVA-03>SSD-FD-EVA-DPR-001'> from FunctionalFailureModes::fmx_eva_03 to SSD_BLK_SYS_001::EVA_DPR;
    #Involves dependency <'FMX-EVA-04>SSD-FD-EVA-DPR-001'> from FunctionalFailureModes::fmx_eva_04 to SSD_BLK_SYS_001::EVA_DPR;
    #Involves dependency <'FMX-EVA-05>SSD-FD-EVA-DPR-001'> from FunctionalFailureModes::fmx_eva_05 to SSD_BLK_SYS_001::EVA_DPR;
    #Involves dependency <'FMX-EVA-06>SSD-FD-EVA-DPR-001'> from FunctionalFailureModes::fmx_eva_06 to SSD_BLK_SYS_001::EVA_DPR;
    #Involves dependency <'FMX-EVA-07>SSD-FD-EVA-EMG-001'> from FunctionalFailureModes::fmx_eva_07 to SSD_BLK_SYS_001::EVA_EMG;
    #Involves dependency <'FMX-EVA-08>SSD-FD-EVA-EMG-001'> from FunctionalFailureModes::fmx_eva_08 to SSD_BLK_SYS_001::EVA_EMG;
    #Involves dependency <'FMX-EVA-09>SSD-FD-EVA-EMG-001'> from FunctionalFailureModes::fmx_eva_09 to SSD_BLK_SYS_001::EVA_EMG;
    #Involves dependency <'FMX-EVA-10>SSD-FD-EVA-EMG-001'> from FunctionalFailureModes::fmx_eva_10 to SSD_BLK_SYS_001::EVA_EMG;
    #Involves dependency <'FMX-EVA-11>SSD-FD-EVA-OPS-001'> from FunctionalFailureModes::fmx_eva_11 to SSD_BLK_SYS_001::EVA_OPS;
    #Involves dependency <'FMX-EVA-12>SSD-FD-EVA-OPS-001'> from FunctionalFailureModes::fmx_eva_12 to SSD_BLK_SYS_001::EVA_OPS;
    #Involves dependency <'FMX-EVA-13>SSD-FD-EVA-OPS-001'> from FunctionalFailureModes::fmx_eva_13 to SSD_BLK_SYS_001::EVA_OPS;
    #Involves dependency <'FMX-EVA-14>SSD-FD-EVA-OPS-001'> from FunctionalFailureModes::fmx_eva_14 to SSD_BLK_SYS_001::EVA_OPS;
    #Involves dependency <'FMX-EVA-15>SSD-FD-EVA-TLS-001'> from FunctionalFailureModes::fmx_eva_15 to SSD_BLK_SYS_001::EVA_TLS;
    #Involves dependency <'FMX-EVA-16>SSD-FD-EVA-TLS-001'> from FunctionalFailureModes::fmx_eva_16 to SSD_BLK_SYS_001::EVA_TLS;
    #Involves dependency <'FMX-EVA-17>SSD-FD-EVA-TLS-001'> from FunctionalFailureModes::fmx_eva_17 to SSD_BLK_SYS_001::EVA_TLS;
    #Involves dependency <'FMX-EVA-18>SSD-FD-EVA-TLS-001'> from FunctionalFailureModes::fmx_eva_18 to SSD_BLK_SYS_001::EVA_TLS;
    #Involves dependency <'FMX-CREW-01>SSD-FD-CREW-001'> from FunctionalFailureModes::fmx_crew_01 to SSD_BLK_SYS_001::CREW;
    #Involves dependency <'FMX-CREW-ESC-01>SSD-FD-CREW-ESC-001'> from FunctionalFailureModes::fmx_crew_esc_01 to SSD_BLK_SYS_001::CREW_ESC;
    #Involves dependency <'FMX-CREW-ESC-02>SSD-FD-CREW-ESC-001'> from FunctionalFailureModes::fmx_crew_esc_02 to SSD_BLK_SYS_001::CREW_ESC;
    #Involves dependency <'FMX-CREW-ESC-03>SSD-FD-CREW-ESC-001'> from FunctionalFailureModes::fmx_crew_esc_03 to SSD_BLK_SYS_001::CREW_ESC;
    #Involves dependency <'FMX-CREW-ESC-04>SSD-FD-CREW-ESC-001'> from FunctionalFailureModes::fmx_crew_esc_04 to SSD_BLK_SYS_001::CREW_ESC;
    #Involves dependency <'FMX-CREW-HAB-01>SSD-FD-CREW-HAB-001'> from FunctionalFailureModes::fmx_crew_hab_01 to SSD_BLK_SYS_001::CREW_HAB;
    #Involves dependency <'FMX-CREW-HAB-02>SSD-FD-CREW-HAB-001'> from FunctionalFailureModes::fmx_crew_hab_02 to SSD_BLK_SYS_001::CREW_HAB;
    #Involves dependency <'FMX-CREW-HAB-03>SSD-FD-CREW-HAB-001'> from FunctionalFailureModes::fmx_crew_hab_03 to SSD_BLK_SYS_001::CREW_HAB;
    #Involves dependency <'FMX-CREW-LTG-01>SSD-FD-CREW-LTG-001'> from FunctionalFailureModes::fmx_crew_ltg_01 to SSD_BLK_SYS_001::CREW_LTG;
    #Involves dependency <'FMX-CREW-LTG-02>SSD-FD-CREW-LTG-001'> from FunctionalFailureModes::fmx_crew_ltg_02 to SSD_BLK_SYS_001::CREW_LTG;
    #Involves dependency <'FMX-CREW-LTG-03>SSD-FD-CREW-LTG-001'> from FunctionalFailureModes::fmx_crew_ltg_03 to SSD_BLK_SYS_001::CREW_LTG;
    #Involves dependency <'FMX-CREW-LTG-04>SSD-FD-CREW-LTG-001'> from FunctionalFailureModes::fmx_crew_ltg_04 to SSD_BLK_SYS_001::CREW_LTG;
    #Involves dependency <'FMX-CREW-MED-01>SSD-FD-CREW-MED-001'> from FunctionalFailureModes::fmx_crew_med_01 to SSD_BLK_SYS_001::CREW_MED;
    #Involves dependency <'FMX-CREW-MED-02>SSD-FD-CREW-MED-001'> from FunctionalFailureModes::fmx_crew_med_02 to SSD_BLK_SYS_001::CREW_MED;
    #Involves dependency <'FMX-CREW-MED-03>SSD-FD-CREW-MED-001'> from FunctionalFailureModes::fmx_crew_med_03 to SSD_BLK_SYS_001::CREW_MED;
    #Involves dependency <'FMX-CREW-OPS-01>SSD-FD-CREW-OPS-001'> from FunctionalFailureModes::fmx_crew_ops_01 to SSD_BLK_SYS_001::CREW_OPS;
    #Involves dependency <'FMX-CREW-OPS-02>SSD-FD-CREW-OPS-001'> from FunctionalFailureModes::fmx_crew_ops_02 to SSD_BLK_SYS_001::CREW_OPS;
    #DetectedBy dependency <'FMX-CREW-OPS-02>CW-06'> from FunctionalFailureModes::fmx_crew_ops_02 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #Involves dependency <'FMX-CREW-OPS-03>SSD-FD-CREW-OPS-001'> from FunctionalFailureModes::fmx_crew_ops_03 to SSD_BLK_SYS_001::CREW_OPS;
    #Involves dependency <'FMX-CREW-OPS-04>SSD-FD-CREW-OPS-001'> from FunctionalFailureModes::fmx_crew_ops_04 to SSD_BLK_SYS_001::CREW_OPS;
    #Involves dependency <'FMX-CREW-STW-01>SSD-FD-CREW-STW-001'> from FunctionalFailureModes::fmx_crew_stw_01 to SSD_BLK_SYS_001::CREW_STW;
    #Involves dependency <'FMX-CREW-STW-02>SSD-FD-CREW-STW-001'> from FunctionalFailureModes::fmx_crew_stw_02 to SSD_BLK_SYS_001::CREW_STW;
    #Involves dependency <'FMX-CREW-STW-03>SSD-FD-CREW-STW-001'> from FunctionalFailureModes::fmx_crew_stw_03 to SSD_BLK_SYS_001::CREW_STW;
    #Involves dependency <'FMX-PLS-01>SSD-FD-PLS-001'> from FunctionalFailureModes::fmx_pls_01 to SSD_BLK_SYS_001::PLS;
    #Involves dependency <'FMX-PLS-02>SSD-FD-PLS-001'> from FunctionalFailureModes::fmx_pls_02 to SSD_BLK_SYS_001::PLS;
    #Involves dependency <'FMX-PLS-03>SSD-FD-PLS-ODS-001'> from FunctionalFailureModes::fmx_pls_03 to SSD_BLK_SYS_001::PLS_ODS;
    #Involves dependency <'FMX-PLS-04>SSD-FD-PLS-ODS-001'> from FunctionalFailureModes::fmx_pls_04 to SSD_BLK_SYS_001::PLS_ODS;
    #Involves dependency <'FMX-PLS-05>SSD-FD-PLS-ODS-001'> from FunctionalFailureModes::fmx_pls_05 to SSD_BLK_SYS_001::PLS_ODS;
    #Involves dependency <'FMX-PLS-06>SSD-FD-PLS-ODS-001'> from FunctionalFailureModes::fmx_pls_06 to SSD_BLK_SYS_001::PLS_ODS;
    #Involves dependency <'FMX-PLS-07>SSD-FD-PLS-PRL-001'> from FunctionalFailureModes::fmx_pls_07 to SSD_BLK_SYS_001::PLS_PRL;
    #Involves dependency <'FMX-PLS-08>SSD-FD-PLS-PRL-001'> from FunctionalFailureModes::fmx_pls_08 to SSD_BLK_SYS_001::PLS_PRL;
    #Involves dependency <'FMX-PLS-09>SSD-FD-PLS-PRL-001'> from FunctionalFailureModes::fmx_pls_09 to SSD_BLK_SYS_001::PLS_PRL;
    #Involves dependency <'FMX-PLS-10>SSD-FD-PLS-PRL-001'> from FunctionalFailureModes::fmx_pls_10 to SSD_BLK_SYS_001::PLS_PRL;
    #Involves dependency <'FMX-APU-01>SSD-FD-APU-001'> from FunctionalFailureModes::fmx_apu_01 to SSD_BLK_SYS_001::APU;
    #DetectedBy dependency <'FMX-APU-01>CW-40'> from FunctionalFailureModes::fmx_apu_01 to SSD_FDIR_ORB_001::HydPressAlarm;
    #DetectedBy dependency <'FMX-APU-01>CW-38'> from FunctionalFailureModes::fmx_apu_01 to SSD_FDIR_ORB_001::ApuOverspeedAlarm;
    #DetectedBy dependency <'FMX-APU-01>CW-39'> from FunctionalFailureModes::fmx_apu_01 to SSD_FDIR_ORB_001::ApuUnderspeedAlarm;
    #Involves dependency <'FMX-APU-02>SSD-FD-APU-001'> from FunctionalFailureModes::fmx_apu_02 to SSD_BLK_SYS_001::APU;
    #Involves dependency <'FMX-APU-03>SSD-FD-APU-001'> from FunctionalFailureModes::fmx_apu_03 to SSD_BLK_SYS_001::APU;
    #Involves dependency <'FMX-APU-04>SSD-FD-APU-001'> from FunctionalFailureModes::fmx_apu_04 to SSD_BLK_SYS_001::APU;
    #Involves dependency <'FMX-APU-05>SSD-FD-APU-CTL-001'> from FunctionalFailureModes::fmx_apu_05 to SSD_BLK_SYS_001::APU_CTL;
    #Involves dependency <'FMX-APU-06>SSD-FD-APU-CTL-001'> from FunctionalFailureModes::fmx_apu_06 to SSD_BLK_SYS_001::APU_CTL;
    #DetectedBy dependency <'FMX-APU-06>CW-39'> from FunctionalFailureModes::fmx_apu_06 to SSD_FDIR_ORB_001::ApuUnderspeedAlarm;
    #Involves dependency <'FMX-APU-07>SSD-FD-APU-CTL-001'> from FunctionalFailureModes::fmx_apu_07 to SSD_BLK_SYS_001::APU_CTL;
    #DetectedBy dependency <'FMX-APU-07>CW-38'> from FunctionalFailureModes::fmx_apu_07 to SSD_FDIR_ORB_001::ApuOverspeedAlarm;
    #Involves dependency <'FMX-APU-08>SSD-FD-APU-CTL-001'> from FunctionalFailureModes::fmx_apu_08 to SSD_BLK_SYS_001::APU_CTL;
    #DetectedBy dependency <'FMX-APU-08>CW-38'> from FunctionalFailureModes::fmx_apu_08 to SSD_FDIR_ORB_001::ApuOverspeedAlarm;
    #DetectedBy dependency <'FMX-APU-08>CW-39'> from FunctionalFailureModes::fmx_apu_08 to SSD_FDIR_ORB_001::ApuUnderspeedAlarm;
    #Involves dependency <'FMX-APU-09>SSD-FD-APU-CTL-001'> from FunctionalFailureModes::fmx_apu_09 to SSD_BLK_SYS_001::APU_CTL;
    #Involves dependency <'FMX-APU-10>SSD-FD-APU-WSB-001'> from FunctionalFailureModes::fmx_apu_10 to SSD_BLK_SYS_001::APU_WSB;
    #DetectedBy dependency <'FMX-APU-10>CW-37'> from FunctionalFailureModes::fmx_apu_10 to SSD_FDIR_ORB_001::ApuTempAlarm;
    #Involves dependency <'FMX-APU-11>SSD-FD-APU-WSB-001'> from FunctionalFailureModes::fmx_apu_11 to SSD_BLK_SYS_001::APU_WSB;
    #DetectedBy dependency <'FMX-APU-11>CW-37'> from FunctionalFailureModes::fmx_apu_11 to SSD_FDIR_ORB_001::ApuTempAlarm;
    #Involves dependency <'FMX-APU-12>SSD-FD-APU-WSB-001'> from FunctionalFailureModes::fmx_apu_12 to SSD_BLK_SYS_001::APU_WSB;
    #DetectedBy dependency <'FMX-APU-12>CW-37'> from FunctionalFailureModes::fmx_apu_12 to SSD_FDIR_ORB_001::ApuTempAlarm;
    #Involves dependency <'FMX-APU-13>SSD-FD-APU-WSB-001'> from FunctionalFailureModes::fmx_apu_13 to SSD_BLK_SYS_001::APU_WSB;
    #Involves dependency <'FMX-MECH-01>SSD-FD-MECH-001'> from FunctionalFailureModes::fmx_mech_01 to SSD_BLK_SYS_001::MECH;
    #Involves dependency <'FMX-MECH-02>SSD-FD-MECH-001'> from FunctionalFailureModes::fmx_mech_02 to SSD_BLK_SYS_001::MECH;
    #Involves dependency <'FMX-MECH-03>SSD-FD-MECH-ACT-001'> from FunctionalFailureModes::fmx_mech_03 to SSD_BLK_SYS_001::MECH_ACT;
    #Involves dependency <'FMX-MECH-04>SSD-FD-MECH-ACT-001'> from FunctionalFailureModes::fmx_mech_04 to SSD_BLK_SYS_001::MECH_ACT;
    #DetectedBy dependency <'FMX-MECH-04>CW-09'> from FunctionalFailureModes::fmx_mech_04 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #Involves dependency <'FMX-MECH-05>SSD-FD-MECH-ACT-001'> from FunctionalFailureModes::fmx_mech_05 to SSD_BLK_SYS_001::MECH_ACT;
    #Involves dependency <'FMX-MECH-06>SSD-FD-MECH-ACT-001'> from FunctionalFailureModes::fmx_mech_06 to SSD_BLK_SYS_001::MECH_ACT;
    #Involves dependency <'FMX-MECH-07>SSD-FD-MECH-OPS-001'> from FunctionalFailureModes::fmx_mech_07 to SSD_BLK_SYS_001::MECH_OPS;
    #Involves dependency <'FMX-MECH-08>SSD-FD-MECH-OPS-001'> from FunctionalFailureModes::fmx_mech_08 to SSD_BLK_SYS_001::MECH_OPS;
    #Involves dependency <'FMX-MECH-09>SSD-FD-MECH-OPS-001'> from FunctionalFailureModes::fmx_mech_09 to SSD_BLK_SYS_001::MECH_OPS;
    #Involves dependency <'FMX-MECH-10>SSD-FD-MECH-OPS-001'> from FunctionalFailureModes::fmx_mech_10 to SSD_BLK_SYS_001::MECH_OPS;
    #Involves dependency <'FMX-STR-01>SSD-FD-STR-001'> from FunctionalFailureModes::fmx_str_01 to SSD_BLK_SYS_001::STR;
    #Involves dependency <'FMX-STR-02>SSD-FD-STR-001'> from FunctionalFailureModes::fmx_str_02 to SSD_BLK_SYS_001::STR;
    #Involves dependency <'FMX-STR-03>SSD-FD-STR-CRM-001'> from FunctionalFailureModes::fmx_str_03 to SSD_BLK_SYS_001::STR_CRM;
    #DetectedBy dependency <'FMX-STR-03>EM-02'> from FunctionalFailureModes::fmx_str_03 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #DetectedBy dependency <'FMX-STR-03>CW-06'> from FunctionalFailureModes::fmx_str_03 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #Involves dependency <'FMX-STR-04>SSD-FD-STR-CRM-001'> from FunctionalFailureModes::fmx_str_04 to SSD_BLK_SYS_001::STR_CRM;
    #DetectedBy dependency <'FMX-STR-04>EM-02'> from FunctionalFailureModes::fmx_str_04 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #DetectedBy dependency <'FMX-STR-04>CW-06'> from FunctionalFailureModes::fmx_str_04 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #Involves dependency <'FMX-STR-05>SSD-FD-STR-CRM-001'> from FunctionalFailureModes::fmx_str_05 to SSD_BLK_SYS_001::STR_CRM;
    #Involves dependency <'FMX-STR-06>SSD-FD-STR-MID-001'> from FunctionalFailureModes::fmx_str_06 to SSD_BLK_SYS_001::STR_MID;
    #Involves dependency <'FMX-STR-07>SSD-FD-STR-MID-001'> from FunctionalFailureModes::fmx_str_07 to SSD_BLK_SYS_001::STR_MID;
    #Involves dependency <'FMX-STR-08>SSD-FD-STR-MID-001'> from FunctionalFailureModes::fmx_str_08 to SSD_BLK_SYS_001::STR_MID;
    #Involves dependency <'FMX-STR-09>SSD-FD-STR-WNG-001'> from FunctionalFailureModes::fmx_str_09 to SSD_BLK_SYS_001::STR_WNG;
    #Involves dependency <'FMX-STR-10>SSD-FD-STR-WNG-001'> from FunctionalFailureModes::fmx_str_10 to SSD_BLK_SYS_001::STR_WNG;
    #Involves dependency <'FMX-STR-11>SSD-FD-STR-WNG-001'> from FunctionalFailureModes::fmx_str_11 to SSD_BLK_SYS_001::STR_WNG;
    #Involves dependency <'FMX-EPS-01>SSD-FD-EPS-AC-001'> from FunctionalFailureModes::fmx_eps_01 to SSD_BLK_SYS_001::EPS_AC;
    #DetectedBy dependency <'FMX-EPS-01>CW-09'> from FunctionalFailureModes::fmx_eps_01 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #DetectedBy dependency <'FMX-EPS-01>CW-10'> from FunctionalFailureModes::fmx_eps_01 to SSD_FDIR_ORB_001::AcOverloadAlarm;
    #Involves dependency <'FMX-EPS-02>SSD-FD-EPS-AC-001'> from FunctionalFailureModes::fmx_eps_02 to SSD_BLK_SYS_001::EPS_AC;
    #DetectedBy dependency <'FMX-EPS-02>CW-09'> from FunctionalFailureModes::fmx_eps_02 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #DetectedBy dependency <'FMX-EPS-02>CW-10'> from FunctionalFailureModes::fmx_eps_02 to SSD_FDIR_ORB_001::AcOverloadAlarm;
    #Involves dependency <'FMX-EPS-03>SSD-FD-EPS-AC-001'> from FunctionalFailureModes::fmx_eps_03 to SSD_BLK_SYS_001::EPS_AC;
    #DetectedBy dependency <'FMX-EPS-03>CW-09'> from FunctionalFailureModes::fmx_eps_03 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #DetectedBy dependency <'FMX-EPS-03>CW-05'> from FunctionalFailureModes::fmx_eps_03 to SSD_FDIR_ORB_001::FuelCellPumpAlarm;
    #Involves dependency <'FMX-EPS-04>SSD-FD-EPS-AC-001'> from FunctionalFailureModes::fmx_eps_04 to SSD_BLK_SYS_001::EPS_AC;
    #DetectedBy dependency <'FMX-EPS-04>CW-09'> from FunctionalFailureModes::fmx_eps_04 to SSD_FDIR_ORB_001::AcVoltageAlarm;
    #Involves dependency <'FMX-EPS-05>SSD-FD-EPS-DC-001'> from FunctionalFailureModes::fmx_eps_05 to SSD_BLK_SYS_001::EPS_DC;
    #DetectedBy dependency <'FMX-EPS-05>CW-08'> from FunctionalFailureModes::fmx_eps_05 to SSD_FDIR_ORB_001::MainBusUndervoltAlarm;
    #Involves dependency <'FMX-EPS-06>SSD-FD-EPS-DC-001'> from FunctionalFailureModes::fmx_eps_06 to SSD_BLK_SYS_001::EPS_DC;
    #DetectedBy dependency <'FMX-EPS-06>CW-08'> from FunctionalFailureModes::fmx_eps_06 to SSD_FDIR_ORB_001::MainBusUndervoltAlarm;
    #Involves dependency <'FMX-EPS-07>SSD-FD-EPS-DC-001'> from FunctionalFailureModes::fmx_eps_07 to SSD_BLK_SYS_001::EPS_DC;
    #Involves dependency <'FMX-EPS-08>SSD-FD-EPS-DC-001'> from FunctionalFailureModes::fmx_eps_08 to SSD_BLK_SYS_001::EPS_DC;
    #DetectedBy dependency <'FMX-EPS-08>CW-08'> from FunctionalFailureModes::fmx_eps_08 to SSD_FDIR_ORB_001::MainBusUndervoltAlarm;
    #Involves dependency <'FMX-MPS-01>SSD-FD-MPS-001'> from FunctionalFailureModes::fmx_mps_01 to SSD_BLK_SYS_001::MPS;
    #Involves dependency <'FMX-MPS-02>SSD-FD-MPS-001'> from FunctionalFailureModes::fmx_mps_02 to SSD_BLK_SYS_001::MPS;
    #Involves dependency <'FMX-MPS-03>SSD-FD-MPS-TVC-001'> from FunctionalFailureModes::fmx_mps_03 to SSD_BLK_SYS_001::MPS_TVC;
    #Involves dependency <'FMX-MPS-04>SSD-FD-MPS-TVC-001'> from FunctionalFailureModes::fmx_mps_04 to SSD_BLK_SYS_001::MPS_TVC;
    #DetectedBy dependency <'FMX-MPS-04>CW-40'> from FunctionalFailureModes::fmx_mps_04 to SSD_FDIR_ORB_001::HydPressAlarm;
    #Involves dependency <'FMX-MPS-05>SSD-FD-MPS-TVC-001'> from FunctionalFailureModes::fmx_mps_05 to SSD_BLK_SYS_001::MPS_TVC;
    #Involves dependency <'FMX-MPS-06>SSD-FD-MPS-TVC-001'> from FunctionalFailureModes::fmx_mps_06 to SSD_BLK_SYS_001::MPS_TVC;
    #Involves dependency <'FMX-MPS-07>SSD-FD-MPS-TVC-001'> from FunctionalFailureModes::fmx_mps_07 to SSD_BLK_SYS_001::MPS_TVC;
}

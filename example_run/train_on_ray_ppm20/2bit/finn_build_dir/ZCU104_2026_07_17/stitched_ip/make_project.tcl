create_project finn_vivado_stitch_proj /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/vivado_stitch_proj_1j5ru_id -part xczu7ev-ffvc1156-2-e
set_msg_config -id {[BD 41-1753]} -suppress
set_property ip_repo_paths [list $::env(FINN_ROOT)/finn-rtllib/memstream /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_0__nxid81c /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_0_w1iwdrh1 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_1_0_k_wyb1ff /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_1_1_b3els_s7 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_bn67n5eg /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_2_0_s3pbucxd /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_2_1_2ntecxhp /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_v5qqpb11 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_0_ebl_v4he /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_1_omf0f2w8 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_2_kaxyjxvw /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_3_mwwc84jo /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_y92m_eca /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_4_qexx7gko /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_0_i3yxxldh/project_MVAU_hls_0/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_5_dwd1_eqb /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_0_5m97yl6h /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_6_0_ue5y_qu6 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_6_1_pbis0s8j /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_6_2_zgsaxgyh /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_6_3_byww9p9n /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_6_4_3ase27l1 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingMaxPool_hls_0_5om_a7la/project_StreamingMaxPool_hls_0/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_7_vsxf3jfw /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_1ic1onnl /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_8__bk5rslk /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_1_lw5ugb7x /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_9_4n766ewo /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_isnyn1n4 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_10_qfzpyn_f /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_7v9ocdud /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_11_c1pwm7r_ /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_myj_22rx /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_12_v7818abs /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_1_n76r7i8u/project_MVAU_hls_1/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_13_sc3ti9qb /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_hpx5bd9c /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_14_x9at9exx /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_1_asz2znlj /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_15_kpz5jq56 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingMaxPool_hls_1_he_6t6gd/project_StreamingMaxPool_hls_1/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_16_1k2ilw8u /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_cta9kh0r /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_17_9nd3lx0s /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_2_rrq_go43 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_18_jn0ep2_c /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_7_8xr9q1hm /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_19_8im_22yj /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_u66wea3j /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_20_s26ylk7a /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_8_1bkacirf /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_21_7s_uojk8 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_2_jm17zda7/project_MVAU_hls_2/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_22_1ujjp4oz /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_9_2ffg6j07 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_23_2ct1p3fa /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_2_tkox6exn /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_24_r7hogqcq /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingMaxPool_hls_2_y2pb8dd0/project_StreamingMaxPool_hls_2/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_25_1_uil08n /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_10_vsp8bcsy /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_26_ab0n75tx /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_3_zs2lv65v /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_27_fp1akvon /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_11_mbnmbcng /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_28_6dfoleas /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_t8laaiej /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_29_n6xf9iir /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_12_8p6776bd /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_30_e96hbjk5 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_3_e1wnp05c/project_MVAU_hls_3/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_31_ids9j5o4 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_3_zkc7pm02 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_32_lnrwwer2 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingMaxPool_hls_3__0lvkiao/project_StreamingMaxPool_hls_3/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_33_ehd7lk07 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_13_4g2mxkfi /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_34_oz2wwee9 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_4_y32jdtll /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_35_m98wp8si /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_14_e6bv1pxg /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_36_f_9y_j1z /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_u0m9f4ec /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_37_fi41sied /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_15__e9pjnvp /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_38_w60rft3e /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_4_mdkgsans/project_MVAU_hls_4/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_39_uhusmzwi /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_4_f10opjcs /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_40_pws6hdk_ /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingMaxPool_hls_4_h4vajuhq/project_StreamingMaxPool_hls_4/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_41_69vg9ief /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_16_ed6f2893 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_42_8w0pel4t /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_5_ldz8b1qu /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_43_4qa17da6 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_17_q9n0moty /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_44_imc1egur /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_5_3vh_38pq /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_45_rihgw1vq /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_18_hdxbqogr /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_46_6rvp8tlw /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_5_5mtbgf1p/project_MVAU_hls_5/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_47_nz1__foy /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_5_mo4sguvr /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_48_9bjk41ai /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingMaxPool_hls_5_qbc7679q/project_StreamingMaxPool_hls_5/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_49_fbo98og3 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_19_9l97a0qw /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_50_bkcujzl2 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_6_akl8yec_ /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_51_81u2dm_9 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_20_fk047857 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_52_6_khh_6o /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_6_c8zvn1am /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_53_dqbzmq9g /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_21_eh3pcsru /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_54_c3udxgno /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_6_f0wonii9/project_MVAU_hls_6/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_55_0veww9jv /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_6_xc51zmry /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_56_x_z2by28 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingMaxPool_hls_6_pfltluwg/project_StreamingMaxPool_hls_6/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_57_bhsysnea /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_7_6b_w011r/project_MVAU_hls_7/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_58_caudut09 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_7_0cqmx0c8 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_59_eolj_sts /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_8_5s85_als/project_MVAU_hls_8/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_60_sa38xipo /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_8_9pus6u3m /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_61__6dp3wjy /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_9__6o96cqq/project_MVAU_hls_9/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_62_9k_k2f65 /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ChannelwiseOp_hls_0_3dtu3t82/project_ChannelwiseOp_hls_0/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_63_dkl36lrk /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_LabelSelect_hls_0_5g6w5rg0/project_LabelSelect_hls_0/sol1/impl/ip /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_64_t66h_z09] [current_project]
update_ip_catalog
create_bd_design "finn_design"
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_0__nxid81c/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_0__nxid81c/StreamingFIFO_rtl_0.v
create_bd_cell -type module -reference StreamingFIFO_rtl_0 StreamingFIFO_rtl_0
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_0_w1iwdrh1/fmpadding_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_0_w1iwdrh1/fmpadding.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_0_w1iwdrh1/axi2we.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_0_w1iwdrh1/FMPadding_rtl_0.v
create_bd_cell -type module -reference FMPadding_rtl_0 FMPadding_rtl_0
create_bd_cell -type hier StreamingFIFO_rtl_1_0
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_1_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_1_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_1_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {1024}] [get_bd_cells /StreamingFIFO_rtl_1_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_1_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {2}] [get_bd_cells /StreamingFIFO_rtl_1_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_0/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_0/ap_clk] [get_bd_pins StreamingFIFO_rtl_1_0/fifo/s_axis_aclk]
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_1_1_b3els_s7/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_1_1_b3els_s7/StreamingFIFO_rtl_1_1.v
create_bd_cell -type module -reference StreamingFIFO_rtl_1_1 StreamingFIFO_rtl_1_1
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_bn67n5eg/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_bn67n5eg/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_bn67n5eg/StreamingDataWidthConverter_rtl_0.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_0 StreamingDataWidthConverter_rtl_0
create_bd_cell -type hier StreamingFIFO_rtl_2_0
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_2_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_2_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_2_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_2_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_2_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {2048}] [get_bd_cells /StreamingFIFO_rtl_2_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_2_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_2_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_2_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_2_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_2_0/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_2_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_2_0/ap_clk] [get_bd_pins StreamingFIFO_rtl_2_0/fifo/s_axis_aclk]
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_2_1_2ntecxhp/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_2_1_2ntecxhp/StreamingFIFO_rtl_2_1.v
create_bd_cell -type module -reference StreamingFIFO_rtl_2_1 StreamingFIFO_rtl_2_1
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_v5qqpb11/swg_pkg.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_v5qqpb11/ConvolutionInputGenerator_rtl_0_wrapper.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_v5qqpb11/ConvolutionInputGenerator_rtl_0_impl.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_v5qqpb11/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_0 ConvolutionInputGenerator_rtl_0
create_bd_cell -type hier StreamingFIFO_rtl_3_0
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_3_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_3_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_3_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {4096}] [get_bd_cells /StreamingFIFO_rtl_3_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_3_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_3_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_0/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_0/ap_clk] [get_bd_pins StreamingFIFO_rtl_3_0/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_3_1
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_3_1/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_3_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_3_1/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {512}] [get_bd_cells /StreamingFIFO_rtl_3_1/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_3_1/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_3_1/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_1/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_1/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_1/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_1/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_1/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_1/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_1/ap_clk] [get_bd_pins StreamingFIFO_rtl_3_1/fifo/s_axis_aclk]
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_2_kaxyjxvw/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_2_kaxyjxvw/StreamingFIFO_rtl_3_2.v
create_bd_cell -type module -reference StreamingFIFO_rtl_3_2 StreamingFIFO_rtl_3_2
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_3_mwwc84jo/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_3_3_mwwc84jo/StreamingFIFO_rtl_3_3.v
create_bd_cell -type module -reference StreamingFIFO_rtl_3_3 StreamingFIFO_rtl_3_3
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_y92m_eca/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_y92m_eca/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_y92m_eca/StreamingDataWidthConverter_rtl_1.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_1 StreamingDataWidthConverter_rtl_1
create_bd_cell -type hier StreamingFIFO_rtl_4
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_4/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_4/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_4/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_4/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_4/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {1024}] [get_bd_cells /StreamingFIFO_rtl_4/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_4/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {6}] [get_bd_cells /StreamingFIFO_rtl_4/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_4/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_4/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_4/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_4/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_4/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_4/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_4/ap_clk] [get_bd_pins StreamingFIFO_rtl_4/fifo/s_axis_aclk]
create_bd_cell -type hier MVAU_hls_0
create_bd_pin -dir I -type clk /MVAU_hls_0/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_0:1.0 /MVAU_hls_0/MVAU_hls_0
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_0/MVAU_hls_0_wstrm
set_property -dict [list CONFIG.DEPTH {64} CONFIG.WIDTH {16} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_0_i3yxxldh/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_0/MVAU_hls_0_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_rst_n] [get_bd_pins MVAU_hls_0/MVAU_hls_0_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_clk] [get_bd_pins MVAU_hls_0/MVAU_hls_0_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_rst_n] [get_bd_pins MVAU_hls_0/MVAU_hls_0/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_clk] [get_bd_pins MVAU_hls_0/MVAU_hls_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/in0_V] [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/out_V] [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_5_dwd1_eqb/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_5_dwd1_eqb/StreamingFIFO_rtl_5.v
create_bd_cell -type module -reference StreamingFIFO_rtl_5 StreamingFIFO_rtl_5
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_0
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_0 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_0_5m97yl6h/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_0 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_0_5m97yl6h/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_0 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_0_5m97yl6h/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_0 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_0_5m97yl6h/Thresholding_rtl_0_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_0_axi_wrapper Thresholding_rtl_0
create_bd_cell -type hier StreamingFIFO_rtl_6_0
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_6_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_6_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_6_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {32768}] [get_bd_cells /StreamingFIFO_rtl_6_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_6_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_6_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_0/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_0/ap_clk] [get_bd_pins StreamingFIFO_rtl_6_0/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_6_1
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_6_1/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_6_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_6_1/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {8192}] [get_bd_cells /StreamingFIFO_rtl_6_1/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_6_1/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_6_1/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_1/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_1/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_1/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_1/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_1/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_1/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_1/ap_clk] [get_bd_pins StreamingFIFO_rtl_6_1/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_6_2
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_6_2/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_6_2/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_2/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_2/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_6_2/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {4096}] [get_bd_cells /StreamingFIFO_rtl_6_2/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_6_2/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_6_2/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_2/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_2/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_2/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_2/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_2/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_2/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_2/ap_clk] [get_bd_pins StreamingFIFO_rtl_6_2/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_6_3
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_6_3/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_6_3/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_3/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_6_3/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_6_3/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {2048}] [get_bd_cells /StreamingFIFO_rtl_6_3/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_6_3/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_6_3/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_3/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_3/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_3/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_6_3/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_3/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_3/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_6_3/ap_clk] [get_bd_pins StreamingFIFO_rtl_6_3/fifo/s_axis_aclk]
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_6_4_3ase27l1/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_6_4_3ase27l1/StreamingFIFO_rtl_6_4.v
create_bd_cell -type module -reference StreamingFIFO_rtl_6_4 StreamingFIFO_rtl_6_4
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_hls_0:1.0 StreamingMaxPool_hls_0
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_7_vsxf3jfw/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_7_vsxf3jfw/StreamingFIFO_rtl_7.v
create_bd_cell -type module -reference StreamingFIFO_rtl_7 StreamingFIFO_rtl_7
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_1ic1onnl/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_1ic1onnl/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_1ic1onnl/StreamingDataWidthConverter_rtl_2.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_2 StreamingDataWidthConverter_rtl_2
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_8__bk5rslk/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_8__bk5rslk/StreamingFIFO_rtl_8.v
create_bd_cell -type module -reference StreamingFIFO_rtl_8 StreamingFIFO_rtl_8
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_1_lw5ugb7x/fmpadding_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_1_lw5ugb7x/fmpadding.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_1_lw5ugb7x/axi2we.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_1_lw5ugb7x/FMPadding_rtl_1.v
create_bd_cell -type module -reference FMPadding_rtl_1 FMPadding_rtl_1
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_9_4n766ewo/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_9_4n766ewo/StreamingFIFO_rtl_9.v
create_bd_cell -type module -reference StreamingFIFO_rtl_9 StreamingFIFO_rtl_9
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_isnyn1n4/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_isnyn1n4/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_isnyn1n4/StreamingDataWidthConverter_rtl_3.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_3 StreamingDataWidthConverter_rtl_3
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_10_qfzpyn_f/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_10_qfzpyn_f/StreamingFIFO_rtl_10.v
create_bd_cell -type module -reference StreamingFIFO_rtl_10 StreamingFIFO_rtl_10
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_7v9ocdud/swg_pkg.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_7v9ocdud/ConvolutionInputGenerator_rtl_1_wrapper.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_7v9ocdud/ConvolutionInputGenerator_rtl_1_impl.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_7v9ocdud/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_1 ConvolutionInputGenerator_rtl_1
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_11_c1pwm7r_/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_11_c1pwm7r_/StreamingFIFO_rtl_11.v
create_bd_cell -type module -reference StreamingFIFO_rtl_11 StreamingFIFO_rtl_11
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_myj_22rx/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_myj_22rx/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_myj_22rx/StreamingDataWidthConverter_rtl_4.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_4 StreamingDataWidthConverter_rtl_4
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_12_v7818abs/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_12_v7818abs/StreamingFIFO_rtl_12.v
create_bd_cell -type module -reference StreamingFIFO_rtl_12 StreamingFIFO_rtl_12
create_bd_cell -type hier MVAU_hls_1
create_bd_pin -dir I -type clk /MVAU_hls_1/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_1:1.0 /MVAU_hls_1/MVAU_hls_1
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_1/MVAU_hls_1_wstrm
set_property -dict [list CONFIG.DEPTH {96} CONFIG.WIDTH {256} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_1_n76r7i8u/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_1/MVAU_hls_1_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_rst_n] [get_bd_pins MVAU_hls_1/MVAU_hls_1_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_clk] [get_bd_pins MVAU_hls_1/MVAU_hls_1_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_rst_n] [get_bd_pins MVAU_hls_1/MVAU_hls_1/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_clk] [get_bd_pins MVAU_hls_1/MVAU_hls_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/in0_V] [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/out_V] [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_13_sc3ti9qb/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_13_sc3ti9qb/StreamingFIFO_rtl_13.v
create_bd_cell -type module -reference StreamingFIFO_rtl_13 StreamingFIFO_rtl_13
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_hpx5bd9c/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_hpx5bd9c/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_hpx5bd9c/StreamingDataWidthConverter_rtl_5.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_5 StreamingDataWidthConverter_rtl_5
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_14_x9at9exx/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_14_x9at9exx/StreamingFIFO_rtl_14.v
create_bd_cell -type module -reference StreamingFIFO_rtl_14 StreamingFIFO_rtl_14
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_1
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_1 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_1_asz2znlj/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_1 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_1_asz2znlj/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_1 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_1_asz2znlj/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_1 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_1_asz2znlj/Thresholding_rtl_1_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_1_axi_wrapper Thresholding_rtl_1
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_15_kpz5jq56/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_15_kpz5jq56/StreamingFIFO_rtl_15.v
create_bd_cell -type module -reference StreamingFIFO_rtl_15 StreamingFIFO_rtl_15
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_hls_1:1.0 StreamingMaxPool_hls_1
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_16_1k2ilw8u/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_16_1k2ilw8u/StreamingFIFO_rtl_16.v
create_bd_cell -type module -reference StreamingFIFO_rtl_16 StreamingFIFO_rtl_16
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_cta9kh0r/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_cta9kh0r/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_cta9kh0r/StreamingDataWidthConverter_rtl_6.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_6 StreamingDataWidthConverter_rtl_6
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_17_9nd3lx0s/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_17_9nd3lx0s/StreamingFIFO_rtl_17.v
create_bd_cell -type module -reference StreamingFIFO_rtl_17 StreamingFIFO_rtl_17
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_2_rrq_go43/fmpadding_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_2_rrq_go43/fmpadding.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_2_rrq_go43/axi2we.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_2_rrq_go43/FMPadding_rtl_2.v
create_bd_cell -type module -reference FMPadding_rtl_2 FMPadding_rtl_2
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_18_jn0ep2_c/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_18_jn0ep2_c/StreamingFIFO_rtl_18.v
create_bd_cell -type module -reference StreamingFIFO_rtl_18 StreamingFIFO_rtl_18
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_7_8xr9q1hm/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_7_8xr9q1hm/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_7_8xr9q1hm/StreamingDataWidthConverter_rtl_7.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_7 StreamingDataWidthConverter_rtl_7
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_19_8im_22yj/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_19_8im_22yj/StreamingFIFO_rtl_19.v
create_bd_cell -type module -reference StreamingFIFO_rtl_19 StreamingFIFO_rtl_19
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_u66wea3j/swg_pkg.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_u66wea3j/ConvolutionInputGenerator_rtl_2_wrapper.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_u66wea3j/ConvolutionInputGenerator_rtl_2_impl.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_u66wea3j/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_2 ConvolutionInputGenerator_rtl_2
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_20_s26ylk7a/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_20_s26ylk7a/StreamingFIFO_rtl_20.v
create_bd_cell -type module -reference StreamingFIFO_rtl_20 StreamingFIFO_rtl_20
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_8_1bkacirf/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_8_1bkacirf/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_8_1bkacirf/StreamingDataWidthConverter_rtl_8.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_8 StreamingDataWidthConverter_rtl_8
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_21_7s_uojk8/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_21_7s_uojk8/StreamingFIFO_rtl_21.v
create_bd_cell -type module -reference StreamingFIFO_rtl_21 StreamingFIFO_rtl_21
create_bd_cell -type hier MVAU_hls_2
create_bd_pin -dir I -type clk /MVAU_hls_2/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_2/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_2/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_2/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_2:1.0 /MVAU_hls_2/MVAU_hls_2
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_2/MVAU_hls_2_wstrm
set_property -dict [list CONFIG.DEPTH {192} CONFIG.WIDTH {128} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_2_jm17zda7/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_2/MVAU_hls_2_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_rst_n] [get_bd_pins MVAU_hls_2/MVAU_hls_2_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_clk] [get_bd_pins MVAU_hls_2/MVAU_hls_2_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_rst_n] [get_bd_pins MVAU_hls_2/MVAU_hls_2/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_clk] [get_bd_pins MVAU_hls_2/MVAU_hls_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/in0_V] [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/out_V] [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_22_1ujjp4oz/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_22_1ujjp4oz/StreamingFIFO_rtl_22.v
create_bd_cell -type module -reference StreamingFIFO_rtl_22 StreamingFIFO_rtl_22
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_9_2ffg6j07/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_9_2ffg6j07/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_9_2ffg6j07/StreamingDataWidthConverter_rtl_9.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_9 StreamingDataWidthConverter_rtl_9
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_23_2ct1p3fa/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_23_2ct1p3fa/StreamingFIFO_rtl_23.v
create_bd_cell -type module -reference StreamingFIFO_rtl_23 StreamingFIFO_rtl_23
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_2
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_2 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_2_tkox6exn/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_2 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_2_tkox6exn/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_2 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_2_tkox6exn/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_2 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_2_tkox6exn/Thresholding_rtl_2_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_2_axi_wrapper Thresholding_rtl_2
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_24_r7hogqcq/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_24_r7hogqcq/StreamingFIFO_rtl_24.v
create_bd_cell -type module -reference StreamingFIFO_rtl_24 StreamingFIFO_rtl_24
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_hls_2:1.0 StreamingMaxPool_hls_2
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_25_1_uil08n/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_25_1_uil08n/StreamingFIFO_rtl_25.v
create_bd_cell -type module -reference StreamingFIFO_rtl_25 StreamingFIFO_rtl_25
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_10_vsp8bcsy/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_10_vsp8bcsy/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_10_vsp8bcsy/StreamingDataWidthConverter_rtl_10.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_10 StreamingDataWidthConverter_rtl_10
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_26_ab0n75tx/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_26_ab0n75tx/StreamingFIFO_rtl_26.v
create_bd_cell -type module -reference StreamingFIFO_rtl_26 StreamingFIFO_rtl_26
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_3_zs2lv65v/fmpadding_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_3_zs2lv65v/fmpadding.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_3_zs2lv65v/axi2we.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_3_zs2lv65v/FMPadding_rtl_3.v
create_bd_cell -type module -reference FMPadding_rtl_3 FMPadding_rtl_3
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_27_fp1akvon/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_27_fp1akvon/StreamingFIFO_rtl_27.v
create_bd_cell -type module -reference StreamingFIFO_rtl_27 StreamingFIFO_rtl_27
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_11_mbnmbcng/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_11_mbnmbcng/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_11_mbnmbcng/StreamingDataWidthConverter_rtl_11.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_11 StreamingDataWidthConverter_rtl_11
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_28_6dfoleas/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_28_6dfoleas/StreamingFIFO_rtl_28.v
create_bd_cell -type module -reference StreamingFIFO_rtl_28 StreamingFIFO_rtl_28
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_t8laaiej/swg_pkg.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_t8laaiej/ConvolutionInputGenerator_rtl_3_wrapper.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_t8laaiej/ConvolutionInputGenerator_rtl_3_impl.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_t8laaiej/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_3 ConvolutionInputGenerator_rtl_3
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_29_n6xf9iir/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_29_n6xf9iir/StreamingFIFO_rtl_29.v
create_bd_cell -type module -reference StreamingFIFO_rtl_29 StreamingFIFO_rtl_29
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_12_8p6776bd/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_12_8p6776bd/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_12_8p6776bd/StreamingDataWidthConverter_rtl_12.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_12 StreamingDataWidthConverter_rtl_12
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_30_e96hbjk5/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_30_e96hbjk5/StreamingFIFO_rtl_30.v
create_bd_cell -type module -reference StreamingFIFO_rtl_30 StreamingFIFO_rtl_30
create_bd_cell -type hier MVAU_hls_3
create_bd_pin -dir I -type clk /MVAU_hls_3/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_3/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_3/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_3/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_3:1.0 /MVAU_hls_3/MVAU_hls_3
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_3/MVAU_hls_3_wstrm
set_property -dict [list CONFIG.DEPTH {512} CONFIG.WIDTH {48} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_3_e1wnp05c/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_3/MVAU_hls_3_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_rst_n] [get_bd_pins MVAU_hls_3/MVAU_hls_3_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_clk] [get_bd_pins MVAU_hls_3/MVAU_hls_3_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_rst_n] [get_bd_pins MVAU_hls_3/MVAU_hls_3/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_clk] [get_bd_pins MVAU_hls_3/MVAU_hls_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/in0_V] [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/out_V] [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_31_ids9j5o4/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_31_ids9j5o4/StreamingFIFO_rtl_31.v
create_bd_cell -type module -reference StreamingFIFO_rtl_31 StreamingFIFO_rtl_31
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_3
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_3 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_3_zkc7pm02/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_3 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_3_zkc7pm02/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_3 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_3_zkc7pm02/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_3 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_3_zkc7pm02/Thresholding_rtl_3_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_3_axi_wrapper Thresholding_rtl_3
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_32_lnrwwer2/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_32_lnrwwer2/StreamingFIFO_rtl_32.v
create_bd_cell -type module -reference StreamingFIFO_rtl_32 StreamingFIFO_rtl_32
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_hls_3:1.0 StreamingMaxPool_hls_3
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_33_ehd7lk07/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_33_ehd7lk07/StreamingFIFO_rtl_33.v
create_bd_cell -type module -reference StreamingFIFO_rtl_33 StreamingFIFO_rtl_33
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_13_4g2mxkfi/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_13_4g2mxkfi/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_13_4g2mxkfi/StreamingDataWidthConverter_rtl_13.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_13 StreamingDataWidthConverter_rtl_13
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_34_oz2wwee9/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_34_oz2wwee9/StreamingFIFO_rtl_34.v
create_bd_cell -type module -reference StreamingFIFO_rtl_34 StreamingFIFO_rtl_34
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_4_y32jdtll/fmpadding_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_4_y32jdtll/fmpadding.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_4_y32jdtll/axi2we.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_4_y32jdtll/FMPadding_rtl_4.v
create_bd_cell -type module -reference FMPadding_rtl_4 FMPadding_rtl_4
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_35_m98wp8si/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_35_m98wp8si/StreamingFIFO_rtl_35.v
create_bd_cell -type module -reference StreamingFIFO_rtl_35 StreamingFIFO_rtl_35
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_14_e6bv1pxg/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_14_e6bv1pxg/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_14_e6bv1pxg/StreamingDataWidthConverter_rtl_14.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_14 StreamingDataWidthConverter_rtl_14
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_36_f_9y_j1z/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_36_f_9y_j1z/StreamingFIFO_rtl_36.v
create_bd_cell -type module -reference StreamingFIFO_rtl_36 StreamingFIFO_rtl_36
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_u0m9f4ec/swg_pkg.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_u0m9f4ec/ConvolutionInputGenerator_rtl_4_wrapper.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_u0m9f4ec/ConvolutionInputGenerator_rtl_4_impl.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_u0m9f4ec/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_4 ConvolutionInputGenerator_rtl_4
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_37_fi41sied/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_37_fi41sied/StreamingFIFO_rtl_37.v
create_bd_cell -type module -reference StreamingFIFO_rtl_37 StreamingFIFO_rtl_37
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_15__e9pjnvp/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_15__e9pjnvp/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_15__e9pjnvp/StreamingDataWidthConverter_rtl_15.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_15 StreamingDataWidthConverter_rtl_15
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_38_w60rft3e/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_38_w60rft3e/StreamingFIFO_rtl_38.v
create_bd_cell -type module -reference StreamingFIFO_rtl_38 StreamingFIFO_rtl_38
create_bd_cell -type hier MVAU_hls_4
create_bd_pin -dir I -type clk /MVAU_hls_4/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_4/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_4/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_4/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_4:1.0 /MVAU_hls_4/MVAU_hls_4
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_4/MVAU_hls_4_wstrm
set_property -dict [list CONFIG.DEPTH {1024} CONFIG.WIDTH {24} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_4_mdkgsans/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_4/MVAU_hls_4_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_rst_n] [get_bd_pins MVAU_hls_4/MVAU_hls_4_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_clk] [get_bd_pins MVAU_hls_4/MVAU_hls_4_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_rst_n] [get_bd_pins MVAU_hls_4/MVAU_hls_4/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_clk] [get_bd_pins MVAU_hls_4/MVAU_hls_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/in0_V] [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/out_V] [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_39_uhusmzwi/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_39_uhusmzwi/StreamingFIFO_rtl_39.v
create_bd_cell -type module -reference StreamingFIFO_rtl_39 StreamingFIFO_rtl_39
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_4
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_4 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_4_f10opjcs/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_4 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_4_f10opjcs/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_4 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_4_f10opjcs/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_4 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_4_f10opjcs/Thresholding_rtl_4_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_4_axi_wrapper Thresholding_rtl_4
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_40_pws6hdk_/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_40_pws6hdk_/StreamingFIFO_rtl_40.v
create_bd_cell -type module -reference StreamingFIFO_rtl_40 StreamingFIFO_rtl_40
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_hls_4:1.0 StreamingMaxPool_hls_4
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_41_69vg9ief/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_41_69vg9ief/StreamingFIFO_rtl_41.v
create_bd_cell -type module -reference StreamingFIFO_rtl_41 StreamingFIFO_rtl_41
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_16_ed6f2893/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_16_ed6f2893/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_16_ed6f2893/StreamingDataWidthConverter_rtl_16.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_16 StreamingDataWidthConverter_rtl_16
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_42_8w0pel4t/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_42_8w0pel4t/StreamingFIFO_rtl_42.v
create_bd_cell -type module -reference StreamingFIFO_rtl_42 StreamingFIFO_rtl_42
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_5_ldz8b1qu/fmpadding_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_5_ldz8b1qu/fmpadding.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_5_ldz8b1qu/axi2we.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_5_ldz8b1qu/FMPadding_rtl_5.v
create_bd_cell -type module -reference FMPadding_rtl_5 FMPadding_rtl_5
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_43_4qa17da6/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_43_4qa17da6/StreamingFIFO_rtl_43.v
create_bd_cell -type module -reference StreamingFIFO_rtl_43 StreamingFIFO_rtl_43
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_17_q9n0moty/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_17_q9n0moty/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_17_q9n0moty/StreamingDataWidthConverter_rtl_17.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_17 StreamingDataWidthConverter_rtl_17
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_44_imc1egur/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_44_imc1egur/StreamingFIFO_rtl_44.v
create_bd_cell -type module -reference StreamingFIFO_rtl_44 StreamingFIFO_rtl_44
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_5_3vh_38pq/swg_pkg.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_5_3vh_38pq/ConvolutionInputGenerator_rtl_5_wrapper.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_5_3vh_38pq/ConvolutionInputGenerator_rtl_5_impl.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_5_3vh_38pq/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_5 ConvolutionInputGenerator_rtl_5
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_45_rihgw1vq/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_45_rihgw1vq/StreamingFIFO_rtl_45.v
create_bd_cell -type module -reference StreamingFIFO_rtl_45 StreamingFIFO_rtl_45
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_18_hdxbqogr/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_18_hdxbqogr/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_18_hdxbqogr/StreamingDataWidthConverter_rtl_18.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_18 StreamingDataWidthConverter_rtl_18
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_46_6rvp8tlw/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_46_6rvp8tlw/StreamingFIFO_rtl_46.v
create_bd_cell -type module -reference StreamingFIFO_rtl_46 StreamingFIFO_rtl_46
create_bd_cell -type hier MVAU_hls_5
create_bd_pin -dir I -type clk /MVAU_hls_5/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_5/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_5/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_5/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_5:1.0 /MVAU_hls_5/MVAU_hls_5
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_5/MVAU_hls_5_wstrm
set_property -dict [list CONFIG.DEPTH {2048} CONFIG.WIDTH {16} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_5_5mtbgf1p/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_5/MVAU_hls_5_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_rst_n] [get_bd_pins MVAU_hls_5/MVAU_hls_5_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_clk] [get_bd_pins MVAU_hls_5/MVAU_hls_5_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_rst_n] [get_bd_pins MVAU_hls_5/MVAU_hls_5/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_clk] [get_bd_pins MVAU_hls_5/MVAU_hls_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/in0_V] [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/out_V] [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_47_nz1__foy/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_47_nz1__foy/StreamingFIFO_rtl_47.v
create_bd_cell -type module -reference StreamingFIFO_rtl_47 StreamingFIFO_rtl_47
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_5
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_5 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_5_mo4sguvr/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_5 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_5_mo4sguvr/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_5 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_5_mo4sguvr/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_5 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_5_mo4sguvr/Thresholding_rtl_5_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_5_axi_wrapper Thresholding_rtl_5
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_48_9bjk41ai/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_48_9bjk41ai/StreamingFIFO_rtl_48.v
create_bd_cell -type module -reference StreamingFIFO_rtl_48 StreamingFIFO_rtl_48
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_hls_5:1.0 StreamingMaxPool_hls_5
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_49_fbo98og3/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_49_fbo98og3/StreamingFIFO_rtl_49.v
create_bd_cell -type module -reference StreamingFIFO_rtl_49 StreamingFIFO_rtl_49
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_19_9l97a0qw/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_19_9l97a0qw/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_19_9l97a0qw/StreamingDataWidthConverter_rtl_19.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_19 StreamingDataWidthConverter_rtl_19
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_50_bkcujzl2/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_50_bkcujzl2/StreamingFIFO_rtl_50.v
create_bd_cell -type module -reference StreamingFIFO_rtl_50 StreamingFIFO_rtl_50
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_6_akl8yec_/fmpadding_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_6_akl8yec_/fmpadding.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_6_akl8yec_/axi2we.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_FMPadding_rtl_6_akl8yec_/FMPadding_rtl_6.v
create_bd_cell -type module -reference FMPadding_rtl_6 FMPadding_rtl_6
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_51_81u2dm_9/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_51_81u2dm_9/StreamingFIFO_rtl_51.v
create_bd_cell -type module -reference StreamingFIFO_rtl_51 StreamingFIFO_rtl_51
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_20_fk047857/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_20_fk047857/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_20_fk047857/StreamingDataWidthConverter_rtl_20.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_20 StreamingDataWidthConverter_rtl_20
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_52_6_khh_6o/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_52_6_khh_6o/StreamingFIFO_rtl_52.v
create_bd_cell -type module -reference StreamingFIFO_rtl_52 StreamingFIFO_rtl_52
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_6_c8zvn1am/swg_pkg.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_6_c8zvn1am/ConvolutionInputGenerator_rtl_6_wrapper.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_6_c8zvn1am/ConvolutionInputGenerator_rtl_6_impl.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_ConvolutionInputGenerator_rtl_6_c8zvn1am/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_6 ConvolutionInputGenerator_rtl_6
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_53_dqbzmq9g/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_53_dqbzmq9g/StreamingFIFO_rtl_53.v
create_bd_cell -type module -reference StreamingFIFO_rtl_53 StreamingFIFO_rtl_53
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_21_eh3pcsru/dwc_axi.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_21_eh3pcsru/dwc.sv
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingDataWidthConverter_rtl_21_eh3pcsru/StreamingDataWidthConverter_rtl_21.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_21 StreamingDataWidthConverter_rtl_21
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_54_c3udxgno/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_54_c3udxgno/StreamingFIFO_rtl_54.v
create_bd_cell -type module -reference StreamingFIFO_rtl_54 StreamingFIFO_rtl_54
create_bd_cell -type hier MVAU_hls_6
create_bd_pin -dir I -type clk /MVAU_hls_6/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_6/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_6/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_6/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_6:1.0 /MVAU_hls_6/MVAU_hls_6
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_6/MVAU_hls_6_wstrm
set_property -dict [list CONFIG.DEPTH {4096} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_6_f0wonii9/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_6/MVAU_hls_6_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_rst_n] [get_bd_pins MVAU_hls_6/MVAU_hls_6_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_clk] [get_bd_pins MVAU_hls_6/MVAU_hls_6_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_rst_n] [get_bd_pins MVAU_hls_6/MVAU_hls_6/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_clk] [get_bd_pins MVAU_hls_6/MVAU_hls_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/in0_V] [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/out_V] [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_55_0veww9jv/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_55_0veww9jv/StreamingFIFO_rtl_55.v
create_bd_cell -type module -reference StreamingFIFO_rtl_55 StreamingFIFO_rtl_55
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_6
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_6 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_6_xc51zmry/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_6 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_6_xc51zmry/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_6 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_6_xc51zmry/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_6 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_6_xc51zmry/Thresholding_rtl_6_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_6_axi_wrapper Thresholding_rtl_6
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_56_x_z2by28/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_56_x_z2by28/StreamingFIFO_rtl_56.v
create_bd_cell -type module -reference StreamingFIFO_rtl_56 StreamingFIFO_rtl_56
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_hls_6:1.0 StreamingMaxPool_hls_6
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_57_bhsysnea/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_57_bhsysnea/StreamingFIFO_rtl_57.v
create_bd_cell -type module -reference StreamingFIFO_rtl_57 StreamingFIFO_rtl_57
create_bd_cell -type hier MVAU_hls_7
create_bd_pin -dir I -type clk /MVAU_hls_7/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_7/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_7/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_7/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_7:1.0 /MVAU_hls_7/MVAU_hls_7
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_7/MVAU_hls_7_wstrm
set_property -dict [list CONFIG.DEPTH {65536} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_7_6b_w011r/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_7/MVAU_hls_7_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_rst_n] [get_bd_pins MVAU_hls_7/MVAU_hls_7_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_clk] [get_bd_pins MVAU_hls_7/MVAU_hls_7_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_rst_n] [get_bd_pins MVAU_hls_7/MVAU_hls_7/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_clk] [get_bd_pins MVAU_hls_7/MVAU_hls_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/in0_V] [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/out_V] [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_58_caudut09/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_58_caudut09/StreamingFIFO_rtl_58.v
create_bd_cell -type module -reference StreamingFIFO_rtl_58 StreamingFIFO_rtl_58
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_7
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_7 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_7_0cqmx0c8/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_7 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_7_0cqmx0c8/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_7 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_7_0cqmx0c8/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_7 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_7_0cqmx0c8/Thresholding_rtl_7_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_7_axi_wrapper Thresholding_rtl_7
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_59_eolj_sts/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_59_eolj_sts/StreamingFIFO_rtl_59.v
create_bd_cell -type module -reference StreamingFIFO_rtl_59 StreamingFIFO_rtl_59
create_bd_cell -type hier MVAU_hls_8
create_bd_pin -dir I -type clk /MVAU_hls_8/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_8/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_8/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_8/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_8:1.0 /MVAU_hls_8/MVAU_hls_8
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_8/MVAU_hls_8_wstrm
set_property -dict [list CONFIG.DEPTH {16384} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_8_5s85_als/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_8/MVAU_hls_8_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_8/MVAU_hls_8_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_8/MVAU_hls_8/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_8/ap_rst_n] [get_bd_pins MVAU_hls_8/MVAU_hls_8_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_8/ap_clk] [get_bd_pins MVAU_hls_8/MVAU_hls_8_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_8/ap_rst_n] [get_bd_pins MVAU_hls_8/MVAU_hls_8/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_8/ap_clk] [get_bd_pins MVAU_hls_8/MVAU_hls_8/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_8/in0_V] [get_bd_intf_pins MVAU_hls_8/MVAU_hls_8/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_8/out_V] [get_bd_intf_pins MVAU_hls_8/MVAU_hls_8/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_60_sa38xipo/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_60_sa38xipo/StreamingFIFO_rtl_60.v
create_bd_cell -type module -reference StreamingFIFO_rtl_60 StreamingFIFO_rtl_60
file mkdir ./ip/verilog/rtl_ops/Thresholding_rtl_8
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_8 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_8_9pus6u3m/axilite_if.v
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_8 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_8_9pus6u3m/thresholding.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_8 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_8_9pus6u3m/thresholding_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_rtl_8 -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_Thresholding_rtl_8_9pus6u3m/Thresholding_rtl_8_axi_wrapper.v
create_bd_cell -type module -reference Thresholding_rtl_8_axi_wrapper Thresholding_rtl_8
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_61__6dp3wjy/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_61__6dp3wjy/StreamingFIFO_rtl_61.v
create_bd_cell -type module -reference StreamingFIFO_rtl_61 StreamingFIFO_rtl_61
create_bd_cell -type hier MVAU_hls_9
create_bd_pin -dir I -type clk /MVAU_hls_9/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_9/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_9/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_9/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_9:1.0 /MVAU_hls_9/MVAU_hls_9
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_9/MVAU_hls_9_wstrm
set_property -dict [list CONFIG.DEPTH {1920} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_MVAU_hls_9__6o96cqq/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_9/MVAU_hls_9_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_9/MVAU_hls_9_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_9/MVAU_hls_9/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_9/ap_rst_n] [get_bd_pins MVAU_hls_9/MVAU_hls_9_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_9/ap_clk] [get_bd_pins MVAU_hls_9/MVAU_hls_9_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_9/ap_rst_n] [get_bd_pins MVAU_hls_9/MVAU_hls_9/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_9/ap_clk] [get_bd_pins MVAU_hls_9/MVAU_hls_9/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_9/in0_V] [get_bd_intf_pins MVAU_hls_9/MVAU_hls_9/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_9/out_V] [get_bd_intf_pins MVAU_hls_9/MVAU_hls_9/out_V]
save_bd_design
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_62_9k_k2f65/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_62_9k_k2f65/StreamingFIFO_rtl_62.v
create_bd_cell -type module -reference StreamingFIFO_rtl_62 StreamingFIFO_rtl_62
create_bd_cell -type ip -vlnv xilinx.com:hls:ChannelwiseOp_hls_0:1.0 ChannelwiseOp_hls_0
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_63_dkl36lrk/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_63_dkl36lrk/StreamingFIFO_rtl_63.v
create_bd_cell -type module -reference StreamingFIFO_rtl_63 StreamingFIFO_rtl_63
create_bd_cell -type ip -vlnv xilinx.com:hls:LabelSelect_hls_0:1.0 LabelSelect_hls_0
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_64_t66h_z09/Q_srl.v
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/code_gen_ipgen_StreamingFIFO_rtl_64_t66h_z09/StreamingFIFO_rtl_64.v
create_bd_cell -type module -reference StreamingFIFO_rtl_64 StreamingFIFO_rtl_64
make_bd_pins_external [get_bd_pins StreamingFIFO_rtl_0/ap_clk]
set_property name ap_clk [get_bd_ports ap_clk_0]
make_bd_pins_external [get_bd_pins StreamingFIFO_rtl_0/ap_rst_n]
set_property name ap_rst_n [get_bd_ports ap_rst_n_0]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_rtl_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_0/out_V] [get_bd_intf_pins FMPadding_rtl_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_rtl_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_1/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_2_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_2_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_2_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_2_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_2_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_2_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_1/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_3/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_4/out_V] [get_bd_intf_pins MVAU_hls_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_5/out_V] [get_bd_intf_pins Thresholding_rtl_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_6_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_6_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_6_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_6_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_6_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_6_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_6_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_6_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_6_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_6_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_hls_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_hls_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6_4/out_V] [get_bd_intf_pins StreamingMaxPool_hls_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_hls_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_7/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_8/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_8/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_8/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_rtl_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_rtl_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_8/out_V] [get_bd_intf_pins FMPadding_rtl_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_9/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_9/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_rtl_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_9/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_9/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_10/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_10/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_10/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_10/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_11/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_11/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_11/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_11/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_12/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_12/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_12/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_12/out_V] [get_bd_intf_pins MVAU_hls_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_13/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_13/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_13/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_13/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_14/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_14/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_5/out_V] [get_bd_intf_pins StreamingFIFO_rtl_14/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_14/out_V] [get_bd_intf_pins Thresholding_rtl_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_15/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_15/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_15/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_hls_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_hls_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_15/out_V] [get_bd_intf_pins StreamingMaxPool_hls_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_16/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_16/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_hls_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_16/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_16/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_17/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_17/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_6/out_V] [get_bd_intf_pins StreamingFIFO_rtl_17/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_rtl_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_rtl_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_17/out_V] [get_bd_intf_pins FMPadding_rtl_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_18/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_18/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_rtl_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_18/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_18/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_19/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_19/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_7/out_V] [get_bd_intf_pins StreamingFIFO_rtl_19/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_19/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_20/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_20/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_20/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_8/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_8/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_20/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_8/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_21/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_21/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_8/out_V] [get_bd_intf_pins StreamingFIFO_rtl_21/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_21/out_V] [get_bd_intf_pins MVAU_hls_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_22/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_22/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_22/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_9/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_9/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_22/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_9/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_23/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_23/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_9/out_V] [get_bd_intf_pins StreamingFIFO_rtl_23/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_23/out_V] [get_bd_intf_pins Thresholding_rtl_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_24/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_24/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_24/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_hls_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_hls_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_24/out_V] [get_bd_intf_pins StreamingMaxPool_hls_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_25/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_25/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_hls_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_25/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_10/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_10/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_25/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_10/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_26/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_26/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_10/out_V] [get_bd_intf_pins StreamingFIFO_rtl_26/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_rtl_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_rtl_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_26/out_V] [get_bd_intf_pins FMPadding_rtl_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_27/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_27/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_rtl_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_27/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_11/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_11/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_27/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_11/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_28/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_28/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_11/out_V] [get_bd_intf_pins StreamingFIFO_rtl_28/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_28/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_29/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_29/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_29/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_12/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_12/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_29/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_12/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_30/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_30/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_12/out_V] [get_bd_intf_pins StreamingFIFO_rtl_30/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_30/out_V] [get_bd_intf_pins MVAU_hls_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_31/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_31/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_31/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_31/out_V] [get_bd_intf_pins Thresholding_rtl_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_32/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_32/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_32/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_hls_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_hls_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_32/out_V] [get_bd_intf_pins StreamingMaxPool_hls_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_33/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_33/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_hls_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_33/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_13/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_13/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_33/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_13/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_34/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_34/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_13/out_V] [get_bd_intf_pins StreamingFIFO_rtl_34/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_34/out_V] [get_bd_intf_pins FMPadding_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_35/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_35/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_rtl_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_35/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_14/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_14/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_35/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_14/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_36/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_36/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_14/out_V] [get_bd_intf_pins StreamingFIFO_rtl_36/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_36/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_37/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_37/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_37/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_15/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_15/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_37/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_15/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_38/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_38/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_15/out_V] [get_bd_intf_pins StreamingFIFO_rtl_38/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_38/out_V] [get_bd_intf_pins MVAU_hls_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_39/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_39/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_39/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_39/out_V] [get_bd_intf_pins Thresholding_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_40/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_40/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_40/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_hls_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_hls_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_40/out_V] [get_bd_intf_pins StreamingMaxPool_hls_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_41/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_41/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_hls_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_41/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_16/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_16/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_41/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_16/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_42/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_42/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_16/out_V] [get_bd_intf_pins StreamingFIFO_rtl_42/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_rtl_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_rtl_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_42/out_V] [get_bd_intf_pins FMPadding_rtl_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_43/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_43/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_rtl_5/out_V] [get_bd_intf_pins StreamingFIFO_rtl_43/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_17/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_17/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_43/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_17/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_44/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_44/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_17/out_V] [get_bd_intf_pins StreamingFIFO_rtl_44/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_44/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_45/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_45/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_5/out_V] [get_bd_intf_pins StreamingFIFO_rtl_45/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_18/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_18/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_45/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_18/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_46/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_46/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_18/out_V] [get_bd_intf_pins StreamingFIFO_rtl_46/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_46/out_V] [get_bd_intf_pins MVAU_hls_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_47/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_47/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/out_V] [get_bd_intf_pins StreamingFIFO_rtl_47/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_47/out_V] [get_bd_intf_pins Thresholding_rtl_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_48/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_48/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_5/out_V] [get_bd_intf_pins StreamingFIFO_rtl_48/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_hls_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_hls_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_48/out_V] [get_bd_intf_pins StreamingMaxPool_hls_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_49/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_49/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_hls_5/out_V] [get_bd_intf_pins StreamingFIFO_rtl_49/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_19/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_19/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_49/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_19/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_50/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_50/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_19/out_V] [get_bd_intf_pins StreamingFIFO_rtl_50/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_rtl_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_rtl_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_50/out_V] [get_bd_intf_pins FMPadding_rtl_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_51/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_51/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_rtl_6/out_V] [get_bd_intf_pins StreamingFIFO_rtl_51/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_20/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_20/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_51/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_20/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_52/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_52/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_20/out_V] [get_bd_intf_pins StreamingFIFO_rtl_52/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_52/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_53/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_53/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_6/out_V] [get_bd_intf_pins StreamingFIFO_rtl_53/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_21/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_21/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_53/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_21/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_54/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_54/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_21/out_V] [get_bd_intf_pins StreamingFIFO_rtl_54/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_54/out_V] [get_bd_intf_pins MVAU_hls_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_55/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_55/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/out_V] [get_bd_intf_pins StreamingFIFO_rtl_55/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_55/out_V] [get_bd_intf_pins Thresholding_rtl_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_56/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_56/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_6/out_V] [get_bd_intf_pins StreamingFIFO_rtl_56/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_hls_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_hls_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_56/out_V] [get_bd_intf_pins StreamingMaxPool_hls_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_57/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_57/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_hls_6/out_V] [get_bd_intf_pins StreamingFIFO_rtl_57/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_57/out_V] [get_bd_intf_pins MVAU_hls_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_58/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_58/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/out_V] [get_bd_intf_pins StreamingFIFO_rtl_58/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_58/out_V] [get_bd_intf_pins Thresholding_rtl_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_59/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_59/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_7/out_V] [get_bd_intf_pins StreamingFIFO_rtl_59/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_8/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_8/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_59/out_V] [get_bd_intf_pins MVAU_hls_8/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_60/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_60/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_8/out_V] [get_bd_intf_pins StreamingFIFO_rtl_60/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_rtl_8/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_rtl_8/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_60/out_V] [get_bd_intf_pins Thresholding_rtl_8/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_61/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_61/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_rtl_8/out_V] [get_bd_intf_pins StreamingFIFO_rtl_61/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_9/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_9/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_61/out_V] [get_bd_intf_pins MVAU_hls_9/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_62/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_62/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_9/out_V] [get_bd_intf_pins StreamingFIFO_rtl_62/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ChannelwiseOp_hls_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ChannelwiseOp_hls_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_62/out_V] [get_bd_intf_pins ChannelwiseOp_hls_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_63/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_63/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ChannelwiseOp_hls_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_63/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins LabelSelect_hls_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins LabelSelect_hls_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_63/out_V] [get_bd_intf_pins LabelSelect_hls_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_64/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_64/ap_clk]
connect_bd_intf_net [get_bd_intf_pins LabelSelect_hls_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_64/in0_V]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_rtl_0/in0_V]
set_property name s_axis_0 [get_bd_intf_ports in0_V_0]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_rtl_64/out_V]
set_property name m_axis_0 [get_bd_intf_ports out_V_0]
set_property CONFIG.FREQ_HZ 200000000 [get_bd_ports /ap_clk]
validate_bd_design
save_bd_design
make_wrapper -files [get_files /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/vivado_stitch_proj_1j5ru_id/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd] -top
add_files -norecurse /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/vivado_stitch_proj_1j5ru_id/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/hdl/finn_design_wrapper.v
set_property top finn_design_wrapper [current_fileset]
ipx::package_project -root_dir /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/vivado_stitch_proj_1j5ru_id/ip -vendor xilinx_finn -library finn -taxonomy /UserIP -module finn_design -import_files
set_property ipi_drc {ignore_freq_hz true} [ipx::current_core]
ipx::remove_segment -quiet m_axi_gmem0:APERTURE_0 [ipx::get_address_spaces m_axi_gmem0 -of_objects [ipx::current_core]]
set_property core_revision 2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::create_xgui_files [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property value_resolve_type user [ipx::get_bus_parameters -of [ipx::get_bus_interfaces -of [ipx::current_core ]]]

set core [ipx::current_core]

# Add rudimentary driver
file copy -force data ip/
set file_group [ipx::add_file_group -type software_driver {} $core]
set_property type mdd       [ipx::add_file data/finn_design.mdd $file_group]
set_property type tclSource [ipx::add_file data/finn_design.tcl $file_group]

# Remove all XCI references to subcores
set impl_files [ipx::get_file_groups xilinx_implementation -of $core]
foreach xci [ipx::get_files -of $impl_files {*.xci}] {
    ipx::remove_file [get_property NAME $xci] $impl_files
}

# Construct a single flat memory map for each AXI-lite interface port
foreach port [get_bd_intf_ports -filter {CONFIG.PROTOCOL==AXI4LITE}] {
    set pin $port
    set awidth ""
    while { $awidth == "" } {
        set pins [get_bd_intf_pins -of [get_bd_intf_nets -boundary_type lower -of $pin]]
        set kill [lsearch $pins $pin]
        if { $kill >= 0 } { set pins [lreplace $pins $kill $kill] }
        if { [llength $pins] != 1 } { break }
        set pin [lindex $pins 0]
        set awidth [get_property CONFIG.ADDR_WIDTH $pin]
    }
    if { $awidth == "" } {
       puts "CRITICAL WARNING: Unable to construct address map for $port."
    } {
       set range [expr 2**$awidth]
       set range [expr $range < 4096 ? 4096 : $range]
       puts "INFO: Building address map for $port: 0+:$range"
       set name [get_property NAME $port]
       set addr_block [ipx::add_address_block Reg0 [ipx::add_memory_map $name $core]]
       set_property range $range $addr_block
       set_property slave_memory_map_ref $name [ipx::get_bus_interfaces $name -of $core]
    }
}

# Finalize and Save
ipx::update_checksums $core
ipx::save_core $core

# Remove stale subcore references from component.xml
file rename -force ip/component.xml ip/component.bak
set ifile [open ip/component.bak r]
set ofile [open ip/component.xml w]
set buf [list]
set kill 0
while { [eof $ifile] != 1 } {
    gets $ifile line
    if { [string match {*<spirit:fileSet>*} $line] == 1 } {
        foreach l $buf { puts $ofile $l }
        set buf [list $line]
    } elseif { [llength $buf] > 0 } {
        lappend buf $line

        if { [string match {*</spirit:fileSet>*} $line] == 1 } {
            if { $kill == 0 } { foreach l $buf { puts $ofile $l } }
            set buf [list]
            set kill 0
        } elseif { [string match {*<xilinx:subCoreRef>*} $line] == 1 } {
            set kill 1
        }
    } else {
        puts $ofile $line
    }
}
close $ifile
close $ofile

set all_v_files [get_files -filter {USED_IN_SYNTHESIS == 1 && (FILE_TYPE == Verilog || FILE_TYPE == SystemVerilog || FILE_TYPE =="Verilog Header")}]
set fp [open /home/phu/repos/RadioShiftML/RadioShift-ML/src/finn_custom_build/tmp/vivado_stitch_proj_1j5ru_id/all_verilog_srcs.txt w]
foreach vf $all_v_files {puts $fp $vf}
close $fp

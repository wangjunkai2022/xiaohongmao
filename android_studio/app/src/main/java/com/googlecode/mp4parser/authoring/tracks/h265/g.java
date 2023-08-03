package com.googlecode.mp4parser.authoring.tracks.h265;

import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;

/* compiled from: VideoParameterSet.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    ByteBuffer f36292a;

    /* renamed from: b  reason: collision with root package name */
    int f36293b;

    public g(ByteBuffer byteBuffer) throws IOException {
        this.f36292a = byteBuffer;
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(Channels.newInputStream(new com.googlecode.mp4parser.util.b((ByteBuffer) byteBuffer.position(0))));
        this.f36293b = bVar.w(4, "vps_parameter_set_id");
        bVar.w(2, "vps_reserved_three_2bits");
        bVar.w(6, "vps_max_layers_minus1");
        int w9 = bVar.w(3, "vps_max_sub_layers_minus1");
        bVar.p("vps_temporal_id_nesting_flag");
        bVar.w(16, "vps_reserved_0xffff_16bits");
        b(w9, bVar);
        boolean p9 = bVar.p("vps_sub_layer_ordering_info_present_flag");
        int[] iArr = new int[p9 ? 1 : w9 + 1];
        int[] iArr2 = new int[p9 ? 1 : w9 + 1];
        int[] iArr3 = new int[p9 ? 1 : w9 + 1];
        for (int i4 = p9 ? 0 : w9; i4 <= w9; i4++) {
            iArr[i4] = bVar.y("vps_max_dec_pic_buffering_minus1[" + i4 + "]");
            iArr2[i4] = bVar.y("vps_max_dec_pic_buffering_minus1[" + i4 + "]");
            iArr3[i4] = bVar.y("vps_max_dec_pic_buffering_minus1[" + i4 + "]");
        }
        int w10 = bVar.w(6, "vps_max_layer_id");
        int y9 = bVar.y("vps_num_layer_sets_minus1");
        boolean[][] zArr = (boolean[][]) Array.newInstance(boolean.class, y9, w10);
        for (int i10 = 1; i10 <= y9; i10++) {
            for (int i11 = 0; i11 <= w10; i11++) {
                boolean[] zArr2 = zArr[i10];
                zArr2[i11] = bVar.p("layer_id_included_flag[" + i10 + "][" + i11 + "]");
            }
        }
        if (bVar.p("vps_timing_info_present_flag")) {
            bVar.w(32, "vps_num_units_in_tick");
            bVar.w(32, "vps_time_scale");
            if (bVar.p("vps_poc_proportional_to_timing_flag")) {
                bVar.y("vps_num_ticks_poc_diff_one_minus1");
            }
            int y10 = bVar.y("vps_num_hrd_parameters");
            int[] iArr4 = new int[y10];
            boolean[] zArr3 = new boolean[y10];
            for (int i12 = 0; i12 < y10; i12++) {
                iArr4[i12] = bVar.y("hrd_layer_set_idx[" + i12 + "]");
                if (i12 > 0) {
                    zArr3[i12] = bVar.p("cprms_present_flag[" + i12 + "]");
                } else {
                    zArr3[0] = true;
                }
                a(zArr3[i12], w9, bVar);
            }
        }
        if (bVar.p("vps_extension_flag")) {
            while (bVar.f()) {
                bVar.p("vps_extension_data_flag");
            }
        }
        bVar.v();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(boolean r12, int r13, com.googlecode.mp4parser.h264.read.b r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.authoring.tracks.h265.g.a(boolean, int, com.googlecode.mp4parser.h264.read.b):void");
    }

    public void b(int i4, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        int i10 = i4;
        int i11 = 2;
        bVar.w(2, "general_profile_space ");
        bVar.p("general_tier_flag");
        bVar.w(5, "general_profile_idc");
        int i12 = 32;
        boolean[] zArr = new boolean[32];
        char c10 = 0;
        int i13 = 0;
        while (i13 < i12) {
            zArr[i13] = bVar.p("general_profile_compatibility_flag[" + i13 + "]");
            i13++;
            i10 = i4;
            i11 = 2;
            i12 = 32;
            c10 = 0;
        }
        bVar.p("general_progressive_source_flag");
        bVar.p("general_interlaced_source_flag");
        bVar.p("general_non_packed_constraint_flag");
        bVar.p("general_frame_only_constraint_flag");
        bVar.w(44, "general_reserved_zero_44bits");
        int i14 = 8;
        bVar.w(8, "general_level_idc");
        boolean[] zArr2 = new boolean[i10];
        boolean[] zArr3 = new boolean[i10];
        int i15 = 0;
        while (i15 < i10) {
            zArr2[i15] = bVar.p("sub_layer_profile_present_flag[" + i15 + "]");
            zArr3[i15] = bVar.p("sub_layer_level_present_flag[" + i15 + "]");
            i15++;
            i10 = i4;
            i11 = 2;
            i12 = 32;
            c10 = 0;
            i14 = 8;
        }
        if (i10 > 0) {
            for (int i16 = i10; i16 < i14; i16++) {
                bVar.w(i11, "reserved_zero_2bits");
            }
        }
        int[] iArr = new int[i10];
        boolean[] zArr4 = new boolean[i10];
        int[] iArr2 = new int[i10];
        int[] iArr3 = new int[i11];
        iArr3[1] = i12;
        iArr3[c10] = i10;
        boolean[][] zArr5 = (boolean[][]) Array.newInstance(boolean.class, iArr3);
        boolean[] zArr6 = new boolean[i10];
        boolean[] zArr7 = new boolean[i10];
        boolean[] zArr8 = new boolean[i10];
        boolean[] zArr9 = new boolean[i10];
        int[] iArr4 = new int[i10];
        int i17 = 0;
        while (i17 < i10) {
            if (zArr2[i17]) {
                iArr[i17] = bVar.w(2, "sub_layer_profile_space[" + i17 + "]");
                zArr4[i17] = bVar.p("sub_layer_tier_flag[" + i17 + "]");
                iArr2[i17] = bVar.w(5, "sub_layer_profile_idc[" + i17 + "]");
                int i18 = 0;
                while (i18 < 32) {
                    boolean[] zArr10 = zArr5[i17];
                    zArr10[i18] = bVar.p("sub_layer_profile_compatibility_flag[" + i17 + "][" + i18 + "]");
                    i18++;
                    zArr6 = zArr6;
                }
                zArr6[i17] = bVar.p("sub_layer_progressive_source_flag[" + i17 + "]");
                zArr7[i17] = bVar.p("sub_layer_interlaced_source_flag[" + i17 + "]");
                zArr8[i17] = bVar.p("sub_layer_non_packed_constraint_flag[" + i17 + "]");
                zArr9[i17] = bVar.p("sub_layer_frame_only_constraint_flag[" + i17 + "]");
                bVar.s(44, "reserved");
            }
            boolean[] zArr11 = zArr6;
            if (zArr3[i17]) {
                iArr4[i17] = bVar.w(8, "sub_layer_level_idc");
            }
            i17++;
            i10 = i4;
            zArr6 = zArr11;
        }
    }

    void c(int i4, int i10, boolean z9, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        int[] iArr3 = new int[i10];
        int[] iArr4 = new int[i10];
        boolean[] zArr = new boolean[i10];
        for (int i11 = 0; i11 <= i10; i11++) {
            iArr[i11] = bVar.y("bit_rate_value_minus1[" + i11 + "]");
            iArr2[i11] = bVar.y("cpb_size_value_minus1[" + i11 + "]");
            if (z9) {
                iArr3[i11] = bVar.y("cpb_size_du_value_minus1[" + i11 + "]");
                iArr4[i11] = bVar.y("bit_rate_du_value_minus1[" + i11 + "]");
            }
            zArr[i11] = bVar.p("cbr_flag[" + i11 + "]");
        }
    }

    public ByteBuffer d() {
        return this.f36292a;
    }
}

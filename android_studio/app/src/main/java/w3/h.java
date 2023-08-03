package w3;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import w3.i;

/* compiled from: SeqParameterSet.java */
/* loaded from: classes2.dex */
public class h extends b {
    public boolean A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int[] L;
    public i M;
    public g N;
    public int O;

    /* renamed from: a  reason: collision with root package name */
    public int f94388a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f94389b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f94390c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f94391d;

    /* renamed from: e  reason: collision with root package name */
    public int f94392e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f94393f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f94394g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f94395h;

    /* renamed from: i  reason: collision with root package name */
    public c f94396i;

    /* renamed from: j  reason: collision with root package name */
    public int f94397j;

    /* renamed from: k  reason: collision with root package name */
    public int f94398k;

    /* renamed from: l  reason: collision with root package name */
    public int f94399l;

    /* renamed from: m  reason: collision with root package name */
    public int f94400m;

    /* renamed from: n  reason: collision with root package name */
    public int f94401n;

    /* renamed from: o  reason: collision with root package name */
    public int f94402o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f94403p;

    /* renamed from: q  reason: collision with root package name */
    public int f94404q;

    /* renamed from: r  reason: collision with root package name */
    public long f94405r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f94406s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f94407t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f94408u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f94409v;

    /* renamed from: w  reason: collision with root package name */
    public boolean f94410w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f94411x;

    /* renamed from: y  reason: collision with root package name */
    public int f94412y;

    /* renamed from: z  reason: collision with root package name */
    public int f94413z;

    private static i b(com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        i iVar = new i();
        boolean p9 = bVar.p("VUI: aspect_ratio_info_present_flag");
        iVar.f94414a = p9;
        if (p9) {
            a a10 = a.a((int) bVar.s(8, "VUI: aspect_ratio"));
            iVar.f94438y = a10;
            if (a10 == a.f94338b) {
                iVar.f94415b = (int) bVar.s(16, "VUI: sar_width");
                iVar.f94416c = (int) bVar.s(16, "VUI: sar_height");
            }
        }
        boolean p10 = bVar.p("VUI: overscan_info_present_flag");
        iVar.f94417d = p10;
        if (p10) {
            iVar.f94418e = bVar.p("VUI: overscan_appropriate_flag");
        }
        boolean p11 = bVar.p("VUI: video_signal_type_present_flag");
        iVar.f94419f = p11;
        if (p11) {
            iVar.f94420g = (int) bVar.s(3, "VUI: video_format");
            iVar.f94421h = bVar.p("VUI: video_full_range_flag");
            boolean p12 = bVar.p("VUI: colour_description_present_flag");
            iVar.f94422i = p12;
            if (p12) {
                iVar.f94423j = (int) bVar.s(8, "VUI: colour_primaries");
                iVar.f94424k = (int) bVar.s(8, "VUI: transfer_characteristics");
                iVar.f94425l = (int) bVar.s(8, "VUI: matrix_coefficients");
            }
        }
        boolean p13 = bVar.p("VUI: chroma_loc_info_present_flag");
        iVar.f94426m = p13;
        if (p13) {
            iVar.f94427n = bVar.y("VUI chroma_sample_loc_type_top_field");
            iVar.f94428o = bVar.y("VUI chroma_sample_loc_type_bottom_field");
        }
        boolean p14 = bVar.p("VUI: timing_info_present_flag");
        iVar.f94429p = p14;
        if (p14) {
            iVar.f94430q = (int) bVar.s(32, "VUI: num_units_in_tick");
            iVar.f94431r = (int) bVar.s(32, "VUI: time_scale");
            iVar.f94432s = bVar.p("VUI: fixed_frame_rate_flag");
        }
        boolean p15 = bVar.p("VUI: nal_hrd_parameters_present_flag");
        if (p15) {
            iVar.f94435v = d(bVar);
        }
        boolean p16 = bVar.p("VUI: vcl_hrd_parameters_present_flag");
        if (p16) {
            iVar.f94436w = d(bVar);
        }
        if (p15 || p16) {
            iVar.f94433t = bVar.p("VUI: low_delay_hrd_flag");
        }
        iVar.f94434u = bVar.p("VUI: pic_struct_present_flag");
        if (bVar.p("VUI: bitstream_restriction_flag")) {
            i.a aVar = new i.a();
            iVar.f94437x = aVar;
            aVar.f94439a = bVar.p("VUI: motion_vectors_over_pic_boundaries_flag");
            iVar.f94437x.f94440b = bVar.y("VUI max_bytes_per_pic_denom");
            iVar.f94437x.f94441c = bVar.y("VUI max_bits_per_mb_denom");
            iVar.f94437x.f94442d = bVar.y("VUI log2_max_mv_length_horizontal");
            iVar.f94437x.f94443e = bVar.y("VUI log2_max_mv_length_vertical");
            iVar.f94437x.f94444f = bVar.y("VUI num_reorder_frames");
            iVar.f94437x.f94445g = bVar.y("VUI max_dec_frame_buffering");
        }
        return iVar;
    }

    public static h c(InputStream inputStream) throws IOException {
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(inputStream);
        h hVar = new h();
        hVar.f94404q = (int) bVar.s(8, "SPS: profile_idc");
        hVar.f94406s = bVar.p("SPS: constraint_set_0_flag");
        hVar.f94407t = bVar.p("SPS: constraint_set_1_flag");
        hVar.f94408u = bVar.p("SPS: constraint_set_2_flag");
        hVar.f94409v = bVar.p("SPS: constraint_set_3_flag");
        hVar.f94410w = bVar.p("SPS: constraint_set_4_flag");
        hVar.f94411x = bVar.p("SPS: constraint_set_5_flag");
        hVar.f94405r = bVar.s(2, "SPS: reserved_zero_2bits");
        hVar.f94412y = (int) bVar.s(8, "SPS: level_idc");
        hVar.f94413z = bVar.y("SPS: seq_parameter_set_id");
        int i4 = hVar.f94404q;
        if (i4 != 100 && i4 != 110 && i4 != 122 && i4 != 144) {
            hVar.f94396i = c.f94341e;
        } else {
            c a10 = c.a(bVar.y("SPS: chroma_format_idc"));
            hVar.f94396i = a10;
            if (a10 == c.f94343g) {
                hVar.A = bVar.p("SPS: residual_color_transform_flag");
            }
            hVar.f94401n = bVar.y("SPS: bit_depth_luma_minus8");
            hVar.f94402o = bVar.y("SPS: bit_depth_chroma_minus8");
            hVar.f94403p = bVar.p("SPS: qpprime_y_zero_transform_bypass_flag");
            if (bVar.p("SPS: seq_scaling_matrix_present_lag")) {
                e(bVar, hVar);
            }
        }
        hVar.f94397j = bVar.y("SPS: log2_max_frame_num_minus4");
        int y9 = bVar.y("SPS: pic_order_cnt_type");
        hVar.f94388a = y9;
        if (y9 == 0) {
            hVar.f94398k = bVar.y("SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (y9 == 1) {
            hVar.f94390c = bVar.p("SPS: delta_pic_order_always_zero_flag");
            hVar.B = bVar.t("SPS: offset_for_non_ref_pic");
            hVar.C = bVar.t("SPS: offset_for_top_to_bottom_field");
            int y10 = bVar.y("SPS: num_ref_frames_in_pic_order_cnt_cycle");
            hVar.O = y10;
            hVar.L = new int[y10];
            for (int i10 = 0; i10 < hVar.O; i10++) {
                int[] iArr = hVar.L;
                iArr[i10] = bVar.t("SPS: offsetForRefFrame [" + i10 + "]");
            }
        }
        hVar.D = bVar.y("SPS: num_ref_frames");
        hVar.E = bVar.p("SPS: gaps_in_frame_num_value_allowed_flag");
        hVar.f94400m = bVar.y("SPS: pic_width_in_mbs_minus1");
        hVar.f94399l = bVar.y("SPS: pic_height_in_map_units_minus1");
        boolean p9 = bVar.p("SPS: frame_mbs_only_flag");
        hVar.F = p9;
        if (!p9) {
            hVar.f94394g = bVar.p("SPS: mb_adaptive_frame_field_flag");
        }
        hVar.f94395h = bVar.p("SPS: direct_8x8_inference_flag");
        boolean p10 = bVar.p("SPS: frame_cropping_flag");
        hVar.G = p10;
        if (p10) {
            hVar.H = bVar.y("SPS: frame_crop_left_offset");
            hVar.I = bVar.y("SPS: frame_crop_right_offset");
            hVar.J = bVar.y("SPS: frame_crop_top_offset");
            hVar.K = bVar.y("SPS: frame_crop_bottom_offset");
        }
        if (bVar.p("SPS: vui_parameters_present_flag")) {
            hVar.M = b(bVar);
        }
        bVar.v();
        return hVar;
    }

    private static d d(com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        d dVar = new d();
        dVar.f94347a = bVar.y("SPS: cpb_cnt_minus1");
        dVar.f94348b = (int) bVar.s(4, "HRD: bit_rate_scale");
        dVar.f94349c = (int) bVar.s(4, "HRD: cpb_size_scale");
        int i4 = dVar.f94347a;
        dVar.f94350d = new int[i4 + 1];
        dVar.f94351e = new int[i4 + 1];
        dVar.f94352f = new boolean[i4 + 1];
        for (int i10 = 0; i10 <= dVar.f94347a; i10++) {
            dVar.f94350d[i10] = bVar.y("HRD: bit_rate_value_minus1");
            dVar.f94351e[i10] = bVar.y("HRD: cpb_size_value_minus1");
            dVar.f94352f[i10] = bVar.p("HRD: cbr_flag");
        }
        dVar.f94353g = (int) bVar.s(5, "HRD: initial_cpb_removal_delay_length_minus1");
        dVar.f94354h = (int) bVar.s(5, "HRD: cpb_removal_delay_length_minus1");
        dVar.f94355i = (int) bVar.s(5, "HRD: dpb_output_delay_length_minus1");
        dVar.f94356j = (int) bVar.s(5, "HRD: time_offset_length");
        return dVar;
    }

    private static void e(com.googlecode.mp4parser.h264.read.b bVar, h hVar) throws IOException {
        hVar.N = new g();
        for (int i4 = 0; i4 < 8; i4++) {
            if (bVar.p("SPS: seqScalingListPresentFlag")) {
                g gVar = hVar.N;
                f[] fVarArr = new f[8];
                gVar.f94386a = fVarArr;
                f[] fVarArr2 = new f[8];
                gVar.f94387b = fVarArr2;
                if (i4 < 6) {
                    fVarArr[i4] = f.a(bVar, 16);
                } else {
                    fVarArr2[i4 - 6] = f.a(bVar, 64);
                }
            }
        }
    }

    private void f(d dVar, x3.b bVar) throws IOException {
        bVar.o(dVar.f94347a, "HRD: cpb_cnt_minus1");
        bVar.h(dVar.f94348b, 4, "HRD: bit_rate_scale");
        bVar.h(dVar.f94349c, 4, "HRD: cpb_size_scale");
        for (int i4 = 0; i4 <= dVar.f94347a; i4++) {
            bVar.o(dVar.f94350d[i4], "HRD: ");
            bVar.o(dVar.f94351e[i4], "HRD: ");
            bVar.g(dVar.f94352f[i4], "HRD: ");
        }
        bVar.h(dVar.f94353g, 5, "HRD: initial_cpb_removal_delay_length_minus1");
        bVar.h(dVar.f94354h, 5, "HRD: cpb_removal_delay_length_minus1");
        bVar.h(dVar.f94355i, 5, "HRD: dpb_output_delay_length_minus1");
        bVar.h(dVar.f94356j, 5, "HRD: time_offset_length");
    }

    private void g(i iVar, x3.b bVar) throws IOException {
        bVar.g(iVar.f94414a, "VUI: aspect_ratio_info_present_flag");
        if (iVar.f94414a) {
            bVar.h(iVar.f94438y.b(), 8, "VUI: aspect_ratio");
            if (iVar.f94438y == a.f94338b) {
                bVar.h(iVar.f94415b, 16, "VUI: sar_width");
                bVar.h(iVar.f94416c, 16, "VUI: sar_height");
            }
        }
        bVar.g(iVar.f94417d, "VUI: overscan_info_present_flag");
        if (iVar.f94417d) {
            bVar.g(iVar.f94418e, "VUI: overscan_appropriate_flag");
        }
        bVar.g(iVar.f94419f, "VUI: video_signal_type_present_flag");
        if (iVar.f94419f) {
            bVar.h(iVar.f94420g, 3, "VUI: video_format");
            bVar.g(iVar.f94421h, "VUI: video_full_range_flag");
            bVar.g(iVar.f94422i, "VUI: colour_description_present_flag");
            if (iVar.f94422i) {
                bVar.h(iVar.f94423j, 8, "VUI: colour_primaries");
                bVar.h(iVar.f94424k, 8, "VUI: transfer_characteristics");
                bVar.h(iVar.f94425l, 8, "VUI: matrix_coefficients");
            }
        }
        bVar.g(iVar.f94426m, "VUI: chroma_loc_info_present_flag");
        if (iVar.f94426m) {
            bVar.o(iVar.f94427n, "VUI: chroma_sample_loc_type_top_field");
            bVar.o(iVar.f94428o, "VUI: chroma_sample_loc_type_bottom_field");
        }
        bVar.g(iVar.f94429p, "VUI: timing_info_present_flag");
        if (iVar.f94429p) {
            bVar.h(iVar.f94430q, 32, "VUI: num_units_in_tick");
            bVar.h(iVar.f94431r, 32, "VUI: time_scale");
            bVar.g(iVar.f94432s, "VUI: fixed_frame_rate_flag");
        }
        bVar.g(iVar.f94435v != null, "VUI: ");
        d dVar = iVar.f94435v;
        if (dVar != null) {
            f(dVar, bVar);
        }
        bVar.g(iVar.f94436w != null, "VUI: ");
        d dVar2 = iVar.f94436w;
        if (dVar2 != null) {
            f(dVar2, bVar);
        }
        if (iVar.f94435v != null || iVar.f94436w != null) {
            bVar.g(iVar.f94433t, "VUI: low_delay_hrd_flag");
        }
        bVar.g(iVar.f94434u, "VUI: pic_struct_present_flag");
        bVar.g(iVar.f94437x != null, "VUI: ");
        i.a aVar = iVar.f94437x;
        if (aVar != null) {
            bVar.g(aVar.f94439a, "VUI: motion_vectors_over_pic_boundaries_flag");
            bVar.o(iVar.f94437x.f94440b, "VUI: max_bytes_per_pic_denom");
            bVar.o(iVar.f94437x.f94441c, "VUI: max_bits_per_mb_denom");
            bVar.o(iVar.f94437x.f94442d, "VUI: log2_max_mv_length_horizontal");
            bVar.o(iVar.f94437x.f94443e, "VUI: log2_max_mv_length_vertical");
            bVar.o(iVar.f94437x.f94444f, "VUI: num_reorder_frames");
            bVar.o(iVar.f94437x.f94445g, "VUI: max_dec_frame_buffering");
        }
    }

    @Override // w3.b
    public void a(OutputStream outputStream) throws IOException {
        x3.b bVar = new x3.b(outputStream);
        bVar.h(this.f94404q, 8, "SPS: profile_idc");
        bVar.g(this.f94406s, "SPS: constraint_set_0_flag");
        bVar.g(this.f94407t, "SPS: constraint_set_1_flag");
        bVar.g(this.f94408u, "SPS: constraint_set_2_flag");
        bVar.g(this.f94409v, "SPS: constraint_set_3_flag");
        bVar.h(0L, 4, "SPS: reserved");
        bVar.h(this.f94412y, 8, "SPS: level_idc");
        bVar.o(this.f94413z, "SPS: seq_parameter_set_id");
        int i4 = this.f94404q;
        if (i4 == 100 || i4 == 110 || i4 == 122 || i4 == 144) {
            bVar.o(this.f94396i.b(), "SPS: chroma_format_idc");
            if (this.f94396i == c.f94343g) {
                bVar.g(this.A, "SPS: residual_color_transform_flag");
            }
            bVar.o(this.f94401n, "SPS: ");
            bVar.o(this.f94402o, "SPS: ");
            bVar.g(this.f94403p, "SPS: qpprime_y_zero_transform_bypass_flag");
            bVar.g(this.N != null, "SPS: ");
            if (this.N != null) {
                for (int i10 = 0; i10 < 8; i10++) {
                    if (i10 < 6) {
                        bVar.g(this.N.f94386a[i10] != null, "SPS: ");
                        f[] fVarArr = this.N.f94386a;
                        if (fVarArr[i10] != null) {
                            fVarArr[i10].b(bVar);
                        }
                    } else {
                        int i11 = i10 - 6;
                        bVar.g(this.N.f94387b[i11] != null, "SPS: ");
                        f[] fVarArr2 = this.N.f94387b;
                        if (fVarArr2[i11] != null) {
                            fVarArr2[i11].b(bVar);
                        }
                    }
                }
            }
        }
        bVar.o(this.f94397j, "SPS: log2_max_frame_num_minus4");
        bVar.o(this.f94388a, "SPS: pic_order_cnt_type");
        int i12 = this.f94388a;
        if (i12 == 0) {
            bVar.o(this.f94398k, "SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (i12 == 1) {
            bVar.g(this.f94390c, "SPS: delta_pic_order_always_zero_flag");
            bVar.i(this.B, "SPS: offset_for_non_ref_pic");
            bVar.i(this.C, "SPS: offset_for_top_to_bottom_field");
            bVar.o(this.L.length, "SPS: ");
            int i13 = 0;
            while (true) {
                int[] iArr = this.L;
                if (i13 >= iArr.length) {
                    break;
                }
                bVar.i(iArr[i13], "SPS: ");
                i13++;
            }
        }
        bVar.o(this.D, "SPS: num_ref_frames");
        bVar.g(this.E, "SPS: gaps_in_frame_num_value_allowed_flag");
        bVar.o(this.f94400m, "SPS: pic_width_in_mbs_minus1");
        bVar.o(this.f94399l, "SPS: pic_height_in_map_units_minus1");
        bVar.g(this.F, "SPS: frame_mbs_only_flag");
        if (!this.F) {
            bVar.g(this.f94394g, "SPS: mb_adaptive_frame_field_flag");
        }
        bVar.g(this.f94395h, "SPS: direct_8x8_inference_flag");
        bVar.g(this.G, "SPS: frame_cropping_flag");
        if (this.G) {
            bVar.o(this.H, "SPS: frame_crop_left_offset");
            bVar.o(this.I, "SPS: frame_crop_right_offset");
            bVar.o(this.J, "SPS: frame_crop_top_offset");
            bVar.o(this.K, "SPS: frame_crop_bottom_offset");
        }
        bVar.g(this.M != null, "SPS: ");
        i iVar = this.M;
        if (iVar != null) {
            g(iVar, bVar);
        }
        bVar.k();
    }

    public String toString() {
        return "SeqParameterSet{ \n        pic_order_cnt_type=" + this.f94388a + ", \n        field_pic_flag=" + this.f94389b + ", \n        delta_pic_order_always_zero_flag=" + this.f94390c + ", \n        weighted_pred_flag=" + this.f94391d + ", \n        weighted_bipred_idc=" + this.f94392e + ", \n        entropy_coding_mode_flag=" + this.f94393f + ", \n        mb_adaptive_frame_field_flag=" + this.f94394g + ", \n        direct_8x8_inference_flag=" + this.f94395h + ", \n        chroma_format_idc=" + this.f94396i + ", \n        log2_max_frame_num_minus4=" + this.f94397j + ", \n        log2_max_pic_order_cnt_lsb_minus4=" + this.f94398k + ", \n        pic_height_in_map_units_minus1=" + this.f94399l + ", \n        pic_width_in_mbs_minus1=" + this.f94400m + ", \n        bit_depth_luma_minus8=" + this.f94401n + ", \n        bit_depth_chroma_minus8=" + this.f94402o + ", \n        qpprime_y_zero_transform_bypass_flag=" + this.f94403p + ", \n        profile_idc=" + this.f94404q + ", \n        constraint_set_0_flag=" + this.f94406s + ", \n        constraint_set_1_flag=" + this.f94407t + ", \n        constraint_set_2_flag=" + this.f94408u + ", \n        constraint_set_3_flag=" + this.f94409v + ", \n        constraint_set_4_flag=" + this.f94410w + ", \n        constraint_set_5_flag=" + this.f94411x + ", \n        level_idc=" + this.f94412y + ", \n        seq_parameter_set_id=" + this.f94413z + ", \n        residual_color_transform_flag=" + this.A + ", \n        offset_for_non_ref_pic=" + this.B + ", \n        offset_for_top_to_bottom_field=" + this.C + ", \n        num_ref_frames=" + this.D + ", \n        gaps_in_frame_num_value_allowed_flag=" + this.E + ", \n        frame_mbs_only_flag=" + this.F + ", \n        frame_cropping_flag=" + this.G + ", \n        frame_crop_left_offset=" + this.H + ", \n        frame_crop_right_offset=" + this.I + ", \n        frame_crop_top_offset=" + this.J + ", \n        frame_crop_bottom_offset=" + this.K + ", \n        offsetForRefFrame=" + this.L + ", \n        vuiParams=" + this.M + ", \n        scalingMatrix=" + this.N + ", \n        num_ref_frames_in_pic_order_cnt_cycle=" + this.O + '}';
    }
}

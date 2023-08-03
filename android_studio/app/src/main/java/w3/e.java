package w3;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* compiled from: PictureParameterSet.java */
/* loaded from: classes2.dex */
public class e extends b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f94357a;

    /* renamed from: b  reason: collision with root package name */
    public int f94358b;

    /* renamed from: c  reason: collision with root package name */
    public int f94359c;

    /* renamed from: d  reason: collision with root package name */
    public int f94360d;

    /* renamed from: e  reason: collision with root package name */
    public int f94361e;

    /* renamed from: f  reason: collision with root package name */
    public int f94362f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f94363g;

    /* renamed from: h  reason: collision with root package name */
    public int f94364h;

    /* renamed from: i  reason: collision with root package name */
    public int f94365i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f94366j;

    /* renamed from: k  reason: collision with root package name */
    public int f94367k;

    /* renamed from: l  reason: collision with root package name */
    public int f94368l;

    /* renamed from: m  reason: collision with root package name */
    public int f94369m;

    /* renamed from: n  reason: collision with root package name */
    public int f94370n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f94371o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f94372p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f94373q;

    /* renamed from: r  reason: collision with root package name */
    public int[] f94374r;

    /* renamed from: s  reason: collision with root package name */
    public int[] f94375s;

    /* renamed from: t  reason: collision with root package name */
    public int[] f94376t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f94377u;

    /* renamed from: v  reason: collision with root package name */
    public int[] f94378v;

    /* renamed from: w  reason: collision with root package name */
    public a f94379w;

    /* compiled from: PictureParameterSet.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f94380a;

        /* renamed from: b  reason: collision with root package name */
        public g f94381b = new g();

        /* renamed from: c  reason: collision with root package name */
        public int f94382c;

        /* renamed from: d  reason: collision with root package name */
        public boolean[] f94383d;

        public String toString() {
            return "PPSExt{transform_8x8_mode_flag=" + this.f94380a + ", scalindMatrix=" + this.f94381b + ", second_chroma_qp_index_offset=" + this.f94382c + ", pic_scaling_list_present_flag=" + this.f94383d + '}';
        }
    }

    public static e b(InputStream inputStream) throws IOException {
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(inputStream);
        e eVar = new e();
        eVar.f94361e = bVar.y("PPS: pic_parameter_set_id");
        eVar.f94362f = bVar.y("PPS: seq_parameter_set_id");
        eVar.f94357a = bVar.p("PPS: entropy_coding_mode_flag");
        eVar.f94363g = bVar.p("PPS: pic_order_present_flag");
        int y9 = bVar.y("PPS: num_slice_groups_minus1");
        eVar.f94364h = y9;
        if (y9 > 0) {
            int y10 = bVar.y("PPS: slice_group_map_type");
            eVar.f94365i = y10;
            int i4 = eVar.f94364h;
            eVar.f94374r = new int[i4 + 1];
            eVar.f94375s = new int[i4 + 1];
            eVar.f94376t = new int[i4 + 1];
            if (y10 == 0) {
                for (int i10 = 0; i10 <= eVar.f94364h; i10++) {
                    eVar.f94376t[i10] = bVar.y("PPS: run_length_minus1");
                }
            } else if (y10 == 2) {
                for (int i11 = 0; i11 < eVar.f94364h; i11++) {
                    eVar.f94374r[i11] = bVar.y("PPS: top_left");
                    eVar.f94375s[i11] = bVar.y("PPS: bottom_right");
                }
            } else if (y10 == 3 || y10 == 4 || y10 == 5) {
                eVar.f94377u = bVar.p("PPS: slice_group_change_direction_flag");
                eVar.f94360d = bVar.y("PPS: slice_group_change_rate_minus1");
            } else if (y10 == 6) {
                int i12 = i4 + 1 <= 4 ? i4 + 1 > 2 ? 2 : 1 : 3;
                int y11 = bVar.y("PPS: pic_size_in_map_units_minus1");
                eVar.f94378v = new int[y11 + 1];
                for (int i13 = 0; i13 <= y11; i13++) {
                    int[] iArr = eVar.f94378v;
                    iArr[i13] = bVar.w(i12, "PPS: slice_group_id [" + i13 + "]f");
                }
            }
        }
        eVar.f94358b = bVar.y("PPS: num_ref_idx_l0_active_minus1");
        eVar.f94359c = bVar.y("PPS: num_ref_idx_l1_active_minus1");
        eVar.f94366j = bVar.p("PPS: weighted_pred_flag");
        eVar.f94367k = (int) bVar.s(2, "PPS: weighted_bipred_idc");
        eVar.f94368l = bVar.t("PPS: pic_init_qp_minus26");
        eVar.f94369m = bVar.t("PPS: pic_init_qs_minus26");
        eVar.f94370n = bVar.t("PPS: chroma_qp_index_offset");
        eVar.f94371o = bVar.p("PPS: deblocking_filter_control_present_flag");
        eVar.f94372p = bVar.p("PPS: constrained_intra_pred_flag");
        eVar.f94373q = bVar.p("PPS: redundant_pic_cnt_present_flag");
        if (bVar.f()) {
            a aVar = new a();
            eVar.f94379w = aVar;
            aVar.f94380a = bVar.p("PPS: transform_8x8_mode_flag");
            if (bVar.p("PPS: pic_scaling_matrix_present_flag")) {
                for (int i14 = 0; i14 < ((eVar.f94379w.f94380a ? 1 : 0) * 2) + 6; i14++) {
                    if (bVar.p("PPS: pic_scaling_list_present_flag")) {
                        g gVar = eVar.f94379w.f94381b;
                        f[] fVarArr = new f[8];
                        gVar.f94386a = fVarArr;
                        f[] fVarArr2 = new f[8];
                        gVar.f94387b = fVarArr2;
                        if (i14 < 6) {
                            fVarArr[i14] = f.a(bVar, 16);
                        } else {
                            fVarArr2[i14 - 6] = f.a(bVar, 64);
                        }
                    }
                }
            }
            eVar.f94379w.f94382c = bVar.t("PPS: second_chroma_qp_index_offset");
        }
        bVar.v();
        return eVar;
    }

    public static e c(byte[] bArr) throws IOException {
        return b(new ByteArrayInputStream(bArr));
    }

    @Override // w3.b
    public void a(OutputStream outputStream) throws IOException {
        x3.b bVar = new x3.b(outputStream);
        bVar.o(this.f94361e, "PPS: pic_parameter_set_id");
        bVar.o(this.f94362f, "PPS: seq_parameter_set_id");
        bVar.g(this.f94357a, "PPS: entropy_coding_mode_flag");
        bVar.g(this.f94363g, "PPS: pic_order_present_flag");
        bVar.o(this.f94364h, "PPS: num_slice_groups_minus1");
        if (this.f94364h > 0) {
            bVar.o(this.f94365i, "PPS: slice_group_map_type");
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            int[] iArr3 = new int[1];
            int i4 = this.f94365i;
            if (i4 == 0) {
                for (int i10 = 0; i10 <= this.f94364h; i10++) {
                    bVar.o(iArr3[i10], "PPS: ");
                }
            } else if (i4 == 2) {
                for (int i11 = 0; i11 < this.f94364h; i11++) {
                    bVar.o(iArr[i11], "PPS: ");
                    bVar.o(iArr2[i11], "PPS: ");
                }
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                bVar.g(this.f94377u, "PPS: slice_group_change_direction_flag");
                bVar.o(this.f94360d, "PPS: slice_group_change_rate_minus1");
            } else if (i4 == 6) {
                int i12 = this.f94364h;
                int i13 = i12 + 1 <= 4 ? i12 + 1 > 2 ? 2 : 1 : 3;
                bVar.o(this.f94378v.length, "PPS: ");
                int i14 = 0;
                while (true) {
                    int[] iArr4 = this.f94378v;
                    if (i14 > iArr4.length) {
                        break;
                    }
                    bVar.l(iArr4[i14], i13);
                    i14++;
                }
            }
        }
        bVar.o(this.f94358b, "PPS: num_ref_idx_l0_active_minus1");
        bVar.o(this.f94359c, "PPS: num_ref_idx_l1_active_minus1");
        bVar.g(this.f94366j, "PPS: weighted_pred_flag");
        bVar.h(this.f94367k, 2, "PPS: weighted_bipred_idc");
        bVar.i(this.f94368l, "PPS: pic_init_qp_minus26");
        bVar.i(this.f94369m, "PPS: pic_init_qs_minus26");
        bVar.i(this.f94370n, "PPS: chroma_qp_index_offset");
        bVar.g(this.f94371o, "PPS: deblocking_filter_control_present_flag");
        bVar.g(this.f94372p, "PPS: constrained_intra_pred_flag");
        bVar.g(this.f94373q, "PPS: redundant_pic_cnt_present_flag");
        a aVar = this.f94379w;
        if (aVar != null) {
            bVar.g(aVar.f94380a, "PPS: transform_8x8_mode_flag");
            bVar.g(this.f94379w.f94381b != null, "PPS: scalindMatrix");
            if (this.f94379w.f94381b != null) {
                int i15 = 0;
                while (true) {
                    a aVar2 = this.f94379w;
                    if (i15 >= ((aVar2.f94380a ? 1 : 0) * 2) + 6) {
                        break;
                    }
                    if (i15 < 6) {
                        bVar.g(aVar2.f94381b.f94386a[i15] != null, "PPS: ");
                        f[] fVarArr = this.f94379w.f94381b.f94386a;
                        if (fVarArr[i15] != null) {
                            fVarArr[i15].b(bVar);
                        }
                    } else {
                        int i16 = i15 - 6;
                        bVar.g(aVar2.f94381b.f94387b[i16] != null, "PPS: ");
                        f[] fVarArr2 = this.f94379w.f94381b.f94387b;
                        if (fVarArr2[i16] != null) {
                            fVarArr2[i16].b(bVar);
                        }
                    }
                    i15++;
                }
            }
            bVar.i(this.f94379w.f94382c, "PPS: ");
        }
        bVar.k();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            e eVar = (e) obj;
            if (Arrays.equals(this.f94375s, eVar.f94375s) && this.f94370n == eVar.f94370n && this.f94372p == eVar.f94372p && this.f94371o == eVar.f94371o && this.f94357a == eVar.f94357a) {
                a aVar = this.f94379w;
                if (aVar == null) {
                    if (eVar.f94379w != null) {
                        return false;
                    }
                } else if (!aVar.equals(eVar.f94379w)) {
                    return false;
                }
                return this.f94358b == eVar.f94358b && this.f94359c == eVar.f94359c && this.f94364h == eVar.f94364h && this.f94368l == eVar.f94368l && this.f94369m == eVar.f94369m && this.f94363g == eVar.f94363g && this.f94361e == eVar.f94361e && this.f94373q == eVar.f94373q && Arrays.equals(this.f94376t, eVar.f94376t) && this.f94362f == eVar.f94362f && this.f94377u == eVar.f94377u && this.f94360d == eVar.f94360d && Arrays.equals(this.f94378v, eVar.f94378v) && this.f94365i == eVar.f94365i && Arrays.equals(this.f94374r, eVar.f94374r) && this.f94367k == eVar.f94367k && this.f94366j == eVar.f94366j;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (((((((((Arrays.hashCode(this.f94375s) + 31) * 31) + this.f94370n) * 31) + (this.f94372p ? 1231 : 1237)) * 31) + (this.f94371o ? 1231 : 1237)) * 31) + (this.f94357a ? 1231 : 1237)) * 31;
        a aVar = this.f94379w;
        return ((((((((((((((((((((((((((((((((((hashCode + (aVar == null ? 0 : aVar.hashCode())) * 31) + this.f94358b) * 31) + this.f94359c) * 31) + this.f94364h) * 31) + this.f94368l) * 31) + this.f94369m) * 31) + (this.f94363g ? 1231 : 1237)) * 31) + this.f94361e) * 31) + (this.f94373q ? 1231 : 1237)) * 31) + Arrays.hashCode(this.f94376t)) * 31) + this.f94362f) * 31) + (this.f94377u ? 1231 : 1237)) * 31) + this.f94360d) * 31) + Arrays.hashCode(this.f94378v)) * 31) + this.f94365i) * 31) + Arrays.hashCode(this.f94374r)) * 31) + this.f94367k) * 31) + (this.f94366j ? 1231 : 1237);
    }

    public String toString() {
        return "PictureParameterSet{\n       entropy_coding_mode_flag=" + this.f94357a + ",\n       num_ref_idx_l0_active_minus1=" + this.f94358b + ",\n       num_ref_idx_l1_active_minus1=" + this.f94359c + ",\n       slice_group_change_rate_minus1=" + this.f94360d + ",\n       pic_parameter_set_id=" + this.f94361e + ",\n       seq_parameter_set_id=" + this.f94362f + ",\n       pic_order_present_flag=" + this.f94363g + ",\n       num_slice_groups_minus1=" + this.f94364h + ",\n       slice_group_map_type=" + this.f94365i + ",\n       weighted_pred_flag=" + this.f94366j + ",\n       weighted_bipred_idc=" + this.f94367k + ",\n       pic_init_qp_minus26=" + this.f94368l + ",\n       pic_init_qs_minus26=" + this.f94369m + ",\n       chroma_qp_index_offset=" + this.f94370n + ",\n       deblocking_filter_control_present_flag=" + this.f94371o + ",\n       constrained_intra_pred_flag=" + this.f94372p + ",\n       redundant_pic_cnt_present_flag=" + this.f94373q + ",\n       top_left=" + this.f94374r + ",\n       bottom_right=" + this.f94375s + ",\n       run_length_minus1=" + this.f94376t + ",\n       slice_group_change_direction_flag=" + this.f94377u + ",\n       slice_group_id=" + this.f94378v + ",\n       extended=" + this.f94379w + '}';
    }
}

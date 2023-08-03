package com.googlecode.mp4parser.authoring.tracks;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mp4parser.iso14496.part15.d;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class H265TrackImplOld {
    private static final int A = 4;
    private static final int B = 5;
    private static final int C = 6;
    private static final int D = 7;
    private static final int E = 8;
    private static final int F = 9;
    private static final int G = 16;
    private static final int H = 17;
    private static final int I = 18;
    private static final int J = 19;
    private static final int K = 20;
    private static final int L = 21;
    private static final long M = 1048576;

    /* renamed from: f  reason: collision with root package name */
    public static final int f36155f = 32;

    /* renamed from: g  reason: collision with root package name */
    public static final int f36156g = 33;

    /* renamed from: h  reason: collision with root package name */
    public static final int f36157h = 34;

    /* renamed from: i  reason: collision with root package name */
    public static final int f36158i = 35;

    /* renamed from: j  reason: collision with root package name */
    public static final int f36159j = 39;

    /* renamed from: k  reason: collision with root package name */
    public static final int f36160k = 41;

    /* renamed from: l  reason: collision with root package name */
    public static final int f36161l = 42;

    /* renamed from: m  reason: collision with root package name */
    public static final int f36162m = 43;

    /* renamed from: n  reason: collision with root package name */
    public static final int f36163n = 44;

    /* renamed from: o  reason: collision with root package name */
    public static final int f36164o = 48;

    /* renamed from: p  reason: collision with root package name */
    public static final int f36165p = 49;

    /* renamed from: q  reason: collision with root package name */
    public static final int f36166q = 50;

    /* renamed from: r  reason: collision with root package name */
    public static final int f36167r = 51;

    /* renamed from: s  reason: collision with root package name */
    public static final int f36168s = 52;

    /* renamed from: t  reason: collision with root package name */
    public static final int f36169t = 53;

    /* renamed from: u  reason: collision with root package name */
    public static final int f36170u = 54;

    /* renamed from: v  reason: collision with root package name */
    public static final int f36171v = 55;

    /* renamed from: w  reason: collision with root package name */
    private static final int f36172w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final int f36173x = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final int f36174y = 2;

    /* renamed from: z  reason: collision with root package name */
    private static final int f36175z = 3;

    /* renamed from: a  reason: collision with root package name */
    LinkedHashMap<Long, ByteBuffer> f36176a = new LinkedHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    LinkedHashMap<Long, ByteBuffer> f36177b = new LinkedHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    LinkedHashMap<Long, ByteBuffer> f36178c = new LinkedHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    List<Long> f36179d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f36180e = new ArrayList();

    /* loaded from: classes2.dex */
    public enum PARSE_STATE {
        AUD_SEI_SLICE,
        SEI_SLICE,
        SLICE_OES_EOB;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static PARSE_STATE[] valuesCustom() {
            PARSE_STATE[] valuesCustom = values();
            int length = valuesCustom.length;
            PARSE_STATE[] parse_stateArr = new PARSE_STATE[length];
            System.arraycopy(valuesCustom, 0, parse_stateArr, 0, length);
            return parse_stateArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        long f36182a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f36183b = 0;

        /* renamed from: c  reason: collision with root package name */
        com.googlecode.mp4parser.e f36184c;

        /* renamed from: d  reason: collision with root package name */
        ByteBuffer f36185d;

        /* renamed from: e  reason: collision with root package name */
        long f36186e;

        a(com.googlecode.mp4parser.e eVar) throws IOException {
            this.f36184c = eVar;
            c();
        }

        void a() {
            this.f36183b++;
        }

        void b() {
            int i4 = this.f36183b + 3;
            this.f36183b = i4;
            this.f36186e = this.f36182a + i4;
        }

        public void c() throws IOException {
            com.googlecode.mp4parser.e eVar = this.f36184c;
            this.f36185d = eVar.e0(this.f36182a, Math.min(eVar.size() - this.f36182a, 1048576L));
        }

        public ByteBuffer d() {
            long j4 = this.f36186e;
            long j10 = this.f36182a;
            if (j4 >= j10) {
                this.f36185d.position((int) (j4 - j10));
                ByteBuffer slice = this.f36185d.slice();
                slice.limit((int) (this.f36183b - (this.f36186e - this.f36182a)));
                return slice;
            }
            throw new RuntimeException("damn! NAL exceeds buffer");
        }

        boolean e() throws IOException {
            int limit = this.f36185d.limit();
            int i4 = this.f36183b;
            if (limit - i4 >= 3) {
                return this.f36185d.get(i4) == 0 && this.f36185d.get(this.f36183b + 1) == 0 && (this.f36185d.get(this.f36183b + 2) == 0 || this.f36185d.get(this.f36183b + 2) == 1);
            } else if (this.f36182a + i4 + 3 > this.f36184c.size()) {
                return this.f36182a + ((long) this.f36183b) == this.f36184c.size();
            } else {
                this.f36182a = this.f36186e;
                this.f36183b = 0;
                c();
                return e();
            }
        }

        boolean f() throws IOException {
            int limit = this.f36185d.limit();
            int i4 = this.f36183b;
            if (limit - i4 >= 3) {
                return this.f36185d.get(i4) == 0 && this.f36185d.get(this.f36183b + 1) == 0 && this.f36185d.get(this.f36183b + 2) == 1;
            } else if (this.f36182a + i4 == this.f36184c.size()) {
                throw new EOFException();
            } else {
                throw new RuntimeException("buffer repositioning require");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f36188a;

        /* renamed from: b  reason: collision with root package name */
        int f36189b;

        /* renamed from: c  reason: collision with root package name */
        int f36190c;

        /* renamed from: d  reason: collision with root package name */
        int f36191d;
    }

    public H265TrackImplOld(com.googlecode.mp4parser.e eVar) throws IOException {
        a aVar = new a(eVar);
        ArrayList arrayList = new ArrayList();
        long j4 = 1;
        long j10 = 1;
        int i4 = 0;
        while (true) {
            ByteBuffer b10 = b(aVar);
            if (b10 == null) {
                System.err.println("");
                com.mp4parser.iso14496.part15.d dVar = new com.mp4parser.iso14496.part15.d();
                dVar.y(c());
                dVar.z(0);
                return;
            }
            b e4 = e(b10);
            switch (e4.f36189b) {
                case 32:
                    this.f36176a.put(Long.valueOf(j10), b10);
                    break;
                case 33:
                    this.f36177b.put(Long.valueOf(j10), b10);
                    break;
                case 34:
                    this.f36178c.put(Long.valueOf(j10), b10);
                    break;
            }
            int i10 = e4.f36189b;
            i4 = i10 < 32 ? i10 : i4;
            if (g(i10, b10, arrayList) && !arrayList.isEmpty()) {
                System.err.println("##########################");
                for (ByteBuffer byteBuffer : arrayList) {
                    b e10 = e(byteBuffer);
                    System.err.println(String.format("type: %3d - layer: %3d - tempId: %3d - size: %3d", Integer.valueOf(e10.f36189b), Integer.valueOf(e10.f36190c), Integer.valueOf(e10.f36191d), Integer.valueOf(byteBuffer.limit())));
                    j4 = 1;
                }
                System.err.println("                          ##########################");
                this.f36180e.add(a(arrayList));
                arrayList.clear();
                j10 += j4;
            }
            arrayList.add(b10);
            if (i4 >= 16 && i4 <= 21) {
                this.f36179d.add(Long.valueOf(j10));
            }
            j4 = 1;
        }
    }

    private ByteBuffer b(a aVar) throws IOException {
        while (!aVar.f()) {
            try {
                aVar.a();
            } catch (EOFException unused) {
                return null;
            }
        }
        aVar.b();
        while (!aVar.e()) {
            aVar.a();
        }
        return aVar.d();
    }

    private List<d.a> c() {
        d.a aVar = new d.a();
        aVar.f47013a = true;
        aVar.f47015c = 32;
        aVar.f47016d = new ArrayList();
        for (ByteBuffer byteBuffer : this.f36176a.values()) {
            byte[] bArr = new byte[byteBuffer.limit()];
            byteBuffer.position(0);
            byteBuffer.get(bArr);
            aVar.f47016d.add(bArr);
        }
        d.a aVar2 = new d.a();
        aVar2.f47013a = true;
        aVar2.f47015c = 33;
        aVar2.f47016d = new ArrayList();
        for (ByteBuffer byteBuffer2 : this.f36177b.values()) {
            byte[] bArr2 = new byte[byteBuffer2.limit()];
            byteBuffer2.position(0);
            byteBuffer2.get(bArr2);
            aVar2.f47016d.add(bArr2);
        }
        d.a aVar3 = new d.a();
        aVar3.f47013a = true;
        aVar3.f47015c = 33;
        aVar3.f47016d = new ArrayList();
        for (ByteBuffer byteBuffer3 : this.f36178c.values()) {
            byte[] bArr3 = new byte[byteBuffer3.limit()];
            byteBuffer3.position(0);
            byteBuffer3.get(bArr3);
            aVar3.f47016d.add(bArr3);
        }
        return Arrays.asList(aVar, aVar2, aVar3);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void f(boolean r12, int r13, com.googlecode.mp4parser.h264.read.b r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.authoring.tracks.H265TrackImplOld.f(boolean, int, com.googlecode.mp4parser.h264.read.b):void");
    }

    public static void h(String[] strArr) throws IOException {
        new H265TrackImplOld(new com.googlecode.mp4parser.g("c:\\content\\test-UHD-HEVC_01_FMV_Med_track1.hvc"));
    }

    protected com.googlecode.mp4parser.authoring.f a(List<ByteBuffer> list) {
        byte[] bArr = new byte[list.size() * 4];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        for (ByteBuffer byteBuffer : list) {
            wrap.putInt(byteBuffer.remaining());
        }
        ByteBuffer[] byteBufferArr = new ByteBuffer[list.size() * 2];
        for (int i4 = 0; i4 < list.size(); i4++) {
            int i10 = i4 * 2;
            byteBufferArr[i10] = ByteBuffer.wrap(bArr, i4 * 4, 4);
            byteBufferArr[i10 + 1] = list.get(i4);
        }
        return new com.googlecode.mp4parser.authoring.g(byteBufferArr);
    }

    public int d(ByteBuffer byteBuffer) throws IOException {
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(Channels.newInputStream(new com.googlecode.mp4parser.util.b((ByteBuffer) byteBuffer.position(0))));
        bVar.w(4, "vps_parameter_set_id");
        bVar.w(2, "vps_reserved_three_2bits");
        bVar.w(6, "vps_max_layers_minus1");
        int w9 = bVar.w(3, "vps_max_sub_layers_minus1");
        bVar.p("vps_temporal_id_nesting_flag");
        bVar.w(16, "vps_reserved_0xffff_16bits");
        i(w9, bVar);
        boolean p9 = bVar.p("vps_sub_layer_ordering_info_present_flag");
        int[] iArr = new int[p9 ? 0 : w9];
        int[] iArr2 = new int[p9 ? 0 : w9];
        int[] iArr3 = new int[p9 ? 0 : w9];
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
                f(zArr3[i12], w9, bVar);
            }
        }
        if (bVar.p("vps_extension_flag")) {
            while (bVar.f()) {
                bVar.p("vps_extension_data_flag");
            }
        }
        bVar.v();
        return 0;
    }

    public b e(ByteBuffer byteBuffer) {
        byteBuffer.position(0);
        int i4 = com.coremedia.iso.g.i(byteBuffer);
        b bVar = new b();
        bVar.f36188a = (32768 & i4) >> 15;
        bVar.f36189b = (i4 & 32256) >> 9;
        bVar.f36190c = (i4 & TypedValues.Position.TYPE_PERCENT_HEIGHT) >> 3;
        bVar.f36191d = i4 & 7;
        return bVar;
    }

    boolean g(int i4, ByteBuffer byteBuffer, List<ByteBuffer> list) {
        if (list.isEmpty()) {
            return true;
        }
        boolean z9 = e(list.get(list.size() - 1)).f36189b <= 31;
        switch (i4) {
            case 32:
            case 33:
            case 34:
            case 35:
            case 39:
            case 41:
            case 42:
            case 43:
            case 44:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
                if (z9) {
                    return true;
                }
                break;
        }
        switch (i4) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                break;
            default:
                switch (i4) {
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        break;
                    default:
                        return false;
                }
        }
        byteBuffer.position(0);
        byteBuffer.get(new byte[50]);
        byteBuffer.position(2);
        return z9 && (com.coremedia.iso.g.p(byteBuffer) & 128) > 0;
    }

    public void i(int i4, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
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

    void j(int i4, int i10, boolean z9, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
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
}

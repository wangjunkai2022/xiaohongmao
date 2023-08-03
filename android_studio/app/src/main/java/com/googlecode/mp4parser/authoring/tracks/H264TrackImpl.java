package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.googlecode.mp4parser.authoring.tracks.c;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class H264TrackImpl extends com.googlecode.mp4parser.authoring.tracks.c {
    private static final Logger E = Logger.getLogger(H264TrackImpl.class.getName());
    private c A;
    int B;
    private boolean C;
    private String D;

    /* renamed from: k  reason: collision with root package name */
    Map<Integer, byte[]> f36090k;

    /* renamed from: l  reason: collision with root package name */
    Map<Integer, w3.h> f36091l;

    /* renamed from: m  reason: collision with root package name */
    Map<Integer, byte[]> f36092m;

    /* renamed from: n  reason: collision with root package name */
    Map<Integer, w3.e> f36093n;

    /* renamed from: o  reason: collision with root package name */
    s0 f36094o;

    /* renamed from: p  reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f36095p;

    /* renamed from: q  reason: collision with root package name */
    w3.h f36096q;

    /* renamed from: r  reason: collision with root package name */
    w3.e f36097r;

    /* renamed from: s  reason: collision with root package name */
    w3.h f36098s;

    /* renamed from: t  reason: collision with root package name */
    w3.e f36099t;

    /* renamed from: u  reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, byte[]> f36100u;

    /* renamed from: v  reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, byte[]> f36101v;

    /* renamed from: w  reason: collision with root package name */
    private int f36102w;

    /* renamed from: x  reason: collision with root package name */
    private int f36103x;

    /* renamed from: y  reason: collision with root package name */
    private long f36104y;

    /* renamed from: z  reason: collision with root package name */
    private int f36105z;

    /* loaded from: classes2.dex */
    public static class SliceHeader {

        /* renamed from: a  reason: collision with root package name */
        public int f36106a;

        /* renamed from: b  reason: collision with root package name */
        public SliceType f36107b;

        /* renamed from: c  reason: collision with root package name */
        public int f36108c;

        /* renamed from: d  reason: collision with root package name */
        public int f36109d;

        /* renamed from: e  reason: collision with root package name */
        public int f36110e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f36111f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f36112g;

        /* renamed from: h  reason: collision with root package name */
        public int f36113h;

        /* renamed from: i  reason: collision with root package name */
        public int f36114i;

        /* renamed from: j  reason: collision with root package name */
        public int f36115j;

        /* renamed from: k  reason: collision with root package name */
        public int f36116k;

        /* renamed from: l  reason: collision with root package name */
        public int f36117l;

        /* loaded from: classes2.dex */
        public enum SliceType {
            P,
            B,
            I,
            SP,
            SI;

            /* renamed from: values  reason: to resolve conflict with enum method */
            public static SliceType[] valuesCustom() {
                SliceType[] valuesCustom = values();
                int length = valuesCustom.length;
                SliceType[] sliceTypeArr = new SliceType[length];
                System.arraycopy(valuesCustom, 0, sliceTypeArr, 0, length);
                return sliceTypeArr;
            }
        }

        public SliceHeader(InputStream inputStream, Map<Integer, w3.h> map, Map<Integer, w3.e> map2, boolean z9) {
            this.f36111f = false;
            this.f36112g = false;
            try {
                inputStream.read();
                com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(inputStream);
                this.f36106a = bVar.y("SliceHeader: first_mb_in_slice");
                switch (bVar.y("SliceHeader: slice_type")) {
                    case 0:
                    case 5:
                        this.f36107b = SliceType.P;
                        break;
                    case 1:
                    case 6:
                        this.f36107b = SliceType.B;
                        break;
                    case 2:
                    case 7:
                        this.f36107b = SliceType.I;
                        break;
                    case 3:
                    case 8:
                        this.f36107b = SliceType.SP;
                        break;
                    case 4:
                    case 9:
                        this.f36107b = SliceType.SI;
                        break;
                }
                int y9 = bVar.y("SliceHeader: pic_parameter_set_id");
                this.f36108c = y9;
                w3.e eVar = map2.get(Integer.valueOf(y9));
                w3.h hVar = map.get(Integer.valueOf(eVar.f94362f));
                if (hVar.A) {
                    this.f36109d = bVar.w(2, "SliceHeader: colour_plane_id");
                }
                this.f36110e = bVar.w(hVar.f94397j + 4, "SliceHeader: frame_num");
                if (!hVar.F) {
                    boolean p9 = bVar.p("SliceHeader: field_pic_flag");
                    this.f36111f = p9;
                    if (p9) {
                        this.f36112g = bVar.p("SliceHeader: bottom_field_flag");
                    }
                }
                if (z9) {
                    this.f36113h = bVar.y("SliceHeader: idr_pic_id");
                }
                if (hVar.f94388a == 0) {
                    this.f36114i = bVar.w(hVar.f94398k + 4, "SliceHeader: pic_order_cnt_lsb");
                    if (eVar.f94363g && !this.f36111f) {
                        this.f36115j = bVar.t("SliceHeader: delta_pic_order_cnt_bottom");
                    }
                }
                if (hVar.f94388a != 1 || hVar.f94390c) {
                    return;
                }
                this.f36116k = bVar.t("delta_pic_order_cnt_0");
                if (!eVar.f94363g || this.f36111f) {
                    return;
                }
                this.f36117l = bVar.t("delta_pic_order_cnt_1");
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        public String toString() {
            return "SliceHeader{first_mb_in_slice=" + this.f36106a + ", slice_type=" + this.f36107b + ", pic_parameter_set_id=" + this.f36108c + ", colour_plane_id=" + this.f36109d + ", frame_num=" + this.f36110e + ", field_pic_flag=" + this.f36111f + ", bottom_field_flag=" + this.f36112g + ", idr_pic_id=" + this.f36113h + ", pic_order_cnt_lsb=" + this.f36114i + ", delta_pic_order_cnt_bottom=" + this.f36115j + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        int f36119a;

        /* renamed from: b  reason: collision with root package name */
        int f36120b;

        /* renamed from: c  reason: collision with root package name */
        boolean f36121c;

        /* renamed from: d  reason: collision with root package name */
        boolean f36122d;

        /* renamed from: e  reason: collision with root package name */
        int f36123e;

        /* renamed from: f  reason: collision with root package name */
        int f36124f;

        /* renamed from: g  reason: collision with root package name */
        int f36125g;

        /* renamed from: h  reason: collision with root package name */
        int f36126h;

        /* renamed from: i  reason: collision with root package name */
        int f36127i;

        /* renamed from: j  reason: collision with root package name */
        int f36128j;

        /* renamed from: k  reason: collision with root package name */
        boolean f36129k;

        /* renamed from: l  reason: collision with root package name */
        int f36130l;

        public a(ByteBuffer byteBuffer, int i4, int i10) {
            SliceHeader sliceHeader = new SliceHeader(com.googlecode.mp4parser.authoring.tracks.c.a(new b(byteBuffer)), H264TrackImpl.this.f36091l, H264TrackImpl.this.f36093n, i10 == 5);
            this.f36119a = sliceHeader.f36110e;
            int i11 = sliceHeader.f36108c;
            this.f36120b = i11;
            this.f36121c = sliceHeader.f36111f;
            this.f36122d = sliceHeader.f36112g;
            this.f36123e = i4;
            this.f36124f = H264TrackImpl.this.f36091l.get(Integer.valueOf(H264TrackImpl.this.f36093n.get(Integer.valueOf(i11)).f94362f)).f94388a;
            this.f36125g = sliceHeader.f36115j;
            this.f36126h = sliceHeader.f36114i;
            this.f36127i = sliceHeader.f36116k;
            this.f36128j = sliceHeader.f36117l;
            this.f36130l = sliceHeader.f36113h;
        }

        boolean a(a aVar) {
            boolean z9;
            boolean z10;
            boolean z11;
            if (aVar.f36119a == this.f36119a && aVar.f36120b == this.f36120b && (z9 = aVar.f36121c) == this.f36121c) {
                if ((!z9 || aVar.f36122d == this.f36122d) && aVar.f36123e == this.f36123e) {
                    int i4 = aVar.f36124f;
                    if (i4 == 0 && this.f36124f == 0 && (aVar.f36126h != this.f36126h || aVar.f36125g != this.f36125g)) {
                        return true;
                    }
                    if (!(i4 == 1 && this.f36124f == 1 && (aVar.f36127i != this.f36127i || aVar.f36128j != this.f36128j)) && (z10 = aVar.f36129k) == (z11 = this.f36129k)) {
                        return z10 && z11 && aVar.f36130l != this.f36130l;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        int f36134a;

        /* renamed from: b  reason: collision with root package name */
        int f36135b;

        /* renamed from: c  reason: collision with root package name */
        boolean f36136c;

        /* renamed from: d  reason: collision with root package name */
        int f36137d;

        /* renamed from: e  reason: collision with root package name */
        int f36138e;

        /* renamed from: f  reason: collision with root package name */
        boolean f36139f;

        /* renamed from: g  reason: collision with root package name */
        int f36140g;

        /* renamed from: h  reason: collision with root package name */
        int f36141h;

        /* renamed from: i  reason: collision with root package name */
        int f36142i;

        /* renamed from: j  reason: collision with root package name */
        int f36143j;

        /* renamed from: k  reason: collision with root package name */
        int f36144k;

        /* renamed from: l  reason: collision with root package name */
        int f36145l;

        /* renamed from: m  reason: collision with root package name */
        int f36146m;

        /* renamed from: n  reason: collision with root package name */
        int f36147n;

        /* renamed from: o  reason: collision with root package name */
        int f36148o;

        /* renamed from: p  reason: collision with root package name */
        int f36149p;

        /* renamed from: q  reason: collision with root package name */
        int f36150q;

        /* renamed from: r  reason: collision with root package name */
        int f36151r;

        /* renamed from: s  reason: collision with root package name */
        int f36152s;

        /* renamed from: t  reason: collision with root package name */
        w3.h f36153t;

        public c(InputStream inputStream, w3.h hVar) throws IOException {
            int i4;
            boolean z9 = false;
            this.f36134a = 0;
            this.f36135b = 0;
            this.f36153t = hVar;
            inputStream.read();
            int available = inputStream.available();
            int i10 = 0;
            while (i10 < available) {
                this.f36134a = z9 ? 1 : 0;
                this.f36135b = z9 ? 1 : 0;
                int read = inputStream.read();
                int i11 = i10 + 1;
                while (read == 255) {
                    this.f36134a += read;
                    read = inputStream.read();
                    i11++;
                    z9 = false;
                }
                this.f36134a += read;
                int read2 = inputStream.read();
                i10 = i11 + 1;
                while (read2 == 255) {
                    this.f36135b += read2;
                    read2 = inputStream.read();
                    i10++;
                    z9 = false;
                }
                int i12 = this.f36135b + read2;
                this.f36135b = i12;
                if (available - i10 < i12) {
                    i10 = available;
                } else if (this.f36134a == 1) {
                    w3.i iVar = hVar.M;
                    if (iVar != null && (iVar.f94435v != null || iVar.f94436w != null || iVar.f94434u)) {
                        byte[] bArr = new byte[i12];
                        inputStream.read(bArr);
                        i10 += this.f36135b;
                        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(new ByteArrayInputStream(bArr));
                        w3.i iVar2 = hVar.M;
                        w3.d dVar = iVar2.f94435v;
                        if (dVar == null && iVar2.f94436w == null) {
                            this.f36136c = z9;
                        } else {
                            this.f36136c = true;
                            this.f36137d = bVar.w(dVar.f94354h + 1, "SEI: cpb_removal_delay");
                            this.f36138e = bVar.w(hVar.M.f94435v.f94355i + 1, "SEI: dpb_removal_delay");
                        }
                        if (hVar.M.f94434u) {
                            int w9 = bVar.w(4, "SEI: pic_struct");
                            this.f36140g = w9;
                            switch (w9) {
                                case 3:
                                case 4:
                                case 7:
                                    i4 = 2;
                                    break;
                                case 5:
                                case 6:
                                case 8:
                                    i4 = 3;
                                    break;
                                default:
                                    i4 = 1;
                                    break;
                            }
                            for (int i13 = 0; i13 < i4; i13++) {
                                boolean p9 = bVar.p("pic_timing SEI: clock_timestamp_flag[" + i13 + "]");
                                this.f36139f = p9;
                                if (p9) {
                                    this.f36141h = bVar.w(2, "pic_timing SEI: ct_type");
                                    this.f36142i = bVar.w(1, "pic_timing SEI: nuit_field_based_flag");
                                    this.f36143j = bVar.w(5, "pic_timing SEI: counting_type");
                                    this.f36144k = bVar.w(1, "pic_timing SEI: full_timestamp_flag");
                                    this.f36145l = bVar.w(1, "pic_timing SEI: discontinuity_flag");
                                    this.f36146m = bVar.w(1, "pic_timing SEI: cnt_dropped_flag");
                                    this.f36147n = bVar.w(8, "pic_timing SEI: n_frames");
                                    if (this.f36144k == 1) {
                                        this.f36148o = bVar.w(6, "pic_timing SEI: seconds_value");
                                        this.f36149p = bVar.w(6, "pic_timing SEI: minutes_value");
                                        this.f36150q = bVar.w(5, "pic_timing SEI: hours_value");
                                    } else if (bVar.p("pic_timing SEI: seconds_flag")) {
                                        this.f36148o = bVar.w(6, "pic_timing SEI: seconds_value");
                                        if (bVar.p("pic_timing SEI: minutes_flag")) {
                                            this.f36149p = bVar.w(6, "pic_timing SEI: minutes_value");
                                            if (bVar.p("pic_timing SEI: hours_flag")) {
                                                this.f36150q = bVar.w(5, "pic_timing SEI: hours_value");
                                            }
                                        }
                                    }
                                    w3.i iVar3 = hVar.M;
                                    w3.d dVar2 = iVar3.f94435v;
                                    if (dVar2 != null) {
                                        this.f36151r = dVar2.f94356j;
                                    } else {
                                        w3.d dVar3 = iVar3.f94436w;
                                        if (dVar3 != null) {
                                            this.f36151r = dVar3.f94356j;
                                        } else {
                                            this.f36151r = 24;
                                        }
                                    }
                                    this.f36152s = bVar.w(24, "pic_timing SEI: time_offset");
                                }
                            }
                        }
                    } else {
                        for (int i14 = 0; i14 < this.f36135b; i14++) {
                            inputStream.read();
                            i10++;
                        }
                    }
                } else {
                    for (int i15 = 0; i15 < this.f36135b; i15++) {
                        inputStream.read();
                        i10++;
                    }
                }
                H264TrackImpl.E.fine(toString());
                z9 = false;
            }
        }

        public String toString() {
            String str = "SEIMessage{payloadType=" + this.f36134a + ", payloadSize=" + this.f36135b;
            if (this.f36134a == 1) {
                w3.i iVar = this.f36153t.M;
                if (iVar.f94435v != null || iVar.f94436w != null) {
                    str = String.valueOf(str) + ", cpb_removal_delay=" + this.f36137d + ", dpb_removal_delay=" + this.f36138e;
                }
                if (this.f36153t.M.f94434u) {
                    str = String.valueOf(str) + ", pic_struct=" + this.f36140g;
                    if (this.f36139f) {
                        str = String.valueOf(str) + ", ct_type=" + this.f36141h + ", nuit_field_based_flag=" + this.f36142i + ", counting_type=" + this.f36143j + ", full_timestamp_flag=" + this.f36144k + ", discontinuity_flag=" + this.f36145l + ", cnt_dropped_flag=" + this.f36146m + ", n_frames=" + this.f36147n + ", seconds_value=" + this.f36148o + ", minutes_value=" + this.f36149p + ", hours_value=" + this.f36150q + ", time_offset_length=" + this.f36151r + ", time_offset=" + this.f36152s;
                    }
                }
            }
            return String.valueOf(str) + '}';
        }
    }

    public H264TrackImpl(com.googlecode.mp4parser.e eVar, String str, long j4, int i4) throws IOException {
        super(eVar);
        this.f36090k = new HashMap();
        this.f36091l = new HashMap();
        this.f36092m = new HashMap();
        this.f36093n = new HashMap();
        this.f36096q = null;
        this.f36097r = null;
        this.f36098s = null;
        this.f36099t = null;
        this.f36100u = new com.googlecode.mp4parser.util.n<>();
        this.f36101v = new com.googlecode.mp4parser.util.n<>();
        this.B = 0;
        this.C = true;
        this.D = str;
        this.f36104y = j4;
        this.f36105z = i4;
        if (j4 > 0 && i4 > 0) {
            this.C = false;
        }
        s(new c.a(eVar));
    }

    private boolean A() {
        int i4;
        w3.h hVar = this.f36096q;
        this.f36102w = (hVar.f94400m + 1) * 16;
        int i10 = hVar.F ? 1 : 2;
        this.f36103x = (hVar.f94399l + 1) * 16 * i10;
        if (hVar.G) {
            if ((hVar.A ? 0 : hVar.f94396i.b()) != 0) {
                i4 = this.f36096q.f94396i.d();
                i10 *= this.f36096q.f94396i.c();
            } else {
                i4 = 1;
            }
            int i11 = this.f36102w;
            w3.h hVar2 = this.f36096q;
            this.f36102w = i11 - (i4 * (hVar2.H + hVar2.I));
            this.f36103x -= i10 * (hVar2.J + hVar2.K);
        }
        return true;
    }

    private void k() {
        if (this.C) {
            w3.i iVar = this.f36096q.M;
            if (iVar != null) {
                long j4 = iVar.f94431r >> 1;
                this.f36104y = j4;
                int i4 = iVar.f94430q;
                this.f36105z = i4;
                if (j4 == 0 || i4 == 0) {
                    System.err.println("Warning: vuiParams contain invalid values: time_scale: " + this.f36104y + " and frame_tick: " + this.f36105z + ". Setting frame rate to 25fps");
                    this.f36104y = 90000L;
                    this.f36105z = 3600;
                    return;
                }
                return;
            }
            System.err.println("Warning: Can't determine frame rate. Guessing 25 fps");
            this.f36104y = 90000L;
            this.f36105z = 3600;
        }
    }

    private void p(List<ByteBuffer> list) throws IOException {
        int i4 = 0;
        boolean z9 = false;
        for (ByteBuffer byteBuffer : list) {
            if ((byteBuffer.get(0) & com.google.common.base.c.I) == 5) {
                z9 = true;
            }
        }
        int i10 = z9 ? 38 : 22;
        if (new SliceHeader(com.googlecode.mp4parser.authoring.tracks.c.a(new b(list.get(list.size() - 1))), this.f36091l, this.f36093n, z9).f36107b == SliceHeader.SliceType.B) {
            i10 += 4;
        }
        com.googlecode.mp4parser.authoring.f b10 = b(list);
        list.clear();
        c cVar = this.A;
        if (cVar == null || cVar.f36147n == 0) {
            this.B = 0;
        }
        if (cVar != null && cVar.f36139f) {
            i4 = cVar.f36147n - this.B;
        } else if (cVar != null && cVar.f36136c) {
            i4 = cVar.f36138e / 2;
        }
        this.f36235f.add(new i.a(1, i4 * this.f36105z));
        this.f36236g.add(new r0.a(i10));
        this.B++;
        this.f36095p.add(b10);
        if (z9) {
            this.f36237h.add(Integer.valueOf(this.f36095p.size()));
        }
    }

    private void q(ByteBuffer byteBuffer) throws IOException {
        b bVar = new b(byteBuffer);
        bVar.read();
        w3.e b10 = w3.e.b(bVar);
        if (this.f36097r == null) {
            this.f36097r = b10;
        }
        this.f36099t = b10;
        byte[] h4 = com.googlecode.mp4parser.authoring.tracks.c.h((ByteBuffer) byteBuffer.rewind());
        byte[] bArr = this.f36092m.get(Integer.valueOf(b10.f94361e));
        if (bArr != null && !Arrays.equals(bArr, h4)) {
            throw new RuntimeException("OMG - I got two SPS with same ID but different settings! (AVC3 is the solution)");
        }
        if (bArr == null) {
            this.f36101v.put(Integer.valueOf(this.f36095p.size()), h4);
        }
        this.f36092m.put(Integer.valueOf(b10.f94361e), h4);
        this.f36093n.put(Integer.valueOf(b10.f94361e), b10);
    }

    private void r(ByteBuffer byteBuffer) throws IOException {
        InputStream a10 = com.googlecode.mp4parser.authoring.tracks.c.a(new b(byteBuffer));
        a10.read();
        w3.h c10 = w3.h.c(a10);
        if (this.f36096q == null) {
            this.f36096q = c10;
            k();
        }
        this.f36098s = c10;
        byte[] h4 = com.googlecode.mp4parser.authoring.tracks.c.h((ByteBuffer) byteBuffer.rewind());
        byte[] bArr = this.f36090k.get(Integer.valueOf(c10.f94413z));
        if (bArr != null && !Arrays.equals(bArr, h4)) {
            throw new RuntimeException("OMG - I got two SPS with same ID but different settings!");
        }
        if (bArr != null) {
            this.f36100u.put(Integer.valueOf(this.f36095p.size()), h4);
        }
        this.f36090k.put(Integer.valueOf(c10.f94413z), h4);
        this.f36091l.put(Integer.valueOf(c10.f94413z), c10);
    }

    private void s(c.a aVar) throws IOException {
        this.f36095p = new LinkedList();
        if (y(aVar)) {
            if (A()) {
                this.f36094o = new s0();
                com.coremedia.iso.boxes.sampleentry.h hVar = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f10369y);
                hVar.d(1);
                hVar.g0(24);
                hVar.h0(1);
                hVar.n0(72.0d);
                hVar.p0(72.0d);
                hVar.q0(this.f36102w);
                hVar.l0(this.f36103x);
                hVar.d0("AVC Coding");
                com.mp4parser.iso14496.part15.a aVar2 = new com.mp4parser.iso14496.part15.a();
                aVar2.T(new ArrayList(this.f36090k.values()));
                aVar2.Q(new ArrayList(this.f36092m.values()));
                aVar2.I(this.f36096q.f94412y);
                aVar2.J(this.f36096q.f94404q);
                aVar2.L(this.f36096q.f94401n);
                aVar2.K(this.f36096q.f94402o);
                aVar2.M(this.f36096q.f94396i.b());
                aVar2.N(1);
                aVar2.P(3);
                w3.h hVar2 = this.f36096q;
                aVar2.R((hVar2.f94406s ? 128 : 0) + (hVar2.f94407t ? 64 : 0) + (hVar2.f94408u ? 32 : 0) + (hVar2.f94409v ? 16 : 0) + (hVar2.f94410w ? 8 : 0) + ((int) (hVar2.f94405r & 3)));
                hVar.D(aVar2);
                this.f36094o.D(hVar);
                this.f36238i.l(new Date());
                this.f36238i.r(new Date());
                this.f36238i.o(this.D);
                this.f36238i.s(this.f36104y);
                this.f36238i.v(this.f36102w);
                this.f36238i.n(this.f36103x);
                return;
            }
            throw new IOException();
        }
        throw new IOException();
    }

    private boolean y(c.a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        a aVar2 = null;
        while (true) {
            ByteBuffer d4 = d(aVar);
            if (d4 != null) {
                byte b10 = d4.get(0);
                int i4 = (b10 >> 5) & 3;
                int i10 = b10 & com.google.common.base.c.I;
                switch (i10) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        a aVar3 = new a(d4, i4, i10);
                        if (aVar2 != null) {
                            if (aVar2.a(aVar3)) {
                                p(arrayList);
                            }
                            arrayList.add((ByteBuffer) d4.rewind());
                            break;
                        }
                        aVar2 = aVar3;
                        arrayList.add((ByteBuffer) d4.rewind());
                    case 6:
                        if (aVar2 != null) {
                            p(arrayList);
                            aVar2 = null;
                        }
                        this.A = new c(com.googlecode.mp4parser.authoring.tracks.c.a(new b(d4)), this.f36098s);
                        arrayList.add(d4);
                        break;
                    case 7:
                        if (aVar2 != null) {
                            p(arrayList);
                            aVar2 = null;
                        }
                        r((ByteBuffer) d4.rewind());
                        break;
                    case 8:
                        if (aVar2 != null) {
                            p(arrayList);
                            aVar2 = null;
                        }
                        q((ByteBuffer) d4.rewind());
                        break;
                    case 9:
                        if (aVar2 != null) {
                            p(arrayList);
                            aVar2 = null;
                        }
                        arrayList.add(d4);
                        break;
                    case 10:
                    case 11:
                        break;
                    case 12:
                    default:
                        System.err.println("Unknown NAL unit type: " + i10);
                        break;
                    case 13:
                        throw new RuntimeException("Sequence parameter set extension is not yet handled. Needs TLC.");
                }
            }
        }
        p(arrayList);
        long[] jArr = new long[this.f36095p.size()];
        this.f36234e = jArr;
        Arrays.fill(jArr, this.f36105z);
        return true;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36095p;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "vide";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36094o;
    }

    /* loaded from: classes2.dex */
    public class b extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f36132a;

        public b(ByteBuffer byteBuffer) {
            this.f36132a = byteBuffer.duplicate();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f36132a.hasRemaining()) {
                return this.f36132a.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i4, int i10) throws IOException {
            if (this.f36132a.hasRemaining()) {
                int min = Math.min(i10, this.f36132a.remaining());
                this.f36132a.get(bArr, i4, min);
                return min;
            }
            return -1;
        }
    }

    public H264TrackImpl(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        this(eVar, str, -1L, -1);
    }

    public H264TrackImpl(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }
}

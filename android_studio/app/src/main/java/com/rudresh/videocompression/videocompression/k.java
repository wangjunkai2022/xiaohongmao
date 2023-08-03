package com.rudresh.videocompression.videocompression;

import android.media.MediaCodec;
import android.media.MediaFormat;
import com.coremedia.iso.boxes.m1;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.y0;
import com.google.android.exoplayer2.util.a0;
import com.google.android.gms.common.n;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.o;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/* compiled from: Track.java */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: r  reason: collision with root package name */
    private static Map<Integer, Integer> f55314r;

    /* renamed from: a  reason: collision with root package name */
    private long f55315a;

    /* renamed from: d  reason: collision with root package name */
    private int[] f55318d;

    /* renamed from: e  reason: collision with root package name */
    private String f55319e;

    /* renamed from: f  reason: collision with root package name */
    private com.coremedia.iso.boxes.a f55320f;

    /* renamed from: g  reason: collision with root package name */
    private s0 f55321g;

    /* renamed from: h  reason: collision with root package name */
    private LinkedList<Integer> f55322h;

    /* renamed from: i  reason: collision with root package name */
    private int f55323i;

    /* renamed from: k  reason: collision with root package name */
    private int f55325k;

    /* renamed from: l  reason: collision with root package name */
    private int f55326l;

    /* renamed from: m  reason: collision with root package name */
    private float f55327m;

    /* renamed from: n  reason: collision with root package name */
    private long[] f55328n;

    /* renamed from: p  reason: collision with root package name */
    private boolean f55330p;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<h> f55316b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private long f55317c = 0;

    /* renamed from: j  reason: collision with root package name */
    private Date f55324j = new Date();

    /* renamed from: o  reason: collision with root package name */
    private ArrayList<a> f55329o = new ArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    private boolean f55331q = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Track.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f55332a;

        /* renamed from: b  reason: collision with root package name */
        private long f55333b;

        /* renamed from: c  reason: collision with root package name */
        private long f55334c;

        public a(int i4, long j4) {
            this.f55332a = i4;
            this.f55333b = j4;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f55314r = hashMap;
        hashMap.put(96000, 0);
        f55314r.put(88200, 1);
        f55314r.put(64000, 2);
        f55314r.put(48000, 3);
        f55314r.put(Integer.valueOf((int) StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE), 4);
        f55314r.put(32000, 5);
        f55314r.put(24000, 6);
        f55314r.put(22050, 7);
        f55314r.put(Integer.valueOf((int) com.google.android.exoplayer2.audio.a.f21097g), 8);
        f55314r.put(12000, 9);
        f55314r.put(11025, 10);
        f55314r.put(8000, 11);
    }

    public k(int i4, MediaFormat mediaFormat, boolean z9) {
        this.f55322h = null;
        this.f55327m = 0.0f;
        this.f55315a = i4;
        this.f55330p = z9;
        if (!z9) {
            this.f55326l = mediaFormat.getInteger("width");
            this.f55325k = mediaFormat.getInteger("height");
            this.f55323i = 90000;
            this.f55322h = new LinkedList<>();
            this.f55319e = "vide";
            this.f55320f = new m1();
            this.f55321g = new s0();
            String string = mediaFormat.getString(com.ksyun.media.player.misc.c.f45557a);
            if (string.equals("video/avc")) {
                com.coremedia.iso.boxes.sampleentry.h hVar = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f10369y);
                hVar.d(1);
                hVar.g0(24);
                hVar.h0(1);
                hVar.n0(72.0d);
                hVar.p0(72.0d);
                hVar.q0(this.f55326l);
                hVar.l0(this.f55325k);
                com.mp4parser.iso14496.part15.a aVar = new com.mp4parser.iso14496.part15.a();
                if (mediaFormat.getByteBuffer("csd-0") != null) {
                    ArrayList arrayList = new ArrayList();
                    ByteBuffer byteBuffer = mediaFormat.getByteBuffer("csd-0");
                    byteBuffer.position(4);
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    arrayList.add(bArr);
                    ArrayList arrayList2 = new ArrayList();
                    ByteBuffer byteBuffer2 = mediaFormat.getByteBuffer("csd-1");
                    byteBuffer2.position(4);
                    byte[] bArr2 = new byte[byteBuffer2.remaining()];
                    byteBuffer2.get(bArr2);
                    arrayList2.add(bArr2);
                    aVar.T(arrayList);
                    aVar.Q(arrayList2);
                }
                if (mediaFormat.containsKey("level")) {
                    int integer = mediaFormat.getInteger("level");
                    if (integer == 1) {
                        aVar.I(1);
                    } else if (integer == 32) {
                        aVar.I(2);
                    } else if (integer == 4) {
                        aVar.I(11);
                    } else if (integer == 8) {
                        aVar.I(12);
                    } else if (integer == 16) {
                        aVar.I(13);
                    } else if (integer == 64) {
                        aVar.I(21);
                    } else if (integer == 128) {
                        aVar.I(22);
                    } else if (integer == 256) {
                        aVar.I(3);
                    } else if (integer == 512) {
                        aVar.I(31);
                    } else if (integer == 1024) {
                        aVar.I(32);
                    } else if (integer == 2048) {
                        aVar.I(4);
                    } else if (integer == 4096) {
                        aVar.I(41);
                    } else if (integer == 8192) {
                        aVar.I(42);
                    } else if (integer == 16384) {
                        aVar.I(5);
                    } else if (integer == 32768) {
                        aVar.I(51);
                    } else if (integer == 65536) {
                        aVar.I(52);
                    } else if (integer == 2) {
                        aVar.I(27);
                    }
                } else {
                    aVar.I(13);
                }
                if (mediaFormat.containsKey(n.f29237a)) {
                    int integer2 = mediaFormat.getInteger(n.f29237a);
                    if (integer2 == 1) {
                        aVar.J(66);
                    } else if (integer2 == 2) {
                        aVar.J(77);
                    } else if (integer2 == 4) {
                        aVar.J(88);
                    } else if (integer2 == 8) {
                        aVar.J(100);
                    } else if (integer2 == 16) {
                        aVar.J(110);
                    } else if (integer2 == 32) {
                        aVar.J(122);
                    } else if (integer2 == 64) {
                        aVar.J(244);
                    }
                } else {
                    aVar.J(100);
                }
                aVar.L(-1);
                aVar.K(-1);
                aVar.M(-1);
                aVar.N(1);
                aVar.P(3);
                aVar.R(0);
                hVar.D(aVar);
                this.f55321g.D(hVar);
                return;
            } else if (string.equals("video/mp4v")) {
                com.coremedia.iso.boxes.sampleentry.h hVar2 = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f10367w);
                hVar2.d(1);
                hVar2.g0(24);
                hVar2.h0(1);
                hVar2.n0(72.0d);
                hVar2.p0(72.0d);
                hVar2.q0(this.f55326l);
                hVar2.l0(this.f55325k);
                this.f55321g.D(hVar2);
                return;
            } else {
                return;
            }
        }
        this.f55327m = 1.0f;
        this.f55323i = mediaFormat.getInteger("sample-rate");
        this.f55319e = "soun";
        this.f55320f = new y0();
        this.f55321g = new s0();
        com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.D);
        cVar.s0(mediaFormat.getInteger("channel-count"));
        cVar.x0(mediaFormat.getInteger("sample-rate"));
        cVar.d(1);
        cVar.y0(16);
        com.googlecode.mp4parser.boxes.mp4.b bVar = new com.googlecode.mp4parser.boxes.mp4.b();
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h hVar3 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h();
        hVar3.x(0);
        o oVar = new o();
        oVar.j(2);
        hVar3.z(oVar);
        String string2 = mediaFormat.containsKey(com.ksyun.media.player.misc.c.f45557a) ? mediaFormat.getString(com.ksyun.media.player.misc.c.f45557a) : "audio/mp4-latm";
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e();
        if (a0.D.equals(string2)) {
            eVar.v(105);
        } else {
            eVar.v(64);
        }
        eVar.w(5);
        eVar.t(1536);
        if (mediaFormat.containsKey("max-bitrate")) {
            eVar.u(mediaFormat.getInteger("max-bitrate"));
        } else {
            eVar.u(96000L);
        }
        eVar.s(this.f55323i);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a aVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a();
        aVar2.v(2);
        aVar2.y(f55314r.get(Integer.valueOf((int) cVar.g0())).intValue());
        aVar2.w(cVar.M());
        eVar.r(aVar2);
        hVar3.v(eVar);
        ByteBuffer t9 = hVar3.t();
        bVar.B(hVar3);
        bVar.y(t9);
        cVar.D(bVar);
        this.f55321g.D(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int s(a aVar, a aVar2) {
        if (aVar.f55333b > aVar2.f55333b) {
            return 1;
        }
        return aVar.f55333b < aVar2.f55333b ? -1 : 0;
    }

    public void b(long j4, MediaCodec.BufferInfo bufferInfo) {
        boolean z9 = true;
        z9 = (this.f55330p || (bufferInfo.flags & 1) == 0) ? false : false;
        this.f55316b.add(new h(j4, bufferInfo.size));
        LinkedList<Integer> linkedList = this.f55322h;
        if (linkedList != null && z9) {
            linkedList.add(Integer.valueOf(this.f55316b.size()));
        }
        ArrayList<a> arrayList = this.f55329o;
        arrayList.add(new a(arrayList.size(), ((bufferInfo.presentationTimeUs * this.f55323i) + 500000) / 1000000));
    }

    public Date c() {
        return this.f55324j;
    }

    public long d() {
        return this.f55317c;
    }

    public String e() {
        return this.f55319e;
    }

    public int f() {
        return this.f55325k;
    }

    public long g() {
        long j4 = this.f55317c;
        long[] jArr = this.f55328n;
        return (((j4 - jArr[jArr.length - 1]) * 1000000) - 500000) / this.f55323i;
    }

    public com.coremedia.iso.boxes.a h() {
        return this.f55320f;
    }

    public int[] i() {
        return this.f55318d;
    }

    public s0 j() {
        return this.f55321g;
    }

    public long[] k() {
        return this.f55328n;
    }

    public ArrayList<h> l() {
        return this.f55316b;
    }

    public long[] m() {
        LinkedList<Integer> linkedList = this.f55322h;
        if (linkedList == null || linkedList.isEmpty()) {
            return null;
        }
        long[] jArr = new long[this.f55322h.size()];
        for (int i4 = 0; i4 < this.f55322h.size(); i4++) {
            jArr[i4] = this.f55322h.get(i4).intValue();
        }
        return jArr;
    }

    public int n() {
        return this.f55323i;
    }

    public long o() {
        return this.f55315a;
    }

    public float p() {
        return this.f55327m;
    }

    public int q() {
        return this.f55326l;
    }

    public boolean r() {
        return this.f55330p;
    }

    public void t() {
        int i4;
        ArrayList arrayList = new ArrayList(this.f55329o);
        Collections.sort(this.f55329o, j.f55313a);
        this.f55328n = new long[this.f55329o.size()];
        long j4 = Long.MAX_VALUE;
        long j10 = 0;
        int i10 = 0;
        boolean z9 = false;
        while (true) {
            if (i10 >= this.f55329o.size()) {
                break;
            }
            a aVar = this.f55329o.get(i10);
            long j11 = aVar.f55333b - j10;
            j10 = aVar.f55333b;
            this.f55328n[aVar.f55332a] = j11;
            long j12 = j4;
            if (aVar.f55332a != 0) {
                this.f55317c += j11;
            }
            j4 = (j11 <= 0 || j11 >= 2147483647L) ? j12 : Math.min(j12, j11);
            if (aVar.f55332a != i10) {
                z9 = true;
            }
            i10++;
        }
        long[] jArr = this.f55328n;
        if (jArr.length > 0) {
            jArr[0] = j4;
            this.f55317c += j4;
        }
        for (i4 = 1; i4 < arrayList.size(); i4++) {
            ((a) arrayList.get(i4)).f55334c = this.f55328n[i4] + ((a) arrayList.get(i4 - 1)).f55334c;
        }
        if (z9) {
            this.f55318d = new int[this.f55329o.size()];
            for (int i11 = 0; i11 < this.f55329o.size(); i11++) {
                a aVar2 = this.f55329o.get(i11);
                this.f55318d[aVar2.f55332a] = (int) (aVar2.f55333b - aVar2.f55334c);
            }
        }
    }
}

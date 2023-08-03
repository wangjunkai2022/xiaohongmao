package com.coremedia.iso.boxes.sampleentry;

import android.support.v4.media.session.PlaybackStateCompat;
import com.coremedia.iso.i;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;

/* compiled from: TextSampleEntry.java */
/* loaded from: classes.dex */
public class g extends com.coremedia.iso.boxes.sampleentry.a {

    /* renamed from: u  reason: collision with root package name */
    public static final String f10349u = "tx3g";

    /* renamed from: v  reason: collision with root package name */
    public static final String f10350v = "enct";

    /* renamed from: o  reason: collision with root package name */
    private long f10351o;

    /* renamed from: p  reason: collision with root package name */
    private int f10352p;

    /* renamed from: q  reason: collision with root package name */
    private int f10353q;

    /* renamed from: r  reason: collision with root package name */
    private int[] f10354r;

    /* renamed from: s  reason: collision with root package name */
    private a f10355s;

    /* renamed from: t  reason: collision with root package name */
    private b f10356t;

    /* compiled from: TextSampleEntry.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f10357a;

        /* renamed from: b  reason: collision with root package name */
        int f10358b;

        /* renamed from: c  reason: collision with root package name */
        int f10359c;

        /* renamed from: d  reason: collision with root package name */
        int f10360d;

        public a() {
        }

        public void a(ByteBuffer byteBuffer) {
            i.f(byteBuffer, this.f10357a);
            i.f(byteBuffer, this.f10358b);
            i.f(byteBuffer, this.f10359c);
            i.f(byteBuffer, this.f10360d);
        }

        public int b() {
            return 8;
        }

        public void c(ByteBuffer byteBuffer) {
            this.f10357a = com.coremedia.iso.g.i(byteBuffer);
            this.f10358b = com.coremedia.iso.g.i(byteBuffer);
            this.f10359c = com.coremedia.iso.g.i(byteBuffer);
            this.f10360d = com.coremedia.iso.g.i(byteBuffer);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10359c == aVar.f10359c && this.f10358b == aVar.f10358b && this.f10360d == aVar.f10360d && this.f10357a == aVar.f10357a;
        }

        public int hashCode() {
            return (((((this.f10357a * 31) + this.f10358b) * 31) + this.f10359c) * 31) + this.f10360d;
        }

        public a(int i4, int i10, int i11, int i12) {
            this.f10357a = i4;
            this.f10358b = i10;
            this.f10359c = i11;
            this.f10360d = i12;
        }
    }

    public g() {
        super(f10349u);
        this.f10354r = new int[4];
        this.f10355s = new a();
        this.f10356t = new b();
    }

    public int[] J() {
        return this.f10354r;
    }

    public a K() {
        return this.f10355s;
    }

    public int L() {
        return this.f10352p;
    }

    public b M() {
        return this.f10356t;
    }

    public int W() {
        return this.f10353q;
    }

    public boolean X() {
        return (this.f10351o & 2048) == 2048;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(38);
        allocate.position(6);
        i.f(allocate, this.f10318n);
        i.i(allocate, this.f10351o);
        i.m(allocate, this.f10352p);
        i.m(allocate, this.f10353q);
        i.m(allocate, this.f10354r[0]);
        i.m(allocate, this.f10354r[1]);
        i.m(allocate, this.f10354r[2]);
        i.m(allocate, this.f10354r[3]);
        this.f10355s.a(allocate);
        this.f10356t.a(allocate);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    public boolean b0() {
        return (this.f10351o & PlaybackStateCompat.ACTION_SET_REPEAT_MODE) == PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    public boolean d0() {
        return (this.f10351o & 384) == 384;
    }

    public boolean g0() {
        return (this.f10351o & 32) == 32;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E = E() + 38;
        return E + ((this.f36436l || E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    public boolean h0() {
        return (this.f10351o & 64) == 64;
    }

    public boolean l0() {
        return (this.f10351o & 131072) == 131072;
    }

    public void n0(int[] iArr) {
        this.f10354r = iArr;
    }

    public void o0(a aVar) {
        this.f10355s = aVar;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(38);
        eVar.read(allocate);
        allocate.position(6);
        this.f10318n = com.coremedia.iso.g.i(allocate);
        this.f10351o = com.coremedia.iso.g.l(allocate);
        this.f10352p = com.coremedia.iso.g.p(allocate);
        this.f10353q = com.coremedia.iso.g.p(allocate);
        int[] iArr = new int[4];
        this.f10354r = iArr;
        iArr[0] = com.coremedia.iso.g.p(allocate);
        this.f10354r[1] = com.coremedia.iso.g.p(allocate);
        this.f10354r[2] = com.coremedia.iso.g.p(allocate);
        this.f10354r[3] = com.coremedia.iso.g.p(allocate);
        a aVar = new a();
        this.f10355s = aVar;
        aVar.c(allocate);
        b bVar = new b();
        this.f10356t = bVar;
        bVar.c(allocate);
        G(eVar, j4 - 38, cVar);
    }

    public void p0(boolean z9) {
        if (z9) {
            this.f10351o |= 2048;
        } else {
            this.f10351o &= -2049;
        }
    }

    public void q0(boolean z9) {
        if (z9) {
            this.f10351o |= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
        } else {
            this.f10351o &= -262145;
        }
    }

    public void r0(int i4) {
        this.f10352p = i4;
    }

    public void s0(boolean z9) {
        if (z9) {
            this.f10351o |= 384;
        } else {
            this.f10351o &= -385;
        }
    }

    public void t0(boolean z9) {
        if (z9) {
            this.f10351o |= 32;
        } else {
            this.f10351o &= -33;
        }
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "TextSampleEntry";
    }

    public void u0(boolean z9) {
        if (z9) {
            this.f10351o |= 64;
        } else {
            this.f10351o &= -65;
        }
    }

    public void v0(b bVar) {
        this.f10356t = bVar;
    }

    public void w0(String str) {
        this.f36435k = str;
    }

    public void x0(int i4) {
        this.f10353q = i4;
    }

    public void y0(boolean z9) {
        if (z9) {
            this.f10351o |= 131072;
        } else {
            this.f10351o &= -131073;
        }
    }

    /* compiled from: TextSampleEntry.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f10361a;

        /* renamed from: b  reason: collision with root package name */
        int f10362b;

        /* renamed from: c  reason: collision with root package name */
        int f10363c;

        /* renamed from: d  reason: collision with root package name */
        int f10364d;

        /* renamed from: e  reason: collision with root package name */
        int f10365e;

        /* renamed from: f  reason: collision with root package name */
        int[] f10366f;

        public b() {
            this.f10366f = new int[]{255, 255, 255, 255};
        }

        public void a(ByteBuffer byteBuffer) {
            i.f(byteBuffer, this.f10361a);
            i.f(byteBuffer, this.f10362b);
            i.f(byteBuffer, this.f10363c);
            i.m(byteBuffer, this.f10364d);
            i.m(byteBuffer, this.f10365e);
            i.m(byteBuffer, this.f10366f[0]);
            i.m(byteBuffer, this.f10366f[1]);
            i.m(byteBuffer, this.f10366f[2]);
            i.m(byteBuffer, this.f10366f[3]);
        }

        public int b() {
            return 12;
        }

        public void c(ByteBuffer byteBuffer) {
            this.f10361a = com.coremedia.iso.g.i(byteBuffer);
            this.f10362b = com.coremedia.iso.g.i(byteBuffer);
            this.f10363c = com.coremedia.iso.g.i(byteBuffer);
            this.f10364d = com.coremedia.iso.g.p(byteBuffer);
            this.f10365e = com.coremedia.iso.g.p(byteBuffer);
            int[] iArr = new int[4];
            this.f10366f = iArr;
            iArr[0] = com.coremedia.iso.g.p(byteBuffer);
            this.f10366f[1] = com.coremedia.iso.g.p(byteBuffer);
            this.f10366f[2] = com.coremedia.iso.g.p(byteBuffer);
            this.f10366f[3] = com.coremedia.iso.g.p(byteBuffer);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f10362b == bVar.f10362b && this.f10364d == bVar.f10364d && this.f10363c == bVar.f10363c && this.f10365e == bVar.f10365e && this.f10361a == bVar.f10361a && Arrays.equals(this.f10366f, bVar.f10366f);
        }

        public int hashCode() {
            int i4 = ((((((((this.f10361a * 31) + this.f10362b) * 31) + this.f10363c) * 31) + this.f10364d) * 31) + this.f10365e) * 31;
            int[] iArr = this.f10366f;
            return i4 + (iArr != null ? Arrays.hashCode(iArr) : 0);
        }

        public b(int i4, int i10, int i11, int i12, int i13, int[] iArr) {
            this.f10361a = i4;
            this.f10362b = i10;
            this.f10363c = i11;
            this.f10364d = i12;
            this.f10365e = i13;
            this.f10366f = iArr;
        }
    }

    public g(String str) {
        super(str);
        this.f10354r = new int[4];
        this.f10355s = new a();
        this.f10356t = new b();
    }
}

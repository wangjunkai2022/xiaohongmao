package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;

/* compiled from: SilenceSkippingAudioProcessor.java */
/* loaded from: classes2.dex */
public final class j0 extends z {

    /* renamed from: u  reason: collision with root package name */
    public static final long f21248u = 150000;

    /* renamed from: v  reason: collision with root package name */
    public static final long f21249v = 20000;

    /* renamed from: w  reason: collision with root package name */
    public static final short f21250w = 1024;

    /* renamed from: x  reason: collision with root package name */
    private static final int f21251x = 0;

    /* renamed from: y  reason: collision with root package name */
    private static final int f21252y = 1;

    /* renamed from: z  reason: collision with root package name */
    private static final int f21253z = 2;

    /* renamed from: i  reason: collision with root package name */
    private final long f21254i;

    /* renamed from: j  reason: collision with root package name */
    private final long f21255j;

    /* renamed from: k  reason: collision with root package name */
    private final short f21256k;

    /* renamed from: l  reason: collision with root package name */
    private int f21257l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f21258m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f21259n;

    /* renamed from: o  reason: collision with root package name */
    private byte[] f21260o;

    /* renamed from: p  reason: collision with root package name */
    private int f21261p;

    /* renamed from: q  reason: collision with root package name */
    private int f21262q;

    /* renamed from: r  reason: collision with root package name */
    private int f21263r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f21264s;

    /* renamed from: t  reason: collision with root package name */
    private long f21265t;

    public j0() {
        this(f21248u, f21249v, f21250w);
    }

    private int m(long j4) {
        return (int) ((j4 * this.f21418b.f21008a) / 1000000);
    }

    private int n(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        while (true) {
            limit -= 2;
            if (limit >= byteBuffer.position()) {
                if (Math.abs((int) byteBuffer.getShort(limit)) > this.f21256k) {
                    int i4 = this.f21257l;
                    return ((limit / i4) * i4) + i4;
                }
            } else {
                return byteBuffer.position();
            }
        }
    }

    private int o(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.f21256k) {
                int i4 = this.f21257l;
                return i4 * (position / i4);
            }
        }
        return byteBuffer.limit();
    }

    private void q(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        l(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f21264s = true;
        }
    }

    private void r(byte[] bArr, int i4) {
        l(i4).put(bArr, 0, i4).flip();
        if (i4 > 0) {
            this.f21264s = true;
        }
    }

    private void s(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int o9 = o(byteBuffer);
        int position = o9 - byteBuffer.position();
        byte[] bArr = this.f21259n;
        int length = bArr.length;
        int i4 = this.f21262q;
        int i10 = length - i4;
        if (o9 < limit && position < i10) {
            r(bArr, i4);
            this.f21262q = 0;
            this.f21261p = 0;
            return;
        }
        int min = Math.min(position, i10);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.f21259n, this.f21262q, min);
        int i11 = this.f21262q + min;
        this.f21262q = i11;
        byte[] bArr2 = this.f21259n;
        if (i11 == bArr2.length) {
            if (this.f21264s) {
                r(bArr2, this.f21263r);
                this.f21265t += (this.f21262q - (this.f21263r * 2)) / this.f21257l;
            } else {
                this.f21265t += (i11 - this.f21263r) / this.f21257l;
            }
            w(byteBuffer, this.f21259n, this.f21262q);
            this.f21262q = 0;
            this.f21261p = 2;
        }
        byteBuffer.limit(limit);
    }

    private void t(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f21259n.length));
        int n9 = n(byteBuffer);
        if (n9 == byteBuffer.position()) {
            this.f21261p = 1;
        } else {
            byteBuffer.limit(n9);
            q(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private void u(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int o9 = o(byteBuffer);
        byteBuffer.limit(o9);
        this.f21265t += byteBuffer.remaining() / this.f21257l;
        w(byteBuffer, this.f21260o, this.f21263r);
        if (o9 < limit) {
            r(this.f21260o, this.f21263r);
            this.f21261p = 0;
            byteBuffer.limit(limit);
        }
    }

    private void w(ByteBuffer byteBuffer, byte[] bArr, int i4) {
        int min = Math.min(byteBuffer.remaining(), this.f21263r);
        int i10 = this.f21263r - min;
        System.arraycopy(bArr, i4 - i10, this.f21260o, 0, i10);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f21260o, i10, min);
    }

    @Override // com.google.android.exoplayer2.audio.z, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a() {
        return this.f21258m;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !g()) {
            int i4 = this.f21261p;
            if (i4 == 0) {
                t(byteBuffer);
            } else if (i4 == 1) {
                s(byteBuffer);
            } else if (i4 == 2) {
                u(byteBuffer);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.z
    public AudioProcessor.a h(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f21010c == 2) {
            return this.f21258m ? aVar : AudioProcessor.a.f21007e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void i() {
        if (this.f21258m) {
            this.f21257l = this.f21418b.f21011d;
            int m9 = m(this.f21254i) * this.f21257l;
            if (this.f21259n.length != m9) {
                this.f21259n = new byte[m9];
            }
            int m10 = m(this.f21255j) * this.f21257l;
            this.f21263r = m10;
            if (this.f21260o.length != m10) {
                this.f21260o = new byte[m10];
            }
        }
        this.f21261p = 0;
        this.f21265t = 0L;
        this.f21262q = 0;
        this.f21264s = false;
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void j() {
        int i4 = this.f21262q;
        if (i4 > 0) {
            r(this.f21259n, i4);
        }
        if (this.f21264s) {
            return;
        }
        this.f21265t += this.f21263r / this.f21257l;
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void k() {
        this.f21258m = false;
        this.f21263r = 0;
        byte[] bArr = z0.f27748f;
        this.f21259n = bArr;
        this.f21260o = bArr;
    }

    public long p() {
        return this.f21265t;
    }

    public void v(boolean z9) {
        this.f21258m = z9;
    }

    public j0(long j4, long j10, short s9) {
        com.google.android.exoplayer2.util.a.a(j10 <= j4);
        this.f21254i = j4;
        this.f21255j = j10;
        this.f21256k = s9;
        byte[] bArr = z0.f27748f;
        this.f21259n = bArr;
        this.f21260o = bArr;
    }
}

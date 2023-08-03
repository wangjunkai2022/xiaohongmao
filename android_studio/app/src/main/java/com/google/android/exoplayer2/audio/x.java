package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import java.lang.reflect.Method;

/* compiled from: AudioTrackPositionTracker.java */
/* loaded from: classes2.dex */
final class x {
    private static final int G = 1;
    private static final int H = 2;
    private static final int I = 3;
    private static final long J = 5000000;
    private static final long K = 5000000;
    private static final long L = 1000000;
    private static final long M = 200;
    private static final int N = 10;
    private static final int O = 30000;
    private static final int P = 500000;
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    /* renamed from: a  reason: collision with root package name */
    private final a f21389a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f21390b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AudioTrack f21391c;

    /* renamed from: d  reason: collision with root package name */
    private int f21392d;

    /* renamed from: e  reason: collision with root package name */
    private int f21393e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private w f21394f;

    /* renamed from: g  reason: collision with root package name */
    private int f21395g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f21396h;

    /* renamed from: i  reason: collision with root package name */
    private long f21397i;

    /* renamed from: j  reason: collision with root package name */
    private float f21398j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f21399k;

    /* renamed from: l  reason: collision with root package name */
    private long f21400l;

    /* renamed from: m  reason: collision with root package name */
    private long f21401m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Method f21402n;

    /* renamed from: o  reason: collision with root package name */
    private long f21403o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f21404p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f21405q;

    /* renamed from: r  reason: collision with root package name */
    private long f21406r;

    /* renamed from: s  reason: collision with root package name */
    private long f21407s;

    /* renamed from: t  reason: collision with root package name */
    private long f21408t;

    /* renamed from: u  reason: collision with root package name */
    private long f21409u;

    /* renamed from: v  reason: collision with root package name */
    private int f21410v;

    /* renamed from: w  reason: collision with root package name */
    private int f21411w;

    /* renamed from: x  reason: collision with root package name */
    private long f21412x;

    /* renamed from: y  reason: collision with root package name */
    private long f21413y;

    /* renamed from: z  reason: collision with root package name */
    private long f21414z;

    /* compiled from: AudioTrackPositionTracker.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(int i4, long j4);

        void b(long j4);

        void c(long j4);

        void d(long j4, long j10, long j11, long j12);

        void e(long j4, long j10, long j11, long j12);
    }

    public x(a aVar) {
        this.f21389a = (a) com.google.android.exoplayer2.util.a.g(aVar);
        if (z0.f27743a >= 18) {
            try {
                this.f21402n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f21390b = new long[10];
    }

    private boolean a() {
        return this.f21396h && ((AudioTrack) com.google.android.exoplayer2.util.a.g(this.f21391c)).getPlayState() == 2 && f() == 0;
    }

    private long b(long j4) {
        return (j4 * 1000000) / this.f21395g;
    }

    private long f() {
        AudioTrack audioTrack = (AudioTrack) com.google.android.exoplayer2.util.a.g(this.f21391c);
        if (this.f21412x != com.google.android.exoplayer2.i.f23649b) {
            return Math.min(this.A, this.f21414z + ((((SystemClock.elapsedRealtime() * 1000) - this.f21412x) * this.f21395g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        if (this.f21396h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f21409u = this.f21407s;
            }
            playbackHeadPosition += this.f21409u;
        }
        if (z0.f27743a <= 29) {
            if (playbackHeadPosition == 0 && this.f21407s > 0 && playState == 3) {
                if (this.f21413y == com.google.android.exoplayer2.i.f23649b) {
                    this.f21413y = SystemClock.elapsedRealtime();
                }
                return this.f21407s;
            }
            this.f21413y = com.google.android.exoplayer2.i.f23649b;
        }
        if (this.f21407s > playbackHeadPosition) {
            this.f21408t++;
        }
        this.f21407s = playbackHeadPosition;
        return playbackHeadPosition + (this.f21408t << 32);
    }

    private long g() {
        return b(f());
    }

    private void m(long j4, long j10) {
        w wVar = (w) com.google.android.exoplayer2.util.a.g(this.f21394f);
        if (wVar.f(j4)) {
            long c10 = wVar.c();
            long b10 = wVar.b();
            if (Math.abs(c10 - j4) > 5000000) {
                this.f21389a.e(b10, c10, j4, j10);
                wVar.g();
            } else if (Math.abs(b(b10) - j10) > 5000000) {
                this.f21389a.d(b10, c10, j4, j10);
                wVar.g();
            } else {
                wVar.a();
            }
        }
    }

    private void n() {
        long g4 = g();
        if (g4 == 0) {
            return;
        }
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.f21401m >= 30000) {
            long[] jArr = this.f21390b;
            int i4 = this.f21410v;
            jArr[i4] = g4 - nanoTime;
            this.f21410v = (i4 + 1) % 10;
            int i10 = this.f21411w;
            if (i10 < 10) {
                this.f21411w = i10 + 1;
            }
            this.f21401m = nanoTime;
            this.f21400l = 0L;
            int i11 = 0;
            while (true) {
                int i12 = this.f21411w;
                if (i11 >= i12) {
                    break;
                }
                this.f21400l += this.f21390b[i11] / i12;
                i11++;
            }
        }
        if (this.f21396h) {
            return;
        }
        m(nanoTime, g4);
        o(nanoTime);
    }

    private void o(long j4) {
        Method method;
        if (!this.f21405q || (method = this.f21402n) == null || j4 - this.f21406r < 500000) {
            return;
        }
        try {
            long intValue = (((Integer) z0.k((Integer) method.invoke(com.google.android.exoplayer2.util.a.g(this.f21391c), new Object[0]))).intValue() * 1000) - this.f21397i;
            this.f21403o = intValue;
            long max = Math.max(intValue, 0L);
            this.f21403o = max;
            if (max > 5000000) {
                this.f21389a.c(max);
                this.f21403o = 0L;
            }
        } catch (Exception unused) {
            this.f21402n = null;
        }
        this.f21406r = j4;
    }

    private static boolean p(int i4) {
        return z0.f27743a < 23 && (i4 == 5 || i4 == 6);
    }

    private void s() {
        this.f21400l = 0L;
        this.f21411w = 0;
        this.f21410v = 0;
        this.f21401m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.f21399k = false;
    }

    public int c(long j4) {
        return this.f21393e - ((int) (j4 - (f() * this.f21392d)));
    }

    public long d(boolean z9) {
        long j4;
        if (((AudioTrack) com.google.android.exoplayer2.util.a.g(this.f21391c)).getPlayState() == 3) {
            n();
        }
        long nanoTime = System.nanoTime() / 1000;
        w wVar = (w) com.google.android.exoplayer2.util.a.g(this.f21394f);
        boolean d4 = wVar.d();
        if (d4) {
            j4 = b(wVar.b()) + z0.g0(nanoTime - wVar.c(), this.f21398j);
        } else {
            if (this.f21411w == 0) {
                j4 = g();
            } else {
                j4 = this.f21400l + nanoTime;
            }
            if (!z9) {
                j4 = Math.max(0L, j4 - this.f21403o);
            }
        }
        if (this.D != d4) {
            this.F = this.C;
            this.E = this.B;
        }
        long j10 = nanoTime - this.F;
        if (j10 < 1000000) {
            long j11 = (j10 * 1000) / 1000000;
            j4 = ((j4 * j11) + ((1000 - j11) * (this.E + z0.g0(j10, this.f21398j)))) / 1000;
        }
        if (!this.f21399k) {
            long j12 = this.B;
            if (j4 > j12) {
                this.f21399k = true;
                this.f21389a.b(System.currentTimeMillis() - com.google.android.exoplayer2.i.d(z0.l0(com.google.android.exoplayer2.i.d(j4 - j12), this.f21398j)));
            }
        }
        this.C = nanoTime;
        this.B = j4;
        this.D = d4;
        return j4;
    }

    public long e(long j4) {
        return com.google.android.exoplayer2.i.d(b(j4 - f()));
    }

    public void h(long j4) {
        this.f21414z = f();
        this.f21412x = SystemClock.elapsedRealtime() * 1000;
        this.A = j4;
    }

    public boolean i(long j4) {
        return j4 > f() || a();
    }

    public boolean j() {
        return ((AudioTrack) com.google.android.exoplayer2.util.a.g(this.f21391c)).getPlayState() == 3;
    }

    public boolean k(long j4) {
        return this.f21413y != com.google.android.exoplayer2.i.f23649b && j4 > 0 && SystemClock.elapsedRealtime() - this.f21413y >= M;
    }

    public boolean l(long j4) {
        int playState = ((AudioTrack) com.google.android.exoplayer2.util.a.g(this.f21391c)).getPlayState();
        if (this.f21396h) {
            if (playState == 2) {
                this.f21404p = false;
                return false;
            } else if (playState == 1 && f() == 0) {
                return false;
            }
        }
        boolean z9 = this.f21404p;
        boolean i4 = i(j4);
        this.f21404p = i4;
        if (z9 && !i4 && playState != 1) {
            this.f21389a.a(this.f21393e, com.google.android.exoplayer2.i.d(this.f21397i));
        }
        return true;
    }

    public boolean q() {
        s();
        if (this.f21412x == com.google.android.exoplayer2.i.f23649b) {
            ((w) com.google.android.exoplayer2.util.a.g(this.f21394f)).h();
            return true;
        }
        return false;
    }

    public void r() {
        s();
        this.f21391c = null;
        this.f21394f = null;
    }

    public void t(AudioTrack audioTrack, boolean z9, int i4, int i10, int i11) {
        this.f21391c = audioTrack;
        this.f21392d = i10;
        this.f21393e = i11;
        this.f21394f = new w(audioTrack);
        this.f21395g = audioTrack.getSampleRate();
        this.f21396h = z9 && p(i4);
        boolean C0 = z0.C0(i4);
        this.f21405q = C0;
        this.f21397i = C0 ? b(i11 / i10) : -9223372036854775807L;
        this.f21407s = 0L;
        this.f21408t = 0L;
        this.f21409u = 0L;
        this.f21404p = false;
        this.f21412x = com.google.android.exoplayer2.i.f23649b;
        this.f21413y = com.google.android.exoplayer2.i.f23649b;
        this.f21406r = 0L;
        this.f21403o = 0L;
        this.f21398j = 1.0f;
    }

    public void u(float f10) {
        this.f21398j = f10;
        w wVar = this.f21394f;
        if (wVar != null) {
            wVar.h();
        }
    }

    public void v() {
        ((w) com.google.android.exoplayer2.util.a.g(this.f21394f)).h();
    }
}

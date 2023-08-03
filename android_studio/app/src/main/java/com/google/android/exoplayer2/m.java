package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: DefaultLoadControl.java */
/* loaded from: classes2.dex */
public class m implements z0 {

    /* renamed from: l  reason: collision with root package name */
    public static final int f23873l = 50000;

    /* renamed from: m  reason: collision with root package name */
    public static final int f23874m = 50000;

    /* renamed from: n  reason: collision with root package name */
    public static final int f23875n = 2500;

    /* renamed from: o  reason: collision with root package name */
    public static final int f23876o = 5000;

    /* renamed from: p  reason: collision with root package name */
    public static final int f23877p = -1;

    /* renamed from: q  reason: collision with root package name */
    public static final boolean f23878q = false;

    /* renamed from: r  reason: collision with root package name */
    public static final int f23879r = 0;

    /* renamed from: s  reason: collision with root package name */
    public static final boolean f23880s = false;

    /* renamed from: t  reason: collision with root package name */
    public static final int f23881t = 131072000;

    /* renamed from: u  reason: collision with root package name */
    public static final int f23882u = 13107200;

    /* renamed from: v  reason: collision with root package name */
    public static final int f23883v = 131072;

    /* renamed from: w  reason: collision with root package name */
    public static final int f23884w = 131072;

    /* renamed from: x  reason: collision with root package name */
    public static final int f23885x = 131072;

    /* renamed from: y  reason: collision with root package name */
    public static final int f23886y = 144310272;

    /* renamed from: z  reason: collision with root package name */
    public static final int f23887z = 13107200;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.p f23888a;

    /* renamed from: b  reason: collision with root package name */
    private final long f23889b;

    /* renamed from: c  reason: collision with root package name */
    private final long f23890c;

    /* renamed from: d  reason: collision with root package name */
    private final long f23891d;

    /* renamed from: e  reason: collision with root package name */
    private final long f23892e;

    /* renamed from: f  reason: collision with root package name */
    private final int f23893f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f23894g;

    /* renamed from: h  reason: collision with root package name */
    private final long f23895h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f23896i;

    /* renamed from: j  reason: collision with root package name */
    private int f23897j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f23898k;

    /* compiled from: DefaultLoadControl.java */
    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.p f23899a;

        /* renamed from: b  reason: collision with root package name */
        private int f23900b = 50000;

        /* renamed from: c  reason: collision with root package name */
        private int f23901c = 50000;

        /* renamed from: d  reason: collision with root package name */
        private int f23902d = 2500;

        /* renamed from: e  reason: collision with root package name */
        private int f23903e = 5000;

        /* renamed from: f  reason: collision with root package name */
        private int f23904f = -1;

        /* renamed from: g  reason: collision with root package name */
        private boolean f23905g = false;

        /* renamed from: h  reason: collision with root package name */
        private int f23906h = 0;

        /* renamed from: i  reason: collision with root package name */
        private boolean f23907i = false;

        /* renamed from: j  reason: collision with root package name */
        private boolean f23908j;

        public m a() {
            com.google.android.exoplayer2.util.a.i(!this.f23908j);
            this.f23908j = true;
            if (this.f23899a == null) {
                this.f23899a = new com.google.android.exoplayer2.upstream.p(true, 65536);
            }
            return new m(this.f23899a, this.f23900b, this.f23901c, this.f23902d, this.f23903e, this.f23904f, this.f23905g, this.f23906h, this.f23907i);
        }

        @Deprecated
        public m b() {
            return a();
        }

        public a c(com.google.android.exoplayer2.upstream.p pVar) {
            com.google.android.exoplayer2.util.a.i(!this.f23908j);
            this.f23899a = pVar;
            return this;
        }

        public a d(int i4, boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f23908j);
            m.i(i4, 0, "backBufferDurationMs", "0");
            this.f23906h = i4;
            this.f23907i = z9;
            return this;
        }

        public a e(int i4, int i10, int i11, int i12) {
            com.google.android.exoplayer2.util.a.i(!this.f23908j);
            m.i(i11, 0, "bufferForPlaybackMs", "0");
            m.i(i12, 0, "bufferForPlaybackAfterRebufferMs", "0");
            m.i(i4, i11, "minBufferMs", "bufferForPlaybackMs");
            m.i(i4, i12, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            m.i(i10, i4, "maxBufferMs", "minBufferMs");
            this.f23900b = i4;
            this.f23901c = i10;
            this.f23902d = i11;
            this.f23903e = i12;
            return this;
        }

        public a f(boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f23908j);
            this.f23905g = z9;
            return this;
        }

        public a g(int i4) {
            com.google.android.exoplayer2.util.a.i(!this.f23908j);
            this.f23904f = i4;
            return this;
        }
    }

    public m() {
        this(new com.google.android.exoplayer2.upstream.p(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(int i4, int i10, String str, String str2) {
        boolean z9 = i4 >= i10;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        com.google.android.exoplayer2.util.a.b(z9, sb.toString());
    }

    private static int k(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3 || i4 == 5 || i4 == 6) {
                        return 131072;
                    }
                    if (i4 == 7) {
                        return 0;
                    }
                    throw new IllegalArgumentException();
                }
                return f23881t;
            }
            return 13107200;
        }
        return f23886y;
    }

    private void l(boolean z9) {
        int i4 = this.f23893f;
        if (i4 == -1) {
            i4 = 13107200;
        }
        this.f23897j = i4;
        this.f23898k = false;
        if (z9) {
            this.f23888a.g();
        }
    }

    @Override // com.google.android.exoplayer2.z0
    public boolean a() {
        return this.f23896i;
    }

    @Override // com.google.android.exoplayer2.z0
    public long b() {
        return this.f23895h;
    }

    @Override // com.google.android.exoplayer2.z0
    public void c(e2[] e2VarArr, TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.g[] gVarArr) {
        int i4 = this.f23893f;
        if (i4 == -1) {
            i4 = j(e2VarArr, gVarArr);
        }
        this.f23897j = i4;
        this.f23888a.h(i4);
    }

    @Override // com.google.android.exoplayer2.z0
    public boolean d(long j4, float f10, boolean z9, long j10) {
        long l02 = com.google.android.exoplayer2.util.z0.l0(j4, f10);
        long j11 = z9 ? this.f23892e : this.f23891d;
        if (j10 != i.f23649b) {
            j11 = Math.min(j10 / 2, j11);
        }
        return j11 <= 0 || l02 >= j11 || (!this.f23894g && this.f23888a.b() >= this.f23897j);
    }

    @Override // com.google.android.exoplayer2.z0
    public com.google.android.exoplayer2.upstream.b e() {
        return this.f23888a;
    }

    @Override // com.google.android.exoplayer2.z0
    public void f() {
        l(true);
    }

    @Override // com.google.android.exoplayer2.z0
    public boolean g(long j4, long j10, float f10) {
        boolean z9 = true;
        boolean z10 = this.f23888a.b() >= this.f23897j;
        long j11 = this.f23889b;
        if (f10 > 1.0f) {
            j11 = Math.min(com.google.android.exoplayer2.util.z0.g0(j11, f10), this.f23890c);
        }
        if (j10 < Math.max(j11, 500000L)) {
            if (!this.f23894g && z10) {
                z9 = false;
            }
            this.f23898k = z9;
            if (!z9 && j10 < 500000) {
                com.google.android.exoplayer2.util.w.n("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j10 >= this.f23890c || z10) {
            this.f23898k = false;
        }
        return this.f23898k;
    }

    protected int j(e2[] e2VarArr, com.google.android.exoplayer2.trackselection.g[] gVarArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < e2VarArr.length; i10++) {
            if (gVarArr[i10] != null) {
                i4 += k(e2VarArr[i10].getTrackType());
            }
        }
        return Math.max(13107200, i4);
    }

    @Override // com.google.android.exoplayer2.z0
    public void onPrepared() {
        l(false);
    }

    @Override // com.google.android.exoplayer2.z0
    public void onReleased() {
        l(true);
    }

    protected m(com.google.android.exoplayer2.upstream.p pVar, int i4, int i10, int i11, int i12, int i13, boolean z9, int i14, boolean z10) {
        i(i11, 0, "bufferForPlaybackMs", "0");
        i(i12, 0, "bufferForPlaybackAfterRebufferMs", "0");
        i(i4, i11, "minBufferMs", "bufferForPlaybackMs");
        i(i4, i12, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        i(i10, i4, "maxBufferMs", "minBufferMs");
        i(i14, 0, "backBufferDurationMs", "0");
        this.f23888a = pVar;
        this.f23889b = i.c(i4);
        this.f23890c = i.c(i10);
        this.f23891d = i.c(i11);
        this.f23892e = i.c(i12);
        this.f23893f = i13;
        this.f23897j = i13 == -1 ? 13107200 : i13;
        this.f23894g = z9;
        this.f23895h = i.c(i14);
        this.f23896i = z10;
    }
}

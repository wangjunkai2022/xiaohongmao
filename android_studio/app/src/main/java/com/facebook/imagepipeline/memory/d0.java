package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: PoolConfig.java */
@s7.b
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class d0 {

    /* renamed from: n  reason: collision with root package name */
    public static final int f12571n = 4194304;

    /* renamed from: a  reason: collision with root package name */
    private final f0 f12572a;

    /* renamed from: b  reason: collision with root package name */
    private final g0 f12573b;

    /* renamed from: c  reason: collision with root package name */
    private final f0 f12574c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.memory.c f12575d;

    /* renamed from: e  reason: collision with root package name */
    private final f0 f12576e;

    /* renamed from: f  reason: collision with root package name */
    private final g0 f12577f;

    /* renamed from: g  reason: collision with root package name */
    private final f0 f12578g;

    /* renamed from: h  reason: collision with root package name */
    private final g0 f12579h;

    /* renamed from: i  reason: collision with root package name */
    private final String f12580i;

    /* renamed from: j  reason: collision with root package name */
    private final int f12581j;

    /* renamed from: k  reason: collision with root package name */
    private final int f12582k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f12583l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f12584m;

    /* compiled from: PoolConfig.java */
    /* loaded from: classes.dex */
    public static class b {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        private f0 f12585a;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        private g0 f12586b;
        @r7.h

        /* renamed from: c  reason: collision with root package name */
        private f0 f12587c;
        @r7.h

        /* renamed from: d  reason: collision with root package name */
        private com.facebook.common.memory.c f12588d;
        @r7.h

        /* renamed from: e  reason: collision with root package name */
        private f0 f12589e;
        @r7.h

        /* renamed from: f  reason: collision with root package name */
        private g0 f12590f;
        @r7.h

        /* renamed from: g  reason: collision with root package name */
        private f0 f12591g;
        @r7.h

        /* renamed from: h  reason: collision with root package name */
        private g0 f12592h;
        @r7.h

        /* renamed from: i  reason: collision with root package name */
        private String f12593i;

        /* renamed from: j  reason: collision with root package name */
        private int f12594j;

        /* renamed from: k  reason: collision with root package name */
        private int f12595k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f12596l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f12597m;

        public d0 m() {
            return new d0(this);
        }

        public b n(int bitmapPoolMaxBitmapSize) {
            this.f12595k = bitmapPoolMaxBitmapSize;
            return this;
        }

        public b o(int bitmapPoolMaxPoolSize) {
            this.f12594j = bitmapPoolMaxPoolSize;
            return this;
        }

        public b p(f0 bitmapPoolParams) {
            this.f12585a = (f0) com.facebook.common.internal.j.i(bitmapPoolParams);
            return this;
        }

        public b q(g0 bitmapPoolStatsTracker) {
            this.f12586b = (g0) com.facebook.common.internal.j.i(bitmapPoolStatsTracker);
            return this;
        }

        public b r(String bitmapPoolType) {
            this.f12593i = bitmapPoolType;
            return this;
        }

        public b s(f0 flexByteArrayPoolParams) {
            this.f12587c = flexByteArrayPoolParams;
            return this;
        }

        public b t(boolean ignoreBitmapPoolHardCap) {
            this.f12597m = ignoreBitmapPoolHardCap;
            return this;
        }

        public b u(com.facebook.common.memory.c memoryTrimmableRegistry) {
            this.f12588d = memoryTrimmableRegistry;
            return this;
        }

        public b v(f0 memoryChunkPoolParams) {
            this.f12589e = (f0) com.facebook.common.internal.j.i(memoryChunkPoolParams);
            return this;
        }

        public b w(g0 memoryChunkPoolStatsTracker) {
            this.f12590f = (g0) com.facebook.common.internal.j.i(memoryChunkPoolStatsTracker);
            return this;
        }

        public b x(boolean registerLruBitmapPoolAsMemoryTrimmable) {
            this.f12596l = registerLruBitmapPoolAsMemoryTrimmable;
            return this;
        }

        public b y(f0 commonByteArrayPoolParams) {
            this.f12591g = (f0) com.facebook.common.internal.j.i(commonByteArrayPoolParams);
            return this;
        }

        public b z(g0 smallByteArrayPoolStatsTracker) {
            this.f12592h = (g0) com.facebook.common.internal.j.i(smallByteArrayPoolStatsTracker);
            return this;
        }

        private b() {
        }
    }

    public static b n() {
        return new b();
    }

    public int a() {
        return this.f12582k;
    }

    public int b() {
        return this.f12581j;
    }

    public f0 c() {
        return this.f12572a;
    }

    public g0 d() {
        return this.f12573b;
    }

    public String e() {
        return this.f12580i;
    }

    public f0 f() {
        return this.f12574c;
    }

    public f0 g() {
        return this.f12576e;
    }

    public g0 h() {
        return this.f12577f;
    }

    public com.facebook.common.memory.c i() {
        return this.f12575d;
    }

    public f0 j() {
        return this.f12578g;
    }

    public g0 k() {
        return this.f12579h;
    }

    public boolean l() {
        return this.f12584m;
    }

    public boolean m() {
        return this.f12583l;
    }

    private d0(b builder) {
        f0 f0Var;
        g0 g0Var;
        f0 f0Var2;
        com.facebook.common.memory.c cVar;
        f0 f0Var3;
        g0 g0Var2;
        f0 f0Var4;
        g0 g0Var3;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PoolConfig()");
        }
        if (builder.f12585a == null) {
            f0Var = l.a();
        } else {
            f0Var = builder.f12585a;
        }
        this.f12572a = f0Var;
        if (builder.f12586b == null) {
            g0Var = a0.h();
        } else {
            g0Var = builder.f12586b;
        }
        this.f12573b = g0Var;
        if (builder.f12587c == null) {
            f0Var2 = n.b();
        } else {
            f0Var2 = builder.f12587c;
        }
        this.f12574c = f0Var2;
        if (builder.f12588d == null) {
            cVar = com.facebook.common.memory.d.c();
        } else {
            cVar = builder.f12588d;
        }
        this.f12575d = cVar;
        if (builder.f12589e == null) {
            f0Var3 = o.a();
        } else {
            f0Var3 = builder.f12589e;
        }
        this.f12576e = f0Var3;
        if (builder.f12590f == null) {
            g0Var2 = a0.h();
        } else {
            g0Var2 = builder.f12590f;
        }
        this.f12577f = g0Var2;
        if (builder.f12591g == null) {
            f0Var4 = m.a();
        } else {
            f0Var4 = builder.f12591g;
        }
        this.f12578g = f0Var4;
        if (builder.f12592h == null) {
            g0Var3 = a0.h();
        } else {
            g0Var3 = builder.f12592h;
        }
        this.f12579h = g0Var3;
        this.f12580i = builder.f12593i == null ? "legacy" : builder.f12593i;
        this.f12581j = builder.f12594j;
        this.f12582k = builder.f12595k > 0 ? builder.f12595k : 4194304;
        this.f12583l = builder.f12596l;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        this.f12584m = builder.f12597m;
    }
}

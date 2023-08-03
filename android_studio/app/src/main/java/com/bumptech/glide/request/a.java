package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.h0;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.q;
import com.bumptech.glide.load.resource.bitmap.s;
import com.bumptech.glide.request.a;
import com.bumptech.glide.util.m;
import java.util.Map;

/* compiled from: BaseRequestOptions.java */
/* loaded from: classes.dex */
public abstract class a<T extends a<T>> implements Cloneable {
    private static final int A = -1;
    private static final int B = 2;
    private static final int C = 4;
    private static final int D = 8;
    private static final int E = 16;
    private static final int F = 32;
    private static final int G = 64;
    private static final int H = 128;
    private static final int I = 256;
    private static final int J = 512;
    private static final int K = 1024;
    private static final int L = 2048;
    private static final int M = 4096;
    private static final int N = 8192;
    private static final int O = 16384;
    private static final int P = 32768;
    private static final int Q = 65536;
    private static final int R = 131072;
    private static final int S = 262144;
    private static final int T = 524288;
    private static final int U = 1048576;

    /* renamed from: a  reason: collision with root package name */
    private int f9511a;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Drawable f9515e;

    /* renamed from: f  reason: collision with root package name */
    private int f9516f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Drawable f9517g;

    /* renamed from: h  reason: collision with root package name */
    private int f9518h;

    /* renamed from: m  reason: collision with root package name */
    private boolean f9523m;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Drawable f9525o;

    /* renamed from: p  reason: collision with root package name */
    private int f9526p;

    /* renamed from: t  reason: collision with root package name */
    private boolean f9530t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private Resources.Theme f9531u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f9532v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f9533w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f9534x;

    /* renamed from: z  reason: collision with root package name */
    private boolean f9536z;

    /* renamed from: b  reason: collision with root package name */
    private float f9512b = 1.0f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private com.bumptech.glide.load.engine.j f9513c = com.bumptech.glide.load.engine.j.f8864e;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private Priority f9514d = Priority.NORMAL;

    /* renamed from: i  reason: collision with root package name */
    private boolean f9519i = true;

    /* renamed from: j  reason: collision with root package name */
    private int f9520j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f9521k = -1;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private com.bumptech.glide.load.c f9522l = com.bumptech.glide.signature.c.c();

    /* renamed from: n  reason: collision with root package name */
    private boolean f9524n = true;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private com.bumptech.glide.load.f f9527q = new com.bumptech.glide.load.f();
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    private Map<Class<?>, com.bumptech.glide.load.i<?>> f9528r = new com.bumptech.glide.util.b();
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private Class<?> f9529s = Object.class;

    /* renamed from: y  reason: collision with root package name */
    private boolean f9535y = true;

    @NonNull
    private T A0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull com.bumptech.glide.load.i<Bitmap> iVar, boolean z9) {
        T s02;
        if (z9) {
            s02 = L0(downsampleStrategy, iVar);
        } else {
            s02 = s0(downsampleStrategy, iVar);
        }
        s02.f9535y = true;
        return s02;
    }

    private T B0() {
        return this;
    }

    private boolean d0(int i4) {
        return e0(this.f9511a, i4);
    }

    private static boolean e0(int i4, int i10) {
        return (i4 & i10) != 0;
    }

    @NonNull
    private T q0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull com.bumptech.glide.load.i<Bitmap> iVar) {
        return A0(downsampleStrategy, iVar, false);
    }

    @NonNull
    private T z0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull com.bumptech.glide.load.i<Bitmap> iVar) {
        return A0(downsampleStrategy, iVar, true);
    }

    @NonNull
    @CheckResult
    public T A(@Nullable Drawable drawable) {
        if (this.f9532v) {
            return (T) clone().A(drawable);
        }
        this.f9525o = drawable;
        this.f9526p = 0;
        this.f9511a = (this.f9511a | 8192) & (-16385);
        return C0();
    }

    @NonNull
    @CheckResult
    public T B() {
        return z0(DownsampleStrategy.f9190c, new s());
    }

    @NonNull
    @CheckResult
    public T C(@NonNull DecodeFormat decodeFormat) {
        m.d(decodeFormat);
        return (T) D0(o.f9262g, decodeFormat).D0(com.bumptech.glide.load.resource.gif.i.f9407a, decodeFormat);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final T C0() {
        if (!this.f9530t) {
            return B0();
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    @NonNull
    @CheckResult
    public T D(@IntRange(from = 0) long j4) {
        return D0(h0.f9241g, Long.valueOf(j4));
    }

    @NonNull
    @CheckResult
    public <Y> T D0(@NonNull com.bumptech.glide.load.e<Y> eVar, @NonNull Y y9) {
        if (this.f9532v) {
            return (T) clone().D0(eVar, y9);
        }
        m.d(eVar);
        m.d(y9);
        this.f9527q.e(eVar, y9);
        return C0();
    }

    @NonNull
    public final com.bumptech.glide.load.engine.j E() {
        return this.f9513c;
    }

    @NonNull
    @CheckResult
    public T E0(@NonNull com.bumptech.glide.load.c cVar) {
        if (this.f9532v) {
            return (T) clone().E0(cVar);
        }
        this.f9522l = (com.bumptech.glide.load.c) m.d(cVar);
        this.f9511a |= 1024;
        return C0();
    }

    public final int F() {
        return this.f9516f;
    }

    @NonNull
    @CheckResult
    public T F0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f9532v) {
            return (T) clone().F0(f10);
        }
        if (f10 >= 0.0f && f10 <= 1.0f) {
            this.f9512b = f10;
            this.f9511a |= 2;
            return C0();
        }
        throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }

    @Nullable
    public final Drawable G() {
        return this.f9515e;
    }

    @NonNull
    @CheckResult
    public T G0(boolean z9) {
        if (this.f9532v) {
            return (T) clone().G0(true);
        }
        this.f9519i = !z9;
        this.f9511a |= 256;
        return C0();
    }

    @Nullable
    public final Drawable H() {
        return this.f9525o;
    }

    @NonNull
    @CheckResult
    public T H0(@Nullable Resources.Theme theme) {
        if (this.f9532v) {
            return (T) clone().H0(theme);
        }
        this.f9531u = theme;
        this.f9511a |= 32768;
        return C0();
    }

    public final int I() {
        return this.f9526p;
    }

    @NonNull
    @CheckResult
    public T I0(@IntRange(from = 0) int i4) {
        return D0(com.bumptech.glide.load.model.stream.b.f9111b, Integer.valueOf(i4));
    }

    public final boolean J() {
        return this.f9534x;
    }

    @NonNull
    @CheckResult
    public T J0(@NonNull com.bumptech.glide.load.i<Bitmap> iVar) {
        return K0(iVar, true);
    }

    @NonNull
    public final com.bumptech.glide.load.f K() {
        return this.f9527q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    T K0(@NonNull com.bumptech.glide.load.i<Bitmap> iVar, boolean z9) {
        if (this.f9532v) {
            return (T) clone().K0(iVar, z9);
        }
        q qVar = new q(iVar, z9);
        N0(Bitmap.class, iVar, z9);
        N0(Drawable.class, qVar, z9);
        N0(BitmapDrawable.class, qVar.c(), z9);
        N0(com.bumptech.glide.load.resource.gif.c.class, new com.bumptech.glide.load.resource.gif.f(iVar), z9);
        return C0();
    }

    public final int L() {
        return this.f9520j;
    }

    @NonNull
    @CheckResult
    final T L0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull com.bumptech.glide.load.i<Bitmap> iVar) {
        if (this.f9532v) {
            return (T) clone().L0(downsampleStrategy, iVar);
        }
        u(downsampleStrategy);
        return J0(iVar);
    }

    public final int M() {
        return this.f9521k;
    }

    @NonNull
    @CheckResult
    public <Y> T M0(@NonNull Class<Y> cls, @NonNull com.bumptech.glide.load.i<Y> iVar) {
        return N0(cls, iVar, true);
    }

    @Nullable
    public final Drawable N() {
        return this.f9517g;
    }

    @NonNull
    <Y> T N0(@NonNull Class<Y> cls, @NonNull com.bumptech.glide.load.i<Y> iVar, boolean z9) {
        if (this.f9532v) {
            return (T) clone().N0(cls, iVar, z9);
        }
        m.d(cls);
        m.d(iVar);
        this.f9528r.put(cls, iVar);
        this.f9524n = true;
        int i4 = this.f9511a | 2048 | 65536;
        this.f9511a = i4;
        this.f9535y = false;
        if (z9) {
            this.f9511a = i4 | 131072;
            this.f9523m = true;
        }
        return C0();
    }

    public final int O() {
        return this.f9518h;
    }

    @NonNull
    @CheckResult
    public T O0(@NonNull com.bumptech.glide.load.i<Bitmap>... iVarArr) {
        if (iVarArr.length > 1) {
            return K0(new com.bumptech.glide.load.d(iVarArr), true);
        }
        if (iVarArr.length == 1) {
            return J0(iVarArr[0]);
        }
        return C0();
    }

    @NonNull
    public final Priority P() {
        return this.f9514d;
    }

    @NonNull
    @CheckResult
    @Deprecated
    public T P0(@NonNull com.bumptech.glide.load.i<Bitmap>... iVarArr) {
        return K0(new com.bumptech.glide.load.d(iVarArr), true);
    }

    @NonNull
    public final Class<?> Q() {
        return this.f9529s;
    }

    @NonNull
    @CheckResult
    public T Q0(boolean z9) {
        if (this.f9532v) {
            return (T) clone().Q0(z9);
        }
        this.f9536z = z9;
        this.f9511a |= 1048576;
        return C0();
    }

    @NonNull
    public final com.bumptech.glide.load.c R() {
        return this.f9522l;
    }

    @NonNull
    @CheckResult
    public T R0(boolean z9) {
        if (this.f9532v) {
            return (T) clone().R0(z9);
        }
        this.f9533w = z9;
        this.f9511a |= 262144;
        return C0();
    }

    public final float S() {
        return this.f9512b;
    }

    @Nullable
    public final Resources.Theme T() {
        return this.f9531u;
    }

    @NonNull
    public final Map<Class<?>, com.bumptech.glide.load.i<?>> U() {
        return this.f9528r;
    }

    public final boolean V() {
        return this.f9536z;
    }

    public final boolean W() {
        return this.f9533w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean X() {
        return this.f9532v;
    }

    public final boolean Y() {
        return d0(4);
    }

    public final boolean Z() {
        return this.f9530t;
    }

    @NonNull
    @CheckResult
    public T a(@NonNull a<?> aVar) {
        if (this.f9532v) {
            return (T) clone().a(aVar);
        }
        if (e0(aVar.f9511a, 2)) {
            this.f9512b = aVar.f9512b;
        }
        if (e0(aVar.f9511a, 262144)) {
            this.f9533w = aVar.f9533w;
        }
        if (e0(aVar.f9511a, 1048576)) {
            this.f9536z = aVar.f9536z;
        }
        if (e0(aVar.f9511a, 4)) {
            this.f9513c = aVar.f9513c;
        }
        if (e0(aVar.f9511a, 8)) {
            this.f9514d = aVar.f9514d;
        }
        if (e0(aVar.f9511a, 16)) {
            this.f9515e = aVar.f9515e;
            this.f9516f = 0;
            this.f9511a &= -33;
        }
        if (e0(aVar.f9511a, 32)) {
            this.f9516f = aVar.f9516f;
            this.f9515e = null;
            this.f9511a &= -17;
        }
        if (e0(aVar.f9511a, 64)) {
            this.f9517g = aVar.f9517g;
            this.f9518h = 0;
            this.f9511a &= -129;
        }
        if (e0(aVar.f9511a, 128)) {
            this.f9518h = aVar.f9518h;
            this.f9517g = null;
            this.f9511a &= -65;
        }
        if (e0(aVar.f9511a, 256)) {
            this.f9519i = aVar.f9519i;
        }
        if (e0(aVar.f9511a, 512)) {
            this.f9521k = aVar.f9521k;
            this.f9520j = aVar.f9520j;
        }
        if (e0(aVar.f9511a, 1024)) {
            this.f9522l = aVar.f9522l;
        }
        if (e0(aVar.f9511a, 4096)) {
            this.f9529s = aVar.f9529s;
        }
        if (e0(aVar.f9511a, 8192)) {
            this.f9525o = aVar.f9525o;
            this.f9526p = 0;
            this.f9511a &= -16385;
        }
        if (e0(aVar.f9511a, 16384)) {
            this.f9526p = aVar.f9526p;
            this.f9525o = null;
            this.f9511a &= -8193;
        }
        if (e0(aVar.f9511a, 32768)) {
            this.f9531u = aVar.f9531u;
        }
        if (e0(aVar.f9511a, 65536)) {
            this.f9524n = aVar.f9524n;
        }
        if (e0(aVar.f9511a, 131072)) {
            this.f9523m = aVar.f9523m;
        }
        if (e0(aVar.f9511a, 2048)) {
            this.f9528r.putAll(aVar.f9528r);
            this.f9535y = aVar.f9535y;
        }
        if (e0(aVar.f9511a, 524288)) {
            this.f9534x = aVar.f9534x;
        }
        if (!this.f9524n) {
            this.f9528r.clear();
            this.f9523m = false;
            this.f9511a = this.f9511a & (-2049) & (-131073);
            this.f9535y = true;
        }
        this.f9511a |= aVar.f9511a;
        this.f9527q.d(aVar.f9527q);
        return C0();
    }

    public final boolean a0() {
        return this.f9519i;
    }

    public final boolean b0() {
        return d0(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c0() {
        return this.f9535y;
    }

    @NonNull
    public T e() {
        if (this.f9530t && !this.f9532v) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f9532v = true;
        return k0();
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return Float.compare(aVar.f9512b, this.f9512b) == 0 && this.f9516f == aVar.f9516f && com.bumptech.glide.util.o.d(this.f9515e, aVar.f9515e) && this.f9518h == aVar.f9518h && com.bumptech.glide.util.o.d(this.f9517g, aVar.f9517g) && this.f9526p == aVar.f9526p && com.bumptech.glide.util.o.d(this.f9525o, aVar.f9525o) && this.f9519i == aVar.f9519i && this.f9520j == aVar.f9520j && this.f9521k == aVar.f9521k && this.f9523m == aVar.f9523m && this.f9524n == aVar.f9524n && this.f9533w == aVar.f9533w && this.f9534x == aVar.f9534x && this.f9513c.equals(aVar.f9513c) && this.f9514d == aVar.f9514d && this.f9527q.equals(aVar.f9527q) && this.f9528r.equals(aVar.f9528r) && this.f9529s.equals(aVar.f9529s) && com.bumptech.glide.util.o.d(this.f9522l, aVar.f9522l) && com.bumptech.glide.util.o.d(this.f9531u, aVar.f9531u);
        }
        return false;
    }

    @NonNull
    @CheckResult
    public T f() {
        return L0(DownsampleStrategy.f9192e, new l());
    }

    public final boolean f0() {
        return d0(256);
    }

    public final boolean g0() {
        return this.f9524n;
    }

    public final boolean h0() {
        return this.f9523m;
    }

    public int hashCode() {
        return com.bumptech.glide.util.o.q(this.f9531u, com.bumptech.glide.util.o.q(this.f9522l, com.bumptech.glide.util.o.q(this.f9529s, com.bumptech.glide.util.o.q(this.f9528r, com.bumptech.glide.util.o.q(this.f9527q, com.bumptech.glide.util.o.q(this.f9514d, com.bumptech.glide.util.o.q(this.f9513c, com.bumptech.glide.util.o.s(this.f9534x, com.bumptech.glide.util.o.s(this.f9533w, com.bumptech.glide.util.o.s(this.f9524n, com.bumptech.glide.util.o.s(this.f9523m, com.bumptech.glide.util.o.p(this.f9521k, com.bumptech.glide.util.o.p(this.f9520j, com.bumptech.glide.util.o.s(this.f9519i, com.bumptech.glide.util.o.q(this.f9525o, com.bumptech.glide.util.o.p(this.f9526p, com.bumptech.glide.util.o.q(this.f9517g, com.bumptech.glide.util.o.p(this.f9518h, com.bumptech.glide.util.o.q(this.f9515e, com.bumptech.glide.util.o.p(this.f9516f, com.bumptech.glide.util.o.m(this.f9512b)))))))))))))))))))));
    }

    public final boolean i0() {
        return d0(2048);
    }

    @NonNull
    @CheckResult
    public T j() {
        return z0(DownsampleStrategy.f9191d, new com.bumptech.glide.load.resource.bitmap.m());
    }

    public final boolean j0() {
        return com.bumptech.glide.util.o.w(this.f9521k, this.f9520j);
    }

    @NonNull
    @CheckResult
    public T k() {
        return L0(DownsampleStrategy.f9191d, new n());
    }

    @NonNull
    public T k0() {
        this.f9530t = true;
        return B0();
    }

    @NonNull
    @CheckResult
    public T l0(boolean z9) {
        if (this.f9532v) {
            return (T) clone().l0(z9);
        }
        this.f9534x = z9;
        this.f9511a |= 524288;
        return C0();
    }

    @NonNull
    @CheckResult
    public T m0() {
        return s0(DownsampleStrategy.f9192e, new l());
    }

    @NonNull
    @CheckResult
    public T n0() {
        return q0(DownsampleStrategy.f9191d, new com.bumptech.glide.load.resource.bitmap.m());
    }

    @Override // 
    @CheckResult
    /* renamed from: o */
    public T clone() {
        try {
            T t9 = (T) super.clone();
            com.bumptech.glide.load.f fVar = new com.bumptech.glide.load.f();
            t9.f9527q = fVar;
            fVar.d(this.f9527q);
            com.bumptech.glide.util.b bVar = new com.bumptech.glide.util.b();
            t9.f9528r = bVar;
            bVar.putAll(this.f9528r);
            t9.f9530t = false;
            t9.f9532v = false;
            return t9;
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    @NonNull
    @CheckResult
    public T o0() {
        return s0(DownsampleStrategy.f9192e, new n());
    }

    @NonNull
    @CheckResult
    public T p(@NonNull Class<?> cls) {
        if (this.f9532v) {
            return (T) clone().p(cls);
        }
        this.f9529s = (Class) m.d(cls);
        this.f9511a |= 4096;
        return C0();
    }

    @NonNull
    @CheckResult
    public T p0() {
        return q0(DownsampleStrategy.f9190c, new s());
    }

    @NonNull
    @CheckResult
    public T q() {
        return D0(o.f9266k, Boolean.FALSE);
    }

    @NonNull
    @CheckResult
    public T r(@NonNull com.bumptech.glide.load.engine.j jVar) {
        if (this.f9532v) {
            return (T) clone().r(jVar);
        }
        this.f9513c = (com.bumptech.glide.load.engine.j) m.d(jVar);
        this.f9511a |= 4;
        return C0();
    }

    @NonNull
    @CheckResult
    public T r0(@NonNull com.bumptech.glide.load.i<Bitmap> iVar) {
        return K0(iVar, false);
    }

    @NonNull
    @CheckResult
    public T s() {
        return D0(com.bumptech.glide.load.resource.gif.i.f9408b, Boolean.TRUE);
    }

    @NonNull
    final T s0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull com.bumptech.glide.load.i<Bitmap> iVar) {
        if (this.f9532v) {
            return (T) clone().s0(downsampleStrategy, iVar);
        }
        u(downsampleStrategy);
        return K0(iVar, false);
    }

    @NonNull
    @CheckResult
    public T t() {
        if (this.f9532v) {
            return (T) clone().t();
        }
        this.f9528r.clear();
        this.f9523m = false;
        this.f9524n = false;
        this.f9511a = (this.f9511a & (-2049) & (-131073)) | 65536;
        this.f9535y = true;
        return C0();
    }

    @NonNull
    @CheckResult
    public <Y> T t0(@NonNull Class<Y> cls, @NonNull com.bumptech.glide.load.i<Y> iVar) {
        return N0(cls, iVar, false);
    }

    @NonNull
    @CheckResult
    public T u(@NonNull DownsampleStrategy downsampleStrategy) {
        return D0(DownsampleStrategy.f9195h, m.d(downsampleStrategy));
    }

    @NonNull
    @CheckResult
    public T u0(int i4) {
        return v0(i4, i4);
    }

    @NonNull
    @CheckResult
    public T v(@NonNull Bitmap.CompressFormat compressFormat) {
        return D0(com.bumptech.glide.load.resource.bitmap.e.f9217c, m.d(compressFormat));
    }

    @NonNull
    @CheckResult
    public T v0(int i4, int i10) {
        if (this.f9532v) {
            return (T) clone().v0(i4, i10);
        }
        this.f9521k = i4;
        this.f9520j = i10;
        this.f9511a |= 512;
        return C0();
    }

    @NonNull
    @CheckResult
    public T w(@IntRange(from = 0, to = 100) int i4) {
        return D0(com.bumptech.glide.load.resource.bitmap.e.f9216b, Integer.valueOf(i4));
    }

    @NonNull
    @CheckResult
    public T w0(@DrawableRes int i4) {
        if (this.f9532v) {
            return (T) clone().w0(i4);
        }
        this.f9518h = i4;
        this.f9517g = null;
        this.f9511a = (this.f9511a | 128) & (-65);
        return C0();
    }

    @NonNull
    @CheckResult
    public T x(@DrawableRes int i4) {
        if (this.f9532v) {
            return (T) clone().x(i4);
        }
        this.f9516f = i4;
        this.f9515e = null;
        this.f9511a = (this.f9511a | 32) & (-17);
        return C0();
    }

    @NonNull
    @CheckResult
    public T x0(@Nullable Drawable drawable) {
        if (this.f9532v) {
            return (T) clone().x0(drawable);
        }
        this.f9517g = drawable;
        this.f9518h = 0;
        this.f9511a = (this.f9511a | 64) & (-129);
        return C0();
    }

    @NonNull
    @CheckResult
    public T y(@Nullable Drawable drawable) {
        if (this.f9532v) {
            return (T) clone().y(drawable);
        }
        this.f9515e = drawable;
        this.f9516f = 0;
        this.f9511a = (this.f9511a | 16) & (-33);
        return C0();
    }

    @NonNull
    @CheckResult
    public T y0(@NonNull Priority priority) {
        if (this.f9532v) {
            return (T) clone().y0(priority);
        }
        this.f9514d = (Priority) m.d(priority);
        this.f9511a |= 8;
        return C0();
    }

    @NonNull
    @CheckResult
    public T z(@DrawableRes int i4) {
        if (this.f9532v) {
            return (T) clone().z(i4);
        }
        this.f9526p = i4;
        this.f9525o = null;
        this.f9511a = (this.f9511a | 16384) & (-8193);
        return C0();
    }
}

package com.qennnsad.aknkaksd.util.img;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.h;

/* compiled from: GlideOptions.java */
/* loaded from: classes3.dex */
public final class b extends h implements Cloneable {
    private static b V1;

    /* renamed from: b2  reason: collision with root package name */
    private static b f54748b2;

    /* renamed from: g2  reason: collision with root package name */
    private static b f54749g2;

    /* renamed from: p2  reason: collision with root package name */
    private static b f54750p2;

    /* renamed from: x2  reason: collision with root package name */
    private static b f54751x2;

    /* renamed from: y2  reason: collision with root package name */
    private static b f54752y2;

    @NonNull
    @CheckResult
    public static b A1() {
        if (f54750p2 == null) {
            f54750p2 = new b().k().e();
        }
        return f54750p2;
    }

    @NonNull
    @CheckResult
    public static b A2(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return new b().F0(f10);
    }

    @NonNull
    @CheckResult
    public static b C2(boolean z9) {
        return new b().G0(z9);
    }

    @NonNull
    @CheckResult
    public static b D1(@NonNull Class<?> cls) {
        return new b().p(cls);
    }

    @NonNull
    @CheckResult
    public static b F2(@IntRange(from = 0) int i4) {
        return new b().I0(i4);
    }

    @NonNull
    @CheckResult
    public static b G1(@NonNull j jVar) {
        return new b().r(jVar);
    }

    @NonNull
    @CheckResult
    public static b K1(@NonNull DownsampleStrategy downsampleStrategy) {
        return new b().u(downsampleStrategy);
    }

    @NonNull
    @CheckResult
    public static b M1(@NonNull Bitmap.CompressFormat compressFormat) {
        return new b().v(compressFormat);
    }

    @NonNull
    @CheckResult
    public static b O1(@IntRange(from = 0, to = 100) int i4) {
        return new b().w(i4);
    }

    @NonNull
    @CheckResult
    public static b R1(@DrawableRes int i4) {
        return new b().x(i4);
    }

    @NonNull
    @CheckResult
    public static b S1(@Nullable Drawable drawable) {
        return new b().y(drawable);
    }

    @NonNull
    @CheckResult
    public static b W1() {
        if (V1 == null) {
            V1 = new b().B().e();
        }
        return V1;
    }

    @NonNull
    @CheckResult
    public static b Y1(@NonNull DecodeFormat decodeFormat) {
        return new b().C(decodeFormat);
    }

    @NonNull
    @CheckResult
    public static b a2(@IntRange(from = 0) long j4) {
        return new b().D(j4);
    }

    @NonNull
    @CheckResult
    public static b c2() {
        if (f54752y2 == null) {
            f54752y2 = new b().s().e();
        }
        return f54752y2;
    }

    @NonNull
    @CheckResult
    public static b d2() {
        if (f54751x2 == null) {
            f54751x2 = new b().t().e();
        }
        return f54751x2;
    }

    @NonNull
    @CheckResult
    public static <T> b f2(@NonNull com.bumptech.glide.load.e<T> eVar, @NonNull T t9) {
        return new b().D0(eVar, t9);
    }

    @NonNull
    @CheckResult
    public static b o2(int i4) {
        return new b().u0(i4);
    }

    @NonNull
    @CheckResult
    public static b p2(int i4, int i10) {
        return new b().v0(i4, i10);
    }

    @NonNull
    @CheckResult
    public static b s2(@DrawableRes int i4) {
        return new b().w0(i4);
    }

    @NonNull
    @CheckResult
    public static b t2(@Nullable Drawable drawable) {
        return new b().x0(drawable);
    }

    @NonNull
    @CheckResult
    public static b u1(@NonNull i<Bitmap> iVar) {
        return new b().J0(iVar);
    }

    @NonNull
    @CheckResult
    public static b v2(@NonNull Priority priority) {
        return new b().y0(priority);
    }

    @NonNull
    @CheckResult
    public static b w1() {
        if (f54749g2 == null) {
            f54749g2 = new b().f().e();
        }
        return f54749g2;
    }

    @NonNull
    @CheckResult
    public static b y1() {
        if (f54748b2 == null) {
            f54748b2 = new b().j().e();
        }
        return f54748b2;
    }

    @NonNull
    @CheckResult
    public static b y2(@NonNull com.bumptech.glide.load.c cVar) {
        return new b().E0(cVar);
    }

    @Override // com.bumptech.glide.request.a
    @CheckResult
    /* renamed from: B1 */
    public b o() {
        return (b) super.clone();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: B2 */
    public b G0(boolean z9) {
        return (b) super.G0(z9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: C1 */
    public b p(@NonNull Class<?> cls) {
        return (b) super.p(cls);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: D2 */
    public b H0(@Nullable Resources.Theme theme) {
        return (b) super.H0(theme);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: E1 */
    public b q() {
        return (b) super.q();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: E2 */
    public b I0(@IntRange(from = 0) int i4) {
        return (b) super.I0(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: F1 */
    public b r(@NonNull j jVar) {
        return (b) super.r(jVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: G2 */
    public b J0(@NonNull i<Bitmap> iVar) {
        return (b) super.J0(iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: H1 */
    public b s() {
        return (b) super.s();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: H2 */
    public <Y> b M0(@NonNull Class<Y> cls, @NonNull i<Y> iVar) {
        return (b) super.M0(cls, iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: I1 */
    public b t() {
        return (b) super.t();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @SafeVarargs
    @CheckResult
    /* renamed from: I2 */
    public final b O0(@NonNull i<Bitmap>... iVarArr) {
        return (b) super.O0(iVarArr);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: J1 */
    public b u(@NonNull DownsampleStrategy downsampleStrategy) {
        return (b) super.u(downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @Deprecated
    @SafeVarargs
    @CheckResult
    /* renamed from: J2 */
    public final b P0(@NonNull i<Bitmap>... iVarArr) {
        return (b) super.P0(iVarArr);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: K2 */
    public b Q0(boolean z9) {
        return (b) super.Q0(z9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: L1 */
    public b v(@NonNull Bitmap.CompressFormat compressFormat) {
        return (b) super.v(compressFormat);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: L2 */
    public b R0(boolean z9) {
        return (b) super.R0(z9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: N1 */
    public b w(@IntRange(from = 0, to = 100) int i4) {
        return (b) super.w(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: P1 */
    public b x(@DrawableRes int i4) {
        return (b) super.x(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: Q1 */
    public b y(@Nullable Drawable drawable) {
        return (b) super.y(drawable);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: T1 */
    public b z(@DrawableRes int i4) {
        return (b) super.z(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: U1 */
    public b A(@Nullable Drawable drawable) {
        return (b) super.A(drawable);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: V1 */
    public b B() {
        return (b) super.B();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: X1 */
    public b C(@NonNull DecodeFormat decodeFormat) {
        return (b) super.C(decodeFormat);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: Z1 */
    public b D(@IntRange(from = 0) long j4) {
        return (b) super.D(j4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    /* renamed from: b2 */
    public b k0() {
        return (b) super.k0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: e2 */
    public b l0(boolean z9) {
        return (b) super.l0(z9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: g2 */
    public b m0() {
        return (b) super.m0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: h2 */
    public b n0() {
        return (b) super.n0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: i2 */
    public b o0() {
        return (b) super.o0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: j2 */
    public b p0() {
        return (b) super.p0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: k2 */
    public b r0(@NonNull i<Bitmap> iVar) {
        return (b) super.r0(iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: l2 */
    public <Y> b t0(@NonNull Class<Y> cls, @NonNull i<Y> iVar) {
        return (b) super.t0(cls, iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: m2 */
    public b u0(int i4) {
        return (b) super.u0(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: n2 */
    public b v0(int i4, int i10) {
        return (b) super.v0(i4, i10);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: q2 */
    public b w0(@DrawableRes int i4) {
        return (b) super.w0(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: r2 */
    public b x0(@Nullable Drawable drawable) {
        return (b) super.x0(drawable);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: s1 */
    public b a(@NonNull com.bumptech.glide.request.a<?> aVar) {
        return (b) super.a(aVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    /* renamed from: t1 */
    public b e() {
        return (b) super.e();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: u2 */
    public b y0(@NonNull Priority priority) {
        return (b) super.y0(priority);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: v1 */
    public b f() {
        return (b) super.f();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: w2 */
    public <Y> b D0(@NonNull com.bumptech.glide.load.e<Y> eVar, @NonNull Y y9) {
        return (b) super.D0(eVar, y9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: x1 */
    public b j() {
        return (b) super.j();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: x2 */
    public b E0(@NonNull com.bumptech.glide.load.c cVar) {
        return (b) super.E0(cVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: z1 */
    public b k() {
        return (b) super.k();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: z2 */
    public b F0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return (b) super.F0(f10);
    }
}

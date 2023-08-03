package com.qennnsad.aknkaksd.util.img;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.Priority;
import com.bumptech.glide.j;
import com.bumptech.glide.k;
import com.bumptech.glide.l;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import java.io.File;
import java.net.URL;
import java.util.List;

/* compiled from: GlideRequest.java */
/* loaded from: classes3.dex */
public class c<TranscodeType> extends j<TranscodeType> implements Cloneable {
    c(@NonNull Class<TranscodeType> cls, @NonNull j<?> jVar) {
        super(cls, jVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: A2 */
    public c<TranscodeType> w0(@DrawableRes int i4) {
        return (c) super.w0(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: B2 */
    public c<TranscodeType> x0(@Nullable Drawable drawable) {
        return (c) super.x0(drawable);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: C2 */
    public c<TranscodeType> y0(@NonNull Priority priority) {
        return (c) super.y0(priority);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: D2 */
    public <Y> c<TranscodeType> D0(@NonNull com.bumptech.glide.load.e<Y> eVar, @NonNull Y y9) {
        return (c) super.D0(eVar, y9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: E2 */
    public c<TranscodeType> E0(@NonNull com.bumptech.glide.load.c cVar) {
        return (c) super.E0(cVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: F2 */
    public c<TranscodeType> F0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return (c) super.F0(f10);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: G2 */
    public c<TranscodeType> G0(boolean z9) {
        return (c) super.G0(z9);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: H1 */
    public c<TranscodeType> S0(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        return (c) super.S0(gVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: H2 */
    public c<TranscodeType> H0(@Nullable Resources.Theme theme) {
        return (c) super.H0(theme);
    }

    @Override // com.bumptech.glide.j, com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: I1 */
    public c<TranscodeType> a(@NonNull com.bumptech.glide.request.a<?> aVar) {
        return (c) super.a(aVar);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    @Deprecated
    /* renamed from: I2 */
    public c<TranscodeType> C1(float f10) {
        return (c) super.C1(f10);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    /* renamed from: J1 */
    public c<TranscodeType> e() {
        return (c) super.e();
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: J2 */
    public c<TranscodeType> D1(@Nullable j<TranscodeType> jVar) {
        return (c) super.D1(jVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: K1 */
    public c<TranscodeType> f() {
        return (c) super.f();
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: K2 */
    public c<TranscodeType> E1(@Nullable List<j<TranscodeType>> list) {
        return (c) super.E1(list);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: L1 */
    public c<TranscodeType> j() {
        return (c) super.j();
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @SafeVarargs
    @CheckResult
    /* renamed from: L2 */
    public final c<TranscodeType> F1(@Nullable j<TranscodeType>... jVarArr) {
        return (c) super.F1(jVarArr);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: M1 */
    public c<TranscodeType> k() {
        return (c) super.k();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: M2 */
    public c<TranscodeType> I0(@IntRange(from = 0) int i4) {
        return (c) super.I0(i4);
    }

    @Override // com.bumptech.glide.j, com.bumptech.glide.request.a
    @CheckResult
    /* renamed from: N1 */
    public c<TranscodeType> o() {
        return (c) super.o();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: N2 */
    public c<TranscodeType> J0(@NonNull i<Bitmap> iVar) {
        return (c) super.J0(iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: O1 */
    public c<TranscodeType> p(@NonNull Class<?> cls) {
        return (c) super.p(cls);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: O2 */
    public <Y> c<TranscodeType> M0(@NonNull Class<Y> cls, @NonNull i<Y> iVar) {
        return (c) super.M0(cls, iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: P1 */
    public c<TranscodeType> q() {
        return (c) super.q();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: P2 */
    public c<TranscodeType> O0(@NonNull i<Bitmap>... iVarArr) {
        return (c) super.O0(iVarArr);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: Q1 */
    public c<TranscodeType> r(@NonNull com.bumptech.glide.load.engine.j jVar) {
        return (c) super.r(jVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    @Deprecated
    /* renamed from: Q2 */
    public c<TranscodeType> P0(@NonNull i<Bitmap>... iVarArr) {
        return (c) super.P0(iVarArr);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: R1 */
    public c<TranscodeType> s() {
        return (c) super.s();
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: R2 */
    public c<TranscodeType> G1(@NonNull l<?, ? super TranscodeType> lVar) {
        return (c) super.G1(lVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: S1 */
    public c<TranscodeType> t() {
        return (c) super.t();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: S2 */
    public c<TranscodeType> Q0(boolean z9) {
        return (c) super.Q0(z9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: T1 */
    public c<TranscodeType> u(@NonNull DownsampleStrategy downsampleStrategy) {
        return (c) super.u(downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: T2 */
    public c<TranscodeType> R0(boolean z9) {
        return (c) super.R0(z9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: U1 */
    public c<TranscodeType> v(@NonNull Bitmap.CompressFormat compressFormat) {
        return (c) super.v(compressFormat);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: V1 */
    public c<TranscodeType> w(@IntRange(from = 0, to = 100) int i4) {
        return (c) super.w(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: W1 */
    public c<TranscodeType> x(@DrawableRes int i4) {
        return (c) super.x(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: X1 */
    public c<TranscodeType> y(@Nullable Drawable drawable) {
        return (c) super.y(drawable);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    /* renamed from: Y1 */
    public c<TranscodeType> b1(@Nullable j<TranscodeType> jVar) {
        return (c) super.b1(jVar);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: Z1 */
    public c<TranscodeType> c1(Object obj) {
        return (c) super.c1(obj);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: a2 */
    public c<TranscodeType> z(@DrawableRes int i4) {
        return (c) super.z(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: b2 */
    public c<TranscodeType> A(@Nullable Drawable drawable) {
        return (c) super.A(drawable);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: c2 */
    public c<TranscodeType> B() {
        return (c) super.B();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: d2 */
    public c<TranscodeType> C(@NonNull DecodeFormat decodeFormat) {
        return (c) super.C(decodeFormat);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: e2 */
    public c<TranscodeType> D(@IntRange(from = 0) long j4) {
        return (c) super.D(j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: f2 */
    public c<File> d1() {
        return new c(File.class, this).a(j.E2);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: g2 */
    public c<TranscodeType> m1(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        return (c) super.m1(gVar);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: h2 */
    public c<TranscodeType> n1(@Nullable Bitmap bitmap) {
        return (c) super.l(bitmap);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: i2 */
    public c<TranscodeType> o1(@Nullable Drawable drawable) {
        return (c) super.i(drawable);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: j2 */
    public c<TranscodeType> p1(@Nullable Uri uri) {
        return (c) super.d(uri);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: k2 */
    public c<TranscodeType> q1(@Nullable File file) {
        return (c) super.h(file);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: l2 */
    public c<TranscodeType> r1(@Nullable @DrawableRes @RawRes Integer num) {
        return (c) super.n(num);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: m2 */
    public c<TranscodeType> s1(@Nullable Object obj) {
        return (c) super.m(obj);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: n2 */
    public c<TranscodeType> t1(@Nullable String str) {
        return (c) super.b(str);
    }

    @Override // com.bumptech.glide.j
    @CheckResult
    @Deprecated
    /* renamed from: o2 */
    public c<TranscodeType> u1(@Nullable URL url) {
        return (c) super.c(url);
    }

    @Override // com.bumptech.glide.j
    @NonNull
    @CheckResult
    /* renamed from: p2 */
    public c<TranscodeType> v1(@Nullable byte[] bArr) {
        return (c) super.g(bArr);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    /* renamed from: q2 */
    public c<TranscodeType> k0() {
        return (c) super.k0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: r2 */
    public c<TranscodeType> l0(boolean z9) {
        return (c) super.l0(z9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: s2 */
    public c<TranscodeType> m0() {
        return (c) super.m0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: t2 */
    public c<TranscodeType> n0() {
        return (c) super.n0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: u2 */
    public c<TranscodeType> o0() {
        return (c) super.o0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: v2 */
    public c<TranscodeType> p0() {
        return (c) super.p0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: w2 */
    public c<TranscodeType> r0(@NonNull i<Bitmap> iVar) {
        return (c) super.r0(iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: x2 */
    public <Y> c<TranscodeType> t0(@NonNull Class<Y> cls, @NonNull i<Y> iVar) {
        return (c) super.t0(cls, iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: y2 */
    public c<TranscodeType> u0(int i4) {
        return (c) super.u0(i4);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: z2 */
    public c<TranscodeType> v0(int i4, int i10) {
        return (c) super.v0(i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull com.bumptech.glide.c cVar, @NonNull k kVar, @NonNull Class<TranscodeType> cls, @NonNull Context context) {
        super(cVar, kVar, cls, context);
    }
}

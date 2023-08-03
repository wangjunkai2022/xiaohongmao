package com.qennnsad.aknkaksd.util.img;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.k;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.manager.p;
import com.bumptech.glide.request.h;
import java.io.File;
import java.net.URL;

/* compiled from: GlideRequests.java */
/* loaded from: classes3.dex */
public class d extends k {
    public d(@NonNull com.bumptech.glide.c cVar, @NonNull l lVar, @NonNull p pVar, @NonNull Context context) {
        super(cVar, lVar, pVar, context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.k
    public void Y(@NonNull h hVar) {
        if (hVar instanceof b) {
            super.Y(hVar);
        } else {
            super.Y(new b().a(hVar));
        }
    }

    @Override // com.bumptech.glide.k
    @NonNull
    /* renamed from: d0 */
    public d o(com.bumptech.glide.request.g<Object> gVar) {
        return (d) super.o(gVar);
    }

    @Override // com.bumptech.glide.k
    @NonNull
    /* renamed from: e0 */
    public synchronized d p(@NonNull h hVar) {
        return (d) super.p(hVar);
    }

    @Override // com.bumptech.glide.k
    @NonNull
    @CheckResult
    /* renamed from: f0 */
    public <ResourceType> c<ResourceType> t(@NonNull Class<ResourceType> cls) {
        return new c<>(this.f8491a, this, cls, this.f8492b);
    }

    @Override // com.bumptech.glide.k
    @NonNull
    @CheckResult
    /* renamed from: g0 */
    public c<Bitmap> v() {
        return (c) super.v();
    }

    @Override // com.bumptech.glide.k
    @NonNull
    @CheckResult
    /* renamed from: h0 */
    public c<Drawable> w() {
        return (c) super.w();
    }

    @Override // com.bumptech.glide.k
    @NonNull
    @CheckResult
    /* renamed from: i0 */
    public c<File> x() {
        return (c) super.x();
    }

    @Override // com.bumptech.glide.k
    @NonNull
    @CheckResult
    /* renamed from: j0 */
    public c<com.bumptech.glide.load.resource.gif.c> y() {
        return (c) super.y();
    }

    @Override // com.bumptech.glide.k
    @NonNull
    @CheckResult
    /* renamed from: k0 */
    public c<File> B(@Nullable Object obj) {
        return (c) super.B(obj);
    }

    @Override // com.bumptech.glide.k
    @NonNull
    @CheckResult
    /* renamed from: l0 */
    public c<File> C() {
        return (c) super.C();
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: m0 */
    public c<Drawable> l(@Nullable Bitmap bitmap) {
        return (c) super.l(bitmap);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: n0 */
    public c<Drawable> i(@Nullable Drawable drawable) {
        return (c) super.i(drawable);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: o0 */
    public c<Drawable> d(@Nullable Uri uri) {
        return (c) super.d(uri);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: p0 */
    public c<Drawable> h(@Nullable File file) {
        return (c) super.h(file);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: q0 */
    public c<Drawable> n(@Nullable @DrawableRes @RawRes Integer num) {
        return (c) super.n(num);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: r0 */
    public c<Drawable> m(@Nullable Object obj) {
        return (c) super.m(obj);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: s0 */
    public c<Drawable> b(@Nullable String str) {
        return (c) super.b(str);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @CheckResult
    @Deprecated
    /* renamed from: t0 */
    public c<Drawable> c(@Nullable URL url) {
        return (c) super.c(url);
    }

    @Override // com.bumptech.glide.k, com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: u0 */
    public c<Drawable> g(@Nullable byte[] bArr) {
        return (c) super.g(bArr);
    }

    @Override // com.bumptech.glide.k
    @NonNull
    /* renamed from: v0 */
    public synchronized d W(@NonNull h hVar) {
        return (d) super.W(hVar);
    }
}

package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: GranularRoundedCorners.java */
/* loaded from: classes.dex */
public final class t extends h {

    /* renamed from: g  reason: collision with root package name */
    private static final String f9284g = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners";

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f9285h = f9284g.getBytes(com.bumptech.glide.load.c.f8527b);

    /* renamed from: c  reason: collision with root package name */
    private final float f9286c;

    /* renamed from: d  reason: collision with root package name */
    private final float f9287d;

    /* renamed from: e  reason: collision with root package name */
    private final float f9288e;

    /* renamed from: f  reason: collision with root package name */
    private final float f9289f;

    public t(float f10, float f11, float f12, float f13) {
        this.f9286c = f10;
        this.f9287d = f11;
        this.f9288e = f12;
        this.f9289f = f13;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f9285h);
        messageDigest.update(ByteBuffer.allocate(16).putFloat(this.f9286c).putFloat(this.f9287d).putFloat(this.f9288e).putFloat(this.f9289f).array());
    }

    @Override // com.bumptech.glide.load.resource.bitmap.h
    protected Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        return e0.p(eVar, bitmap, this.f9286c, this.f9287d, this.f9288e, this.f9289f);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof t) {
            t tVar = (t) obj;
            return this.f9286c == tVar.f9286c && this.f9287d == tVar.f9287d && this.f9288e == tVar.f9288e && this.f9289f == tVar.f9289f;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return com.bumptech.glide.util.o.n(this.f9289f, com.bumptech.glide.util.o.n(this.f9288e, com.bumptech.glide.util.o.n(this.f9287d, com.bumptech.glide.util.o.p(-2013597734, com.bumptech.glide.util.o.m(this.f9286c)))));
    }
}

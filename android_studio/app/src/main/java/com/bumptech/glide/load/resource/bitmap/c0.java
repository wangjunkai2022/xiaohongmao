package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: RoundedCorners.java */
/* loaded from: classes.dex */
public final class c0 extends h {

    /* renamed from: d  reason: collision with root package name */
    private static final String f9208d = "com.bumptech.glide.load.resource.bitmap.RoundedCorners";

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f9209e = f9208d.getBytes(com.bumptech.glide.load.c.f8527b);

    /* renamed from: c  reason: collision with root package name */
    private final int f9210c;

    public c0(int i4) {
        com.bumptech.glide.util.m.a(i4 > 0, "roundingRadius must be greater than 0.");
        this.f9210c = i4;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f9209e);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f9210c).array());
    }

    @Override // com.bumptech.glide.load.resource.bitmap.h
    protected Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        return e0.q(eVar, bitmap, this.f9210c);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        return (obj instanceof c0) && this.f9210c == ((c0) obj).f9210c;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return com.bumptech.glide.util.o.p(-569625254, com.bumptech.glide.util.o.o(this.f9210c));
    }
}

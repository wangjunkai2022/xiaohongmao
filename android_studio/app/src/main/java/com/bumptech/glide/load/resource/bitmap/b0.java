package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: Rotate.java */
/* loaded from: classes.dex */
public class b0 extends h {

    /* renamed from: d  reason: collision with root package name */
    private static final String f9204d = "com.bumptech.glide.load.resource.bitmap.Rotate";

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f9205e = f9204d.getBytes(com.bumptech.glide.load.c.f8527b);

    /* renamed from: c  reason: collision with root package name */
    private final int f9206c;

    public b0(int i4) {
        this.f9206c = i4;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f9205e);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f9206c).array());
    }

    @Override // com.bumptech.glide.load.resource.bitmap.h
    protected Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        return e0.n(bitmap, this.f9206c);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        return (obj instanceof b0) && this.f9206c == ((b0) obj).f9206c;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return com.bumptech.glide.util.o.p(-950519196, com.bumptech.glide.util.o.o(this.f9206c));
    }
}

package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: CenterCrop.java */
/* loaded from: classes.dex */
public class l extends h {

    /* renamed from: c  reason: collision with root package name */
    private static final String f9254c = "com.bumptech.glide.load.resource.bitmap.CenterCrop";

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f9255d = f9254c.getBytes(com.bumptech.glide.load.c.f8527b);

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f9255d);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.h
    protected Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        return e0.b(eVar, bitmap, i4, i10);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        return obj instanceof l;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return -599754482;
    }
}

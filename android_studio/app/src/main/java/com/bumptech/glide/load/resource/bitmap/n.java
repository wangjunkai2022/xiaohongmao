package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: CircleCrop.java */
/* loaded from: classes.dex */
public class n extends h {

    /* renamed from: c  reason: collision with root package name */
    private static final int f9258c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final String f9259d = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1";

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f9260e = f9259d.getBytes(com.bumptech.glide.load.c.f8527b);

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f9260e);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.h
    protected Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        return e0.d(eVar, bitmap, i4, i10);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        return obj instanceof n;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return 1101716364;
    }
}

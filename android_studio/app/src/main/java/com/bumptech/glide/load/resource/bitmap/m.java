package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: CenterInside.java */
/* loaded from: classes.dex */
public class m extends h {

    /* renamed from: c  reason: collision with root package name */
    private static final String f9256c = "com.bumptech.glide.load.resource.bitmap.CenterInside";

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f9257d = f9256c.getBytes(com.bumptech.glide.load.c.f8527b);

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f9257d);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.h
    protected Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        return e0.c(eVar, bitmap, i4, i10);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        return obj instanceof m;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return -670243078;
    }
}

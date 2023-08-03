package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapDecoder.java */
/* loaded from: classes.dex */
public class j implements com.bumptech.glide.load.g<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final o f9252a;

    public j(o oVar) {
        this.f9252a = oVar;
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ByteBuffer byteBuffer, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f9252a.h(byteBuffer, i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) {
        return this.f9252a.t(byteBuffer);
    }
}

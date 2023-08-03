package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapWebpDecoder.java */
/* loaded from: classes.dex */
public class c implements com.bumptech.glide.load.g<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final j f8391a;

    public c(j jVar) {
        this.f8391a = jVar;
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public u<Bitmap> b(@NonNull ByteBuffer byteBuffer, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8391a.d(com.bumptech.glide.util.a.g(byteBuffer), i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8391a.m(byteBuffer, fVar);
    }
}

package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferAnimatedBitmapDecoder.java */
/* loaded from: classes.dex */
public class b implements com.bumptech.glide.load.g<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final a f8390a;

    public b(a aVar) {
        this.f8390a = aVar;
    }

    @Override // com.bumptech.glide.load.g
    @Nullable
    /* renamed from: c */
    public u<Bitmap> b(@NonNull ByteBuffer byteBuffer, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8390a.b(byteBuffer, i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8390a.d(byteBuffer, fVar);
    }
}

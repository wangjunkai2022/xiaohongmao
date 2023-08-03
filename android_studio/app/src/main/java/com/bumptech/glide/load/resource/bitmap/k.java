package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class k implements com.bumptech.glide.load.g<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final f f9253a = new f();

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ByteBuffer byteBuffer, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f9253a.b(ImageDecoder.createSource(byteBuffer), i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return true;
    }
}

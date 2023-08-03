package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputStreamBitmapImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class w implements com.bumptech.glide.load.g<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final f f9323a = new f();

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull InputStream inputStream, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f9323a.b(ImageDecoder.createSource(com.bumptech.glide.util.a.b(inputStream)), i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return true;
    }
}

package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamAnimatedBitmapDecoder.java */
/* loaded from: classes.dex */
public class e implements com.bumptech.glide.load.g<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final a f8396a;

    public e(a aVar) {
        this.f8396a = aVar;
    }

    @Override // com.bumptech.glide.load.g
    @Nullable
    /* renamed from: c */
    public u<Bitmap> b(@NonNull InputStream inputStream, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8396a.a(inputStream, i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8396a.c(inputStream, fVar);
    }
}

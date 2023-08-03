package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamBitmapWebpDecoder.java */
/* loaded from: classes.dex */
public class f implements com.bumptech.glide.load.g<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final j f8397a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f8398b;

    public f(j jVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f8397a = jVar;
        this.f8398b = bVar;
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public u<Bitmap> b(@NonNull InputStream inputStream, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8397a.d(inputStream, i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f8397a.l(inputStream, fVar);
    }
}

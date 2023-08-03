package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.integration.webp.WebpImage;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: AnimatedWebpBitmapDecoder.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Boolean> f8386d = com.bumptech.glide.load.e.g("com.bumptech.glide.integration.webp.decoder.AnimatedWebpBitmapDecoder.DisableBitmap", Boolean.FALSE);

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f8387a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f8388b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.resource.gif.b f8389c;

    public a(com.bumptech.glide.load.engine.bitmap_recycle.b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        this.f8387a = bVar;
        this.f8388b = eVar;
        this.f8389c = new com.bumptech.glide.load.resource.gif.b(eVar, bVar);
    }

    public u<Bitmap> a(InputStream inputStream, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        byte[] b10 = h.b(inputStream);
        if (b10 == null) {
            return null;
        }
        return b(ByteBuffer.wrap(b10), i4, i10, fVar);
    }

    public u<Bitmap> b(ByteBuffer byteBuffer, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.get(bArr, 0, remaining);
        WebpImage create = WebpImage.create(bArr);
        i iVar = new i(this.f8389c, create, byteBuffer, h.a(create.getWidth(), create.getHeight(), i4, i10));
        try {
            iVar.f();
            return com.bumptech.glide.load.resource.bitmap.g.c(iVar.e(), this.f8388b);
        } finally {
            iVar.clear();
        }
    }

    public boolean c(InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        if (((Boolean) fVar.c(f8386d)).booleanValue()) {
            return false;
        }
        return WebpHeaderParser.f(WebpHeaderParser.b(inputStream, this.f8387a));
    }

    public boolean d(ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        if (((Boolean) fVar.c(f8386d)).booleanValue()) {
            return false;
        }
        return WebpHeaderParser.f(WebpHeaderParser.c(byteBuffer));
    }
}

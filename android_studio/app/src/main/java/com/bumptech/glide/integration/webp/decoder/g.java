package com.bumptech.glide.integration.webp.decoder;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: StreamWebpDecoder.java */
/* loaded from: classes.dex */
public class g implements com.bumptech.glide.load.g<InputStream, k> {

    /* renamed from: c  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Boolean> f8399c = com.bumptech.glide.load.e.g("com.bumptech.glide.integration.webp.decoder.StreamWebpDecoder.DisableAnimation", Boolean.FALSE);

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.g<ByteBuffer, k> f8400a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f8401b;

    public g(com.bumptech.glide.load.g<ByteBuffer, k> gVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f8400a = gVar;
        this.f8401b = bVar;
    }

    @Override // com.bumptech.glide.load.g
    @Nullable
    /* renamed from: c */
    public u<k> b(@NonNull InputStream inputStream, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        byte[] b10 = h.b(inputStream);
        if (b10 == null) {
            return null;
        }
        return this.f8400a.b(ByteBuffer.wrap(b10), i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        if (((Boolean) fVar.c(f8399c)).booleanValue()) {
            return false;
        }
        return WebpHeaderParser.f(WebpHeaderParser.b(inputStream, this.f8401b));
    }
}

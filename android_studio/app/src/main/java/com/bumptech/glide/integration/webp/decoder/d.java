package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.integration.webp.WebpImage;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferWebpDecoder.java */
/* loaded from: classes.dex */
public class d implements com.bumptech.glide.load.g<ByteBuffer, k> {

    /* renamed from: d  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Boolean> f8392d = com.bumptech.glide.load.e.g("com.bumptech.glide.integration.webp.decoder.ByteBufferWebpDecoder.DisableAnimation", Boolean.FALSE);

    /* renamed from: a  reason: collision with root package name */
    private final Context f8393a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f8394b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.resource.gif.b f8395c;

    public d(Context context) {
        this(context, com.bumptech.glide.c.e(context).g(), com.bumptech.glide.c.e(context).h());
    }

    @Override // com.bumptech.glide.load.g
    @Nullable
    /* renamed from: c */
    public u<k> b(@NonNull ByteBuffer byteBuffer, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.get(bArr, 0, remaining);
        WebpImage create = WebpImage.create(bArr);
        i iVar = new i(this.f8395c, create, byteBuffer, h.a(create.getWidth(), create.getHeight(), i4, i10), (WebpFrameCacheStrategy) fVar.c(o.f8447t));
        iVar.f();
        Bitmap e4 = iVar.e();
        if (e4 == null) {
            return null;
        }
        return new m(new k(this.f8393a, iVar, this.f8394b, com.bumptech.glide.load.resource.c.c(), i4, i10, e4));
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        if (((Boolean) fVar.c(f8392d)).booleanValue()) {
            return false;
        }
        return WebpHeaderParser.f(WebpHeaderParser.c(byteBuffer));
    }

    public d(Context context, com.bumptech.glide.load.engine.bitmap_recycle.b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        this.f8393a = context.getApplicationContext();
        this.f8394b = eVar;
        this.f8395c = new com.bumptech.glide.load.resource.gif.b(eVar, bVar);
    }
}

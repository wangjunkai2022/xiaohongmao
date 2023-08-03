package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: HoneycombBitmapFactory.java */
@s7.d
@TargetApi(11)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e extends f {

    /* renamed from: e  reason: collision with root package name */
    private static final String f12026e = "e";

    /* renamed from: a  reason: collision with root package name */
    private final b f12027a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.platform.d f12028b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.a f12029c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f12030d;

    public e(b jpegGenerator, com.facebook.imagepipeline.platform.d purgeableDecoder, com.facebook.imagepipeline.core.a closeableReferenceFactory) {
        this.f12027a = jpegGenerator;
        this.f12028b = purgeableDecoder;
        this.f12029c = closeableReferenceFactory;
    }

    private com.facebook.common.references.a<Bitmap> E(int width, int height, Bitmap.Config bitmapConfig) {
        return this.f12029c.c(Bitmap.createBitmap(width, height, bitmapConfig), h.a());
    }

    @Override // com.facebook.imagepipeline.bitmaps.f
    @TargetApi(12)
    public com.facebook.common.references.a<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig) {
        if (this.f12030d) {
            return E(width, height, bitmapConfig);
        }
        com.facebook.common.references.a<PooledByteBuffer> a10 = this.f12027a.a((short) width, (short) height);
        try {
            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(a10);
            eVar.q0(com.facebook.imageformat.b.f11797a);
            com.facebook.common.references.a<Bitmap> d4 = this.f12028b.d(eVar, bitmapConfig, null, a10.q().size());
            if (!d4.q().isMutable()) {
                com.facebook.common.references.a.k(d4);
                this.f12030d = true;
                p0.a.w0(f12026e, "Immutable bitmap returned by decoder");
                com.facebook.common.references.a<Bitmap> E = E(width, height, bitmapConfig);
                com.facebook.imagepipeline.image.e.d(eVar);
                return E;
            }
            d4.q().setHasAlpha(true);
            d4.q().eraseColor(0);
            com.facebook.imagepipeline.image.e.d(eVar);
            return d4;
        } finally {
            a10.close();
        }
    }
}

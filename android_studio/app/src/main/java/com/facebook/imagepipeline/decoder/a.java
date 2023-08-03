package com.facebook.imagepipeline.decoder;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.image.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.InputStream;
import java.util.Map;
import r7.h;

/* compiled from: DefaultImageDecoder.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a implements b {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final b f12463a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final b f12464b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.platform.d f12465c;

    /* renamed from: d  reason: collision with root package name */
    private final b f12466d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private final Map<com.facebook.imageformat.c, b> f12467e;

    /* compiled from: DefaultImageDecoder.java */
    /* renamed from: com.facebook.imagepipeline.decoder.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0103a implements b {
        C0103a() {
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e encodedImage, int length, j qualityInfo, com.facebook.imagepipeline.common.b options) {
            com.facebook.imageformat.c y9 = encodedImage.y();
            if (y9 == com.facebook.imageformat.b.f11797a) {
                return a.this.d(encodedImage, length, qualityInfo, options);
            }
            if (y9 == com.facebook.imageformat.b.f11799c) {
                return a.this.c(encodedImage, length, qualityInfo, options);
            }
            if (y9 == com.facebook.imageformat.b.f11806j) {
                return a.this.b(encodedImage, length, qualityInfo, options);
            }
            if (y9 != com.facebook.imageformat.c.f11810c) {
                return a.this.e(encodedImage, options);
            }
            throw new DecodeException("unknown image format", encodedImage);
        }
    }

    public a(@h final b animatedGifDecoder, @h final b animatedWebPDecoder, final com.facebook.imagepipeline.platform.d platformDecoder) {
        this(animatedGifDecoder, animatedWebPDecoder, platformDecoder, null);
    }

    @Override // com.facebook.imagepipeline.decoder.b
    public com.facebook.imagepipeline.image.c a(final com.facebook.imagepipeline.image.e encodedImage, final int length, final j qualityInfo, final com.facebook.imagepipeline.common.b options) {
        InputStream A;
        b bVar;
        b bVar2 = options.f12182i;
        if (bVar2 != null) {
            return bVar2.a(encodedImage, length, qualityInfo, options);
        }
        com.facebook.imageformat.c y9 = encodedImage.y();
        if ((y9 == null || y9 == com.facebook.imageformat.c.f11810c) && (A = encodedImage.A()) != null) {
            y9 = com.facebook.imageformat.d.d(A);
            encodedImage.q0(y9);
        }
        Map<com.facebook.imageformat.c, b> map = this.f12467e;
        if (map != null && (bVar = map.get(y9)) != null) {
            return bVar.a(encodedImage, length, qualityInfo, options);
        }
        return this.f12466d.a(encodedImage, length, qualityInfo, options);
    }

    public com.facebook.imagepipeline.image.c b(final com.facebook.imagepipeline.image.e encodedImage, final int length, final j qualityInfo, final com.facebook.imagepipeline.common.b options) {
        b bVar = this.f12464b;
        if (bVar != null) {
            return bVar.a(encodedImage, length, qualityInfo, options);
        }
        throw new DecodeException("Animated WebP support not set up!", encodedImage);
    }

    public com.facebook.imagepipeline.image.c c(final com.facebook.imagepipeline.image.e encodedImage, final int length, final j qualityInfo, final com.facebook.imagepipeline.common.b options) {
        b bVar;
        if (encodedImage.J() != -1 && encodedImage.s() != -1) {
            if (!options.f12179f && (bVar = this.f12463a) != null) {
                return bVar.a(encodedImage, length, qualityInfo, options);
            }
            return e(encodedImage, options);
        }
        throw new DecodeException("image width or height is incorrect", encodedImage);
    }

    public com.facebook.imagepipeline.image.d d(final com.facebook.imagepipeline.image.e encodedImage, int length, j qualityInfo, com.facebook.imagepipeline.common.b options) {
        com.facebook.common.references.a<Bitmap> b10 = this.f12465c.b(encodedImage, options.f12180g, null, length, options.f12184k);
        try {
            boolean a10 = t1.c.a(options.f12183j, b10);
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(b10, qualityInfo, encodedImage.E(), encodedImage.q());
            dVar.h("is_rounded", Boolean.valueOf(a10 && (options.f12183j instanceof t1.b)));
            return dVar;
        } finally {
            b10.close();
        }
    }

    public com.facebook.imagepipeline.image.d e(final com.facebook.imagepipeline.image.e encodedImage, com.facebook.imagepipeline.common.b options) {
        com.facebook.common.references.a<Bitmap> c10 = this.f12465c.c(encodedImage, options.f12180g, null, options.f12184k);
        try {
            boolean a10 = t1.c.a(options.f12183j, c10);
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(c10, com.facebook.imagepipeline.image.h.f12520d, encodedImage.E(), encodedImage.q());
            dVar.h("is_rounded", Boolean.valueOf(a10 && (options.f12183j instanceof t1.b)));
            return dVar;
        } finally {
            c10.close();
        }
    }

    public a(@h final b animatedGifDecoder, @h final b animatedWebPDecoder, final com.facebook.imagepipeline.platform.d platformDecoder, @h Map<com.facebook.imageformat.c, b> customDecoders) {
        this.f12466d = new C0103a();
        this.f12463a = animatedGifDecoder;
        this.f12464b = animatedWebPDecoder;
        this.f12465c = platformDecoder;
        this.f12467e = customDecoders;
    }
}

package com.facebook.imagepipeline.animated.factory;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.animated.impl.d;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import r7.h;

/* compiled from: AnimatedImageFactoryImpl.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e implements d {
    @h

    /* renamed from: c  reason: collision with root package name */
    static c f11848c = g("com.facebook.animated.gif.GifImage");
    @h

    /* renamed from: d  reason: collision with root package name */
    static c f11849d = g("com.facebook.animated.webp.WebPImage");

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.impl.b f11850a;

    /* renamed from: b  reason: collision with root package name */
    private final f f11851b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes.dex */
    public class a implements d.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.d.b
        public void a(int frameNumber, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.d.b
        @h
        public com.facebook.common.references.a<Bitmap> b(int frameNumber) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes.dex */
    public class b implements d.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f11853a;

        b(final List val$bitmaps) {
            this.f11853a = val$bitmaps;
        }

        @Override // com.facebook.imagepipeline.animated.impl.d.b
        public void a(int frameNumber, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.d.b
        @h
        public com.facebook.common.references.a<Bitmap> b(int frameNumber) {
            return com.facebook.common.references.a.h((com.facebook.common.references.a) this.f11853a.get(frameNumber));
        }
    }

    public e(com.facebook.imagepipeline.animated.impl.b animatedDrawableBackendProvider, f bitmapFactory) {
        this.f11850a = animatedDrawableBackendProvider;
        this.f11851b = bitmapFactory;
    }

    @SuppressLint({"NewApi"})
    private com.facebook.common.references.a<Bitmap> c(int width, int height, Bitmap.Config bitmapConfig) {
        com.facebook.common.references.a<Bitmap> z9 = this.f11851b.z(width, height, bitmapConfig);
        z9.q().eraseColor(0);
        z9.q().setHasAlpha(true);
        return z9;
    }

    private com.facebook.common.references.a<Bitmap> d(com.facebook.imagepipeline.animated.base.d image, Bitmap.Config bitmapConfig, int frameForPreview) {
        com.facebook.common.references.a<Bitmap> c10 = c(image.getWidth(), image.getHeight(), bitmapConfig);
        new com.facebook.imagepipeline.animated.impl.d(this.f11850a.a(com.facebook.imagepipeline.animated.base.f.b(image), null), new a()).g(frameForPreview, c10.q());
        return c10;
    }

    private List<com.facebook.common.references.a<Bitmap>> e(com.facebook.imagepipeline.animated.base.d image, Bitmap.Config bitmapConfig) {
        com.facebook.imagepipeline.animated.base.a a10 = this.f11850a.a(com.facebook.imagepipeline.animated.base.f.b(image), null);
        ArrayList arrayList = new ArrayList(a10.a());
        com.facebook.imagepipeline.animated.impl.d dVar = new com.facebook.imagepipeline.animated.impl.d(a10, new b(arrayList));
        for (int i4 = 0; i4 < a10.a(); i4++) {
            com.facebook.common.references.a<Bitmap> c10 = c(a10.getWidth(), a10.getHeight(), bitmapConfig);
            dVar.g(i4, c10.q());
            arrayList.add(c10);
        }
        return arrayList;
    }

    private com.facebook.imagepipeline.image.c f(com.facebook.imagepipeline.common.b options, com.facebook.imagepipeline.animated.base.d image, Bitmap.Config bitmapConfig) {
        List<com.facebook.common.references.a<Bitmap>> list;
        com.facebook.common.references.a<Bitmap> aVar = null;
        try {
            int a10 = options.f12177d ? image.a() - 1 : 0;
            if (options.f12179f) {
                com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(d(image, bitmapConfig, a10), com.facebook.imagepipeline.image.h.f12520d, 0);
                com.facebook.common.references.a.k(null);
                com.facebook.common.references.a.p(null);
                return dVar;
            }
            if (options.f12178e) {
                list = e(image, bitmapConfig);
                try {
                    aVar = com.facebook.common.references.a.h(list.get(a10));
                } catch (Throwable th) {
                    th = th;
                    com.facebook.common.references.a.k(aVar);
                    com.facebook.common.references.a.p(list);
                    throw th;
                }
            } else {
                list = null;
            }
            if (options.f12176c && aVar == null) {
                aVar = d(image, bitmapConfig, a10);
            }
            com.facebook.imagepipeline.image.a aVar2 = new com.facebook.imagepipeline.image.a(com.facebook.imagepipeline.animated.base.f.i(image).j(aVar).i(a10).h(list).g(options.f12183j).a());
            com.facebook.common.references.a.k(aVar);
            com.facebook.common.references.a.p(list);
            return aVar2;
        } catch (Throwable th2) {
            th = th2;
            list = null;
        }
    }

    @h
    private static c g(final String className) {
        try {
            return (c) Class.forName(className).newInstance();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.facebook.imagepipeline.animated.factory.d
    public com.facebook.imagepipeline.image.c a(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.imagepipeline.common.b options, final Bitmap.Config bitmapConfig) {
        com.facebook.imagepipeline.animated.base.d g4;
        if (f11848c != null) {
            com.facebook.common.references.a<PooledByteBuffer> i4 = encodedImage.i();
            j.i(i4);
            try {
                PooledByteBuffer q9 = i4.q();
                if (q9.g() != null) {
                    g4 = f11848c.d(q9.g(), options);
                } else {
                    g4 = f11848c.g(q9.l(), q9.size(), options);
                }
                return f(options, g4, bitmapConfig);
            } finally {
                com.facebook.common.references.a.k(i4);
            }
        }
        throw new UnsupportedOperationException("To encode animated gif please add the dependency to the animated-gif module");
    }

    @Override // com.facebook.imagepipeline.animated.factory.d
    public com.facebook.imagepipeline.image.c b(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.imagepipeline.common.b options, final Bitmap.Config bitmapConfig) {
        com.facebook.imagepipeline.animated.base.d g4;
        if (f11849d != null) {
            com.facebook.common.references.a<PooledByteBuffer> i4 = encodedImage.i();
            j.i(i4);
            try {
                PooledByteBuffer q9 = i4.q();
                if (q9.g() != null) {
                    g4 = f11849d.d(q9.g(), options);
                } else {
                    g4 = f11849d.g(q9.l(), q9.size(), options);
                }
                return f(options, g4, bitmapConfig);
            } finally {
                com.facebook.common.references.a.k(i4);
            }
        }
        throw new UnsupportedOperationException("To encode animated webp please add the dependency to the animated-webp module");
    }
}

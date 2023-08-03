package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.facebook.common.internal.j;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import r7.h;

/* compiled from: DefaultDecoder.java */
@s7.d
@TargetApi(11)
/* loaded from: classes.dex */
public abstract class b implements d {

    /* renamed from: e  reason: collision with root package name */
    private static final int f12825e = 16384;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.e f12827a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final PreverificationHelper f12828b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final Pools.SynchronizedPool<ByteBuffer> f12829c;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f12824d = b.class;

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f12826f = {-1, -39};

    public b(com.facebook.imagepipeline.memory.e bitmapPool, int maxNumThreads, Pools.SynchronizedPool decodeBuffers) {
        this.f12828b = Build.VERSION.SDK_INT >= 26 ? new PreverificationHelper() : null;
        this.f12827a = bitmapPool;
        this.f12829c = decodeBuffers;
        for (int i4 = 0; i4 < maxNumThreads; i4++) {
            this.f12829c.release(ByteBuffer.allocate(16384));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a8 A[Catch: all -> 0x00cb, RuntimeException -> 0x00cd, IllegalArgumentException -> 0x00d6, TRY_LEAVE, TryCatch #7 {IllegalArgumentException -> 0x00d6, RuntimeException -> 0x00cd, blocks: (B:29:0x006e, B:34:0x0085, B:49:0x00a8, B:41:0x0099, B:45:0x00a1, B:46:0x00a4), top: B:78:0x006e, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.facebook.common.references.a<android.graphics.Bitmap> e(java.io.InputStream r10, android.graphics.BitmapFactory.Options r11, @r7.h android.graphics.Rect r12, @r7.h final android.graphics.ColorSpace r13) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.platform.b.e(java.io.InputStream, android.graphics.BitmapFactory$Options, android.graphics.Rect, android.graphics.ColorSpace):com.facebook.common.references.a");
    }

    private static BitmapFactory.Options h(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = encodedImage.G();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(encodedImage.A(), null, options);
        if (options.outWidth != -1 && options.outHeight != -1) {
            options.inJustDecodeBounds = false;
            options.inDither = true;
            options.inPreferredConfig = bitmapConfig;
            options.inMutable = true;
            return options;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> a(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode) {
        return c(encodedImage, bitmapConfig, regionToDecode, null);
    }

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> b(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode, int length, @h final ColorSpace colorSpace) {
        boolean M = encodedImage.M(length);
        BitmapFactory.Options h4 = h(encodedImage, bitmapConfig);
        r0.b A = encodedImage.A();
        j.i(A);
        if (encodedImage.H() > length) {
            A = new r0.a(A, length);
        }
        if (!M) {
            A = new r0.b(A, f12826f);
        }
        boolean z9 = h4.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            try {
                com.facebook.common.references.a<Bitmap> e4 = e(A, h4, regionToDecode, colorSpace);
                try {
                    A.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return e4;
            } catch (Throwable th) {
                try {
                    A.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                throw th;
            }
        } catch (RuntimeException e12) {
            if (z9) {
                com.facebook.common.references.a<Bitmap> b10 = b(encodedImage, Bitmap.Config.ARGB_8888, regionToDecode, length, colorSpace);
                try {
                    A.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
                return b10;
            }
            throw e12;
        }
    }

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> c(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode, @h final ColorSpace colorSpace) {
        BitmapFactory.Options h4 = h(encodedImage, bitmapConfig);
        boolean z9 = h4.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return e((InputStream) j.i(encodedImage.A()), h4, regionToDecode, colorSpace);
        } catch (RuntimeException e4) {
            if (z9) {
                return c(encodedImage, Bitmap.Config.ARGB_8888, regionToDecode, colorSpace);
            }
            throw e4;
        }
    }

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> d(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode, int length) {
        return b(encodedImage, bitmapConfig, regionToDecode, length, null);
    }

    protected com.facebook.common.references.a<Bitmap> f(InputStream inputStream, BitmapFactory.Options options, @h Rect regionToDecode) {
        return e(inputStream, options, regionToDecode, null);
    }

    public abstract int g(final int width, final int height, final BitmapFactory.Options options);
}

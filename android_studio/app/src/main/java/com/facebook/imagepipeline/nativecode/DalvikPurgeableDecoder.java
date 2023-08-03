package com.facebook.imagepipeline.nativecode;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.j;
import com.facebook.common.internal.o;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.common.TooManyBitmapsException;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Locale;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class DalvikPurgeableDecoder implements com.facebook.imagepipeline.platform.d {

    /* renamed from: b  reason: collision with root package name */
    protected static final byte[] f12686b;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.b f12687a = com.facebook.imagepipeline.memory.d.a();

    /* JADX INFO: Access modifiers changed from: private */
    @com.facebook.soloader.d
    /* loaded from: classes.dex */
    public static class OreoUtils {
        private OreoUtils() {
        }

        @TargetApi(26)
        static void a(BitmapFactory.Options options, @r7.h ColorSpace colorSpace) {
            if (colorSpace == null) {
                colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
            options.inPreferredColorSpace = colorSpace;
        }
    }

    static {
        b.a();
        f12686b = new byte[]{-1, -39};
    }

    @VisibleForTesting
    public static boolean g(com.facebook.common.references.a<PooledByteBuffer> bytesRef, int length) {
        PooledByteBuffer q9 = bytesRef.q();
        return length >= 2 && q9.j(length + (-2)) == -1 && q9.j(length - 1) == -39;
    }

    @VisibleForTesting
    public static BitmapFactory.Options h(int sampleSize, Bitmap.Config bitmapConfig) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = bitmapConfig;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = sampleSize;
        options.inMutable = true;
        return options;
    }

    @com.facebook.common.internal.e
    private static native void nativePinBitmap(Bitmap bitmap);

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> a(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @r7.h Rect regionToDecode) {
        return c(encodedImage, bitmapConfig, regionToDecode, null);
    }

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> b(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @r7.h Rect regionToDecode, int length, @r7.h final ColorSpace colorSpace) {
        BitmapFactory.Options h4 = h(encodedImage.G(), bitmapConfig);
        if (Build.VERSION.SDK_INT >= 26) {
            OreoUtils.a(h4, colorSpace);
        }
        com.facebook.common.references.a<PooledByteBuffer> i4 = encodedImage.i();
        j.i(i4);
        try {
            return i(f(i4, length, h4));
        } finally {
            com.facebook.common.references.a.k(i4);
        }
    }

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> c(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @r7.h Rect regionToDecode, @r7.h final ColorSpace colorSpace) {
        BitmapFactory.Options h4 = h(encodedImage.G(), bitmapConfig);
        if (Build.VERSION.SDK_INT >= 26) {
            OreoUtils.a(h4, colorSpace);
        }
        com.facebook.common.references.a<PooledByteBuffer> i4 = encodedImage.i();
        j.i(i4);
        try {
            return i(e(i4, h4));
        } finally {
            com.facebook.common.references.a.k(i4);
        }
    }

    @Override // com.facebook.imagepipeline.platform.d
    public com.facebook.common.references.a<Bitmap> d(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @r7.h Rect regionToDecode, int length) {
        return b(encodedImage, bitmapConfig, regionToDecode, length, null);
    }

    protected abstract Bitmap e(com.facebook.common.references.a<PooledByteBuffer> bytesRef, BitmapFactory.Options options);

    protected abstract Bitmap f(com.facebook.common.references.a<PooledByteBuffer> bytesRef, int length, BitmapFactory.Options options);

    public com.facebook.common.references.a<Bitmap> i(Bitmap bitmap) {
        j.i(bitmap);
        try {
            nativePinBitmap(bitmap);
            if (this.f12687a.g(bitmap)) {
                return com.facebook.common.references.a.G(bitmap, this.f12687a.e());
            }
            int g4 = com.facebook.imageutils.a.g(bitmap);
            bitmap.recycle();
            throw new TooManyBitmapsException(String.format(Locale.US, "Attempted to pin a bitmap of size %d bytes. The current pool count is %d, the current pool size is %d bytes. The current pool max count is %d, the current pool max size is %d bytes.", Integer.valueOf(g4), Integer.valueOf(this.f12687a.b()), Long.valueOf(this.f12687a.f()), Integer.valueOf(this.f12687a.c()), Integer.valueOf(this.f12687a.d())));
        } catch (Exception e4) {
            bitmap.recycle();
            throw o.d(e4);
        }
    }
}

package com.bumptech.glide.integration.webp.decoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.integration.webp.WebpBitmapFactory;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.e0;
import com.bumptech.glide.load.resource.bitmap.o;
import io.sentry.protocol.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* compiled from: WebpDownsampler.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: e  reason: collision with root package name */
    private static final String f8419e = "WebpDownsampler";

    /* renamed from: f  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Boolean> f8420f = com.bumptech.glide.load.e.g("com.bumptech.glide.integration.webp.decoder.WebpDownsampler.DisableDecoder", Boolean.FALSE);

    /* renamed from: g  reason: collision with root package name */
    private static final o.b f8421g = new a();

    /* renamed from: h  reason: collision with root package name */
    private static final Queue<BitmapFactory.Options> f8422h = com.bumptech.glide.util.o.f(0);

    /* renamed from: i  reason: collision with root package name */
    private static final int f8423i = 10485760;

    /* renamed from: j  reason: collision with root package name */
    private static final int f8424j = 1000000000;

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f8425a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayMetrics f8426b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f8427c;

    /* renamed from: d  reason: collision with root package name */
    private final List<ImageHeaderParser> f8428d;

    /* compiled from: WebpDownsampler.java */
    /* loaded from: classes.dex */
    static class a implements o.b {
        a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.o.b
        public void a(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Bitmap bitmap) throws IOException {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.o.b
        public void b() {
        }
    }

    public j(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f8428d = list;
        this.f8426b = (DisplayMetrics) com.bumptech.glide.util.m.d(displayMetrics);
        this.f8425a = (com.bumptech.glide.load.engine.bitmap_recycle.e) com.bumptech.glide.util.m.d(eVar);
        this.f8427c = (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.m.d(bVar);
    }

    private static int a(double d4) {
        int s9 = s(1.0E9d * d4);
        return s((d4 / (s9 / 1.0E9f)) * s9);
    }

    private void b(InputStream inputStream, DecodeFormat decodeFormat, boolean z9, boolean z10, BitmapFactory.Options options, int i4, int i10) throws IOException {
        if (decodeFormat != DecodeFormat.PREFER_ARGB_8888) {
            boolean z11 = false;
            try {
                z11 = com.bumptech.glide.load.b.f(this.f8428d, inputStream, this.f8427c).hasAlpha();
            } catch (IOException e4) {
                if (Log.isLoggable(f8419e, 3)) {
                    Log.d(f8419e, "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e4);
                }
            }
            Bitmap.Config config = z11 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            options.inPreferredConfig = config;
            if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444 || config == Bitmap.Config.ALPHA_8) {
                options.inDither = true;
                return;
            }
            return;
        }
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
    }

    static void c(ImageHeaderParser.ImageType imageType, InputStream inputStream, o.b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, DownsampleStrategy downsampleStrategy, int i4, int i10, int i11, int i12, int i13, BitmapFactory.Options options) throws IOException {
        float b10;
        int min;
        int floor;
        double floor2;
        int i14;
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        if (i4 != 90 && i4 != 270) {
            b10 = downsampleStrategy.b(i10, i11, i12, i13);
        } else {
            b10 = downsampleStrategy.b(i11, i10, i12, i13);
        }
        if (b10 > 0.0f) {
            DownsampleStrategy.SampleSizeRounding a10 = downsampleStrategy.a(i10, i11, i12, i13);
            if (a10 != null) {
                float f10 = i10;
                float f11 = i11;
                int s9 = i10 / s(b10 * f10);
                int s10 = i11 / s(b10 * f11);
                DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
                if (a10 == sampleSizeRounding) {
                    min = Math.max(s9, s10);
                } else {
                    min = Math.min(s9, s10);
                }
                int max = Math.max(1, Integer.highestOneBit(min));
                if (a10 == sampleSizeRounding && max < 1.0f / b10) {
                    max <<= 1;
                }
                options.inSampleSize = max;
                if (imageType == ImageHeaderParser.ImageType.JPEG) {
                    float min2 = Math.min(max, 8);
                    floor = (int) Math.ceil(f10 / min2);
                    i14 = (int) Math.ceil(f11 / min2);
                    int i15 = max / 8;
                    if (i15 > 0) {
                        floor /= i15;
                        i14 /= i15;
                    }
                } else {
                    if (imageType != ImageHeaderParser.ImageType.PNG && imageType != ImageHeaderParser.ImageType.PNG_A) {
                        if (imageType != ImageHeaderParser.ImageType.WEBP && imageType != ImageHeaderParser.ImageType.WEBP_A) {
                            if (i10 % max == 0 && i11 % max == 0) {
                                floor = i10 / max;
                                i14 = i11 / max;
                            } else {
                                int[] j4 = j(inputStream, options, bVar, eVar);
                                floor = j4[0];
                                i14 = j4[1];
                            }
                        } else if (Build.VERSION.SDK_INT >= 24) {
                            float f12 = max;
                            floor = Math.round(f10 / f12);
                            i14 = Math.round(f11 / f12);
                        } else {
                            float f13 = max;
                            floor = (int) Math.floor(f10 / f13);
                            floor2 = Math.floor(f11 / f13);
                        }
                    } else {
                        float f14 = max;
                        floor = (int) Math.floor(f10 / f14);
                        floor2 = Math.floor(f11 / f14);
                    }
                    i14 = (int) floor2;
                }
                double b11 = downsampleStrategy.b(floor, i14, i12, i13);
                options.inTargetDensity = a(b11);
                options.inDensity = 1000000000;
                if (n(options)) {
                    options.inScaled = true;
                } else {
                    options.inTargetDensity = 0;
                    options.inDensity = 0;
                }
                if (Log.isLoggable(f8419e, 2)) {
                    Log.v(f8419e, "Calculate scaling, source: [" + i10 + y.b.f83919g + i11 + "], target: [" + i12 + y.b.f83919g + i13 + "], power of two scaled: [" + floor + y.b.f83919g + i14 + "], exact scale factor: " + b10 + ", power of 2 sample size: " + max + ", adjusted scale factor: " + b11 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        throw new IllegalArgumentException("Cannot scale with factor: " + b10 + " from: " + downsampleStrategy + ", source: [" + i10 + y.b.f83919g + i11 + "], target: [" + i12 + y.b.f83919g + i13 + "]");
    }

    private Bitmap f(InputStream inputStream, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, boolean z9, int i4, int i10, boolean z10, o.b bVar) throws IOException {
        int i11;
        int round;
        int round2;
        long b10 = com.bumptech.glide.util.i.b();
        int[] j4 = j(inputStream, options, bVar, this.f8425a);
        int i12 = j4[0];
        int i13 = j4[1];
        String str = options.outMimeType;
        boolean z11 = (i12 == -1 || i13 == -1) ? false : z9;
        int b11 = com.bumptech.glide.load.b.b(this.f8428d, inputStream, this.f8427c);
        int j10 = e0.j(b11);
        boolean m9 = e0.m(b11);
        int i14 = i4 == Integer.MIN_VALUE ? i12 : i4;
        int i15 = i10 == Integer.MIN_VALUE ? i13 : i10;
        ImageHeaderParser.ImageType f10 = com.bumptech.glide.load.b.f(this.f8428d, inputStream, this.f8427c);
        c(f10, inputStream, bVar, this.f8425a, downsampleStrategy, j10, i12, i13, i14, i15, options);
        b(inputStream, decodeFormat, z11, m9, options, i14, i15);
        int i16 = options.inSampleSize;
        if (u(f10)) {
            if (z10) {
                round = i14;
                round2 = i15;
            } else {
                float f11 = n(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i17 = options.inSampleSize;
                float f12 = i17;
                round = Math.round(((int) Math.ceil(i12 / f12)) * f11);
                round2 = Math.round(((int) Math.ceil(i13 / f12)) * f11);
                if (Log.isLoggable(f8419e, 2)) {
                    Log.v(f8419e, "Calculated target [" + round + y.b.f83919g + round2 + "] for source [" + i12 + y.b.f83919g + i13 + "], sampleSize: " + i17 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f11);
                }
            }
            if (round > 0 && round2 > 0) {
                t(options, this.f8425a, round, round2);
            }
        }
        Bitmap g4 = g(inputStream, options, bVar, this.f8425a);
        bVar.a(this.f8425a, g4);
        if (Log.isLoggable(f8419e, 2)) {
            i11 = b11;
            o(i12, i13, str, options, g4, i4, i10, b10);
        } else {
            i11 = b11;
        }
        Bitmap bitmap = null;
        if (g4 != null) {
            g4.setDensity(this.f8426b.densityDpi);
            bitmap = e0.o(this.f8425a, g4, i11);
            if (!g4.equals(bitmap)) {
                this.f8425a.d(g4);
            }
        }
        return bitmap;
    }

    private static Bitmap g(InputStream inputStream, BitmapFactory.Options options, o.b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) throws IOException {
        if (options.inJustDecodeBounds) {
            inputStream.mark(f8423i);
        } else {
            bVar.b();
        }
        int i4 = options.outWidth;
        int i10 = options.outHeight;
        String str = options.outMimeType;
        e0.i().lock();
        try {
            try {
                Bitmap decodeStream = WebpBitmapFactory.decodeStream(inputStream, null, options);
                e0.i().unlock();
                if (options.inJustDecodeBounds) {
                    inputStream.reset();
                }
                return decodeStream;
            } catch (IllegalArgumentException e4) {
                IOException p9 = p(e4, i4, i10, str, options);
                if (Log.isLoggable(f8419e, 3)) {
                    Log.d(f8419e, "Failed to decode with inBitmap, trying again without Bitmap re-use", p9);
                }
                if (options.inBitmap != null) {
                    try {
                        inputStream.reset();
                        eVar.d(options.inBitmap);
                        options.inBitmap = null;
                        Bitmap g4 = g(inputStream, options, bVar, eVar);
                        e0.i().unlock();
                        return g4;
                    } catch (IOException unused) {
                        throw p9;
                    }
                }
                throw p9;
            }
        } catch (Throwable th) {
            e0.i().unlock();
            throw th;
        }
    }

    @Nullable
    @TargetApi(19)
    private static String h(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + y.b.f83919g + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    private static synchronized BitmapFactory.Options i() {
        BitmapFactory.Options poll;
        synchronized (j.class) {
            Queue<BitmapFactory.Options> queue = f8422h;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                r(poll);
            }
        }
        return poll;
    }

    private static int[] j(InputStream inputStream, BitmapFactory.Options options, o.b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        g(inputStream, options, bVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static String k(BitmapFactory.Options options) {
        return h(options.inBitmap);
    }

    private static boolean n(BitmapFactory.Options options) {
        int i4;
        int i10 = options.inTargetDensity;
        return i10 > 0 && (i4 = options.inDensity) > 0 && i10 != i4;
    }

    private static void o(int i4, int i10, String str, BitmapFactory.Options options, Bitmap bitmap, int i11, int i12, long j4) {
        Log.v(f8419e, "Decoded " + h(bitmap) + " from [" + i4 + y.b.f83919g + i10 + "] " + str + " with inBitmap " + k(options) + " for [" + i11 + y.b.f83919g + i12 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + com.bumptech.glide.util.i.a(j4));
    }

    private static IOException p(IllegalArgumentException illegalArgumentException, int i4, int i10, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i4 + ", outHeight: " + i10 + ", outMimeType: " + str + ", inBitmap: " + k(options), illegalArgumentException);
    }

    private static void q(BitmapFactory.Options options) {
        r(options);
        Queue<BitmapFactory.Options> queue = f8422h;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static void r(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    private static int s(double d4) {
        return (int) (d4 + 0.5d);
    }

    @TargetApi(26)
    private static void t(BitmapFactory.Options options, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, int i4, int i10) {
        if (Build.VERSION.SDK_INT < 26 || options.inPreferredConfig != Bitmap.Config.HARDWARE) {
            options.inBitmap = eVar.f(i4, i10, options.inPreferredConfig);
        }
    }

    private boolean u(ImageHeaderParser.ImageType imageType) throws IOException {
        return true;
    }

    public u<Bitmap> d(InputStream inputStream, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        return e(inputStream, i4, i10, fVar, f8421g);
    }

    public u<Bitmap> e(InputStream inputStream, int i4, int i10, com.bumptech.glide.load.f fVar, o.b bVar) throws IOException {
        com.bumptech.glide.util.m.a(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f8427c.c(65536, byte[].class);
        BitmapFactory.Options i11 = i();
        i11.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) fVar.c(com.bumptech.glide.load.resource.bitmap.o.f9262g);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) fVar.c(com.bumptech.glide.load.resource.bitmap.o.f9264i);
        boolean booleanValue = ((Boolean) fVar.c(com.bumptech.glide.load.resource.bitmap.o.f9265j)).booleanValue();
        com.bumptech.glide.load.e<Boolean> eVar = com.bumptech.glide.load.resource.bitmap.o.f9266k;
        try {
            return com.bumptech.glide.load.resource.bitmap.g.c(f(inputStream, i11, downsampleStrategy, decodeFormat, fVar.c(eVar) != null && ((Boolean) fVar.c(eVar)).booleanValue(), i4, i10, booleanValue, bVar), this.f8425a);
        } finally {
            q(i11);
            this.f8427c.e(bArr, byte[].class);
        }
    }

    public boolean l(InputStream inputStream, com.bumptech.glide.load.f fVar) throws IOException {
        if (((Boolean) fVar.c(f8420f)).booleanValue() || WebpHeaderParser.f8226k) {
            return false;
        }
        WebpHeaderParser.WebpImageType b10 = WebpHeaderParser.b(inputStream, this.f8427c);
        return WebpHeaderParser.i(b10) && b10 != WebpHeaderParser.WebpImageType.WEBP_SIMPLE;
    }

    public boolean m(ByteBuffer byteBuffer, com.bumptech.glide.load.f fVar) throws IOException {
        if (((Boolean) fVar.c(f8420f)).booleanValue() || WebpHeaderParser.f8226k) {
            return false;
        }
        WebpHeaderParser.WebpImageType c10 = WebpHeaderParser.c(byteBuffer);
        return WebpHeaderParser.i(c10) && c10 != WebpHeaderParser.WebpImageType.WEBP_SIMPLE;
    }
}

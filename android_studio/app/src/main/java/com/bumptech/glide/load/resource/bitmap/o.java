package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.v;
import io.sentry.protocol.y;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* compiled from: Downsampler.java */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: f  reason: collision with root package name */
    static final String f9261f = "Downsampler";

    /* renamed from: g  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<DecodeFormat> f9262g = com.bumptech.glide.load.e.g("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);

    /* renamed from: h  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<PreferredColorSpace> f9263h = com.bumptech.glide.load.e.f("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace");
    @Deprecated

    /* renamed from: i  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<DownsampleStrategy> f9264i = DownsampleStrategy.f9195h;

    /* renamed from: j  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Boolean> f9265j;

    /* renamed from: k  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Boolean> f9266k;

    /* renamed from: l  reason: collision with root package name */
    private static final String f9267l = "image/vnd.wap.wbmp";

    /* renamed from: m  reason: collision with root package name */
    private static final String f9268m = "image/x-ico";

    /* renamed from: n  reason: collision with root package name */
    private static final Set<String> f9269n;

    /* renamed from: o  reason: collision with root package name */
    private static final b f9270o;

    /* renamed from: p  reason: collision with root package name */
    private static final Set<ImageHeaderParser.ImageType> f9271p;

    /* renamed from: q  reason: collision with root package name */
    private static final Queue<BitmapFactory.Options> f9272q;

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9273a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayMetrics f9274b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9275c;

    /* renamed from: d  reason: collision with root package name */
    private final List<ImageHeaderParser> f9276d;

    /* renamed from: e  reason: collision with root package name */
    private final u f9277e = u.d();

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.o.b
        public void a(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.o.b
        public void b() {
        }
    }

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Bitmap bitmap) throws IOException;

        void b();
    }

    static {
        Boolean bool = Boolean.FALSE;
        f9265j = com.bumptech.glide.load.e.g("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f9266k = com.bumptech.glide.load.e.g("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f9269n = Collections.unmodifiableSet(new HashSet(Arrays.asList(f9267l, f9268m)));
        f9270o = new a();
        f9271p = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f9272q = com.bumptech.glide.util.o.f(0);
    }

    public o(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f9276d = list;
        this.f9274b = (DisplayMetrics) com.bumptech.glide.util.m.d(displayMetrics);
        this.f9273a = (com.bumptech.glide.load.engine.bitmap_recycle.e) com.bumptech.glide.util.m.d(eVar);
        this.f9275c = (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.m.d(bVar);
    }

    private static int A(double d4) {
        return (int) (d4 + 0.5d);
    }

    @TargetApi(26)
    private static void B(BitmapFactory.Options options, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, int i4, int i10) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = eVar.f(i4, i10, config);
    }

    private boolean C(ImageHeaderParser.ImageType imageType) {
        return true;
    }

    private static int a(double d4) {
        int o9 = o(d4);
        int A = A(o9 * d4);
        return A((d4 / (A / o9)) * A);
    }

    private void b(v vVar, DecodeFormat decodeFormat, boolean z9, boolean z10, BitmapFactory.Options options, int i4, int i10) {
        if (this.f9277e.k(i4, i10, options, z9, z10)) {
            return;
        }
        if (decodeFormat != DecodeFormat.PREFER_ARGB_8888) {
            boolean z11 = false;
            try {
                z11 = vVar.d().hasAlpha();
            } catch (IOException e4) {
                if (Log.isLoggable(f9261f, 3)) {
                    Log.d(f9261f, "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e4);
                }
            }
            Bitmap.Config config = z11 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            options.inPreferredConfig = config;
            if (config == Bitmap.Config.RGB_565) {
                options.inDither = true;
                return;
            }
            return;
        }
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
    }

    private static void c(ImageHeaderParser.ImageType imageType, v vVar, b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, DownsampleStrategy downsampleStrategy, int i4, int i10, int i11, int i12, int i13, BitmapFactory.Options options) throws IOException {
        int i14;
        int i15;
        int min;
        int i16;
        int floor;
        double floor2;
        int i17;
        if (i10 > 0 && i11 > 0) {
            if (u(i4)) {
                i15 = i10;
                i14 = i11;
            } else {
                i14 = i10;
                i15 = i11;
            }
            float b10 = downsampleStrategy.b(i14, i15, i12, i13);
            if (b10 > 0.0f) {
                DownsampleStrategy.SampleSizeRounding a10 = downsampleStrategy.a(i14, i15, i12, i13);
                if (a10 != null) {
                    float f10 = i14;
                    float f11 = i15;
                    int A = i14 / A(b10 * f10);
                    int A2 = i15 / A(b10 * f11);
                    DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
                    if (a10 == sampleSizeRounding) {
                        min = Math.max(A, A2);
                    } else {
                        min = Math.min(A, A2);
                    }
                    int i18 = Build.VERSION.SDK_INT;
                    if (i18 > 23 || !f9269n.contains(options.outMimeType)) {
                        int max = Math.max(1, Integer.highestOneBit(min));
                        if (a10 == sampleSizeRounding && max < 1.0f / b10) {
                            max <<= 1;
                        }
                        i16 = max;
                    } else {
                        i16 = 1;
                    }
                    options.inSampleSize = i16;
                    if (imageType == ImageHeaderParser.ImageType.JPEG) {
                        float min2 = Math.min(i16, 8);
                        floor = (int) Math.ceil(f10 / min2);
                        i17 = (int) Math.ceil(f11 / min2);
                        int i19 = i16 / 8;
                        if (i19 > 0) {
                            floor /= i19;
                            i17 /= i19;
                        }
                    } else {
                        if (imageType != ImageHeaderParser.ImageType.PNG && imageType != ImageHeaderParser.ImageType.PNG_A) {
                            if (imageType.isWebp()) {
                                if (i18 >= 24) {
                                    float f12 = i16;
                                    floor = Math.round(f10 / f12);
                                    i17 = Math.round(f11 / f12);
                                } else {
                                    float f13 = i16;
                                    floor = (int) Math.floor(f10 / f13);
                                    floor2 = Math.floor(f11 / f13);
                                }
                            } else if (i14 % i16 == 0 && i15 % i16 == 0) {
                                floor = i14 / i16;
                                i17 = i15 / i16;
                            } else {
                                int[] p9 = p(vVar, options, bVar, eVar);
                                floor = p9[0];
                                i17 = p9[1];
                            }
                        } else {
                            float f14 = i16;
                            floor = (int) Math.floor(f10 / f14);
                            floor2 = Math.floor(f11 / f14);
                        }
                        i17 = (int) floor2;
                    }
                    double b11 = downsampleStrategy.b(floor, i17, i12, i13);
                    options.inTargetDensity = a(b11);
                    options.inDensity = o(b11);
                    if (v(options)) {
                        options.inScaled = true;
                    } else {
                        options.inTargetDensity = 0;
                        options.inDensity = 0;
                    }
                    if (Log.isLoggable(f9261f, 2)) {
                        Log.v(f9261f, "Calculate scaling, source: [" + i10 + y.b.f83919g + i11 + "], degreesToRotate: " + i4 + ", target: [" + i12 + y.b.f83919g + i13 + "], power of two scaled: [" + floor + y.b.f83919g + i17 + "], exact scale factor: " + b10 + ", power of 2 sample size: " + i16 + ", adjusted scale factor: " + b11 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            throw new IllegalArgumentException("Cannot scale with factor: " + b10 + " from: " + downsampleStrategy + ", source: [" + i10 + y.b.f83919g + i11 + "], target: [" + i12 + y.b.f83919g + i13 + "]");
        } else if (Log.isLoggable(f9261f, 3)) {
            Log.d(f9261f, "Unable to determine dimensions for: " + imageType + " with target [" + i12 + y.b.f83919g + i13 + "]");
        }
    }

    private com.bumptech.glide.load.engine.u<Bitmap> e(v vVar, int i4, int i10, com.bumptech.glide.load.f fVar, b bVar) throws IOException {
        byte[] bArr = (byte[]) this.f9275c.c(65536, byte[].class);
        BitmapFactory.Options n9 = n();
        n9.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) fVar.c(f9262g);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) fVar.c(f9263h);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) fVar.c(DownsampleStrategy.f9195h);
        boolean booleanValue = ((Boolean) fVar.c(f9265j)).booleanValue();
        com.bumptech.glide.load.e<Boolean> eVar = f9266k;
        try {
            return g.c(k(vVar, n9, downsampleStrategy, decodeFormat, preferredColorSpace, fVar.c(eVar) != null && ((Boolean) fVar.c(eVar)).booleanValue(), i4, i10, booleanValue, bVar), this.f9273a);
        } finally {
            y(n9);
            this.f9275c.put(bArr);
        }
    }

    private Bitmap k(v vVar, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z9, int i4, int i10, boolean z10, b bVar) throws IOException {
        int i11;
        int i12;
        int i13;
        String str;
        ColorSpace colorSpace;
        int round;
        int round2;
        long b10 = com.bumptech.glide.util.i.b();
        int[] p9 = p(vVar, options, bVar, this.f9273a);
        boolean z11 = false;
        int i14 = p9[0];
        int i15 = p9[1];
        String str2 = options.outMimeType;
        boolean z12 = (i14 == -1 || i15 == -1) ? false : z9;
        int c10 = vVar.c();
        int j4 = e0.j(c10);
        boolean m9 = e0.m(c10);
        if (i4 == Integer.MIN_VALUE) {
            i11 = i10;
            i12 = u(j4) ? i15 : i14;
        } else {
            i11 = i10;
            i12 = i4;
        }
        if (i11 == Integer.MIN_VALUE) {
            i13 = u(j4) ? i14 : i15;
        } else {
            i13 = i11;
        }
        ImageHeaderParser.ImageType d4 = vVar.d();
        c(d4, vVar, bVar, this.f9273a, downsampleStrategy, j4, i14, i15, i12, i13, options);
        b(vVar, decodeFormat, z12, m9, options, i12, i13);
        int i16 = Build.VERSION.SDK_INT;
        int i17 = options.inSampleSize;
        if (C(d4)) {
            if (i14 < 0 || i15 < 0 || !z10) {
                float f10 = v(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i18 = options.inSampleSize;
                float f11 = i18;
                round = Math.round(((int) Math.ceil(i14 / f11)) * f10);
                round2 = Math.round(((int) Math.ceil(i15 / f11)) * f10);
                str = f9261f;
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Calculated target [" + round + y.b.f83919g + round2 + "] for source [" + i14 + y.b.f83919g + i15 + "], sampleSize: " + i18 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f10);
                }
            } else {
                str = f9261f;
                round = i12;
                round2 = i13;
            }
            if (round > 0 && round2 > 0) {
                B(options, this.f9273a, round, round2);
            }
        } else {
            str = f9261f;
        }
        if (preferredColorSpace != null) {
            if (i16 >= 28) {
                if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) {
                    z11 = true;
                }
                options.inPreferredColorSpace = ColorSpace.get(z11 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
            } else if (i16 >= 26) {
                options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
        }
        Bitmap l10 = l(vVar, options, bVar, this.f9273a);
        bVar.a(this.f9273a, l10);
        if (Log.isLoggable(str, 2)) {
            w(i14, i15, str2, options, l10, i4, i10, b10);
        }
        Bitmap bitmap = null;
        if (l10 != null) {
            l10.setDensity(this.f9274b.densityDpi);
            bitmap = e0.o(this.f9273a, l10, c10);
            if (!l10.equals(bitmap)) {
                this.f9273a.d(l10);
            }
        }
        return bitmap;
    }

    private static Bitmap l(v vVar, BitmapFactory.Options options, b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) throws IOException {
        if (!options.inJustDecodeBounds) {
            bVar.b();
            vVar.b();
        }
        int i4 = options.outWidth;
        int i10 = options.outHeight;
        String str = options.outMimeType;
        e0.i().lock();
        try {
            try {
                Bitmap a10 = vVar.a(options);
                e0.i().unlock();
                return a10;
            } catch (IllegalArgumentException e4) {
                IOException x9 = x(e4, i4, i10, str, options);
                if (Log.isLoggable(f9261f, 3)) {
                    Log.d(f9261f, "Failed to decode with inBitmap, trying again without Bitmap re-use", x9);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap != null) {
                    try {
                        eVar.d(bitmap);
                        options.inBitmap = null;
                        Bitmap l10 = l(vVar, options, bVar, eVar);
                        e0.i().unlock();
                        return l10;
                    } catch (IOException unused) {
                        throw x9;
                    }
                }
                throw x9;
            }
        } catch (Throwable th) {
            e0.i().unlock();
            throw th;
        }
    }

    @Nullable
    @TargetApi(19)
    private static String m(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + y.b.f83919g + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    private static synchronized BitmapFactory.Options n() {
        BitmapFactory.Options poll;
        synchronized (o.class) {
            Queue<BitmapFactory.Options> queue = f9272q;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                z(poll);
            }
        }
        return poll;
    }

    private static int o(double d4) {
        if (d4 > 1.0d) {
            d4 = 1.0d / d4;
        }
        return (int) Math.round(d4 * 2.147483647E9d);
    }

    private static int[] p(v vVar, BitmapFactory.Options options, b bVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        l(vVar, options, bVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static String q(BitmapFactory.Options options) {
        return m(options.inBitmap);
    }

    private static boolean u(int i4) {
        return i4 == 90 || i4 == 270;
    }

    private static boolean v(BitmapFactory.Options options) {
        int i4;
        int i10 = options.inTargetDensity;
        return i10 > 0 && (i4 = options.inDensity) > 0 && i10 != i4;
    }

    private static void w(int i4, int i10, String str, BitmapFactory.Options options, Bitmap bitmap, int i11, int i12, long j4) {
        Log.v(f9261f, "Decoded " + m(bitmap) + " from [" + i4 + y.b.f83919g + i10 + "] " + str + " with inBitmap " + q(options) + " for [" + i11 + y.b.f83919g + i12 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + com.bumptech.glide.util.i.a(j4));
    }

    private static IOException x(IllegalArgumentException illegalArgumentException, int i4, int i10, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i4 + ", outHeight: " + i10 + ", outMimeType: " + str + ", inBitmap: " + q(options), illegalArgumentException);
    }

    private static void y(BitmapFactory.Options options) {
        z(options);
        Queue<BitmapFactory.Options> queue = f9272q;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static void z(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    @RequiresApi(21)
    public com.bumptech.glide.load.engine.u<Bitmap> d(ParcelFileDescriptor parcelFileDescriptor, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        return e(new v.e(parcelFileDescriptor, this.f9276d, this.f9275c), i4, i10, fVar, f9270o);
    }

    public com.bumptech.glide.load.engine.u<Bitmap> f(InputStream inputStream, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        return g(inputStream, i4, i10, fVar, f9270o);
    }

    public com.bumptech.glide.load.engine.u<Bitmap> g(InputStream inputStream, int i4, int i10, com.bumptech.glide.load.f fVar, b bVar) throws IOException {
        return e(new v.d(inputStream, this.f9276d, this.f9275c), i4, i10, fVar, bVar);
    }

    public com.bumptech.glide.load.engine.u<Bitmap> h(ByteBuffer byteBuffer, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        return e(new v.b(byteBuffer, this.f9276d, this.f9275c), i4, i10, fVar, f9270o);
    }

    @VisibleForTesting
    void i(File file, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        e(new v.c(file, this.f9276d, this.f9275c), i4, i10, fVar, f9270o);
    }

    @VisibleForTesting
    void j(byte[] bArr, int i4, int i10, com.bumptech.glide.load.f fVar) throws IOException {
        e(new v.a(bArr, this.f9276d, this.f9275c), i4, i10, fVar, f9270o);
    }

    public boolean r(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.c();
    }

    public boolean s(InputStream inputStream) {
        return true;
    }

    public boolean t(ByteBuffer byteBuffer) {
        return true;
    }
}

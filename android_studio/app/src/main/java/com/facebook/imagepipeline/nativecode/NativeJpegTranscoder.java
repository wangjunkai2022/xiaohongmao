package com.facebook.imagepipeline.nativecode;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class NativeJpegTranscoder implements s1.c {

    /* renamed from: d  reason: collision with root package name */
    public static final String f12688d = "NativeJpegTranscoder";

    /* renamed from: a  reason: collision with root package name */
    private boolean f12689a;

    /* renamed from: b  reason: collision with root package name */
    private int f12690b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12691c;

    public NativeJpegTranscoder(final boolean resizingEnabled, final int maxBitmapSize, final boolean useDownsamplingRatio, final boolean ensureTranscoderLibraryLoaded) {
        this.f12689a = resizingEnabled;
        this.f12690b = maxBitmapSize;
        this.f12691c = useDownsamplingRatio;
        if (ensureTranscoderLibraryLoaded) {
            e.a();
        }
    }

    @VisibleForTesting
    public static void e(final InputStream inputStream, final OutputStream outputStream, final int rotationAngle, final int scaleNumerator, final int quality) throws IOException {
        e.a();
        boolean z9 = false;
        j.d(Boolean.valueOf(scaleNumerator >= 1));
        j.d(Boolean.valueOf(scaleNumerator <= 16));
        j.d(Boolean.valueOf(quality >= 0));
        j.d(Boolean.valueOf(quality <= 100));
        j.d(Boolean.valueOf(s1.e.j(rotationAngle)));
        j.e((scaleNumerator == 8 && rotationAngle == 0) ? true : true, "no transformation requested");
        nativeTranscodeJpeg((InputStream) j.i(inputStream), (OutputStream) j.i(outputStream), rotationAngle, scaleNumerator, quality);
    }

    @VisibleForTesting
    public static void f(final InputStream inputStream, final OutputStream outputStream, final int exifOrientation, final int scaleNumerator, final int quality) throws IOException {
        e.a();
        boolean z9 = false;
        j.d(Boolean.valueOf(scaleNumerator >= 1));
        j.d(Boolean.valueOf(scaleNumerator <= 16));
        j.d(Boolean.valueOf(quality >= 0));
        j.d(Boolean.valueOf(quality <= 100));
        j.d(Boolean.valueOf(s1.e.i(exifOrientation)));
        j.e((scaleNumerator == 8 && exifOrientation == 1) ? true : true, "no transformation requested");
        nativeTranscodeJpegWithExifOrientation((InputStream) j.i(inputStream), (OutputStream) j.i(outputStream), exifOrientation, scaleNumerator, quality);
    }

    @com.facebook.common.internal.e
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int rotationAngle, int scaleNominator, int quality) throws IOException;

    @com.facebook.common.internal.e
    private static native void nativeTranscodeJpegWithExifOrientation(InputStream inputStream, OutputStream outputStream, int exifOrientation, int scaleNominator, int quality) throws IOException;

    @Override // s1.c
    public String a() {
        return f12688d;
    }

    @Override // s1.c
    public boolean b(com.facebook.imagepipeline.image.e encodedImage, @r7.h com.facebook.imagepipeline.common.e rotationOptions, @r7.h com.facebook.imagepipeline.common.d resizeOptions) {
        if (rotationOptions == null) {
            rotationOptions = com.facebook.imagepipeline.common.e.a();
        }
        return s1.e.f(rotationOptions, resizeOptions, encodedImage, this.f12689a) < 8;
    }

    @Override // s1.c
    public s1.b c(final com.facebook.imagepipeline.image.e encodedImage, final OutputStream outputStream, @r7.h com.facebook.imagepipeline.common.e rotationOptions, @r7.h final com.facebook.imagepipeline.common.d resizeOptions, @r7.h com.facebook.imageformat.c outputFormat, @r7.h Integer quality) throws IOException {
        if (quality == null) {
            quality = 85;
        }
        if (rotationOptions == null) {
            rotationOptions = com.facebook.imagepipeline.common.e.a();
        }
        int b10 = s1.a.b(rotationOptions, resizeOptions, encodedImage, this.f12690b);
        try {
            int f10 = s1.e.f(rotationOptions, resizeOptions, encodedImage, this.f12689a);
            int a10 = s1.e.a(b10);
            if (this.f12691c) {
                f10 = a10;
            }
            InputStream A = encodedImage.A();
            if (s1.e.f93243g.contains(Integer.valueOf(encodedImage.q()))) {
                f((InputStream) j.j(A, "Cannot transcode from null input stream!"), outputStream, s1.e.d(rotationOptions, encodedImage), f10, quality.intValue());
            } else {
                e((InputStream) j.j(A, "Cannot transcode from null input stream!"), outputStream, s1.e.e(rotationOptions, encodedImage), f10, quality.intValue());
            }
            com.facebook.common.internal.c.b(A);
            return new s1.b(b10 != 1 ? 0 : 1);
        } catch (Throwable th) {
            com.facebook.common.internal.c.b(null);
            throw th;
        }
    }

    @Override // s1.c
    public boolean d(com.facebook.imageformat.c imageFormat) {
        return imageFormat == com.facebook.imageformat.b.f11797a;
    }
}

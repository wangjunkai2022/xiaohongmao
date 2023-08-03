package com.facebook.imagepipeline.nativecode;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class WebpTranscoderImpl implements h {
    @com.facebook.common.internal.e
    private static native void nativeTranscodeWebpToJpeg(InputStream inputStream, OutputStream outputStream, int quality) throws IOException;

    @com.facebook.common.internal.e
    private static native void nativeTranscodeWebpToPng(InputStream inputStream, OutputStream outputStream) throws IOException;

    @Override // com.facebook.imagepipeline.nativecode.h
    public void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        g.a();
        nativeTranscodeWebpToPng((InputStream) j.i(inputStream), (OutputStream) j.i(outputStream));
    }

    @Override // com.facebook.imagepipeline.nativecode.h
    public boolean b(com.facebook.imageformat.c webpFormat) {
        if (webpFormat == com.facebook.imageformat.b.f11802f) {
            return true;
        }
        if (webpFormat != com.facebook.imageformat.b.f11803g && webpFormat != com.facebook.imageformat.b.f11804h && webpFormat != com.facebook.imageformat.b.f11805i) {
            if (webpFormat == com.facebook.imageformat.b.f11806j) {
                return false;
            }
            throw new IllegalArgumentException("Image format is not a WebP.");
        }
        return t0.c.f93751c;
    }

    @Override // com.facebook.imagepipeline.nativecode.h
    public void c(InputStream inputStream, OutputStream outputStream, int quality) throws IOException {
        g.a();
        nativeTranscodeWebpToJpeg((InputStream) j.i(inputStream), (OutputStream) j.i(outputStream), quality);
    }
}

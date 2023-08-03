package s1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import com.facebook.infer.annotation.Nullsafe;
import java.io.OutputStream;

/* compiled from: SimpleImageTranscoder.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class g implements c {

    /* renamed from: c  reason: collision with root package name */
    private static final String f93250c = "SimpleImageTranscoder";

    /* renamed from: a  reason: collision with root package name */
    private final boolean f93251a;

    /* renamed from: b  reason: collision with root package name */
    private final int f93252b;

    public g(final boolean resizingEnabled, final int maxBitmapSize) {
        this.f93251a = resizingEnabled;
        this.f93252b = maxBitmapSize;
    }

    private static Bitmap.CompressFormat e(@r7.h final com.facebook.imageformat.c format) {
        if (format == null) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (format == com.facebook.imageformat.b.f11797a) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (format == com.facebook.imageformat.b.f11798b) {
            return Bitmap.CompressFormat.PNG;
        }
        if (com.facebook.imageformat.b.b(format)) {
            return Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    private int f(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.imagepipeline.common.e rotationOptions, @r7.h final com.facebook.imagepipeline.common.d resizeOptions) {
        if (this.f93251a) {
            return a.b(rotationOptions, resizeOptions, encodedImage, this.f93252b);
        }
        return 1;
    }

    @Override // s1.c
    public String a() {
        return f93250c;
    }

    @Override // s1.c
    public boolean b(com.facebook.imagepipeline.image.e encodedImage, @r7.h com.facebook.imagepipeline.common.e rotationOptions, @r7.h com.facebook.imagepipeline.common.d resizeOptions) {
        if (rotationOptions == null) {
            rotationOptions = com.facebook.imagepipeline.common.e.a();
        }
        return this.f93251a && a.b(rotationOptions, resizeOptions, encodedImage, this.f93252b) > 1;
    }

    @Override // s1.c
    public b c(com.facebook.imagepipeline.image.e encodedImage, OutputStream outputStream, @r7.h com.facebook.imagepipeline.common.e rotationOptions, @r7.h com.facebook.imagepipeline.common.d resizeOptions, @r7.h com.facebook.imageformat.c outputFormat, @r7.h Integer quality) {
        g gVar;
        com.facebook.imagepipeline.common.e eVar;
        Bitmap bitmap;
        Throwable th;
        OutOfMemoryError e4;
        Integer num = quality == null ? 85 : quality;
        if (rotationOptions == null) {
            eVar = com.facebook.imagepipeline.common.e.a();
            gVar = this;
        } else {
            gVar = this;
            eVar = rotationOptions;
        }
        int f10 = gVar.f(encodedImage, eVar, resizeOptions);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = f10;
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(encodedImage.A(), null, options);
            if (decodeStream == null) {
                p0.a.u(f93250c, "Couldn't decode the EncodedImage InputStream ! ");
                return new b(2);
            }
            Matrix g4 = e.g(encodedImage, eVar);
            if (g4 != null) {
                try {
                    bitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), g4, false);
                } catch (OutOfMemoryError e10) {
                    e4 = e10;
                    bitmap = decodeStream;
                    p0.a.v(f93250c, "Out-Of-Memory during transcode", e4);
                    b bVar = new b(2);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar;
                } catch (Throwable th2) {
                    th = th2;
                    bitmap = decodeStream;
                    bitmap.recycle();
                    decodeStream.recycle();
                    throw th;
                }
            } else {
                bitmap = decodeStream;
            }
            try {
                try {
                    bitmap.compress(e(outputFormat), num.intValue(), outputStream);
                    b bVar2 = new b(f10 > 1 ? 0 : 1);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar2;
                } catch (Throwable th3) {
                    th = th3;
                    bitmap.recycle();
                    decodeStream.recycle();
                    throw th;
                }
            } catch (OutOfMemoryError e11) {
                e4 = e11;
                p0.a.v(f93250c, "Out-Of-Memory during transcode", e4);
                b bVar3 = new b(2);
                bitmap.recycle();
                decodeStream.recycle();
                return bVar3;
            }
        } catch (OutOfMemoryError e12) {
            p0.a.v(f93250c, "Out-Of-Memory during transcode", e12);
            return new b(2);
        }
    }

    @Override // s1.c
    public boolean d(com.facebook.imageformat.c imageFormat) {
        return imageFormat == com.facebook.imageformat.b.f11807k || imageFormat == com.facebook.imageformat.b.f11797a;
    }
}

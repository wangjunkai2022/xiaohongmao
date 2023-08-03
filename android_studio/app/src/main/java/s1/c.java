package s1;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: ImageTranscoder.java */
/* loaded from: classes.dex */
public interface c {
    String a();

    boolean b(com.facebook.imagepipeline.image.e encodedImage, @r7.h com.facebook.imagepipeline.common.e rotationOptions, @r7.h com.facebook.imagepipeline.common.d resizeOptions);

    b c(com.facebook.imagepipeline.image.e encodedImage, OutputStream outputStream, @r7.h com.facebook.imagepipeline.common.e rotationOptions, @r7.h com.facebook.imagepipeline.common.d resizeOptions, @r7.h com.facebook.imageformat.c outputFormat, @r7.h Integer quality) throws IOException;

    boolean d(com.facebook.imageformat.c imageFormat);
}

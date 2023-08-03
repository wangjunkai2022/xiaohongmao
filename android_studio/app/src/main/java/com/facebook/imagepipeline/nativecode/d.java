package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.reflect.InvocationTargetException;

/* compiled from: NativeImageTranscoderFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class d {
    private d() {
    }

    public static s1.d a(final int maxBitmapSize, final boolean useDownSamplingRatio, final boolean ensureTranscoderLibraryLoaded) {
        try {
            Class cls = Boolean.TYPE;
            return (s1.d) NativeJpegTranscoderFactory.class.getConstructor(Integer.TYPE, cls, cls).newInstance(Integer.valueOf(maxBitmapSize), Boolean.valueOf(useDownSamplingRatio), Boolean.valueOf(ensureTranscoderLibraryLoaded));
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e4) {
            throw new RuntimeException("Dependency ':native-imagetranscoder' is needed to use the default native image transcoder.", e4);
        }
    }
}

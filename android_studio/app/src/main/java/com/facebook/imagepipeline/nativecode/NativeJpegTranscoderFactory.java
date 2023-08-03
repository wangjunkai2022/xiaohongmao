package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class NativeJpegTranscoderFactory implements s1.d {

    /* renamed from: a  reason: collision with root package name */
    private final int f12692a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12693b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f12694c;

    @com.facebook.common.internal.e
    public NativeJpegTranscoderFactory(final int maxBitmapSize, final boolean useDownSamplingRatio, final boolean ensureTranscoderLibraryLoaded) {
        this.f12692a = maxBitmapSize;
        this.f12693b = useDownSamplingRatio;
        this.f12694c = ensureTranscoderLibraryLoaded;
    }

    @Override // s1.d
    @com.facebook.common.internal.e
    @r7.h
    public s1.c createImageTranscoder(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        if (imageFormat != com.facebook.imageformat.b.f11797a) {
            return null;
        }
        return new NativeJpegTranscoder(isResizingEnabled, this.f12692a, this.f12693b, this.f12694c);
    }
}

package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ThumbnailSizeChecker.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class i1 {

    /* renamed from: a  reason: collision with root package name */
    public static final float f13012a = 1.3333334f;

    /* renamed from: b  reason: collision with root package name */
    private static final int f13013b = 90;

    /* renamed from: c  reason: collision with root package name */
    private static final int f13014c = 270;

    public static int a(int size) {
        return (int) (size * 1.3333334f);
    }

    public static boolean b(int width, int height, @r7.h com.facebook.imagepipeline.common.d resizeOptions) {
        return resizeOptions == null ? ((float) a(width)) >= 2048.0f && a(height) >= 2048 : a(width) >= resizeOptions.f12199a && a(height) >= resizeOptions.f12200b;
    }

    public static boolean c(@r7.h com.facebook.imagepipeline.image.e encodedImage, @r7.h com.facebook.imagepipeline.common.d resizeOptions) {
        if (encodedImage == null) {
            return false;
        }
        int E = encodedImage.E();
        if (E != 90 && E != 270) {
            return b(encodedImage.J(), encodedImage.s(), resizeOptions);
        }
        return b(encodedImage.s(), encodedImage.J(), resizeOptions);
    }
}

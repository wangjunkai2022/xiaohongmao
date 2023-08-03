package com.facebook.imagepipeline.decoder;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class DecodeException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.image.e f12462a;

    public DecodeException(String message, com.facebook.imagepipeline.image.e encodedImage) {
        super(message);
        this.f12462a = encodedImage;
    }

    public com.facebook.imagepipeline.image.e getEncodedImage() {
        return this.f12462a;
    }

    public DecodeException(String message, Throwable t9, com.facebook.imagepipeline.image.e encodedImage) {
        super(message, t9);
        this.f12462a = encodedImage;
    }
}

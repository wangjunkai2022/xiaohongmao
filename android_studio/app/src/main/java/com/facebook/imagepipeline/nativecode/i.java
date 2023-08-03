package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: WebpTranscoderFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static h f12819a = null;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f12820b = false;

    static {
        try {
            f12819a = (h) WebpTranscoderImpl.class.newInstance();
            f12820b = true;
        } catch (Throwable unused) {
            f12820b = false;
        }
    }

    public static h a() {
        return f12819a;
    }
}

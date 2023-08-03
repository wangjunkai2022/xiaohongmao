package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: NativeJpegTranscoderSoLoader.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f12700a;

    public static synchronized void a() {
        synchronized (e.class) {
            if (!f12700a) {
                y1.a.f("native-imagetranscoder");
                f12700a = true;
            }
        }
    }
}

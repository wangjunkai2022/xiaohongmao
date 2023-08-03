package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: StaticWebpNativeLoader.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f12818a;

    public static synchronized void a() {
        synchronized (g.class) {
            if (!f12818a) {
                y1.a.f("static-webp");
                f12818a = true;
            }
        }
    }
}

package com.qennnsad.aknkaksd.util.fresco;

import android.util.SparseIntArray;
import com.facebook.imagepipeline.memory.f0;

/* compiled from: FrescoBitmapPoolParams.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f54708a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final SparseIntArray f54709b = new SparseIntArray(0);

    private a() {
    }

    public static f0 a() {
        return new f0(0, b(), f54709b);
    }

    public static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return min / 2;
        }
        return min / 3;
    }
}

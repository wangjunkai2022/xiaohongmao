package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultBitmapPoolParams.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final int f12652a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final SparseIntArray f12653b = new SparseIntArray(0);

    private l() {
    }

    public static f0 a() {
        return new f0(0, b(), f12653b);
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }
}

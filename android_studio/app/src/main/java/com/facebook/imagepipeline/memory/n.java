package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultFlexByteArrayPoolParams.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public static final int f12658a = 4194304;

    /* renamed from: b  reason: collision with root package name */
    private static final int f12659b = 131072;

    /* renamed from: c  reason: collision with root package name */
    public static final int f12660c = Runtime.getRuntime().availableProcessors();

    private n() {
    }

    public static SparseIntArray a(int min, int max, int numThreads) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        while (min <= max) {
            sparseIntArray.put(min, numThreads);
            min *= 2;
        }
        return sparseIntArray;
    }

    public static f0 b() {
        int i4 = f12660c;
        return new f0(4194304, i4 * 4194304, a(131072, 4194304, i4), 131072, 4194304, i4);
    }
}

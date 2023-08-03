package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultByteArrayPoolParams.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final int f12654a = 16384;

    /* renamed from: b  reason: collision with root package name */
    private static final int f12655b = 5;

    /* renamed from: c  reason: collision with root package name */
    private static final int f12656c = 81920;

    /* renamed from: d  reason: collision with root package name */
    private static final int f12657d = 1048576;

    public static f0 a() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(16384, 5);
        return new f0(f12656c, 1048576, sparseIntArray);
    }
}

package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: PoolParams.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f0 {

    /* renamed from: h  reason: collision with root package name */
    public static final int f12609h = -1;

    /* renamed from: a  reason: collision with root package name */
    public final int f12610a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12611b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    public final SparseIntArray f12612c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12613d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12614e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f12615f;

    /* renamed from: g  reason: collision with root package name */
    public final int f12616g;

    public f0(int maxSize, @r7.h SparseIntArray bucketSizes) {
        this(maxSize, maxSize, bucketSizes, 0, Integer.MAX_VALUE, -1);
    }

    public f0(int maxSizeSoftCap, int maxSizeHardCap, @r7.h SparseIntArray bucketSizes) {
        this(maxSizeSoftCap, maxSizeHardCap, bucketSizes, 0, Integer.MAX_VALUE, -1);
    }

    public f0(int maxSizeSoftCap, int maxSizeHardCap, @r7.h SparseIntArray bucketSizes, int minBucketSize, int maxBucketSize, int maxNumThreads) {
        com.facebook.common.internal.j.o(maxSizeSoftCap >= 0 && maxSizeHardCap >= maxSizeSoftCap);
        this.f12611b = maxSizeSoftCap;
        this.f12610a = maxSizeHardCap;
        this.f12612c = bucketSizes;
        this.f12613d = minBucketSize;
        this.f12614e = maxBucketSize;
        this.f12616g = maxNumThreads;
    }
}

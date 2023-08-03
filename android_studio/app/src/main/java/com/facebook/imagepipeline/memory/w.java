package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.imagepipeline.memory.BasePool;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: MemoryChunkPool.java */
@s7.d
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class w extends BasePool<v> {

    /* renamed from: k  reason: collision with root package name */
    private final int[] f12675k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 memoryChunkPoolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, memoryChunkPoolStatsTracker);
        SparseIntArray sparseIntArray = (SparseIntArray) com.facebook.common.internal.j.i(poolParams.f12612c);
        this.f12675k = new int[sparseIntArray.size()];
        int i4 = 0;
        while (true) {
            int[] iArr = this.f12675k;
            if (i4 < iArr.length) {
                iArr[i4] = sparseIntArray.keyAt(i4);
                i4++;
            } else {
                D();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: O */
    public abstract v i(int bucketedSize);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: P */
    public void u(v value) {
        com.facebook.common.internal.j.i(value);
        value.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: Q */
    public int y(v value) {
        com.facebook.common.internal.j.i(value);
        return value.getSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int R() {
        return this.f12675k[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: S */
    public boolean F(v value) {
        com.facebook.common.internal.j.i(value);
        return !value.isClosed();
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int x(int requestSize) {
        int[] iArr;
        if (requestSize > 0) {
            for (int i4 : this.f12675k) {
                if (i4 >= requestSize) {
                    return i4;
                }
            }
            return requestSize;
        }
        throw new BasePool.InvalidSizeException(Integer.valueOf(requestSize));
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int z(int bucketedSize) {
        return bucketedSize;
    }
}

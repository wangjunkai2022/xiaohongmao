package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.imagepipeline.memory.BasePool;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: GenericByteArrayPool.java */
@s7.d
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class s extends BasePool<byte[]> implements com.facebook.common.memory.a {

    /* renamed from: k  reason: collision with root package name */
    private final int[] f12667k;

    public s(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 poolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        SparseIntArray sparseIntArray = (SparseIntArray) com.facebook.common.internal.j.i(poolParams.f12612c);
        this.f12667k = new int[sparseIntArray.size()];
        for (int i4 = 0; i4 < sparseIntArray.size(); i4++) {
            this.f12667k[i4] = sparseIntArray.keyAt(i4);
        }
        D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: O */
    public byte[] i(int bucketedSize) {
        return new byte[bucketedSize];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: P */
    public void u(byte[] value) {
        com.facebook.common.internal.j.i(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: Q */
    public int y(byte[] value) {
        com.facebook.common.internal.j.i(value);
        return value.length;
    }

    public int R() {
        return this.f12667k[0];
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int x(int requestSize) {
        int[] iArr;
        if (requestSize > 0) {
            for (int i4 : this.f12667k) {
                if (i4 >= requestSize) {
                    return i4;
                }
            }
            return requestSize;
        }
        throw new BasePool.InvalidSizeException(Integer.valueOf(requestSize));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    public int z(int bucketedSize) {
        return bucketedSize;
    }
}

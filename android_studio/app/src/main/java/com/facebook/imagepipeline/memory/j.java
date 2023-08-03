package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BucketsBitmapPool.java */
@s7.d
@TargetApi(21)
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class j extends BasePool<Bitmap> implements e {
    public j(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 poolStatsTracker, boolean ignoreHardCap) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker, ignoreHardCap);
        D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: O */
    public Bitmap i(int size) {
        return Bitmap.createBitmap(1, (int) Math.ceil(size / 2.0d), Bitmap.Config.RGB_565);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: P */
    public void u(Bitmap value) {
        com.facebook.common.internal.j.i(value);
        value.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: Q */
    public int y(Bitmap value) {
        com.facebook.common.internal.j.i(value);
        return value.getAllocationByteCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    @r7.h
    /* renamed from: R */
    public Bitmap B(h<Bitmap> bucket) {
        Bitmap bitmap = (Bitmap) super.B(bucket);
        if (bitmap != null) {
            bitmap.eraseColor(0);
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: S */
    public boolean F(Bitmap value) {
        com.facebook.common.internal.j.i(value);
        return !value.isRecycled() && value.isMutable();
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int x(int requestSize) {
        return requestSize;
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int z(int bucketedSize) {
        return bucketedSize;
    }
}

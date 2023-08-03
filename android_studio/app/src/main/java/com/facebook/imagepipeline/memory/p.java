package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DummyBitmapPool.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class p implements e {
    @Override // com.facebook.common.memory.e
    /* renamed from: i */
    public Bitmap get(int size) {
        return Bitmap.createBitmap(1, (int) Math.ceil(size / 2.0d), Bitmap.Config.RGB_565);
    }

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType trimType) {
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.h
    /* renamed from: r */
    public void release(Bitmap value) {
        com.facebook.common.internal.j.i(value);
        value.recycle();
    }
}

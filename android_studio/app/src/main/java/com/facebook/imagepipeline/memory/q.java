package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Set;

/* compiled from: DummyTrackingInUseBitmapPool.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class q implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Bitmap> f12663a = com.facebook.common.internal.l.g();

    @Override // com.facebook.common.memory.e
    /* renamed from: i */
    public Bitmap get(int size) {
        Bitmap createBitmap = Bitmap.createBitmap(1, (int) Math.ceil(size / 2.0d), Bitmap.Config.RGB_565);
        this.f12663a.add(createBitmap);
        return createBitmap;
    }

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType trimType) {
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.h
    /* renamed from: r */
    public void release(Bitmap value) {
        com.facebook.common.internal.j.i(value);
        this.f12663a.remove(value);
        value.recycle();
    }
}

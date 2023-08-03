package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: LruBitmapPool.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class t implements e {

    /* renamed from: a  reason: collision with root package name */
    protected final c0<Bitmap> f12668a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final int f12669b;

    /* renamed from: c  reason: collision with root package name */
    private int f12670c;

    /* renamed from: d  reason: collision with root package name */
    private final g0 f12671d;

    /* renamed from: e  reason: collision with root package name */
    private int f12672e;

    public t(int maxPoolSize, int maxBitmapSize, g0 poolStatsTracker, @r7.h com.facebook.common.memory.c memoryTrimmableRegistry) {
        this.f12669b = maxPoolSize;
        this.f12670c = maxBitmapSize;
        this.f12671d = poolStatsTracker;
        if (memoryTrimmableRegistry != null) {
            memoryTrimmableRegistry.a(this);
        }
    }

    @VisibleForTesting
    private Bitmap i(int size) {
        this.f12671d.d(size);
        return Bitmap.createBitmap(1, size, Bitmap.Config.ALPHA_8);
    }

    private synchronized void t(int maxSize) {
        Bitmap pop;
        while (this.f12672e > maxSize && (pop = this.f12668a.pop()) != null) {
            int a10 = this.f12668a.a(pop);
            this.f12672e -= a10;
            this.f12671d.b(a10);
        }
    }

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType trimType) {
        t((int) (this.f12669b * (1.0d - trimType.getSuggestedTrimRatio())));
    }

    @Override // com.facebook.common.memory.e
    /* renamed from: r */
    public synchronized Bitmap get(final int size) {
        int i4 = this.f12672e;
        int i10 = this.f12669b;
        if (i4 > i10) {
            t(i10);
        }
        Bitmap bitmap = this.f12668a.get(size);
        if (bitmap != null) {
            int a10 = this.f12668a.a(bitmap);
            this.f12672e -= a10;
            this.f12671d.e(a10);
            return bitmap;
        }
        return i(size);
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.h
    /* renamed from: s */
    public void release(final Bitmap value) {
        int a10 = this.f12668a.a(value);
        if (a10 <= this.f12670c) {
            this.f12671d.c(a10);
            this.f12668a.put(value);
            synchronized (this) {
                this.f12672e += a10;
            }
        }
    }
}

package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.internal.j;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.e0;
import com.facebook.imagepipeline.memory.r;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: HoneycombBitmapCreator.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class d implements t0.a {

    /* renamed from: a  reason: collision with root package name */
    private final b f12024a;

    /* renamed from: b  reason: collision with root package name */
    private final r f12025b;

    public d(e0 poolFactory) {
        this.f12025b = poolFactory.d();
        this.f12024a = new b(poolFactory.h());
    }

    private static BitmapFactory.Options b(int sampleSize, Bitmap.Config bitmapConfig) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = bitmapConfig;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = sampleSize;
        options.inMutable = true;
        return options;
    }

    @Override // t0.a
    @TargetApi(12)
    public Bitmap a(int width, int height, Bitmap.Config bitmapConfig) {
        com.facebook.imagepipeline.image.e eVar;
        com.facebook.common.references.a<PooledByteBuffer> a10 = this.f12024a.a((short) width, (short) height);
        com.facebook.common.references.a<byte[]> aVar = null;
        try {
            eVar = new com.facebook.imagepipeline.image.e(a10);
        } catch (Throwable th) {
            th = th;
            eVar = null;
        }
        try {
            eVar.q0(com.facebook.imageformat.b.f11797a);
            BitmapFactory.Options b10 = b(eVar.G(), bitmapConfig);
            int size = a10.q().size();
            aVar = this.f12025b.a(size + 2);
            byte[] q9 = aVar.q();
            a10.q().f(0, q9, 0, size);
            Bitmap bitmap = (Bitmap) j.i(BitmapFactory.decodeByteArray(q9, 0, size, b10));
            bitmap.setHasAlpha(true);
            bitmap.eraseColor(0);
            com.facebook.common.references.a.k(aVar);
            com.facebook.imagepipeline.image.e.d(eVar);
            com.facebook.common.references.a.k(a10);
            return bitmap;
        } catch (Throwable th2) {
            th = th2;
            com.facebook.common.references.a.k(aVar);
            com.facebook.imagepipeline.image.e.d(eVar);
            com.facebook.common.references.a.k(a10);
            throw th;
        }
    }
}

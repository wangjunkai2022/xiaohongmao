package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.internal.j;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.r;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import com.facebook.infer.annotation.Nullsafe;

@s7.d
@com.facebook.common.internal.e
@TargetApi(19)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class KitKatPurgeableDecoder extends DalvikPurgeableDecoder {

    /* renamed from: c  reason: collision with root package name */
    private final r f12823c;

    @com.facebook.common.internal.e
    public KitKatPurgeableDecoder(r flexByteArrayPool) {
        this.f12823c = flexByteArrayPool;
    }

    private static void j(byte[] imageBytes, int offset) {
        imageBytes[offset] = -1;
        imageBytes[offset + 1] = -39;
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap e(com.facebook.common.references.a<PooledByteBuffer> bytesRef, BitmapFactory.Options options) {
        PooledByteBuffer q9 = bytesRef.q();
        int size = q9.size();
        com.facebook.common.references.a<byte[]> a10 = this.f12823c.a(size);
        try {
            byte[] q10 = a10.q();
            q9.f(0, q10, 0, size);
            return (Bitmap) j.j(BitmapFactory.decodeByteArray(q10, 0, size, options), "BitmapFactory returned null");
        } finally {
            com.facebook.common.references.a.k(a10);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap f(com.facebook.common.references.a<PooledByteBuffer> bytesRef, int length, BitmapFactory.Options options) {
        byte[] bArr = DalvikPurgeableDecoder.g(bytesRef, length) ? null : DalvikPurgeableDecoder.f12686b;
        PooledByteBuffer q9 = bytesRef.q();
        j.d(Boolean.valueOf(length <= q9.size()));
        int i4 = length + 2;
        com.facebook.common.references.a<byte[]> a10 = this.f12823c.a(i4);
        try {
            byte[] q10 = a10.q();
            q9.f(0, q10, 0, length);
            if (bArr != null) {
                j(q10, length);
                length = i4;
            }
            return (Bitmap) j.j(BitmapFactory.decodeByteArray(q10, 0, length, options), "BitmapFactory returned null");
        } finally {
            com.facebook.common.references.a.k(a10);
        }
    }
}

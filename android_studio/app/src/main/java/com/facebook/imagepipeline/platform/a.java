package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.core.util.Pools;
import androidx.core.util.Preconditions;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ArtDecoder.java */
@s7.d
@TargetApi(21)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a extends b {
    public a(com.facebook.imagepipeline.memory.e bitmapPool, int maxNumThreads, Pools.SynchronizedPool decodeBuffers) {
        super(bitmapPool, maxNumThreads, decodeBuffers);
    }

    @Override // com.facebook.imagepipeline.platform.b
    public int g(final int width, final int height, final BitmapFactory.Options options) {
        return com.facebook.imageutils.a.f(width, height, (Bitmap.Config) Preconditions.checkNotNull(options.inPreferredConfig));
    }
}

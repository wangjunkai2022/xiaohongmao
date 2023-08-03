package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import androidx.core.util.Pools;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: OreoDecoder.java */
@s7.d
@TargetApi(26)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c extends b {
    public c(com.facebook.imagepipeline.memory.e bitmapPool, int maxNumThreads, Pools.SynchronizedPool decodeBuffers) {
        super(bitmapPool, maxNumThreads, decodeBuffers);
    }

    private static boolean i(final BitmapFactory.Options options) {
        ColorSpace colorSpace = options.outColorSpace;
        return (colorSpace == null || !colorSpace.isWideGamut() || options.inPreferredConfig == Bitmap.Config.RGBA_F16) ? false : true;
    }

    @Override // com.facebook.imagepipeline.platform.b
    public int g(final int width, final int height, final BitmapFactory.Options options) {
        if (i(options)) {
            return width * height * 8;
        }
        Bitmap.Config config = options.inPreferredConfig;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        return com.facebook.imageutils.a.f(width, height, config);
    }
}

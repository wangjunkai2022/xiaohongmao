package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

@com.facebook.soloader.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
class PreverificationHelper {
    /* JADX INFO: Access modifiers changed from: package-private */
    @com.facebook.soloader.d
    @TargetApi(26)
    public boolean shouldUseHardwareBitmapConfig(@h Bitmap.Config config) {
        return config == Bitmap.Config.HARDWARE;
    }
}

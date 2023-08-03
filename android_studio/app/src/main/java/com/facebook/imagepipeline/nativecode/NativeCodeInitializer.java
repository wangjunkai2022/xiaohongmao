package com.facebook.imagepipeline.nativecode;

import android.content.Context;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.soloader.SoLoader;
import java.io.IOException;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class NativeCodeInitializer {
    @com.facebook.common.internal.e
    public static void init(Context context) throws IOException {
        SoLoader.init(context, 0);
    }
}

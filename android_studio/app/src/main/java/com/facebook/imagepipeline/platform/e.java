package com.facebook.imagepipeline.platform;

import android.os.Build;
import androidx.core.util.Pools;
import com.facebook.imagepipeline.memory.e0;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: PlatformDecoderFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e {
    public static d a(e0 poolFactory, boolean gingerbreadDecoderEnabled) {
        if (Build.VERSION.SDK_INT >= 26) {
            int e4 = poolFactory.e();
            return new c(poolFactory.b(), e4, new Pools.SynchronizedPool(e4));
        }
        int e10 = poolFactory.e();
        return new a(poolFactory.b(), e10, new Pools.SynchronizedPool(e10));
    }
}

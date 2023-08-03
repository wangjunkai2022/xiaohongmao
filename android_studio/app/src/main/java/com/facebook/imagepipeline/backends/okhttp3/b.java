package com.facebook.imagepipeline.backends.okhttp3;

import android.content.Context;
import com.facebook.imagepipeline.core.i;
import com.facebook.infer.annotation.Nullsafe;
import okhttp3.OkHttpClient;

/* compiled from: OkHttpImagePipelineConfigFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b {
    public static i.b a(Context context, OkHttpClient okHttpClient) {
        return i.M(context).r0(new c(okHttpClient));
    }
}

package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import androidx.annotation.NonNull;
import b0.c;
import com.bumptech.glide.Registry;
import com.bumptech.glide.integration.okhttp3.b;
import com.bumptech.glide.load.model.g;
import com.bumptech.glide.module.d;
import java.io.InputStream;

/* compiled from: OkHttpLibraryGlideModule.java */
@c
/* loaded from: classes.dex */
public final class a extends d {
    @Override // com.bumptech.glide.module.d, com.bumptech.glide.module.f
    public void b(@NonNull Context context, @NonNull com.bumptech.glide.c cVar, @NonNull Registry registry) {
        registry.y(g.class, InputStream.class, new b.a());
    }
}

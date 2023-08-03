package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.Registry;
import com.bumptech.glide.d;
import com.bumptech.glide.integration.okhttp3.b;
import com.bumptech.glide.load.model.g;
import com.bumptech.glide.module.c;
import java.io.InputStream;

@Deprecated
/* loaded from: classes.dex */
public class OkHttpGlideModule implements c {
    @Override // com.bumptech.glide.module.c, com.bumptech.glide.module.b
    public void a(@NonNull Context context, @NonNull d dVar) {
    }

    @Override // com.bumptech.glide.module.c, com.bumptech.glide.module.f
    public void b(Context context, com.bumptech.glide.c cVar, Registry registry) {
        registry.y(g.class, InputStream.class, new b.a());
    }
}

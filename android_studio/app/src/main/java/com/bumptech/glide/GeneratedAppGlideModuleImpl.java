package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.qennnsad.aknkaksd.util.img.GlideConfiger;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a  reason: collision with root package name */
    private final GlideConfiger f7112a = new GlideConfiger();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.qennnsad.aknkaksd.util.img.GlideConfiger");
            Log.d("Glide", "AppGlideModule excludes LibraryGlideModule from annotation: com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.webp.WebpGlideLibraryModule");
        }
    }

    @Override // com.bumptech.glide.module.a, com.bumptech.glide.module.b
    public void a(@NonNull Context context, @NonNull d dVar) {
        this.f7112a.a(context, dVar);
    }

    @Override // com.bumptech.glide.module.d, com.bumptech.glide.module.f
    public void b(@NonNull Context context, @NonNull c cVar, @NonNull Registry registry) {
        new com.bumptech.glide.integration.webp.d().b(context, cVar, registry);
        this.f7112a.b(context, cVar, registry);
    }

    @Override // com.bumptech.glide.module.a
    public boolean c() {
        return this.f7112a.c();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    public Set<Class<?>> d() {
        HashSet hashSet = new HashSet();
        hashSet.add(com.bumptech.glide.integration.okhttp3.a.class);
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    /* renamed from: f */
    public a e() {
        return new a();
    }
}

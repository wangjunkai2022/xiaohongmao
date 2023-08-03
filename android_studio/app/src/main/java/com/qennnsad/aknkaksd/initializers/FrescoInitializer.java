package com.qennnsad.aknkaksd.initializers;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.startup.Initializer;
import com.facebook.imagepipeline.memory.d0;
import com.facebook.imagepipeline.memory.e0;
import com.facebook.imagepipeline.memory.f0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: FrescoInitializer.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\t0\bH\u0016¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/initializers/FrescoInitializer;", "Landroidx/startup/Initializer;", "", "()V", "create", "context", "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FrescoInitializer implements Initializer<Object> {
    @Override // androidx.startup.Initializer
    @g
    public Object create(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Timber.f93860a.a("...", new Object[0]);
        f0 a10 = com.qennnsad.aknkaksd.util.fresco.a.a();
        com.facebook.cache.disk.c n9 = com.facebook.cache.disk.c.n(context).w(com.qennnsad.aknkaksd.util.fresco.a.b()).n();
        Intrinsics.checkNotNullExpressionValue(n9, "newBuilder(context)\n    …g())\n            .build()");
        com.facebook.drawee.backends.pipeline.d.f(context, com.facebook.imagepipeline.backends.okhttp3.b.a(context, com.qennnsad.aknkaksd.util.img.g.b()).b0(true).W(Bitmap.Config.RGB_565).o0(n9).x0(true).q0(a.f50838a.a()).t0(new e0(d0.n().p(a10).m())).K());
        return new Object();
    }

    @Override // androidx.startup.Initializer
    @g
    public List<Class<? extends Initializer<?>>> dependencies() {
        List<Class<? extends Initializer<?>>> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(SentryInitializer.class);
        return mutableListOf;
    }
}

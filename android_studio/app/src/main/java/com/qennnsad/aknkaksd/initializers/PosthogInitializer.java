package com.qennnsad.aknkaksd.initializers;

import android.content.Context;
import androidx.startup.Initializer;
import com.posthog.android.PostHog;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: PosthogInitializer.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\t0\bH\u0016¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/initializers/PosthogInitializer;", "Landroidx/startup/Initializer;", "", "()V", "create", "context", "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PosthogInitializer implements Initializer<Object> {
    @Override // androidx.startup.Initializer
    @g
    public Object create(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Timber.f93860a.a("...", new Object[0]);
        PostHog.R(new PostHog.j(context, "phc_K1JCCmFUISJuJwzpoNpPmVKhXQyMbM1OQAABWS6YOWN", "https://metrics.telarycover.io").o().d(true).i(1L, TimeUnit.MINUTES).c().l(PostHog.LogLevel.NONE).a());
        PostHog.U(context).k();
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

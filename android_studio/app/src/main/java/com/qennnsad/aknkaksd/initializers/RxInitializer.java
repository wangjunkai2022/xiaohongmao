package com.qennnsad.aknkaksd.initializers;

import android.content.Context;
import androidx.startup.Initializer;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: RxInitializer.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\t0\bH\u0016¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/initializers/RxInitializer;", "Landroidx/startup/Initializer;", "", "()V", "create", "context", "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RxInitializer implements Initializer<Object> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        if ((throwable instanceof SocketTimeoutException) || (throwable instanceof ConnectException) || (throwable instanceof UnknownHostException) || (throwable instanceof SocketException) || (throwable instanceof IOException)) {
            com.qennnsad.aknkaksd.util.toast.a.n(throwable.getMessage(), false, 2, null);
        }
    }

    @Override // androidx.startup.Initializer
    @g
    public Object create(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Timber.f93860a.a("...", new Object[0]);
        io.reactivex.plugins.a.k0(b.f50840a);
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
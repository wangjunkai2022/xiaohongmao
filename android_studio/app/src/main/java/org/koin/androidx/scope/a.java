package org.koin.androidx.scope;

import android.app.Activity;
import androidx.activity.ComponentActivity;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.scope.Scope;

/* compiled from: ComponentActivityExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0000\u001a\u0016\u0010\t\u001a\u00020\b*\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u001a\f\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u0000¨\u0006\u000b"}, d2 = {"Landroidx/activity/ComponentActivity;", "Lorg/koin/androidx/scope/LifecycleScopeDelegate;", "Landroid/app/Activity;", "b", "Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;", "a", "", v.b.f83881a, "Lorg/koin/core/scope/Scope;", "c", "e", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {
    @g
    public static final LifecycleViewModelScopeDelegate a(@g ComponentActivity componentActivity) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return new LifecycleViewModelScopeDelegate(componentActivity, ComponentCallbackExtKt.c(componentActivity), null, 4, null);
    }

    @g
    public static final LifecycleScopeDelegate<Activity> b(@g ComponentActivity componentActivity) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return new LifecycleScopeDelegate<>(componentActivity, ComponentCallbackExtKt.c(componentActivity), null, 4, null);
    }

    @g
    public static final Scope c(@g ComponentActivity componentActivity, @h Object obj) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return ComponentCallbackExtKt.c(componentActivity).e(org.koin.core.component.c.d(componentActivity), org.koin.core.component.c.e(componentActivity), obj);
    }

    public static /* synthetic */ Scope d(ComponentActivity componentActivity, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = null;
        }
        return c(componentActivity, obj);
    }

    @h
    public static final Scope e(@g ComponentActivity componentActivity) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return ComponentCallbackExtKt.c(componentActivity).H(org.koin.core.component.c.d(componentActivity));
    }
}

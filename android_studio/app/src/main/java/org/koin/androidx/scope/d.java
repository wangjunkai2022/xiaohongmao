package org.koin.androidx.scope;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: LifecycleScopeDelegate.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/LifecycleOwner;", "", "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class d {
    public static final boolean a(@g LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        Lifecycle.State currentState = lifecycleOwner.getLifecycle().getCurrentState();
        Intrinsics.checkNotNullExpressionValue(currentState, "lifecycle.currentState");
        return currentState.isAtLeast(Lifecycle.State.CREATED);
    }
}

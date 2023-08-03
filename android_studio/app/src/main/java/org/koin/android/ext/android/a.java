package org.koin.android.ext.android;

import android.content.ComponentCallbacks;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.scope.Scope;
import u8.b;

/* compiled from: AndroidKoinScopeExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¨\u0006\u0003"}, d2 = {"Landroid/content/ComponentCallbacks;", "Lorg/koin/core/scope/Scope;", "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {
    @g
    @b
    public static final Scope a(@g ComponentCallbacks componentCallbacks) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        return componentCallbacks instanceof org.koin.android.scope.a ? ((org.koin.android.scope.a) componentCallbacks).getScope() : componentCallbacks instanceof org.koin.core.component.b ? ((org.koin.core.component.b) componentCallbacks).getScope() : componentCallbacks instanceof org.koin.core.component.a ? ((org.koin.core.component.a) componentCallbacks).getKoin().I().h() : v8.b.f94213a.get().I().h();
    }
}

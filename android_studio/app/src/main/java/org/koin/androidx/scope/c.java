package org.koin.androidx.scope;

import androidx.lifecycle.LifecycleOwner;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: LifecycleOwnerExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\"\u001e\u0010\u0006\u001a\u00020\u0001*\u00020\u00008FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003\"\u001e\u0010\t\u001a\u00020\u0001*\u00020\u00008FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\u0005\u001a\u0004\b\u0007\u0010\u0003\"\u001e\u0010\f\u001a\u00020\u0001*\u00020\u00008FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\u0005\u001a\u0004\b\n\u0010\u0003¨\u0006\r"}, d2 = {"Landroidx/lifecycle/LifecycleOwner;", "Lorg/koin/core/scope/Scope;", "c", "(Landroidx/lifecycle/LifecycleOwner;)Lorg/koin/core/scope/Scope;", "getLifecycleScope$annotations", "(Landroidx/lifecycle/LifecycleOwner;)V", "lifecycleScope", "e", "getScope$annotations", "scope", "a", "getCurrentScope$annotations", "currentScope", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class c {
    @g
    public static final Scope a(@g LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        throw new IllegalStateException("Don't use scope on a lifecycle component. Use ScopeActivity or ScopeFragment instead".toString());
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use ScopeActivity or ScopeFragment instead", replaceWith = @ReplaceWith(expression = "lifecycleScope", imports = {}))
    public static /* synthetic */ void b(LifecycleOwner lifecycleOwner) {
    }

    @g
    public static final Scope c(@g LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        throw new IllegalStateException("Don't use scope on a lifecycle component. Use ScopeActivity or ScopeFragment instead".toString());
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use ScopeActivity or ScopeFragment instead", replaceWith = @ReplaceWith(expression = "lifecycleScope", imports = {}))
    public static /* synthetic */ void d(LifecycleOwner lifecycleOwner) {
    }

    @g
    public static final Scope e(@g LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        throw new IllegalStateException("Don't use scope on a lifecycle component. Use ScopeActivity or ScopeFragment instead".toString());
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use ScopeActivity or ScopeFragment instead", replaceWith = @ReplaceWith(expression = "lifecycleScope", imports = {}))
    public static /* synthetic */ void f(LifecycleOwner lifecycleOwner) {
    }
}

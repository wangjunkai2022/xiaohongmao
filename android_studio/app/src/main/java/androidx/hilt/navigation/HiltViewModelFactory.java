package androidx.hilt.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.NavBackStackEntry;
import dagger.hilt.android.internal.lifecycle.c;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: HiltNavBackStackEntry.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"HiltViewModelFactory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "context", "Landroid/content/Context;", "navBackStackEntry", "Landroidx/navigation/NavBackStackEntry;", "create", "hilt-navigation_release"}, k = 2, mv = {1, 4, 2})
@JvmName(name = "HiltViewModelFactory")
/* loaded from: classes.dex */
public final class HiltViewModelFactory {
    @g
    @JvmName(name = "create")
    public static final ViewModelProvider.Factory create(@g Context context, @g NavBackStackEntry navBackStackEntry) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(navBackStackEntry, "navBackStackEntry");
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                ViewModelProvider.Factory a10 = c.a((Activity) context, navBackStackEntry, navBackStackEntry.getArguments(), navBackStackEntry.getDefaultViewModelProviderFactory());
                Intrinsics.checkNotNullExpressionValue(a10, "HiltViewModelFactory.cre…delProviderFactory,\n    )");
                return a10;
            }
            context = ((ContextWrapper) context).getBaseContext();
            Intrinsics.checkNotNullExpressionValue(context, "ctx.baseContext");
        }
        throw new IllegalStateException("Expected an activity context for creating a HiltViewModelFactory for a NavBackStackEntry but instead found: " + context);
    }
}

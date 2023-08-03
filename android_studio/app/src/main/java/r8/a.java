package r8;

import android.os.Bundle;
import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentFactory;
import androidx.fragment.app.FragmentTransaction;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: ActivityExt.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0016\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u001a;\u0010\u000e\u001a\u00020\u0007\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u0005*\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0086\b¨\u0006\u000f"}, d2 = {"Landroidx/fragment/app/FragmentActivity;", "Lorg/koin/core/scope/Scope;", "scope", "", "c", "Landroidx/fragment/app/Fragment;", "F", "Landroidx/fragment/app/FragmentTransaction;", "", "containerViewId", "Landroid/os/Bundle;", "args", "", y.b.f83916d, "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {
    public static final /* synthetic */ <F extends Fragment> FragmentTransaction a(FragmentTransaction fragmentTransaction, @IdRes int i4, Bundle bundle, String str) {
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction replace = fragmentTransaction.replace(i4, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(replace, "replace(containerViewId, F::class.java, args, tag)");
        return replace;
    }

    public static /* synthetic */ FragmentTransaction b(FragmentTransaction fragmentTransaction, int i4, Bundle bundle, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction replace = fragmentTransaction.replace(i4, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(replace, "replace(containerViewId, F::class.java, args, tag)");
        return replace;
    }

    public static final void c(@g FragmentActivity fragmentActivity, @h Scope scope) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        if (scope == null) {
            fragmentActivity.getSupportFragmentManager().setFragmentFactory((FragmentFactory) org.koin.android.ext.android.a.a(fragmentActivity).p(Reflection.getOrCreateKotlinClass(FragmentFactory.class), null, null));
        } else {
            fragmentActivity.getSupportFragmentManager().setFragmentFactory(new b(scope));
        }
    }

    public static /* synthetic */ void d(FragmentActivity fragmentActivity, Scope scope, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            scope = null;
        }
        c(fragmentActivity, scope);
    }
}

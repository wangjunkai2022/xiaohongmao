package androidx.navigation;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.core.app.ActivityCompat;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: Navigation.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\fH\u0007¨\u0006\u0017"}, d2 = {"Landroidx/navigation/Navigation;", "", "()V", "createNavigateOnClickListener", "Landroid/view/View$OnClickListener;", "directions", "Landroidx/navigation/NavDirections;", "resId", "", "args", "Landroid/os/Bundle;", "findNavController", "Landroidx/navigation/NavController;", "activity", "Landroid/app/Activity;", "viewId", "view", "Landroid/view/View;", "findViewNavController", "getViewNavController", "setViewNavController", "", "controller", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Navigation {
    @g
    public static final Navigation INSTANCE = new Navigation();

    private Navigation() {
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final View.OnClickListener createNavigateOnClickListener(@IdRes int i4) {
        return createNavigateOnClickListener$default(i4, null, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final View.OnClickListener createNavigateOnClickListener(@IdRes final int i4, @h final Bundle bundle) {
        return new View.OnClickListener() { // from class: androidx.navigation.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Navigation.m36createNavigateOnClickListener$lambda0(i4, bundle, view);
            }
        };
    }

    public static /* synthetic */ View.OnClickListener createNavigateOnClickListener$default(int i4, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        return createNavigateOnClickListener(i4, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createNavigateOnClickListener$lambda-0  reason: not valid java name */
    public static final void m36createNavigateOnClickListener$lambda0(int i4, Bundle bundle, View view) {
        Intrinsics.checkNotNullExpressionValue(view, "view");
        findNavController(view).navigate(i4, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createNavigateOnClickListener$lambda-1  reason: not valid java name */
    public static final void m37createNavigateOnClickListener$lambda1(NavDirections directions, View view) {
        Intrinsics.checkNotNullParameter(directions, "$directions");
        Intrinsics.checkNotNullExpressionValue(view, "view");
        findNavController(view).navigate(directions);
    }

    @JvmStatic
    @g
    public static final NavController findNavController(@g Activity activity, @IdRes int i4) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        View requireViewById = ActivityCompat.requireViewById(activity, i4);
        Intrinsics.checkNotNullExpressionValue(requireViewById, "requireViewById<View>(activity, viewId)");
        NavController findViewNavController = INSTANCE.findViewNavController(requireViewById);
        if (findViewNavController != null) {
            return findViewNavController;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + i4);
    }

    private final NavController findViewNavController(View view) {
        Sequence generateSequence;
        Sequence mapNotNull;
        Object firstOrNull;
        generateSequence = SequencesKt__SequencesKt.generateSequence(view, Navigation$findViewNavController$1.INSTANCE);
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(generateSequence, Navigation$findViewNavController$2.INSTANCE);
        firstOrNull = SequencesKt___SequencesKt.firstOrNull(mapNotNull);
        return (NavController) firstOrNull;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavController getViewNavController(View view) {
        Object tag = view.getTag(R.id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }

    @JvmStatic
    public static final void setViewNavController(@g View view, @h NavController navController) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTag(R.id.nav_controller_view_tag, navController);
    }

    @JvmStatic
    @g
    public static final View.OnClickListener createNavigateOnClickListener(@g final NavDirections directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        return new View.OnClickListener() { // from class: androidx.navigation.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Navigation.m37createNavigateOnClickListener$lambda1(NavDirections.this, view);
            }
        };
    }

    @JvmStatic
    @g
    public static final NavController findNavController(@g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        NavController findViewNavController = INSTANCE.findViewNavController(view);
        if (findViewNavController != null) {
            return findViewNavController;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }
}

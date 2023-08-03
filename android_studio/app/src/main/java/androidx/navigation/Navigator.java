package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.navigation.NavDestination;
import io.sentry.protocol.t;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: Navigator.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0002%&B\u0005¢\u0006\u0002\u0010\u0004J\r\u0010\u000e\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u000fJ5\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00028\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0002\u0010\u0018J*\u0010\u0010\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u0006H\u0017J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0013H\u0016J\n\u0010\"\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010#\u001a\u00020\bH\u0016J\u0018\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\bH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006'"}, d2 = {"Landroidx/navigation/Navigator;", "D", "Landroidx/navigation/NavDestination;", "", "()V", "_state", "Landroidx/navigation/NavigatorState;", "<set-?>", "", "isAttached", "()Z", t.b.f83859d, "getState", "()Landroidx/navigation/NavigatorState;", "createDestination", "()Landroidx/navigation/NavDestination;", "navigate", "destination", "args", "Landroid/os/Bundle;", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;", "", "entries", "", "Landroidx/navigation/NavBackStackEntry;", "onAttach", "onLaunchSingleTop", "backStackEntry", "onRestoreState", "savedState", "onSaveState", "popBackStack", "popUpTo", "Extras", "Name", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class Navigator<D extends NavDestination> {
    @h
    private NavigatorState _state;
    private boolean isAttached;

    /* compiled from: Navigator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/navigation/Navigator$Extras;", "", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface Extras {
    }

    /* compiled from: Navigator.kt */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\u0002\u0018\u00002\u00020\u0001B\b\u0012\u0006\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/Navigator$Name;", "", "value", "", "()Ljava/lang/String;", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS, AnnotationTarget.CLASS})
    @Retention(RetentionPolicy.RUNTIME)
    @kotlin.annotation.Retention(AnnotationRetention.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Name {
        String value();
    }

    @g
    public abstract D createDestination();

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final NavigatorState getState() {
        NavigatorState navigatorState = this._state;
        if (navigatorState != null) {
            return navigatorState;
        }
        throw new IllegalStateException("You cannot access the Navigator's state until the Navigator is attached".toString());
    }

    public final boolean isAttached() {
        return this.isAttached;
    }

    @h
    public NavDestination navigate(@g D destination, @h Bundle bundle, @h NavOptions navOptions, @h Extras extras) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        return destination;
    }

    public void navigate(@g List<NavBackStackEntry> entries, @h NavOptions navOptions, @h Extras extras) {
        Sequence asSequence;
        Sequence map;
        Sequence<NavBackStackEntry> filterNotNull;
        Intrinsics.checkNotNullParameter(entries, "entries");
        asSequence = CollectionsKt___CollectionsKt.asSequence(entries);
        map = SequencesKt___SequencesKt.map(asSequence, new Navigator$navigate$1(this, navOptions, extras));
        filterNotNull = SequencesKt___SequencesKt.filterNotNull(map);
        for (NavBackStackEntry navBackStackEntry : filterNotNull) {
            getState().push(navBackStackEntry);
        }
    }

    @CallSuper
    public void onAttach(@g NavigatorState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this._state = state;
        this.isAttached = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onLaunchSingleTop(@g NavBackStackEntry backStackEntry) {
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        NavDestination destination = backStackEntry.getDestination();
        if (!(destination instanceof NavDestination)) {
            destination = null;
        }
        if (destination == null) {
            return;
        }
        navigate(destination, null, NavOptionsBuilderKt.navOptions(Navigator$onLaunchSingleTop$1.INSTANCE), null);
        getState().onLaunchSingleTop(backStackEntry);
    }

    public void onRestoreState(@g Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
    }

    @h
    public Bundle onSaveState() {
        return null;
    }

    public void popBackStack(@g NavBackStackEntry popUpTo, boolean z9) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        if (value.contains(popUpTo)) {
            ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
            NavBackStackEntry navBackStackEntry = null;
            while (popBackStack()) {
                navBackStackEntry = listIterator.previous();
                if (Intrinsics.areEqual(navBackStackEntry, popUpTo)) {
                    break;
                }
            }
            if (navBackStackEntry != null) {
                getState().pop(navBackStackEntry, z9);
                return;
            }
            return;
        }
        throw new IllegalStateException(("popBackStack was called with " + popUpTo + " which does not exist in back stack " + value).toString());
    }

    public boolean popBackStack() {
        return true;
    }
}

package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.h0;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.flow.t;
import m8.g;
import m8.h;

/* compiled from: NavigatorState.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH&J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0016R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R \u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR \u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u001b0\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\"\u0010\u001d\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u001f\"\u0004\b \u0010!R#\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00180\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R#\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u001b0\"8\u0006¢\u0006\f\n\u0004\b'\u0010$\u001a\u0004\b(\u0010&¨\u0006+"}, d2 = {"Landroidx/navigation/NavigatorState;", "", "Landroidx/navigation/NavBackStackEntry;", "backStackEntry", "", "push", "pushWithTransition", "Landroidx/navigation/NavDestination;", "destination", "Landroid/os/Bundle;", "arguments", "createBackStackEntry", "popUpTo", "", "saveState", "pop", "popWithTransition", "onLaunchSingleTop", "entry", "markTransitionComplete", "Ljava/util/concurrent/locks/ReentrantLock;", "backStackLock", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/flow/t;", "", "_backStack", "Lkotlinx/coroutines/flow/t;", "", "_transitionsInProgress", "isNavigating", "Z", "()Z", "setNavigating", "(Z)V", "Lkotlinx/coroutines/flow/h0;", "backStack", "Lkotlinx/coroutines/flow/h0;", "getBackStack", "()Lkotlinx/coroutines/flow/h0;", "transitionsInProgress", "getTransitionsInProgress", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public abstract class NavigatorState {
    @g
    private final t<List<NavBackStackEntry>> _backStack;
    @g
    private final t<Set<NavBackStackEntry>> _transitionsInProgress;
    @g
    private final h0<List<NavBackStackEntry>> backStack;
    @g
    private final ReentrantLock backStackLock = new ReentrantLock(true);
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    private boolean isNavigating;
    @g
    private final h0<Set<NavBackStackEntry>> transitionsInProgress;

    public NavigatorState() {
        List emptyList;
        Set emptySet;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        t<List<NavBackStackEntry>> a10 = j0.a(emptyList);
        this._backStack = a10;
        emptySet = SetsKt__SetsKt.emptySet();
        t<Set<NavBackStackEntry>> a11 = j0.a(emptySet);
        this._transitionsInProgress = a11;
        this.backStack = k.m(a10);
        this.transitionsInProgress = k.m(a11);
    }

    @g
    public abstract NavBackStackEntry createBackStackEntry(@g NavDestination navDestination, @h Bundle bundle);

    @g
    public final h0<List<NavBackStackEntry>> getBackStack() {
        return this.backStack;
    }

    @g
    public final h0<Set<NavBackStackEntry>> getTransitionsInProgress() {
        return this.transitionsInProgress;
    }

    public final boolean isNavigating() {
        return this.isNavigating;
    }

    public void markTransitionComplete(@g NavBackStackEntry entry) {
        Set<NavBackStackEntry> minus;
        Intrinsics.checkNotNullParameter(entry, "entry");
        t<Set<NavBackStackEntry>> tVar = this._transitionsInProgress;
        minus = SetsKt___SetsKt.minus(tVar.getValue(), entry);
        tVar.setValue(minus);
    }

    @CallSuper
    public void onLaunchSingleTop(@g NavBackStackEntry backStackEntry) {
        Object last;
        List minus;
        List<NavBackStackEntry> plus;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        t<List<NavBackStackEntry>> tVar = this._backStack;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this._backStack.getValue());
        minus = CollectionsKt___CollectionsKt.minus(tVar.getValue(), last);
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends NavBackStackEntry>) ((Collection<? extends Object>) minus), backStackEntry);
        tVar.setValue(plus);
    }

    public void pop(@g NavBackStackEntry popUpTo, boolean z9) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            t<List<NavBackStackEntry>> tVar = this._backStack;
            ArrayList arrayList = new ArrayList();
            for (Object obj : tVar.getValue()) {
                if (!(!Intrinsics.areEqual((NavBackStackEntry) obj, popUpTo))) {
                    break;
                }
                arrayList.add(obj);
            }
            tVar.setValue(arrayList);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void popWithTransition(@g NavBackStackEntry popUpTo, boolean z9) {
        Set<NavBackStackEntry> plus;
        NavBackStackEntry navBackStackEntry;
        Set<NavBackStackEntry> plus2;
        boolean z10;
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        t<Set<NavBackStackEntry>> tVar = this._transitionsInProgress;
        plus = SetsKt___SetsKt.plus(tVar.getValue(), popUpTo);
        tVar.setValue(plus);
        List<NavBackStackEntry> value = this.backStack.getValue();
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = listIterator.previous();
            NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
            if (Intrinsics.areEqual(navBackStackEntry2, popUpTo) || this.backStack.getValue().lastIndexOf(navBackStackEntry2) >= this.backStack.getValue().lastIndexOf(popUpTo)) {
                z10 = false;
                continue;
            } else {
                z10 = true;
                continue;
            }
            if (z10) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = navBackStackEntry;
        if (navBackStackEntry3 != null) {
            t<Set<NavBackStackEntry>> tVar2 = this._transitionsInProgress;
            plus2 = SetsKt___SetsKt.plus(tVar2.getValue(), navBackStackEntry3);
            tVar2.setValue(plus2);
        }
        pop(popUpTo, z9);
    }

    public void push(@g NavBackStackEntry backStackEntry) {
        List<NavBackStackEntry> plus;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            t<List<NavBackStackEntry>> tVar = this._backStack;
            plus = CollectionsKt___CollectionsKt.plus((Collection<? extends NavBackStackEntry>) ((Collection<? extends Object>) tVar.getValue()), backStackEntry);
            tVar.setValue(plus);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void pushWithTransition(@g NavBackStackEntry backStackEntry) {
        Object lastOrNull;
        Set<NavBackStackEntry> plus;
        Set<NavBackStackEntry> plus2;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.backStack.getValue());
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) lastOrNull;
        if (navBackStackEntry != null) {
            t<Set<NavBackStackEntry>> tVar = this._transitionsInProgress;
            plus2 = SetsKt___SetsKt.plus(tVar.getValue(), navBackStackEntry);
            tVar.setValue(plus2);
        }
        t<Set<NavBackStackEntry>> tVar2 = this._transitionsInProgress;
        plus = SetsKt___SetsKt.plus(tVar2.getValue(), backStackEntry);
        tVar2.setValue(plus);
        push(backStackEntry);
    }

    public final void setNavigating(boolean z9) {
        this.isNavigating = z9;
    }
}

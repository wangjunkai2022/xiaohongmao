package androidx.navigation.dynamicfeatures;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphNavigator;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DynamicGraphNavigator.kt */
@Navigator.Name(NotificationCompat.CATEGORY_NAVIGATION)
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001(B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\u0014\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0010\u0010\u0013\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J$\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J*\u0010\u0018\u001a\u00020\u00142\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0 2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001f\u0010!\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0000¢\u0006\u0002\b$J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020#H\u0016J\n\u0010'\u001a\u0004\u0018\u00010#H\u0016R.\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;", "Landroidx/navigation/NavGraphNavigator;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "installManager", "Landroidx/navigation/dynamicfeatures/DynamicInstallManager;", "(Landroidx/navigation/NavigatorProvider;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;)V", "<set-?>", "Lkotlin/Function0;", "Landroidx/navigation/NavDestination;", "defaultProgressDestinationSupplier", "getDefaultProgressDestinationSupplier$navigation_dynamic_features_runtime_release", "()Lkotlin/jvm/functions/Function0;", "destinationsWithoutDefaultProgressDestination", "", "Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;", "getDestinationsWithoutDefaultProgressDestination$navigation_dynamic_features_runtime_release", "()Ljava/util/List;", "createDestination", "installDefaultProgressDestination", "", "progressDestinationSupplier", "", "dynamicNavGraph", "navigate", "entry", "Landroidx/navigation/NavBackStackEntry;", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "entries", "", "navigateToProgressDestination", "progressArgs", "Landroid/os/Bundle;", "navigateToProgressDestination$navigation_dynamic_features_runtime_release", "onRestoreState", "savedState", "onSaveState", "DynamicNavGraph", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DynamicGraphNavigator extends NavGraphNavigator {
    @h
    private Function0<? extends NavDestination> defaultProgressDestinationSupplier;
    @g
    private final List<DynamicNavGraph> destinationsWithoutDefaultProgressDestination;
    @g
    private final DynamicInstallManager installManager;
    @g
    private final NavigatorProvider navigatorProvider;

    /* compiled from: DynamicGraphNavigator.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u0012H\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;", "Landroidx/navigation/NavGraph;", "navGraphNavigator", "Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "(Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;Landroidx/navigation/NavigatorProvider;)V", "moduleName", "", "getModuleName", "()Ljava/lang/String;", "setModuleName", "(Ljava/lang/String;)V", "getNavGraphNavigator$navigation_dynamic_features_runtime_release", "()Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;", "getNavigatorProvider$navigation_dynamic_features_runtime_release", "()Landroidx/navigation/NavigatorProvider;", "progressDestination", "", "getProgressDestination", "()I", "setProgressDestination", "(I)V", "equals", "", "other", "", "hashCode", "onInflate", "", "context", "Landroid/content/Context;", Session.b.f81849j, "Landroid/util/AttributeSet;", "Companion", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DynamicNavGraph extends NavGraph {
        @g
        public static final Companion Companion = new Companion(null);
        @h
        private String moduleName;
        @g
        private final DynamicGraphNavigator navGraphNavigator;
        @g
        private final NavigatorProvider navigatorProvider;
        private int progressDestination;

        /* compiled from: DynamicGraphNavigator.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;", "", "()V", "getOrThrow", "Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;", "destination", "Landroidx/navigation/NavDestination;", "getOrThrow$navigation_dynamic_features_runtime_release", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @g
            public final DynamicNavGraph getOrThrow$navigation_dynamic_features_runtime_release(@g NavDestination destination) {
                Intrinsics.checkNotNullParameter(destination, "destination");
                NavGraph parent = destination.getParent();
                DynamicNavGraph dynamicNavGraph = parent instanceof DynamicNavGraph ? (DynamicNavGraph) parent : null;
                if (dynamicNavGraph != null) {
                    return dynamicNavGraph;
                }
                throw new IllegalStateException("Dynamic destinations must be part of a DynamicNavGraph.\nYou can use DynamicNavHostFragment, which will take care of setting up the NavController for Dynamic destinations.\nIf you're not using Fragments, you must set up the NavigatorProvider manually.");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DynamicNavGraph(@g DynamicGraphNavigator navGraphNavigator, @g NavigatorProvider navigatorProvider) {
            super(navGraphNavigator);
            Intrinsics.checkNotNullParameter(navGraphNavigator, "navGraphNavigator");
            Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
            this.navGraphNavigator = navGraphNavigator;
            this.navigatorProvider = navigatorProvider;
        }

        @Override // androidx.navigation.NavGraph, androidx.navigation.NavDestination
        public boolean equals(@h Object obj) {
            if (obj != null && (obj instanceof DynamicNavGraph) && super.equals(obj)) {
                DynamicNavGraph dynamicNavGraph = (DynamicNavGraph) obj;
                return Intrinsics.areEqual(this.moduleName, dynamicNavGraph.moduleName) && this.progressDestination == dynamicNavGraph.progressDestination;
            }
            return false;
        }

        @h
        public final String getModuleName() {
            return this.moduleName;
        }

        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final DynamicGraphNavigator getNavGraphNavigator$navigation_dynamic_features_runtime_release() {
            return this.navGraphNavigator;
        }

        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final NavigatorProvider getNavigatorProvider$navigation_dynamic_features_runtime_release() {
            return this.navigatorProvider;
        }

        public final int getProgressDestination() {
            return this.progressDestination;
        }

        @Override // androidx.navigation.NavGraph, androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            String str = this.moduleName;
            return ((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.progressDestination;
        }

        @Override // androidx.navigation.NavGraph, androidx.navigation.NavDestination
        public void onInflate(@g Context context, @g AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            int[] DynamicGraphNavigator = R.styleable.DynamicGraphNavigator;
            Intrinsics.checkNotNullExpressionValue(DynamicGraphNavigator, "DynamicGraphNavigator");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, DynamicGraphNavigator, 0, 0);
            this.moduleName = obtainStyledAttributes.getString(R.styleable.DynamicGraphNavigator_moduleName);
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.DynamicGraphNavigator_progressDestination, 0);
            this.progressDestination = resourceId;
            if (resourceId == 0) {
                this.navGraphNavigator.getDestinationsWithoutDefaultProgressDestination$navigation_dynamic_features_runtime_release().add(this);
            }
            obtainStyledAttributes.recycle();
        }

        public final void setModuleName(@h String str) {
            this.moduleName = str;
        }

        public final void setProgressDestination(int i4) {
            this.progressDestination = i4;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicGraphNavigator(@g NavigatorProvider navigatorProvider, @g DynamicInstallManager installManager) {
        super(navigatorProvider);
        Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        Intrinsics.checkNotNullParameter(installManager, "installManager");
        this.navigatorProvider = navigatorProvider;
        this.installManager = installManager;
        this.destinationsWithoutDefaultProgressDestination = new ArrayList();
    }

    @h
    public final Function0<NavDestination> getDefaultProgressDestinationSupplier$navigation_dynamic_features_runtime_release() {
        return this.defaultProgressDestinationSupplier;
    }

    @g
    public final List<DynamicNavGraph> getDestinationsWithoutDefaultProgressDestination$navigation_dynamic_features_runtime_release() {
        return this.destinationsWithoutDefaultProgressDestination;
    }

    public final void installDefaultProgressDestination(@g Function0<? extends NavDestination> progressDestinationSupplier) {
        Intrinsics.checkNotNullParameter(progressDestinationSupplier, "progressDestinationSupplier");
        this.defaultProgressDestinationSupplier = progressDestinationSupplier;
    }

    @Override // androidx.navigation.NavGraphNavigator, androidx.navigation.Navigator
    public void navigate(@g List<NavBackStackEntry> entries, @h NavOptions navOptions, @h Navigator.Extras extras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        for (NavBackStackEntry navBackStackEntry : entries) {
            navigate(navBackStackEntry, navOptions, extras);
        }
    }

    public final void navigateToProgressDestination$navigation_dynamic_features_runtime_release(@g DynamicNavGraph dynamicNavGraph, @h Bundle bundle) {
        List<NavBackStackEntry> listOf;
        Intrinsics.checkNotNullParameter(dynamicNavGraph, "dynamicNavGraph");
        int progressDestination = dynamicNavGraph.getProgressDestination();
        if (progressDestination == 0) {
            progressDestination = installDefaultProgressDestination(dynamicNavGraph);
        }
        NavDestination findNode = dynamicNavGraph.findNode(progressDestination);
        if (findNode != null) {
            Navigator navigator = this.navigatorProvider.getNavigator(findNode.getNavigatorName());
            listOf = CollectionsKt__CollectionsJVMKt.listOf(getState().createBackStackEntry(findNode, bundle));
            navigator.navigate(listOf, null, null);
            return;
        }
        throw new IllegalStateException("The progress destination id must be set and accessible to the module of this navigator.");
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(@g Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        super.onRestoreState(savedState);
        Iterator<DynamicNavGraph> it = this.destinationsWithoutDefaultProgressDestination.iterator();
        while (it.hasNext()) {
            installDefaultProgressDestination(it.next());
            it.remove();
        }
    }

    @Override // androidx.navigation.Navigator
    @h
    public Bundle onSaveState() {
        return Bundle.EMPTY;
    }

    private final int installDefaultProgressDestination(DynamicNavGraph dynamicNavGraph) {
        Function0<? extends NavDestination> function0 = this.defaultProgressDestinationSupplier;
        if (function0 != null) {
            NavDestination invoke = function0.invoke();
            dynamicNavGraph.addDestination(invoke);
            dynamicNavGraph.setProgressDestination(invoke.getId());
            return invoke.getId();
        }
        throw new IllegalStateException("You must set a default progress destination using DynamicNavGraphNavigator.installDefaultProgressDestination or pass in an DynamicInstallMonitor in the DynamicExtras.\nAlternatively, when using NavHostFragment make sure to swap it with DynamicNavHostFragment. This will take care of setting the default progress destination for you.".toString());
    }

    private final void navigate(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        List<NavBackStackEntry> listOf;
        String moduleName;
        NavDestination destination = navBackStackEntry.getDestination();
        DynamicExtras dynamicExtras = extras instanceof DynamicExtras ? (DynamicExtras) extras : null;
        if ((destination instanceof DynamicNavGraph) && (moduleName = ((DynamicNavGraph) destination).getModuleName()) != null && this.installManager.needsInstall(moduleName)) {
            this.installManager.performInstall(navBackStackEntry, dynamicExtras, moduleName);
            return;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(navBackStackEntry);
        if (dynamicExtras != null) {
            extras = dynamicExtras.getDestinationExtras();
        }
        super.navigate(listOf, navOptions, extras);
    }

    @Override // androidx.navigation.NavGraphNavigator, androidx.navigation.Navigator
    @g
    /* renamed from: createDestination */
    public NavGraph createDestination2() {
        return new DynamicNavGraph(this, this.navigatorProvider);
    }
}

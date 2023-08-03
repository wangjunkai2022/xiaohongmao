package androidx.navigation.dynamicfeatures;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.core.app.NotificationCompat;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavInflater;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: DynamicIncludeGraphNavigator.kt */
@Navigator.Name("include-dynamic")
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0012\u001a\u00020\u0002H\u0016J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J*\u0010\u0013\u001a\u00020\u00142\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\u001c2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\n\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006%"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;", "context", "Landroid/content/Context;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "navInflater", "Landroidx/navigation/NavInflater;", "installManager", "Landroidx/navigation/dynamicfeatures/DynamicInstallManager;", "(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;Landroidx/navigation/NavInflater;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;)V", "createdDestinations", "", "packageName", "", "getPackageName$navigation_dynamic_features_runtime_release", "()Ljava/lang/String;", "createDestination", "navigate", "", "entry", "Landroidx/navigation/NavBackStackEntry;", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "entries", "", "onRestoreState", "savedState", "Landroid/os/Bundle;", "onSaveState", "replaceWithIncludedNav", "Landroidx/navigation/NavGraph;", "destination", "DynamicIncludeNavGraph", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DynamicIncludeGraphNavigator extends Navigator<DynamicIncludeNavGraph> {
    @g
    private final Context context;
    @g
    private final List<DynamicIncludeNavGraph> createdDestinations;
    @g
    private final DynamicInstallManager installManager;
    @g
    private final NavInflater navInflater;
    @g
    private final NavigatorProvider navigatorProvider;
    @g
    private final String packageName;

    /* compiled from: DynamicIncludeGraphNavigator.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\b\u0018J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\n¨\u0006\u001f"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;", "Landroidx/navigation/NavDestination;", "navGraphNavigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "graphPackage", "", "getGraphPackage", "()Ljava/lang/String;", "setGraphPackage", "(Ljava/lang/String;)V", "graphResourceName", "getGraphResourceName", "setGraphResourceName", "moduleName", "getModuleName", "setModuleName", "equals", "", "other", "", "getPackageOrDefault", "context", "Landroid/content/Context;", "getPackageOrDefault$navigation_dynamic_features_runtime_release", "hashCode", "", "onInflate", "", Session.b.f81849j, "Landroid/util/AttributeSet;", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DynamicIncludeNavGraph extends NavDestination {
        @h
        private String graphPackage;
        @h
        private String graphResourceName;
        @h
        private String moduleName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DynamicIncludeNavGraph(@g Navigator<? extends NavDestination> navGraphNavigator) {
            super(navGraphNavigator);
            Intrinsics.checkNotNullParameter(navGraphNavigator, "navGraphNavigator");
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(@h Object obj) {
            if (obj != null && (obj instanceof DynamicIncludeNavGraph) && super.equals(obj)) {
                DynamicIncludeNavGraph dynamicIncludeNavGraph = (DynamicIncludeNavGraph) obj;
                return Intrinsics.areEqual(this.graphResourceName, dynamicIncludeNavGraph.graphResourceName) && Intrinsics.areEqual(this.graphPackage, dynamicIncludeNavGraph.graphPackage) && Intrinsics.areEqual(this.moduleName, dynamicIncludeNavGraph.moduleName);
            }
            return false;
        }

        @h
        public final String getGraphPackage() {
            return this.graphPackage;
        }

        @h
        public final String getGraphResourceName() {
            return this.graphResourceName;
        }

        @h
        public final String getModuleName() {
            return this.moduleName;
        }

        @g
        public final String getPackageOrDefault$navigation_dynamic_features_runtime_release(@g Context context, @h String str) {
            String replace$default;
            Intrinsics.checkNotNullParameter(context, "context");
            if (str != null) {
                String packageName = context.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
                replace$default = StringsKt__StringsJVMKt.replace$default(str, NavInflater.APPLICATION_ID_PLACEHOLDER, packageName, false, 4, (Object) null);
                if (replace$default != null) {
                    return replace$default;
                }
            }
            return context.getPackageName() + '.' + this.moduleName;
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            String str = this.graphResourceName;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.graphPackage;
            int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.moduleName;
            return hashCode3 + (str3 != null ? str3.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        public void onInflate(@g Context context, @g AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            int[] DynamicIncludeGraphNavigator = R.styleable.DynamicIncludeGraphNavigator;
            Intrinsics.checkNotNullExpressionValue(DynamicIncludeGraphNavigator, "DynamicIncludeGraphNavigator");
            boolean z9 = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, DynamicIncludeGraphNavigator, 0, 0);
            String string = obtainStyledAttributes.getString(R.styleable.DynamicIncludeGraphNavigator_moduleName);
            this.moduleName = string;
            if (!(string == null || string.length() == 0)) {
                String string2 = obtainStyledAttributes.getString(R.styleable.DynamicIncludeGraphNavigator_graphPackage);
                if (string2 != null) {
                    if (!(string2.length() > 0)) {
                        throw new IllegalArgumentException(("`graphPackage` cannot be empty for <include-dynamic>. You can omit the `graphPackage` attribute entirely to use the default of " + context.getPackageName() + '.' + this.moduleName + '.').toString());
                    }
                }
                this.graphPackage = getPackageOrDefault$navigation_dynamic_features_runtime_release(context, string2);
                String string3 = obtainStyledAttributes.getString(R.styleable.DynamicIncludeGraphNavigator_graphResName);
                this.graphResourceName = string3;
                if (!((string3 == null || string3.length() == 0) ? true : true)) {
                    obtainStyledAttributes.recycle();
                    return;
                }
                throw new IllegalArgumentException("`graphResName` must be set for <include-dynamic>".toString());
            }
            throw new IllegalArgumentException("`moduleName` must be set for <include-dynamic>".toString());
        }

        public final void setGraphPackage(@h String str) {
            this.graphPackage = str;
        }

        public final void setGraphResourceName(@h String str) {
            this.graphResourceName = str;
        }

        public final void setModuleName(@h String str) {
            this.moduleName = str;
        }
    }

    public DynamicIncludeGraphNavigator(@g Context context, @g NavigatorProvider navigatorProvider, @g NavInflater navInflater, @g DynamicInstallManager installManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        Intrinsics.checkNotNullParameter(navInflater, "navInflater");
        Intrinsics.checkNotNullParameter(installManager, "installManager");
        this.context = context;
        this.navigatorProvider = navigatorProvider;
        this.navInflater = navInflater;
        this.installManager = installManager;
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        this.packageName = packageName;
        this.createdDestinations = new ArrayList();
    }

    private final NavGraph replaceWithIncludedNav(DynamicIncludeNavGraph dynamicIncludeNavGraph) {
        int identifier = this.context.getResources().getIdentifier(dynamicIncludeNavGraph.getGraphResourceName(), NotificationCompat.CATEGORY_NAVIGATION, dynamicIncludeNavGraph.getGraphPackage());
        if (identifier != 0) {
            NavGraph inflate = this.navInflater.inflate(identifier);
            if (inflate.getId() == 0 || inflate.getId() == dynamicIncludeNavGraph.getId()) {
                inflate.setId(dynamicIncludeNavGraph.getId());
                NavGraph parent = dynamicIncludeNavGraph.getParent();
                if (parent != null) {
                    parent.addDestination(inflate);
                    this.createdDestinations.remove(dynamicIncludeNavGraph);
                    return inflate;
                }
                throw new IllegalStateException("The include-dynamic destination with id " + dynamicIncludeNavGraph.getDisplayName() + " does not have a parent. Make sure it is attached to a NavGraph.");
            }
            throw new IllegalStateException(("The included <navigation>'s id " + inflate.getDisplayName() + " is different from the destination id " + dynamicIncludeNavGraph.getDisplayName() + ". Either remove the <navigation> id or make them match.").toString());
        }
        throw new Resources.NotFoundException(dynamicIncludeNavGraph.getGraphPackage() + ":navigation/" + dynamicIncludeNavGraph.getGraphResourceName());
    }

    @g
    public final String getPackageName$navigation_dynamic_features_runtime_release() {
        return this.packageName;
    }

    @Override // androidx.navigation.Navigator
    public void navigate(@g List<NavBackStackEntry> entries, @h NavOptions navOptions, @h Navigator.Extras extras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        for (NavBackStackEntry navBackStackEntry : entries) {
            navigate(navBackStackEntry, navOptions, extras);
        }
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(@g Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        super.onRestoreState(savedState);
        while (!this.createdDestinations.isEmpty()) {
            Iterator it = new ArrayList(this.createdDestinations).iterator();
            Intrinsics.checkNotNullExpressionValue(it, "ArrayList(createdDestinations).iterator()");
            this.createdDestinations.clear();
            while (it.hasNext()) {
                DynamicIncludeNavGraph dynamicNavGraph = (DynamicIncludeNavGraph) it.next();
                String moduleName = dynamicNavGraph.getModuleName();
                if (moduleName == null || !this.installManager.needsInstall(moduleName)) {
                    Intrinsics.checkNotNullExpressionValue(dynamicNavGraph, "dynamicNavGraph");
                    replaceWithIncludedNav(dynamicNavGraph);
                }
            }
        }
    }

    @Override // androidx.navigation.Navigator
    @h
    public Bundle onSaveState() {
        return Bundle.EMPTY;
    }

    @Override // androidx.navigation.Navigator
    @g
    public DynamicIncludeNavGraph createDestination() {
        DynamicIncludeNavGraph dynamicIncludeNavGraph = new DynamicIncludeNavGraph(this);
        this.createdDestinations.add(dynamicIncludeNavGraph);
        return dynamicIncludeNavGraph;
    }

    private final void navigate(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        List<NavBackStackEntry> listOf;
        DynamicIncludeNavGraph dynamicIncludeNavGraph = (DynamicIncludeNavGraph) navBackStackEntry.getDestination();
        DynamicExtras dynamicExtras = extras instanceof DynamicExtras ? (DynamicExtras) extras : null;
        String moduleName = dynamicIncludeNavGraph.getModuleName();
        if (moduleName != null && this.installManager.needsInstall(moduleName)) {
            this.installManager.performInstall(navBackStackEntry, dynamicExtras, moduleName);
            return;
        }
        NavGraph replaceWithIncludedNav = replaceWithIncludedNav(dynamicIncludeNavGraph);
        Navigator navigator = this.navigatorProvider.getNavigator(replaceWithIncludedNav.getNavigatorName());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(getState().createBackStackEntry(replaceWithIncludedNav, navBackStackEntry.getArguments()));
        navigator.navigate(listOf, navOptions, extras);
    }
}

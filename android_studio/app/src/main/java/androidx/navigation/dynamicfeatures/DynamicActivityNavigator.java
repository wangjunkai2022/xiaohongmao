package androidx.navigation.dynamicfeatures;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.navigation.ActivityNavigator;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import io.sentry.Session;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DynamicActivityNavigator.kt */
@Navigator.Name("activity")
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0017B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J*\u0010\r\u001a\u00020\u000e2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u00162\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0018"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;", "Landroidx/navigation/ActivityNavigator;", "context", "Landroid/content/Context;", "installManager", "Landroidx/navigation/dynamicfeatures/DynamicInstallManager;", "(Landroid/content/Context;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;)V", "packageName", "", "getPackageName$navigation_dynamic_features_runtime_release", "()Ljava/lang/String;", "createDestination", "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;", "navigate", "", "entry", "Landroidx/navigation/NavBackStackEntry;", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "entries", "", "Destination", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DynamicActivityNavigator extends ActivityNavigator {
    @g
    private final DynamicInstallManager installManager;
    @g
    private final String packageName;

    /* compiled from: DynamicActivityNavigator.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;", "Landroidx/navigation/ActivityNavigator$Destination;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "(Landroidx/navigation/NavigatorProvider;)V", "activityNavigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "moduleName", "", "getModuleName", "()Ljava/lang/String;", "setModuleName", "(Ljava/lang/String;)V", "equals", "", "other", "", "hashCode", "", "onInflate", "", "context", "Landroid/content/Context;", Session.b.f81849j, "Landroid/util/AttributeSet;", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Destination extends ActivityNavigator.Destination {
        @h
        private String moduleName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(@g NavigatorProvider navigatorProvider) {
            super(navigatorProvider);
            Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        }

        @Override // androidx.navigation.ActivityNavigator.Destination, androidx.navigation.NavDestination
        public boolean equals(@h Object obj) {
            return obj != null && (obj instanceof Destination) && super.equals(obj) && Intrinsics.areEqual(this.moduleName, ((Destination) obj).moduleName);
        }

        @h
        public final String getModuleName() {
            return this.moduleName;
        }

        @Override // androidx.navigation.ActivityNavigator.Destination, androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            String str = this.moduleName;
            return hashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.ActivityNavigator.Destination, androidx.navigation.NavDestination
        public void onInflate(@g Context context, @g AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            int[] DynamicActivityNavigator = R.styleable.DynamicActivityNavigator;
            Intrinsics.checkNotNullExpressionValue(DynamicActivityNavigator, "DynamicActivityNavigator");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, DynamicActivityNavigator, 0, 0);
            this.moduleName = obtainStyledAttributes.getString(R.styleable.DynamicActivityNavigator_moduleName);
            obtainStyledAttributes.recycle();
        }

        public final void setModuleName(@h String str) {
            this.moduleName = str;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(@g Navigator<? extends ActivityNavigator.Destination> activityNavigator) {
            super(activityNavigator);
            Intrinsics.checkNotNullParameter(activityNavigator, "activityNavigator");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicActivityNavigator(@g Context context, @g DynamicInstallManager installManager) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(installManager, "installManager");
        this.installManager = installManager;
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        this.packageName = packageName;
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

    private final void navigate(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        List<NavBackStackEntry> listOf;
        String moduleName;
        NavDestination destination = navBackStackEntry.getDestination();
        DynamicExtras dynamicExtras = extras instanceof DynamicExtras ? (DynamicExtras) extras : null;
        if ((destination instanceof Destination) && (moduleName = ((Destination) destination).getModuleName()) != null && this.installManager.needsInstall(moduleName)) {
            this.installManager.performInstall(navBackStackEntry, dynamicExtras, moduleName);
            return;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(navBackStackEntry);
        if (dynamicExtras != null) {
            extras = dynamicExtras.getDestinationExtras();
        }
        super.navigate(listOf, navOptions, extras);
    }

    @Override // androidx.navigation.ActivityNavigator, androidx.navigation.Navigator
    @g
    public ActivityNavigator.Destination createDestination() {
        return new Destination(this);
    }
}

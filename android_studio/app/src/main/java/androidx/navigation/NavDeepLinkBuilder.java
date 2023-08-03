package androidx.navigation;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.IdRes;
import androidx.annotation.NavigationRes;
import androidx.core.app.TaskStackBuilder;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.Navigator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NavDeepLinkBuilder.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0002,-B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\u0011\u001a\u00020\u00002\b\b\u0001\u0010\u0012\u001a\u00020\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\fH\u0007J\u001c\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\fH\u0007J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u00020\u001cH\u0002J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\b\u0001\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\fJ\u000e\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"J\u0018\u0010 \u001a\u00020\u00002\u0010\u0010#\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010%0$J\u001e\u0010&\u001a\u00020\u00002\b\b\u0001\u0010\u0012\u001a\u00020\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\fH\u0007J\u001c\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u00162\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\fH\u0007J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u000eJ\u0010\u0010(\u001a\u00020\u00002\b\b\u0001\u0010*\u001a\u00020\u0013J\b\u0010+\u001a\u00020\u001cH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Landroidx/navigation/NavDeepLinkBuilder;", "", "navController", "Landroidx/navigation/NavController;", "(Landroidx/navigation/NavController;)V", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "destinations", "", "Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;", "globalArgs", "Landroid/os/Bundle;", "graph", "Landroidx/navigation/NavGraph;", "intent", "Landroid/content/Intent;", "addDestination", "destId", "", "args", "route", "", "createPendingIntent", "Landroid/app/PendingIntent;", "createTaskStackBuilder", "Landroidx/core/app/TaskStackBuilder;", "fillInIntent", "", "findDestination", "Landroidx/navigation/NavDestination;", "setArguments", "setComponentName", "componentName", "Landroid/content/ComponentName;", "activityClass", "Ljava/lang/Class;", "Landroid/app/Activity;", "setDestination", "destRoute", "setGraph", "navGraph", "navGraphId", "verifyAllDestinations", "DeepLinkDestination", "PermissiveNavigatorProvider", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavDeepLinkBuilder {
    @g
    private final Context context;
    @g
    private final List<DeepLinkDestination> destinations;
    @h
    private Bundle globalArgs;
    @h
    private NavGraph graph;
    @g
    private final Intent intent;

    /* compiled from: NavDeepLinkBuilder.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;", "", "destinationId", "", "arguments", "Landroid/os/Bundle;", "(ILandroid/os/Bundle;)V", "getArguments", "()Landroid/os/Bundle;", "getDestinationId", "()I", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DeepLinkDestination {
        @h
        private final Bundle arguments;
        private final int destinationId;

        public DeepLinkDestination(int i4, @h Bundle bundle) {
            this.destinationId = i4;
            this.arguments = bundle;
        }

        @h
        public final Bundle getArguments() {
            return this.arguments;
        }

        public final int getDestinationId() {
            return this.destinationId;
        }
    }

    /* compiled from: NavDeepLinkBuilder.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J'\u0010\u0006\u001a\u0002H\u0007\"\u0010\b\u0000\u0010\u0007*\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\nR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;", "Landroidx/navigation/NavigatorProvider;", "()V", "mDestNavigator", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "getNavigator", ExifInterface.GPS_DIRECTION_TRUE, "name", "", "(Ljava/lang/String;)Landroidx/navigation/Navigator;", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class PermissiveNavigatorProvider extends NavigatorProvider {
        @g
        private final Navigator<NavDestination> mDestNavigator = new Navigator<NavDestination>() { // from class: androidx.navigation.NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1
            @Override // androidx.navigation.Navigator
            @g
            public NavDestination createDestination() {
                return new NavDestination("permissive");
            }

            @Override // androidx.navigation.Navigator
            @h
            public NavDestination navigate(@g NavDestination destination, @h Bundle bundle, @h NavOptions navOptions, @h Navigator.Extras extras) {
                Intrinsics.checkNotNullParameter(destination, "destination");
                throw new IllegalStateException("navigate is not supported");
            }

            @Override // androidx.navigation.Navigator
            public boolean popBackStack() {
                throw new IllegalStateException("popBackStack is not supported");
            }
        };

        public PermissiveNavigatorProvider() {
            addNavigator(new NavGraphNavigator(this));
        }

        @Override // androidx.navigation.NavigatorProvider
        @g
        public <T extends Navigator<? extends NavDestination>> T getNavigator(@g String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            try {
                return (T) super.getNavigator(name);
            } catch (IllegalStateException unused) {
                return this.mDestNavigator;
            }
        }
    }

    public NavDeepLinkBuilder(@g Context context) {
        Intent launchIntentForPackage;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        if (context instanceof Activity) {
            launchIntentForPackage = new Intent(context, context.getClass());
        } else {
            launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                launchIntentForPackage = new Intent();
            }
        }
        launchIntentForPackage.addFlags(268468224);
        this.intent = launchIntentForPackage;
        this.destinations = new ArrayList();
    }

    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i4, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(i4, bundle);
    }

    private final void fillInIntent() {
        int[] intArray;
        ArrayList arrayList = new ArrayList();
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        NavDestination navDestination = null;
        for (DeepLinkDestination deepLinkDestination : this.destinations) {
            int destinationId = deepLinkDestination.getDestinationId();
            Bundle arguments = deepLinkDestination.getArguments();
            NavDestination findDestination = findDestination(destinationId);
            if (findDestination != null) {
                for (int i4 : findDestination.buildDeepLinkIds(navDestination)) {
                    arrayList.add(Integer.valueOf(i4));
                    arrayList2.add(arguments);
                }
                navDestination = findDestination;
            } else {
                throw new IllegalArgumentException("Navigation destination " + NavDestination.Companion.getDisplayName(this.context, destinationId) + " cannot be found in the navigation graph " + this.graph);
            }
        }
        intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
        this.intent.putExtra(NavController.KEY_DEEP_LINK_IDS, intArray);
        this.intent.putParcelableArrayListExtra(NavController.KEY_DEEP_LINK_ARGS, arrayList2);
    }

    private final NavDestination findDestination(@IdRes int i4) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavGraph navGraph = this.graph;
        Intrinsics.checkNotNull(navGraph);
        arrayDeque.add(navGraph);
        while (!arrayDeque.isEmpty()) {
            NavDestination navDestination = (NavDestination) arrayDeque.removeFirst();
            if (navDestination.getId() == i4) {
                return navDestination;
            }
            if (navDestination instanceof NavGraph) {
                Iterator<NavDestination> it = ((NavGraph) navDestination).iterator();
                while (it.hasNext()) {
                    arrayDeque.add(it.next());
                }
            }
        }
        return null;
    }

    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i4, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.setDestination(i4, bundle);
    }

    private final void verifyAllDestinations() {
        for (DeepLinkDestination deepLinkDestination : this.destinations) {
            int destinationId = deepLinkDestination.getDestinationId();
            if (findDestination(destinationId) == null) {
                String displayName = NavDestination.Companion.getDisplayName(this.context, destinationId);
                throw new IllegalArgumentException("Navigation destination " + displayName + " cannot be found in the navigation graph " + this.graph);
            }
        }
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder addDestination(@IdRes int i4) {
        return addDestination$default(this, i4, (Bundle) null, 2, (Object) null);
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder addDestination(@IdRes int i4, @h Bundle bundle) {
        this.destinations.add(new DeepLinkDestination(i4, bundle));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder addDestination(@g String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        return addDestination$default(this, route, (Bundle) null, 2, (Object) null);
    }

    @g
    public final PendingIntent createPendingIntent() {
        int i4;
        Bundle bundle = this.globalArgs;
        if (bundle != null) {
            i4 = 0;
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                i4 = (i4 * 31) + (obj != null ? obj.hashCode() : 0);
            }
        } else {
            i4 = 0;
        }
        for (DeepLinkDestination deepLinkDestination : this.destinations) {
            i4 = (i4 * 31) + deepLinkDestination.getDestinationId();
            Bundle arguments = deepLinkDestination.getArguments();
            if (arguments != null) {
                for (String str2 : arguments.keySet()) {
                    Object obj2 = arguments.get(str2);
                    i4 = (i4 * 31) + (obj2 != null ? obj2.hashCode() : 0);
                }
            }
        }
        PendingIntent pendingIntent = createTaskStackBuilder().getPendingIntent(i4, 201326592);
        Intrinsics.checkNotNull(pendingIntent);
        return pendingIntent;
    }

    @g
    public final TaskStackBuilder createTaskStackBuilder() {
        if (this.graph != null) {
            if (!this.destinations.isEmpty()) {
                fillInIntent();
                TaskStackBuilder addNextIntentWithParentStack = TaskStackBuilder.create(this.context).addNextIntentWithParentStack(new Intent(this.intent));
                Intrinsics.checkNotNullExpressionValue(addNextIntentWithParentStack, "create(context)\n        …rentStack(Intent(intent))");
                int intentCount = addNextIntentWithParentStack.getIntentCount();
                for (int i4 = 0; i4 < intentCount; i4++) {
                    Intent editIntentAt = addNextIntentWithParentStack.editIntentAt(i4);
                    if (editIntentAt != null) {
                        editIntentAt.putExtra(NavController.KEY_DEEP_LINK_INTENT, this.intent);
                    }
                }
                return addNextIntentWithParentStack;
            }
            throw new IllegalStateException("You must call setDestination() or addDestination() before constructing the deep link".toString());
        }
        throw new IllegalStateException("You must call setGraph() before constructing the deep link".toString());
    }

    @g
    public final NavDeepLinkBuilder setArguments(@h Bundle bundle) {
        this.globalArgs = bundle;
        this.intent.putExtra(NavController.KEY_DEEP_LINK_EXTRAS, bundle);
        return this;
    }

    @g
    public final NavDeepLinkBuilder setComponentName(@g Class<? extends Activity> activityClass) {
        Intrinsics.checkNotNullParameter(activityClass, "activityClass");
        return setComponentName(new ComponentName(this.context, activityClass));
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder setDestination(@IdRes int i4) {
        return setDestination$default(this, i4, (Bundle) null, 2, (Object) null);
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder setDestination(@IdRes int i4, @h Bundle bundle) {
        this.destinations.clear();
        this.destinations.add(new DeepLinkDestination(i4, bundle));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder setDestination(@g String destRoute) {
        Intrinsics.checkNotNullParameter(destRoute, "destRoute");
        return setDestination$default(this, destRoute, (Bundle) null, 2, (Object) null);
    }

    @g
    public final NavDeepLinkBuilder setGraph(@NavigationRes int i4) {
        return setGraph(new NavInflater(this.context, new PermissiveNavigatorProvider()).inflate(i4));
    }

    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(str, bundle);
    }

    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.setDestination(str, bundle);
    }

    @g
    public final NavDeepLinkBuilder setComponentName(@g ComponentName componentName) {
        Intrinsics.checkNotNullParameter(componentName, "componentName");
        this.intent.setComponent(componentName);
        return this;
    }

    @g
    public final NavDeepLinkBuilder setGraph(@g NavGraph navGraph) {
        Intrinsics.checkNotNullParameter(navGraph, "navGraph");
        this.graph = navGraph;
        verifyAllDestinations();
        return this;
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder addDestination(@g String route, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(route, "route");
        this.destinations.add(new DeepLinkDestination(NavDestination.Companion.createRoute(route).hashCode(), bundle));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    @JvmOverloads
    @g
    public final NavDeepLinkBuilder setDestination(@g String destRoute, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(destRoute, "destRoute");
        this.destinations.clear();
        this.destinations.add(new DeepLinkDestination(NavDestination.Companion.createRoute(destRoute).hashCode(), bundle));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDeepLinkBuilder(@g NavController navController) {
        this(navController.getContext());
        Intrinsics.checkNotNullParameter(navController, "navController");
        this.graph = navController.getGraph();
    }
}

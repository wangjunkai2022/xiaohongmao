package androidx.navigation;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.AbstractSavedStateViewModelFactory;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NavBackStackEntry.kt */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 L2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0003LMNB\u001b\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0000\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bBQ\b\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0014J\u0013\u00108\u001a\u0002052\b\u00109\u001a\u0004\u0018\u00010:H\u0096\u0002J\b\u0010;\u001a\u00020<H\u0016J\b\u0010=\u001a\u00020>H\u0016J\b\u0010?\u001a\u00020@H\u0016J\b\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0007J\b\u0010G\u001a\u00020HH\u0016J\u0010\u0010I\u001a\u00020D2\u0006\u0010J\u001a\u00020\u0007H\u0007J\b\u0010K\u001a\u00020DH\u0007R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u000b\u001a\u00020\f@\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010&\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e8G@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010+\u001a\u00020,8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u001c\u001a\u0004\b-\u0010.R\u0014\u00100\u001a\u0002018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u000e\u00104\u001a\u000205X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Landroidx/navigation/NavBackStackEntry;", "Landroidx/lifecycle/LifecycleOwner;", "Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/lifecycle/HasDefaultViewModelProviderFactory;", "Landroidx/savedstate/SavedStateRegistryOwner;", "entry", "arguments", "Landroid/os/Bundle;", "(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V", "context", "Landroid/content/Context;", "destination", "Landroidx/navigation/NavDestination;", "hostLifecycleState", "Landroidx/lifecycle/Lifecycle$State;", "viewModelStoreProvider", "Landroidx/navigation/NavViewModelStoreProvider;", "id", "", "savedState", "(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V", "getArguments", "()Landroid/os/Bundle;", "defaultFactory", "Landroidx/lifecycle/SavedStateViewModelFactory;", "getDefaultFactory", "()Landroidx/lifecycle/SavedStateViewModelFactory;", "defaultFactory$delegate", "Lkotlin/Lazy;", "getDestination", "()Landroidx/navigation/NavDestination;", "setDestination", "(Landroidx/navigation/NavDestination;)V", "getId", "()Ljava/lang/String;", "lifecycle", "Landroidx/lifecycle/LifecycleRegistry;", "maxState", "maxLifecycle", "getMaxLifecycle", "()Landroidx/lifecycle/Lifecycle$State;", "setMaxLifecycle", "(Landroidx/lifecycle/Lifecycle$State;)V", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "getSavedStateHandle", "()Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle$delegate", "savedStateRegistry", "Landroidx/savedstate/SavedStateRegistry;", "getSavedStateRegistry", "()Landroidx/savedstate/SavedStateRegistry;", "savedStateRegistryAttached", "", "savedStateRegistryController", "Landroidx/savedstate/SavedStateRegistryController;", "equals", "other", "", "getDefaultViewModelCreationExtras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "getDefaultViewModelProviderFactory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "getLifecycle", "Landroidx/lifecycle/Lifecycle;", "getViewModelStore", "Landroidx/lifecycle/ViewModelStore;", "handleLifecycleEvent", "", "event", "Landroidx/lifecycle/Lifecycle$Event;", "hashCode", "", "saveState", "outBundle", "updateState", "Companion", "NavResultSavedStateFactory", "SavedStateViewModel", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavBackStackEntry implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    @g
    public static final Companion Companion = new Companion(null);
    @h
    private final Bundle arguments;
    @h
    private final Context context;
    @g
    private final Lazy defaultFactory$delegate;
    @g
    private NavDestination destination;
    @g
    private Lifecycle.State hostLifecycleState;
    @g
    private final String id;
    @g
    private LifecycleRegistry lifecycle;
    @g
    private Lifecycle.State maxLifecycle;
    @h
    private final Bundle savedState;
    @g
    private final Lazy savedStateHandle$delegate;
    private boolean savedStateRegistryAttached;
    @g
    private final SavedStateRegistryController savedStateRegistryController;
    @h
    private final NavViewModelStoreProvider viewModelStoreProvider;

    /* compiled from: NavBackStackEntry.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JR\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0007¨\u0006\u0012"}, d2 = {"Landroidx/navigation/NavBackStackEntry$Companion;", "", "()V", "create", "Landroidx/navigation/NavBackStackEntry;", "context", "Landroid/content/Context;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "hostLifecycleState", "Landroidx/lifecycle/Lifecycle$State;", "viewModelStoreProvider", "Landroidx/navigation/NavViewModelStoreProvider;", "id", "", "savedState", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ NavBackStackEntry create$default(Companion companion, Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, int i4, Object obj) {
            String str2;
            Bundle bundle3 = (i4 & 4) != 0 ? null : bundle;
            Lifecycle.State state2 = (i4 & 8) != 0 ? Lifecycle.State.CREATED : state;
            NavViewModelStoreProvider navViewModelStoreProvider2 = (i4 & 16) != 0 ? null : navViewModelStoreProvider;
            if ((i4 & 32) != 0) {
                String uuid = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
                str2 = uuid;
            } else {
                str2 = str;
            }
            return companion.create(context, navDestination, bundle3, state2, navViewModelStoreProvider2, str2, (i4 & 64) != 0 ? null : bundle2);
        }

        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final NavBackStackEntry create(@h Context context, @g NavDestination destination, @h Bundle bundle, @g Lifecycle.State hostLifecycleState, @h NavViewModelStoreProvider navViewModelStoreProvider, @g String id, @h Bundle bundle2) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            Intrinsics.checkNotNullParameter(hostLifecycleState, "hostLifecycleState");
            Intrinsics.checkNotNullParameter(id, "id");
            return new NavBackStackEntry(context, destination, bundle, hostLifecycleState, navViewModelStoreProvider, id, bundle2, null);
        }
    }

    /* compiled from: NavBackStackEntry.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J5\u0010\u0005\u001a\u0002H\u0006\"\b\b\u0000\u0010\u0006*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00060\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;", "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;", "owner", "Landroidx/savedstate/SavedStateRegistryOwner;", "(Landroidx/savedstate/SavedStateRegistryOwner;)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "key", "", "modelClass", "Ljava/lang/Class;", "handle", "Landroidx/lifecycle/SavedStateHandle;", "(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class NavResultSavedStateFactory extends AbstractSavedStateViewModelFactory {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavResultSavedStateFactory(@g SavedStateRegistryOwner owner) {
            super(owner, null);
            Intrinsics.checkNotNullParameter(owner, "owner");
        }

        @Override // androidx.lifecycle.AbstractSavedStateViewModelFactory
        @g
        protected <T extends ViewModel> T create(@g String key, @g Class<T> modelClass, @g SavedStateHandle handle) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(handle, "handle");
            return new SavedStateViewModel(handle);
        }
    }

    /* compiled from: NavBackStackEntry.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;", "Landroidx/lifecycle/ViewModel;", "handle", "Landroidx/lifecycle/SavedStateHandle;", "(Landroidx/lifecycle/SavedStateHandle;)V", "getHandle", "()Landroidx/lifecycle/SavedStateHandle;", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SavedStateViewModel extends ViewModel {
        @g
        private final SavedStateHandle handle;

        public SavedStateViewModel(@g SavedStateHandle handle) {
            Intrinsics.checkNotNullParameter(handle, "handle");
            this.handle = handle;
        }

        @g
        public final SavedStateHandle getHandle() {
            return this.handle;
        }
    }

    private NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2) {
        Lazy lazy;
        Lazy lazy2;
        this.context = context;
        this.destination = navDestination;
        this.arguments = bundle;
        this.hostLifecycleState = state;
        this.viewModelStoreProvider = navViewModelStoreProvider;
        this.id = str;
        this.savedState = bundle2;
        this.lifecycle = new LifecycleRegistry(this);
        this.savedStateRegistryController = SavedStateRegistryController.Companion.create(this);
        lazy = LazyKt__LazyJVMKt.lazy(new NavBackStackEntry$defaultFactory$2(this));
        this.defaultFactory$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new NavBackStackEntry$savedStateHandle$2(this));
        this.savedStateHandle$delegate = lazy2;
        this.maxLifecycle = Lifecycle.State.INITIALIZED;
    }

    public /* synthetic */ NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, navDestination, bundle, state, navViewModelStoreProvider, str, bundle2);
    }

    private final SavedStateViewModelFactory getDefaultFactory() {
        return (SavedStateViewModelFactory) this.defaultFactory$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(@m8.h java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 0
            if (r7 == 0) goto L83
            boolean r1 = r7 instanceof androidx.navigation.NavBackStackEntry
            if (r1 != 0) goto L9
            goto L83
        L9:
            java.lang.String r1 = r6.id
            androidx.navigation.NavBackStackEntry r7 = (androidx.navigation.NavBackStackEntry) r7
            java.lang.String r2 = r7.id
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            r2 = 1
            if (r1 == 0) goto L83
            androidx.navigation.NavDestination r1 = r6.destination
            androidx.navigation.NavDestination r3 = r7.destination
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L83
            androidx.lifecycle.LifecycleRegistry r1 = r6.lifecycle
            androidx.lifecycle.LifecycleRegistry r3 = r7.lifecycle
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L83
            androidx.savedstate.SavedStateRegistry r1 = r6.getSavedStateRegistry()
            androidx.savedstate.SavedStateRegistry r3 = r7.getSavedStateRegistry()
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L83
            android.os.Bundle r1 = r6.arguments
            android.os.Bundle r3 = r7.arguments
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 != 0) goto L82
            android.os.Bundle r1 = r6.arguments
            if (r1 == 0) goto L7f
            java.util.Set r1 = r1.keySet()
            if (r1 == 0) goto L7f
            boolean r3 = r1.isEmpty()
            if (r3 == 0) goto L54
        L52:
            r7 = 1
            goto L7b
        L54:
            java.util.Iterator r1 = r1.iterator()
        L58:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L52
            java.lang.Object r3 = r1.next()
            java.lang.String r3 = (java.lang.String) r3
            android.os.Bundle r4 = r6.arguments
            java.lang.Object r4 = r4.get(r3)
            android.os.Bundle r5 = r7.arguments
            if (r5 == 0) goto L73
            java.lang.Object r3 = r5.get(r3)
            goto L74
        L73:
            r3 = 0
        L74:
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r3)
            if (r3 != 0) goto L58
            r7 = 0
        L7b:
            if (r7 != r2) goto L7f
            r7 = 1
            goto L80
        L7f:
            r7 = 0
        L80:
            if (r7 == 0) goto L83
        L82:
            r0 = 1
        L83:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavBackStackEntry.equals(java.lang.Object):boolean");
    }

    @h
    public final Bundle getArguments() {
        return this.arguments;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @g
    public CreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(null, 1, null);
        Context context = this.context;
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Application application = applicationContext instanceof Application ? applicationContext : null;
        if (application != null) {
            mutableCreationExtras.set(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        mutableCreationExtras.set(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, this);
        mutableCreationExtras.set(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, this);
        Bundle bundle = this.arguments;
        if (bundle != null) {
            mutableCreationExtras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, bundle);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @g
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return getDefaultFactory();
    }

    @g
    public final NavDestination getDestination() {
        return this.destination;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @g
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Lifecycle.State getMaxLifecycle() {
        return this.maxLifecycle;
    }

    @g
    public final SavedStateHandle getSavedStateHandle() {
        return (SavedStateHandle) this.savedStateHandle$delegate.getValue();
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @g
    public SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistryController.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @g
    public ViewModelStore getViewModelStore() {
        if (this.savedStateRegistryAttached) {
            if (this.lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                NavViewModelStoreProvider navViewModelStoreProvider = this.viewModelStoreProvider;
                if (navViewModelStoreProvider != null) {
                    return navViewModelStoreProvider.getViewModelStore(this.id);
                }
                throw new IllegalStateException("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.".toString());
            }
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.".toString());
        }
        throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).".toString());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void handleLifecycleEvent(@g Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Lifecycle.State targetState = event.getTargetState();
        Intrinsics.checkNotNullExpressionValue(targetState, "event.targetState");
        this.hostLifecycleState = targetState;
        updateState();
    }

    public int hashCode() {
        Set<String> keySet;
        int hashCode = (this.id.hashCode() * 31) + this.destination.hashCode();
        Bundle bundle = this.arguments;
        if (bundle != null && (keySet = bundle.keySet()) != null) {
            for (String str : keySet) {
                int i4 = hashCode * 31;
                Object obj = this.arguments.get(str);
                hashCode = i4 + (obj != null ? obj.hashCode() : 0);
            }
        }
        return (((hashCode * 31) + this.lifecycle.hashCode()) * 31) + getSavedStateRegistry().hashCode();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void saveState(@g Bundle outBundle) {
        Intrinsics.checkNotNullParameter(outBundle, "outBundle");
        this.savedStateRegistryController.performSave(outBundle);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setDestination(@g NavDestination navDestination) {
        Intrinsics.checkNotNullParameter(navDestination, "<set-?>");
        this.destination = navDestination;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setMaxLifecycle(@g Lifecycle.State maxState) {
        Intrinsics.checkNotNullParameter(maxState, "maxState");
        this.maxLifecycle = maxState;
        updateState();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void updateState() {
        if (!this.savedStateRegistryAttached) {
            this.savedStateRegistryController.performAttach();
            this.savedStateRegistryAttached = true;
            if (this.viewModelStoreProvider != null) {
                SavedStateHandleSupport.enableSavedStateHandles(this);
            }
            this.savedStateRegistryController.performRestore(this.savedState);
        }
        if (this.hostLifecycleState.ordinal() < this.maxLifecycle.ordinal()) {
            this.lifecycle.setCurrentState(this.hostLifecycleState);
        } else {
            this.lifecycle.setCurrentState(this.maxLifecycle);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    /* synthetic */ NavBackStackEntry(android.content.Context r11, androidx.navigation.NavDestination r12, android.os.Bundle r13, androidx.lifecycle.Lifecycle.State r14, androidx.navigation.NavViewModelStoreProvider r15, java.lang.String r16, android.os.Bundle r17, int r18, kotlin.jvm.internal.DefaultConstructorMarker r19) {
        /*
            r10 = this;
            r0 = r18 & 4
            r1 = 0
            if (r0 == 0) goto L7
            r5 = r1
            goto L8
        L7:
            r5 = r13
        L8:
            r0 = r18 & 8
            if (r0 == 0) goto L10
            androidx.lifecycle.Lifecycle$State r0 = androidx.lifecycle.Lifecycle.State.CREATED
            r6 = r0
            goto L11
        L10:
            r6 = r14
        L11:
            r0 = r18 & 16
            if (r0 == 0) goto L17
            r7 = r1
            goto L18
        L17:
            r7 = r15
        L18:
            r0 = r18 & 32
            if (r0 == 0) goto L2b
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "randomUUID().toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            r8 = r0
            goto L2d
        L2b:
            r8 = r16
        L2d:
            r0 = r18 & 64
            if (r0 == 0) goto L33
            r9 = r1
            goto L35
        L33:
            r9 = r17
        L35:
            r2 = r10
            r3 = r11
            r4 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavBackStackEntry.<init>(android.content.Context, androidx.navigation.NavDestination, android.os.Bundle, androidx.lifecycle.Lifecycle$State, androidx.navigation.NavViewModelStoreProvider, java.lang.String, android.os.Bundle, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public /* synthetic */ NavBackStackEntry(NavBackStackEntry navBackStackEntry, Bundle bundle, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(navBackStackEntry, (i4 & 2) != 0 ? navBackStackEntry.arguments : bundle);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavBackStackEntry(@g NavBackStackEntry entry, @h Bundle bundle) {
        this(entry.context, entry.destination, bundle, entry.hostLifecycleState, entry.viewModelStoreProvider, entry.id, entry.savedState);
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.hostLifecycleState = entry.hostLifecycleState;
        setMaxLifecycle(entry.maxLifecycle);
    }
}

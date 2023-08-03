package androidx.navigation.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.annotation.CallSuper;
import androidx.annotation.NavigationRes;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavController;
import androidx.navigation.NavHost;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigation;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.fragment.FragmentNavigator;
import com.google.android.exoplayer2.text.ttml.d;
import io.sentry.Session;
import io.sentry.protocol.i;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NavHostFragment.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00170\u0016H\u0015J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0017J\u0012\u0010\u001c\u001a\u00020\u00192\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u000eH\u0015J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0015J&\u0010!\u001a\u0004\u0018\u00010\u00142\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010&\u001a\u00020\u0019H\u0016J\"\u0010'\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\tH\u0017J\u0010\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\u001eH\u0017J\u001a\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Landroidx/navigation/fragment/NavHostFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/navigation/NavHost;", "()V", "containerId", "", "getContainerId", "()I", "defaultNavHost", "", "graphId", "isPrimaryBeforeOnCreate", "Ljava/lang/Boolean;", "navController", "Landroidx/navigation/NavController;", "getNavController", "()Landroidx/navigation/NavController;", "navHostController", "Landroidx/navigation/NavHostController;", "viewParent", "Landroid/view/View;", "createFragmentNavigator", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/FragmentNavigator$Destination;", "onAttach", "", "context", "Landroid/content/Context;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateNavController", "onCreateNavHostController", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", d.W, "Landroid/view/ViewGroup;", "onDestroyView", "onInflate", Session.b.f81849j, "Landroid/util/AttributeSet;", "onPrimaryNavigationFragmentChanged", "isPrimaryNavigationFragment", "onSaveInstanceState", "outState", "onViewCreated", "view", "Companion", "navigation-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class NavHostFragment extends Fragment implements NavHost {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final String KEY_DEFAULT_NAV_HOST = "android-support-nav:fragment:defaultHost";
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_GRAPH_ID = "android-support-nav:fragment:graphId";
    @g
    private static final String KEY_NAV_CONTROLLER_STATE = "android-support-nav:fragment:navControllerState";
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_START_DESTINATION_ARGS = "android-support-nav:fragment:startDestinationArgs";
    private boolean defaultNavHost;
    private int graphId;
    @h
    private Boolean isPrimaryBeforeOnCreate;
    @h
    private NavHostController navHostController;
    @h
    private View viewParent;

    /* compiled from: NavHostFragment.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/navigation/fragment/NavHostFragment$Companion;", "", "()V", "KEY_DEFAULT_NAV_HOST", "", "KEY_GRAPH_ID", "KEY_NAV_CONTROLLER_STATE", "KEY_START_DESTINATION_ARGS", "create", "Landroidx/navigation/fragment/NavHostFragment;", "graphResId", "", "startDestinationArgs", "Landroid/os/Bundle;", "findNavController", "Landroidx/navigation/NavController;", i.b.f83726i, "Landroidx/fragment/app/Fragment;", "navigation-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ NavHostFragment create$default(Companion companion, int i4, Bundle bundle, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                bundle = null;
            }
            return companion.create(i4, bundle);
        }

        @JvmStatic
        @JvmOverloads
        @g
        public final NavHostFragment create(@NavigationRes int i4) {
            return create$default(this, i4, null, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        @g
        public final NavHostFragment create(@NavigationRes int i4, @h Bundle bundle) {
            Bundle bundle2;
            if (i4 != 0) {
                bundle2 = new Bundle();
                bundle2.putInt(NavHostFragment.KEY_GRAPH_ID, i4);
            } else {
                bundle2 = null;
            }
            if (bundle != null) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putBundle(NavHostFragment.KEY_START_DESTINATION_ARGS, bundle);
            }
            NavHostFragment navHostFragment = new NavHostFragment();
            if (bundle2 != null) {
                navHostFragment.setArguments(bundle2);
            }
            return navHostFragment;
        }

        @JvmStatic
        @g
        public final NavController findNavController(@g Fragment fragment) {
            Dialog dialog;
            Window window;
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getParentFragment()) {
                if (fragment2 instanceof NavHostFragment) {
                    NavHostController navHostController = ((NavHostFragment) fragment2).navHostController;
                    Objects.requireNonNull(navHostController, "null cannot be cast to non-null type androidx.navigation.NavController");
                    return navHostController;
                }
                Fragment primaryNavigationFragment = fragment2.getParentFragmentManager().getPrimaryNavigationFragment();
                if (primaryNavigationFragment instanceof NavHostFragment) {
                    NavHostController navHostController2 = ((NavHostFragment) primaryNavigationFragment).navHostController;
                    Objects.requireNonNull(navHostController2, "null cannot be cast to non-null type androidx.navigation.NavController");
                    return navHostController2;
                }
            }
            View view = fragment.getView();
            if (view != null) {
                return Navigation.findNavController(view);
            }
            View view2 = null;
            DialogFragment dialogFragment = fragment instanceof DialogFragment ? (DialogFragment) fragment : null;
            if (dialogFragment != null && (dialog = dialogFragment.getDialog()) != null && (window = dialog.getWindow()) != null) {
                view2 = window.getDecorView();
            }
            if (view2 != null) {
                return Navigation.findNavController(view2);
            }
            throw new IllegalStateException("Fragment " + fragment + " does not have a NavController set");
        }
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final NavHostFragment create(@NavigationRes int i4) {
        return Companion.create(i4);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final NavHostFragment create(@NavigationRes int i4, @h Bundle bundle) {
        return Companion.create(i4, bundle);
    }

    @JvmStatic
    @g
    public static final NavController findNavController(@g Fragment fragment) {
        return Companion.findNavController(fragment);
    }

    private final int getContainerId() {
        int id = getId();
        return (id == 0 || id == -1) ? R.id.nav_host_fragment_container : id;
    }

    @Deprecated(message = "Use {@link #onCreateNavController(NavController)}")
    @g
    protected Navigator<? extends FragmentNavigator.Destination> createFragmentNavigator() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        return new FragmentNavigator(requireContext, childFragmentManager, getContainerId());
    }

    @Override // androidx.navigation.NavHost
    @g
    public final NavController getNavController() {
        NavHostController navHostController = this.navHostController;
        if (navHostController != null) {
            Objects.requireNonNull(navHostController, "null cannot be cast to non-null type androidx.navigation.NavHostController");
            return navHostController;
        }
        throw new IllegalStateException("NavController is not available before onCreate()".toString());
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (this.defaultNavHost) {
            getParentFragmentManager().beginTransaction().setPrimaryNavigationFragment(this).commit();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ba  */
    @Override // androidx.fragment.app.Fragment
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onCreate(@m8.h android.os.Bundle r7) {
        /*
            r6 = this;
            android.content.Context r0 = r6.requireContext()
            java.lang.String r1 = "requireContext()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            androidx.navigation.NavHostController r1 = new androidx.navigation.NavHostController
            r1.<init>(r0)
            r6.navHostController = r1
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r1.setLifecycleOwner(r6)
        L16:
            boolean r1 = r0 instanceof android.content.ContextWrapper
            if (r1 == 0) goto L3e
            boolean r1 = r0 instanceof androidx.activity.OnBackPressedDispatcherOwner
            if (r1 == 0) goto L32
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            androidx.activity.OnBackPressedDispatcherOwner r0 = (androidx.activity.OnBackPressedDispatcherOwner) r0
            androidx.activity.OnBackPressedDispatcher r0 = r0.getOnBackPressedDispatcher()
            java.lang.String r2 = "context as OnBackPressed…).onBackPressedDispatcher"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            r1.setOnBackPressedDispatcher(r0)
            goto L3e
        L32:
            android.content.ContextWrapper r0 = (android.content.ContextWrapper) r0
            android.content.Context r0 = r0.getBaseContext()
            java.lang.String r1 = "context.baseContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            goto L16
        L3e:
            androidx.navigation.NavHostController r0 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.lang.Boolean r1 = r6.isPrimaryBeforeOnCreate
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L56
            java.lang.String r4 = "null cannot be cast to non-null type kotlin.Boolean"
            java.util.Objects.requireNonNull(r1, r4)
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L56
            r1 = 1
            goto L57
        L56:
            r1 = 0
        L57:
            r0.enableOnBackPressed(r1)
            r0 = 0
            r6.isPrimaryBeforeOnCreate = r0
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            androidx.lifecycle.ViewModelStore r4 = r6.getViewModelStore()
            java.lang.String r5 = "viewModelStore"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            r1.setViewModelStore(r4)
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r6.onCreateNavHostController(r1)
            java.lang.String r1 = "android-support-nav:fragment:graphId"
            if (r7 == 0) goto La0
            java.lang.String r4 = "android-support-nav:fragment:navControllerState"
            android.os.Bundle r4 = r7.getBundle(r4)
            java.lang.String r5 = "android-support-nav:fragment:defaultHost"
            boolean r5 = r7.getBoolean(r5, r3)
            if (r5 == 0) goto L99
            r6.defaultNavHost = r2
            androidx.fragment.app.FragmentManager r2 = r6.getParentFragmentManager()
            androidx.fragment.app.FragmentTransaction r2 = r2.beginTransaction()
            androidx.fragment.app.FragmentTransaction r2 = r2.setPrimaryNavigationFragment(r6)
            r2.commit()
        L99:
            int r2 = r7.getInt(r1)
            r6.graphId = r2
            goto La1
        La0:
            r4 = r0
        La1:
            if (r4 == 0) goto Lab
            androidx.navigation.NavHostController r2 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r2.restoreState(r4)
        Lab:
            int r2 = r6.graphId
            if (r2 == 0) goto Lba
            androidx.navigation.NavHostController r0 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r1 = r6.graphId
            r0.setGraph(r1)
            goto Ld6
        Lba:
            android.os.Bundle r2 = r6.getArguments()
            if (r2 == 0) goto Lc4
            int r3 = r2.getInt(r1)
        Lc4:
            if (r2 == 0) goto Lcc
            java.lang.String r0 = "android-support-nav:fragment:startDestinationArgs"
            android.os.Bundle r0 = r2.getBundle(r0)
        Lcc:
            if (r3 == 0) goto Ld6
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r1.setGraph(r3, r0)
        Ld6:
            super.onCreate(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.fragment.NavHostFragment.onCreate(android.os.Bundle):void");
    }

    @Deprecated(message = "Override {@link #onCreateNavHostController(NavHostController)} to gain\n      access to the full {@link NavHostController} that is created by this NavHostFragment.")
    @CallSuper
    protected void onCreateNavController(@g NavController navController) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        NavigatorProvider navigatorProvider = navController.getNavigatorProvider();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        navigatorProvider.addNavigator(new DialogFragmentNavigator(requireContext, childFragmentManager));
        navController.getNavigatorProvider().addNavigator(createFragmentNavigator());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void onCreateNavHostController(@g NavHostController navHostController) {
        Intrinsics.checkNotNullParameter(navHostController, "navHostController");
        onCreateNavController(navHostController);
    }

    @Override // androidx.fragment.app.Fragment
    @h
    public View onCreateView(@g LayoutInflater inflater, @h ViewGroup viewGroup, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Context context = inflater.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "inflater.context");
        FragmentContainerView fragmentContainerView = new FragmentContainerView(context);
        fragmentContainerView.setId(getContainerId());
        return fragmentContainerView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        View view = this.viewParent;
        if (view != null && Navigation.findNavController(view) == this.navHostController) {
            Navigation.setViewNavController(view, null);
        }
        this.viewParent = null;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onInflate(@g Context context, @g AttributeSet attrs, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        super.onInflate(context, attrs, bundle);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, androidx.navigation.R.styleable.NavHost);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…yleable.NavHost\n        )");
        int resourceId = obtainStyledAttributes.getResourceId(androidx.navigation.R.styleable.NavHost_navGraph, 0);
        if (resourceId != 0) {
            this.graphId = resourceId;
        }
        Unit unit = Unit.INSTANCE;
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attrs, R.styleable.NavHostFragment);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes2, "context.obtainStyledAttr…tyleable.NavHostFragment)");
        if (obtainStyledAttributes2.getBoolean(R.styleable.NavHostFragment_defaultNavHost, false)) {
            this.defaultNavHost = true;
        }
        obtainStyledAttributes2.recycle();
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onPrimaryNavigationFragmentChanged(boolean z9) {
        NavHostController navHostController = this.navHostController;
        if (navHostController == null) {
            this.isPrimaryBeforeOnCreate = Boolean.valueOf(z9);
        } else if (navHostController != null) {
            navHostController.enableOnBackPressed(z9);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onSaveInstanceState(@g Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        NavHostController navHostController = this.navHostController;
        Intrinsics.checkNotNull(navHostController);
        Bundle saveState = navHostController.saveState();
        if (saveState != null) {
            outState.putBundle(KEY_NAV_CONTROLLER_STATE, saveState);
        }
        if (this.defaultNavHost) {
            outState.putBoolean(KEY_DEFAULT_NAV_HOST, true);
        }
        int i4 = this.graphId;
        if (i4 != 0) {
            outState.putInt(KEY_GRAPH_ID, i4);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (view instanceof ViewGroup) {
            Navigation.setViewNavController(view, this.navHostController);
            if (view.getParent() != null) {
                ViewParent parent = view.getParent();
                Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
                View view2 = (View) parent;
                this.viewParent = view2;
                Intrinsics.checkNotNull(view2);
                if (view2.getId() == getId()) {
                    View view3 = this.viewParent;
                    Intrinsics.checkNotNull(view3);
                    Navigation.setViewNavController(view3, this.navHostController);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException(("created host view " + view + " is not a ViewGroup").toString());
    }
}

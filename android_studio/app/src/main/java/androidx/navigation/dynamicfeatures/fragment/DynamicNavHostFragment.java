package androidx.navigation.dynamicfeatures.fragment;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NavigationRes;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavHostController;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.dynamicfeatures.DynamicActivityNavigator;
import androidx.navigation.dynamicfeatures.DynamicGraphNavigator;
import androidx.navigation.dynamicfeatures.DynamicIncludeGraphNavigator;
import androidx.navigation.dynamicfeatures.DynamicInstallManager;
import androidx.navigation.fragment.NavHostFragment;
import com.google.android.play.core.splitinstall.c;
import com.google.android.play.core.splitinstall.d;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DynamicNavHostFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0014¨\u0006\u000b"}, d2 = {"Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;", "Landroidx/navigation/fragment/NavHostFragment;", "Landroidx/navigation/NavHostController;", "navHostController", "", "onCreateNavHostController", "Lcom/google/android/play/core/splitinstall/c;", "createSplitInstallManager", "<init>", "()V", "Companion", "navigation-dynamic-features-fragment_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public class DynamicNavHostFragment extends NavHostFragment {
    @g
    public static final Companion Companion = new Companion(null);

    /* compiled from: DynamicNavHostFragment.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;", "", "()V", "create", "Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;", "graphResId", "", "startDestinationArgs", "Landroid/os/Bundle;", "navigation-dynamic-features-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ DynamicNavHostFragment create$default(Companion companion, int i4, Bundle bundle, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                bundle = null;
            }
            return companion.create(i4, bundle);
        }

        @JvmStatic
        @JvmOverloads
        @g
        public final DynamicNavHostFragment create(@NavigationRes int i4) {
            return create$default(this, i4, null, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        @g
        public final DynamicNavHostFragment create(@NavigationRes int i4, @h Bundle bundle) {
            Bundle bundle2;
            DynamicNavHostFragment dynamicNavHostFragment = new DynamicNavHostFragment();
            if (i4 == 0 && bundle == null) {
                bundle2 = null;
            } else {
                Bundle bundle3 = new Bundle();
                if (i4 != 0) {
                    bundle3.putInt(NavHostFragment.KEY_GRAPH_ID, i4);
                }
                if (bundle != null) {
                    bundle3.putBundle(NavHostFragment.KEY_START_DESTINATION_ARGS, bundle);
                }
                bundle2 = bundle3;
            }
            dynamicNavHostFragment.setArguments(bundle2);
            return dynamicNavHostFragment;
        }
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final DynamicNavHostFragment create(@NavigationRes int i4) {
        return Companion.create(i4);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final DynamicNavHostFragment create(@NavigationRes int i4, @h Bundle bundle) {
        return Companion.create(i4, bundle);
    }

    @g
    protected c createSplitInstallManager() {
        c a10 = d.a(requireContext());
        Intrinsics.checkNotNullExpressionValue(a10, "create(requireContext())");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.navigation.fragment.NavHostFragment
    public void onCreateNavHostController(@g NavHostController navHostController) {
        Intrinsics.checkNotNullParameter(navHostController, "navHostController");
        super.onCreateNavHostController(navHostController);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        DynamicInstallManager dynamicInstallManager = new DynamicInstallManager(requireContext, createSplitInstallManager());
        NavigatorProvider navigatorProvider = navHostController.getNavigatorProvider();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        navigatorProvider.addNavigator(new DynamicActivityNavigator(requireActivity, dynamicInstallManager));
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        DynamicFragmentNavigator dynamicFragmentNavigator = new DynamicFragmentNavigator(requireContext2, childFragmentManager, getId(), dynamicInstallManager);
        navigatorProvider.addNavigator(dynamicFragmentNavigator);
        DynamicGraphNavigator dynamicGraphNavigator = new DynamicGraphNavigator(navigatorProvider, dynamicInstallManager);
        dynamicGraphNavigator.installDefaultProgressDestination(new DynamicNavHostFragment$onCreateNavHostController$1(dynamicFragmentNavigator));
        navigatorProvider.addNavigator(dynamicGraphNavigator);
        Context requireContext3 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext3, "requireContext()");
        navigatorProvider.addNavigator(new DynamicIncludeGraphNavigator(requireContext3, navigatorProvider, navHostController.getNavInflater(), dynamicInstallManager));
    }
}

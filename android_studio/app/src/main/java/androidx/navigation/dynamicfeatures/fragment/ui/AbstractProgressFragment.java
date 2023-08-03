package androidx.navigation.dynamicfeatures.fragment.ui;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.navigation.NavOptions;
import androidx.navigation.dynamicfeatures.Constants;
import androidx.navigation.dynamicfeatures.DynamicExtras;
import androidx.navigation.dynamicfeatures.DynamicInstallMonitor;
import androidx.navigation.dynamicfeatures.fragment.ui.AbstractProgressFragment;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.play.core.splitinstall.f;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;
import m8.h;

/* compiled from: AbstractProgressFragment.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000 .2\u00020\u0001:\u0002./B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\u001b\u001a\u00020\u001cH\u0000¢\u0006\u0002\b\u001dJ\b\u0010\u001e\u001a\u00020\u001cH$J\u0012\u0010\u001f\u001a\u00020\u001c2\b\u0010 \u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010!\u001a\u00020\u001c2\b\b\u0001\u0010\"\u001a\u00020\u0004H$J\b\u0010#\u001a\u00020\u001cH\u0014J\"\u0010$\u001a\u00020\u001c2\b\b\u0001\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'H$J\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u0007H\u0016J\u001a\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020-2\b\u0010 \u001a\u0004\u0018\u00010\u0007H\u0016R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0015\u001a\u0010\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00170\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;", "Landroidx/fragment/app/Fragment;", "()V", "contentLayoutId", "", "(I)V", "destinationArgs", "Landroid/os/Bundle;", "getDestinationArgs", "()Landroid/os/Bundle;", "destinationArgs$delegate", "Lkotlin/Lazy;", "destinationId", "getDestinationId", "()I", "destinationId$delegate", "installViewModel", "Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;", "getInstallViewModel", "()Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;", "installViewModel$delegate", "intentSenderLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroidx/activity/result/IntentSenderRequest;", "kotlin.jvm.PlatformType", "navigated", "", "navigate", "", "navigate$navigation_dynamic_features_fragment_release", "onCancelled", "onCreate", "savedInstanceState", "onFailed", "errorCode", "onInstalled", "onProgress", "status", "bytesDownloaded", "", "bytesTotal", "onSaveInstanceState", "outState", "onViewCreated", "view", "Landroid/view/View;", "Companion", "StateObserver", "navigation-dynamic-features-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AbstractProgressFragment extends Fragment {
    @g
    public static final Companion Companion = new Companion(null);
    private static final int INSTALL_REQUEST_CODE = 1;
    @g
    private static final String TAG = "AbstractProgress";
    @g
    private final Lazy destinationArgs$delegate;
    @g
    private final Lazy destinationId$delegate;
    @g
    private final Lazy installViewModel$delegate;
    @g
    private final ActivityResultLauncher<IntentSenderRequest> intentSenderLauncher;
    private boolean navigated;

    /* compiled from: AbstractProgressFragment.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$Companion;", "", "()V", "INSTALL_REQUEST_CODE", "", "TAG", "", "navigation-dynamic-features-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: AbstractProgressFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;", "Landroidx/lifecycle/Observer;", "Lcom/google/android/play/core/splitinstall/f;", "sessionState", "", "onChanged", "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "monitor", "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "<init>", "(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V", "navigation-dynamic-features-fragment_release"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes.dex */
    private final class StateObserver implements Observer<f> {
        @g
        private final DynamicInstallMonitor monitor;
        final /* synthetic */ AbstractProgressFragment this$0;

        public StateObserver(@g AbstractProgressFragment abstractProgressFragment, DynamicInstallMonitor monitor) {
            Intrinsics.checkNotNullParameter(monitor, "monitor");
            this.this$0 = abstractProgressFragment;
            this.monitor = monitor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onChanged$lambda-0  reason: not valid java name */
        public static final void m41onChanged$lambda0(AbstractProgressFragment this$0, IntentSender intent, int i4, Intent intent2, int i10, int i11, int i12, Bundle bundle) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(intent, "intent");
            this$0.intentSenderLauncher.launch(new IntentSenderRequest.Builder(intent).setFillInIntent(intent2).setFlags(i11, i10).build());
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@h f fVar) {
            if (fVar != null) {
                if (fVar.d()) {
                    this.monitor.getStatus().removeObserver(this);
                }
                switch (fVar.i()) {
                    case 0:
                        this.this$0.onFailed(-100);
                        return;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 9:
                        this.this$0.onProgress(fVar.i(), fVar.a(), fVar.j());
                        return;
                    case 5:
                        this.this$0.onInstalled();
                        this.this$0.navigate$navigation_dynamic_features_fragment_release();
                        return;
                    case 6:
                        this.this$0.onFailed(fVar.c());
                        return;
                    case 7:
                        this.this$0.onCancelled();
                        return;
                    case 8:
                        try {
                            com.google.android.play.core.splitinstall.c splitInstallManager = this.monitor.getSplitInstallManager();
                            if (splitInstallManager == null) {
                                this.this$0.onFailed(-100);
                                return;
                            }
                            final AbstractProgressFragment abstractProgressFragment = this.this$0;
                            splitInstallManager.f(fVar, new com.google.android.play.core.common.a() { // from class: androidx.navigation.dynamicfeatures.fragment.ui.b
                                @Override // com.google.android.play.core.common.a
                                public final void a(IntentSender intentSender, int i4, Intent intent, int i10, int i11, int i12, Bundle bundle) {
                                    AbstractProgressFragment.StateObserver.m41onChanged$lambda0(AbstractProgressFragment.this, intentSender, i4, intent, i10, i11, i12, bundle);
                                }
                            }, 1);
                            return;
                        } catch (IntentSender.SendIntentException unused) {
                            this.this$0.onFailed(-100);
                            return;
                        }
                    default:
                        return;
                }
            }
        }
    }

    public AbstractProgressFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Function0 function0 = AbstractProgressFragment$installViewModel$2.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new AbstractProgressFragment$special$$inlined$viewModels$default$2(new AbstractProgressFragment$special$$inlined$viewModels$default$1(this)));
        this.installViewModel$delegate = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(InstallViewModel.class), new AbstractProgressFragment$special$$inlined$viewModels$default$3(lazy), new AbstractProgressFragment$special$$inlined$viewModels$default$4(null, lazy), function0 == null ? new AbstractProgressFragment$special$$inlined$viewModels$default$5(this, lazy) : function0);
        lazy2 = LazyKt__LazyJVMKt.lazy(new AbstractProgressFragment$destinationId$2(this));
        this.destinationId$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new AbstractProgressFragment$destinationArgs$2(this));
        this.destinationArgs$delegate = lazy3;
        ActivityResultLauncher<IntentSenderRequest> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: androidx.navigation.dynamicfeatures.fragment.ui.a
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                AbstractProgressFragment.m40intentSenderLauncher$lambda0(AbstractProgressFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ncelled()\n        }\n    }");
        this.intentSenderLauncher = registerForActivityResult;
    }

    private final Bundle getDestinationArgs() {
        return (Bundle) this.destinationArgs$delegate.getValue();
    }

    private final int getDestinationId() {
        return ((Number) this.destinationId$delegate.getValue()).intValue();
    }

    private final InstallViewModel getInstallViewModel() {
        return (InstallViewModel) this.installViewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: intentSenderLauncher$lambda-0  reason: not valid java name */
    public static final void m40intentSenderLauncher$lambda0(AbstractProgressFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (activityResult.getResultCode() == 0) {
            this$0.onCancelled();
        }
    }

    public final void navigate$navigation_dynamic_features_fragment_release() {
        Log.i(TAG, "navigate: ");
        DynamicInstallMonitor dynamicInstallMonitor = new DynamicInstallMonitor();
        FragmentKt.findNavController(this).navigate(getDestinationId(), getDestinationArgs(), (NavOptions) null, new DynamicExtras(dynamicInstallMonitor, null, 2, null));
        if (!dynamicInstallMonitor.isInstallRequired()) {
            Log.i(TAG, "navigate: install not required");
            this.navigated = true;
            return;
        }
        Log.i(TAG, "navigate: setting install monitor");
        getInstallViewModel().setInstallMonitor(dynamicInstallMonitor);
    }

    protected abstract void onCancelled();

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@h Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.navigated = bundle.getBoolean(Constants.KEY_NAVIGATED, false);
        }
    }

    protected abstract void onFailed(@g3.a int i4);

    protected void onInstalled() {
    }

    protected abstract void onProgress(@g3.b int i4, long j4, long j10);

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@g Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean(Constants.KEY_NAVIGATED, this.navigated);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.navigated) {
            FragmentKt.findNavController(this).popBackStack();
            return;
        }
        DynamicInstallMonitor installMonitor = getInstallViewModel().getInstallMonitor();
        if (installMonitor == null) {
            Log.i(TAG, "onViewCreated: monitor is null, navigating");
            navigate$navigation_dynamic_features_fragment_release();
            installMonitor = getInstallViewModel().getInstallMonitor();
        }
        if (installMonitor != null) {
            Log.i(TAG, "onViewCreated: monitor is now not null, observing");
            installMonitor.getStatus().observe(getViewLifecycleOwner(), new StateObserver(this, installMonitor));
        }
    }

    public AbstractProgressFragment(int i4) {
        super(i4);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Function0 function0 = AbstractProgressFragment$installViewModel$2.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new AbstractProgressFragment$special$$inlined$viewModels$default$7(new AbstractProgressFragment$special$$inlined$viewModels$default$6(this)));
        this.installViewModel$delegate = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(InstallViewModel.class), new AbstractProgressFragment$special$$inlined$viewModels$default$8(lazy), new AbstractProgressFragment$special$$inlined$viewModels$default$9(null, lazy), function0 == null ? new AbstractProgressFragment$special$$inlined$viewModels$default$10(this, lazy) : function0);
        lazy2 = LazyKt__LazyJVMKt.lazy(new AbstractProgressFragment$destinationId$2(this));
        this.destinationId$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new AbstractProgressFragment$destinationArgs$2(this));
        this.destinationArgs$delegate = lazy3;
        ActivityResultLauncher<IntentSenderRequest> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: androidx.navigation.dynamicfeatures.fragment.ui.a
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                AbstractProgressFragment.m40intentSenderLauncher$lambda0(AbstractProgressFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ncelled()\n        }\n    }");
        this.intentSenderLauncher = registerForActivityResult;
    }
}

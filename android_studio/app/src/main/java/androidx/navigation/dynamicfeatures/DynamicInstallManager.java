package androidx.navigation.dynamicfeatures;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.MutableLiveData;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.dynamicfeatures.DynamicGraphNavigator;
import com.google.android.play.core.splitinstall.SplitInstallException;
import com.google.android.play.core.splitinstall.c;
import com.google.android.play.core.splitinstall.e;
import com.google.android.play.core.splitinstall.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DynamicInstallManager.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J$\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\u0002H\u0007J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicInstallManager;", "", "", "module", "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "installMonitor", "", "requestInstall", "Landroidx/navigation/NavBackStackEntry;", "backStackEntry", "Landroidx/navigation/dynamicfeatures/DynamicExtras;", "extras", "moduleName", "Landroidx/navigation/NavDestination;", "performInstall", "", "needsInstall", "Landroid/content/Context;", "context", "Landroid/content/Context;", "Lcom/google/android/play/core/splitinstall/c;", "splitInstallManager", "Lcom/google/android/play/core/splitinstall/c;", "<init>", "(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/c;)V", "Companion", "SplitInstallListenerWrapper", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public class DynamicInstallManager {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final Context context;
    @g
    private final c splitInstallManager;

    /* compiled from: DynamicInstallManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\b\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;", "", "Landroidx/lifecycle/MutableLiveData;", "Lcom/google/android/play/core/splitinstall/f;", "status", "", "terminateLiveData$navigation_dynamic_features_runtime_release", "(Landroidx/lifecycle/MutableLiveData;)V", "terminateLiveData", "<init>", "()V", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void terminateLiveData$navigation_dynamic_features_runtime_release(@g MutableLiveData<f> status) {
            Intrinsics.checkNotNullParameter(status, "status");
            if (!(!status.hasActiveObservers())) {
                throw new IllegalStateException("This DynamicInstallMonitor will not emit any more status updates. You should remove all Observers after null has been emitted.".toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DynamicInstallManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;", "Lcom/google/android/play/core/splitinstall/g;", "Lcom/google/android/play/core/splitinstall/f;", "splitInstallSessionState", "", "onStateUpdate", "Landroid/content/Context;", "context", "Landroid/content/Context;", "Landroidx/lifecycle/MutableLiveData;", "status", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "installMonitor", "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "<init>", "(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes.dex */
    public static final class SplitInstallListenerWrapper implements com.google.android.play.core.splitinstall.g {
        @g
        private final Context context;
        @g
        private final DynamicInstallMonitor installMonitor;
        @g
        private final MutableLiveData<f> status;

        public SplitInstallListenerWrapper(@g Context context, @g MutableLiveData<f> status, @g DynamicInstallMonitor installMonitor) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(installMonitor, "installMonitor");
            this.context = context;
            this.status = status;
            this.installMonitor = installMonitor;
        }

        @Override // com.google.android.play.core.listener.a
        public void onStateUpdate(@g f splitInstallSessionState) {
            Intrinsics.checkNotNullParameter(splitInstallSessionState, "splitInstallSessionState");
            if (splitInstallSessionState.h() == this.installMonitor.getSessionId()) {
                if (splitInstallSessionState.i() == 5) {
                    com.google.android.play.core.splitcompat.a.a(this.context);
                    com.google.android.play.core.splitinstall.b.b(this.context);
                }
                this.status.setValue(splitInstallSessionState);
                if (splitInstallSessionState.d()) {
                    c splitInstallManager = this.installMonitor.getSplitInstallManager();
                    Intrinsics.checkNotNull(splitInstallManager);
                    splitInstallManager.n(this);
                    DynamicInstallManager.Companion.terminateLiveData$navigation_dynamic_features_runtime_release(this.status);
                }
            }
        }
    }

    public DynamicInstallManager(@g Context context, @g c splitInstallManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(splitInstallManager, "splitInstallManager");
        this.context = context;
        this.splitInstallManager = splitInstallManager;
    }

    private final void requestInstall(final String str, final DynamicInstallMonitor dynamicInstallMonitor) {
        if (!dynamicInstallMonitor.isUsed$navigation_dynamic_features_runtime_release()) {
            final MutableLiveData mutableLiveData = (MutableLiveData) dynamicInstallMonitor.getStatus();
            dynamicInstallMonitor.setInstallRequired$navigation_dynamic_features_runtime_release(true);
            e c10 = e.c().b(str).c();
            Intrinsics.checkNotNullExpressionValue(c10, "newBuilder()\n           …ule)\n            .build()");
            this.splitInstallManager.g(c10).e(new com.google.android.play.core.tasks.c() { // from class: androidx.navigation.dynamicfeatures.b
                @Override // com.google.android.play.core.tasks.c
                public final void onSuccess(Object obj) {
                    DynamicInstallManager.m38requestInstall$lambda2(DynamicInstallMonitor.this, this, mutableLiveData, str, (Integer) obj);
                }
            }).c(new com.google.android.play.core.tasks.b() { // from class: androidx.navigation.dynamicfeatures.a
                @Override // com.google.android.play.core.tasks.b
                public final void a(Exception exc) {
                    DynamicInstallManager.m39requestInstall$lambda3(str, dynamicInstallMonitor, mutableLiveData, exc);
                }
            });
            return;
        }
        throw new IllegalStateException("You must pass in a fresh DynamicInstallMonitor in DynamicExtras every time you call navigate().".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: requestInstall$lambda-2  reason: not valid java name */
    public static final void m38requestInstall$lambda2(DynamicInstallMonitor installMonitor, DynamicInstallManager this$0, MutableLiveData status, String module, Integer sessionId) {
        List listOf;
        List emptyList;
        Intrinsics.checkNotNullParameter(installMonitor, "$installMonitor");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "$status");
        Intrinsics.checkNotNullParameter(module, "$module");
        Intrinsics.checkNotNullExpressionValue(sessionId, "sessionId");
        installMonitor.setSessionId$navigation_dynamic_features_runtime_release(sessionId.intValue());
        installMonitor.setSplitInstallManager(this$0.splitInstallManager);
        if (sessionId.intValue() == 0) {
            int intValue = sessionId.intValue();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(module);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            status.setValue(f.b(intValue, 5, 0, 0L, 0L, listOf, emptyList));
            Companion.terminateLiveData$navigation_dynamic_features_runtime_release(status);
            return;
        }
        this$0.splitInstallManager.o(new SplitInstallListenerWrapper(this$0.context, status, installMonitor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: requestInstall$lambda-3  reason: not valid java name */
    public static final void m39requestInstall$lambda3(String module, DynamicInstallMonitor installMonitor, MutableLiveData status, Exception exc) {
        List listOf;
        List emptyList;
        Intrinsics.checkNotNullParameter(module, "$module");
        Intrinsics.checkNotNullParameter(installMonitor, "$installMonitor");
        Intrinsics.checkNotNullParameter(status, "$status");
        Log.i("DynamicInstallManager", "Error requesting install of " + module + ": " + exc.getMessage());
        installMonitor.setException$navigation_dynamic_features_runtime_release(exc);
        int errorCode = exc instanceof SplitInstallException ? ((SplitInstallException) exc).getErrorCode() : -100;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(module);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        status.setValue(f.b(0, 6, errorCode, 0L, 0L, listOf, emptyList));
        Companion.terminateLiveData$navigation_dynamic_features_runtime_release(status);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean needsInstall(@g String module) {
        Intrinsics.checkNotNullParameter(module, "module");
        return !this.splitInstallManager.j().contains(module);
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination performInstall(@g NavBackStackEntry backStackEntry, @h DynamicExtras dynamicExtras, @g String moduleName) {
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        if ((dynamicExtras != null ? dynamicExtras.getInstallMonitor() : null) != null) {
            requestInstall(moduleName, dynamicExtras.getInstallMonitor());
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(Constants.DESTINATION_ID, backStackEntry.getDestination().getId());
        bundle.putBundle(Constants.DESTINATION_ARGS, backStackEntry.getArguments());
        DynamicGraphNavigator.DynamicNavGraph orThrow$navigation_dynamic_features_runtime_release = DynamicGraphNavigator.DynamicNavGraph.Companion.getOrThrow$navigation_dynamic_features_runtime_release(backStackEntry.getDestination());
        Navigator navigator = orThrow$navigation_dynamic_features_runtime_release.getNavigatorProvider$navigation_dynamic_features_runtime_release().getNavigator(orThrow$navigation_dynamic_features_runtime_release.getNavigatorName());
        if (navigator instanceof DynamicGraphNavigator) {
            ((DynamicGraphNavigator) navigator).navigateToProgressDestination$navigation_dynamic_features_runtime_release(orThrow$navigation_dynamic_features_runtime_release, bundle);
            return null;
        }
        throw new IllegalStateException("You must use a DynamicNavGraph to perform a module installation.");
    }
}

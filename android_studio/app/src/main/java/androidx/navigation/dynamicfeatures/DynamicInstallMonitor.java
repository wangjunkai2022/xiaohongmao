package androidx.navigation.dynamicfeatures;

import androidx.annotation.RestrictTo;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.android.play.core.splitinstall.c;
import com.google.android.play.core.splitinstall.f;
import io.sentry.h4;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: DynamicInstallMonitor.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002R:\u0010\u0007\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u000e\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R*\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00138\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R*\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u001a8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\"\u001a\u0004\u0018\u00010!8G@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010(\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00138\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0017¨\u0006,"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "", "", "cancelInstall", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<set-?>", h4.b.f83287e, "Ljava/lang/Exception;", "getException", "()Ljava/lang/Exception;", "setException$navigation_dynamic_features_runtime_release", "(Ljava/lang/Exception;)V", "Landroidx/lifecycle/LiveData;", "Lcom/google/android/play/core/splitinstall/f;", "status", "Landroidx/lifecycle/LiveData;", "getStatus", "()Landroidx/lifecycle/LiveData;", "", "installRequired", "isInstallRequired", "Z", "()Z", "setInstallRequired$navigation_dynamic_features_runtime_release", "(Z)V", "", "sessionId", "I", "getSessionId", "()I", "setSessionId$navigation_dynamic_features_runtime_release", "(I)V", "Lcom/google/android/play/core/splitinstall/c;", "splitInstallManager", "Lcom/google/android/play/core/splitinstall/c;", "getSplitInstallManager", "()Lcom/google/android/play/core/splitinstall/c;", "setSplitInstallManager", "(Lcom/google/android/play/core/splitinstall/c;)V", "isUsed", "isUsed$navigation_dynamic_features_runtime_release", "<init>", "()V", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class DynamicInstallMonitor {
    @h
    private Exception exception;
    private boolean isInstallRequired;
    private boolean isUsed;
    private int sessionId;
    @h
    private c splitInstallManager;
    @g
    private final LiveData<f> status = new MutableLiveData();

    public final void cancelInstall() {
        int i4;
        c cVar = this.splitInstallManager;
        if (cVar == null || (i4 = this.sessionId) == 0) {
            return;
        }
        cVar.c(i4);
    }

    @h
    public final Exception getException() {
        return this.exception;
    }

    public final int getSessionId() {
        return this.sessionId;
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final c getSplitInstallManager() {
        return this.splitInstallManager;
    }

    @g
    public final LiveData<f> getStatus() {
        return this.status;
    }

    public final boolean isInstallRequired() {
        return this.isInstallRequired;
    }

    public final boolean isUsed$navigation_dynamic_features_runtime_release() {
        return this.isUsed;
    }

    public final void setException$navigation_dynamic_features_runtime_release(@h Exception exc) {
        this.exception = exc;
    }

    public final void setInstallRequired$navigation_dynamic_features_runtime_release(boolean z9) {
        this.isInstallRequired = z9;
        if (z9) {
            this.isUsed = true;
        }
    }

    public final void setSessionId$navigation_dynamic_features_runtime_release(int i4) {
        this.sessionId = i4;
    }

    public final void setSplitInstallManager(@h c cVar) {
        this.splitInstallManager = cVar;
    }
}

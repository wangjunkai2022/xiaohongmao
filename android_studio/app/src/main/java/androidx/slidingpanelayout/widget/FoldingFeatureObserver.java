package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.x1;
import m8.g;
import m8.h;

/* compiled from: FoldingFeatureObserver.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\bR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0017¨\u0006\u001b"}, d2 = {"Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;", "", "Landroidx/window/layout/WindowLayoutInfo;", "windowLayoutInfo", "Landroidx/window/layout/FoldingFeature;", "getFoldingFeature", "Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "onFoldingFeatureChangeListener", "", "setOnFoldingFeatureChangeListener", "Landroid/app/Activity;", "activity", "registerLayoutStateChangeCallback", "unregisterLayoutStateChangeCallback", "Landroidx/window/layout/WindowInfoTracker;", "windowInfoTracker", "Landroidx/window/layout/WindowInfoTracker;", "Ljava/util/concurrent/Executor;", "executor", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/j2;", "job", "Lkotlinx/coroutines/j2;", "Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "<init>", "(Landroidx/window/layout/WindowInfoTracker;Ljava/util/concurrent/Executor;)V", "OnFoldingFeatureChangeListener", "slidingpanelayout_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class FoldingFeatureObserver {
    @g
    private final Executor executor;
    @h
    private j2 job;
    @h
    private OnFoldingFeatureChangeListener onFoldingFeatureChangeListener;
    @g
    private final WindowInfoTracker windowInfoTracker;

    /* compiled from: FoldingFeatureObserver.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "", "onFoldingFeatureChange", "", "foldingFeature", "Landroidx/window/layout/FoldingFeature;", "slidingpanelayout_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface OnFoldingFeatureChangeListener {
        void onFoldingFeatureChange(@g FoldingFeature foldingFeature);
    }

    public FoldingFeatureObserver(@g WindowInfoTracker windowInfoTracker, @g Executor executor) {
        Intrinsics.checkNotNullParameter(windowInfoTracker, "windowInfoTracker");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.windowInfoTracker = windowInfoTracker;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FoldingFeature getFoldingFeature(WindowLayoutInfo windowLayoutInfo) {
        Object obj;
        Iterator<T> it = windowLayoutInfo.getDisplayFeatures().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((DisplayFeature) obj) instanceof FoldingFeature) {
                break;
            }
        }
        if (obj instanceof FoldingFeature) {
            return (FoldingFeature) obj;
        }
        return null;
    }

    public final void registerLayoutStateChangeCallback(@g Activity activity) {
        j2 f10;
        Intrinsics.checkNotNullParameter(activity, "activity");
        j2 j2Var = this.job;
        if (j2Var != null) {
            j2.a.b(j2Var, null, 1, null);
        }
        f10 = l.f(t0.a(x1.c(this.executor)), null, null, new FoldingFeatureObserver$registerLayoutStateChangeCallback$1(this, activity, null), 3, null);
        this.job = f10;
    }

    public final void setOnFoldingFeatureChangeListener(@g OnFoldingFeatureChangeListener onFoldingFeatureChangeListener) {
        Intrinsics.checkNotNullParameter(onFoldingFeatureChangeListener, "onFoldingFeatureChangeListener");
        this.onFoldingFeatureChangeListener = onFoldingFeatureChangeListener;
    }

    public final void unregisterLayoutStateChangeCallback() {
        j2 j2Var = this.job;
        if (j2Var == null) {
            return;
        }
        j2.a.b(j2Var, null, 1, null);
    }
}

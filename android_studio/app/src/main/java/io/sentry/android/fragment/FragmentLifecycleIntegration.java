package io.sentry.android.fragment;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.exoplayer2.util.a0;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.n0;
import io.sentry.z0;
import java.io.Closeable;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FragmentLifecycleIntegration.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u0019\u001a\u00020\u0017\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0006\u0010\"\u001a\u00020\u001f¢\u0006\u0004\b'\u0010(B\u0011\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0017¢\u0006\u0004\b'\u0010)B!\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0017\u0012\u0006\u0010*\u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020\u001f¢\u0006\u0004\b'\u0010+J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\bH\u0016J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0018\u0010\u0015\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0018R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006,"}, d2 = {"Lio/sentry/android/fragment/FragmentLifecycleIntegration;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Lio/sentry/z0;", "Ljava/io/Closeable;", "Lio/sentry/n0;", "hub", "Lio/sentry/SentryOptions;", "options", "", "a", "close", "Landroid/app/Activity;", "activity", "Landroid/os/Bundle;", "savedInstanceState", "onActivityCreated", "onActivityStarted", "onActivityResumed", "onActivityPaused", "onActivityStopped", "outState", "onActivitySaveInstanceState", "onActivityDestroyed", "Landroid/app/Application;", "Landroid/app/Application;", a0.f27439e, "", "Lio/sentry/android/fragment/FragmentLifecycleState;", "b", "Ljava/util/Set;", "filterFragmentLifecycleBreadcrumbs", "", "c", "Z", "enableAutoFragmentLifecycleTracing", "d", "Lio/sentry/n0;", "e", "Lio/sentry/SentryOptions;", "<init>", "(Landroid/app/Application;Ljava/util/Set;Z)V", "(Landroid/app/Application;)V", "enableFragmentLifecycleBreadcrumbs", "(Landroid/app/Application;ZZ)V", "sentry-android-fragment_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class FragmentLifecycleIntegration implements Application.ActivityLifecycleCallbacks, z0, Closeable {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Application f82620a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Set<FragmentLifecycleState> f82621b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f82622c;

    /* renamed from: d  reason: collision with root package name */
    private n0 f82623d;

    /* renamed from: e  reason: collision with root package name */
    private SentryOptions f82624e;

    /* JADX WARN: Multi-variable type inference failed */
    public FragmentLifecycleIntegration(@g Application application, @g Set<? extends FragmentLifecycleState> filterFragmentLifecycleBreadcrumbs, boolean z9) {
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(filterFragmentLifecycleBreadcrumbs, "filterFragmentLifecycleBreadcrumbs");
        this.f82620a = application;
        this.f82621b = filterFragmentLifecycleBreadcrumbs;
        this.f82622c = z9;
    }

    @Override // io.sentry.z0
    public void a(@g n0 hub, @g SentryOptions options) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(options, "options");
        this.f82623d = hub;
        this.f82624e = options;
        this.f82620a.registerActivityLifecycleCallbacks(this);
        options.getLogger().c(SentryLevel.DEBUG, "FragmentLifecycleIntegration installed.", new Object[0]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f82620a.unregisterActivityLifecycleCallbacks(this);
        SentryOptions sentryOptions = this.f82624e;
        if (sentryOptions != null) {
            if (sentryOptions == null) {
                Intrinsics.throwUninitializedPropertyAccessException("options");
                sentryOptions = null;
            }
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "FragmentLifecycleIntegration removed.", new Object[0]);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@g Activity activity, @h Bundle bundle) {
        FragmentManager supportFragmentManager;
        Intrinsics.checkNotNullParameter(activity, "activity");
        n0 n0Var = null;
        FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        n0 n0Var2 = this.f82623d;
        if (n0Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("hub");
        } else {
            n0Var = n0Var2;
        }
        supportFragmentManager.registerFragmentLifecycleCallbacks(new d(n0Var, this.f82621b, this.f82622c), true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@g Activity activity, @g Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public FragmentLifecycleIntegration(@m8.g android.app.Application r3) {
        /*
            r2 = this;
            java.lang.String r0 = "application"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            io.sentry.android.fragment.FragmentLifecycleState[] r0 = io.sentry.android.fragment.FragmentLifecycleState.values()
            java.util.Set r0 = kotlin.collections.ArraysKt.toSet(r0)
            r1 = 0
            r2.<init>(r3, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.FragmentLifecycleIntegration.<init>(android.app.Application):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public FragmentLifecycleIntegration(@m8.g android.app.Application r2, boolean r3, boolean r4) {
        /*
            r1 = this;
            java.lang.String r0 = "application"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            io.sentry.android.fragment.FragmentLifecycleState[] r0 = io.sentry.android.fragment.FragmentLifecycleState.values()
            java.util.Set r0 = kotlin.collections.ArraysKt.toSet(r0)
            if (r3 == 0) goto L10
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 == 0) goto L14
            goto L18
        L14:
            java.util.Set r0 = kotlin.collections.SetsKt.emptySet()
        L18:
            r1.<init>(r2, r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.FragmentLifecycleIntegration.<init>(android.app.Application, boolean, boolean):void");
    }
}

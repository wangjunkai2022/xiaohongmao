package io.sentry.android.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.SentryLevel;
import io.sentry.SpanStatus;
import io.sentry.b0;
import io.sentry.f;
import io.sentry.n0;
import io.sentry.protocol.i;
import io.sentry.protocol.t;
import io.sentry.r2;
import io.sentry.s2;
import io.sentry.t5;
import io.sentry.v0;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import m8.g;
import m8.h;

/* compiled from: SentryFragmentLifecycleCallbacks.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 (2\u00020\u0001:\u0001#B'\u0012\b\b\u0002\u0010%\u001a\u00020\"\u0012\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040&\u0012\u0006\u0010.\u001a\u00020\n¢\u0006\u0004\b7\u00108B!\b\u0016\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u00106\u001a\u00020\n\u0012\u0006\u0010.\u001a\u00020\n¢\u0006\u0004\b7\u00109B\u001d\b\u0016\u0012\b\b\u0002\u00106\u001a\u00020\n\u0012\b\b\u0002\u0010.\u001a\u00020\n¢\u0006\u0004\b7\u0010:J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0016J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010 \u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010!\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001d\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040&8\u0006¢\u0006\f\n\u0004\b\u0007\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010.\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b+\u0010-R \u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002000/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u00105\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b4\u0010-R\u0011\u00106\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b1\u0010-¨\u0006;"}, d2 = {"Lio/sentry/android/fragment/d;", "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "Landroidx/fragment/app/Fragment;", i.b.f83726i, "Lio/sentry/android/fragment/FragmentLifecycleState;", t.b.f83859d, "", "b", "", "f", "", "h", ContextChain.TAG_INFRA, "k", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Landroid/content/Context;", "context", "onFragmentAttached", "Landroid/os/Bundle;", "outState", "onFragmentSaveInstanceState", "savedInstanceState", "onFragmentCreated", "Landroid/view/View;", "view", "onFragmentViewCreated", "onFragmentStarted", "onFragmentResumed", "onFragmentPaused", "onFragmentStopped", "onFragmentViewDestroyed", "onFragmentDestroyed", "onFragmentDetached", "Lio/sentry/n0;", "a", "Lio/sentry/n0;", "hub", "", "Ljava/util/Set;", "e", "()Ljava/util/Set;", "filterFragmentLifecycleBreadcrumbs", "c", "Z", "()Z", "enableAutoFragmentLifecycleTracing", "Ljava/util/WeakHashMap;", "Lio/sentry/v0;", "d", "Ljava/util/WeakHashMap;", "fragmentsWithOngoingTransactions", "g", "isPerformanceEnabled", "enableFragmentLifecycleBreadcrumbs", "<init>", "(Lio/sentry/n0;Ljava/util/Set;Z)V", "(Lio/sentry/n0;ZZ)V", "(ZZ)V", "sentry-android-fragment_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class d extends FragmentManager.FragmentLifecycleCallbacks {
    @g

    /* renamed from: e  reason: collision with root package name */
    public static final a f82776e = new a(null);
    @g

    /* renamed from: f  reason: collision with root package name */
    public static final String f82777f = "ui.load";
    @g

    /* renamed from: a  reason: collision with root package name */
    private final n0 f82778a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Set<FragmentLifecycleState> f82779b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f82780c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final WeakHashMap<Fragment, v0> f82781d;

    /* compiled from: SentryFragmentLifecycleCallbacks.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lio/sentry/android/fragment/d$a;", "", "", "FRAGMENT_LOAD_OP", "Ljava/lang/String;", "<init>", "()V", "sentry-android-fragment_release"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ d(io.sentry.n0 r1, java.util.Set r2, boolean r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
        /*
            r0 = this;
            r4 = r4 & 1
            if (r4 == 0) goto Ld
            io.sentry.i0 r1 = io.sentry.i0.d0()
            java.lang.String r4 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r4)
        Ld:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.d.<init>(io.sentry.n0, java.util.Set, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    private final void b(Fragment fragment, FragmentLifecycleState fragmentLifecycleState) {
        if (this.f82779b.contains(fragmentLifecycleState)) {
            f fVar = new f();
            fVar.y(NotificationCompat.CATEGORY_NAVIGATION);
            fVar.v(t.b.f83859d, fragmentLifecycleState.getBreadcrumbName$sentry_android_fragment_release());
            fVar.v("screen", f(fragment));
            fVar.u("ui.fragment.lifecycle");
            fVar.w(SentryLevel.INFO);
            b0 b0Var = new b0();
            b0Var.m(t5.f83990m, fragment);
            this.f82778a.s(fVar, b0Var);
        }
    }

    private final String f(Fragment fragment) {
        String canonicalName = fragment.getClass().getCanonicalName();
        if (canonicalName == null) {
            String simpleName = fragment.getClass().getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "fragment.javaClass.simpleName");
            return simpleName;
        }
        return canonicalName;
    }

    private final boolean g() {
        return this.f82778a.A().isTracingEnabled() && this.f82780c;
    }

    private final boolean h(Fragment fragment) {
        return this.f82781d.containsKey(fragment);
    }

    private final void i(Fragment fragment) {
        if (!g() || h(fragment)) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        this.f82778a.t(new s2() { // from class: io.sentry.android.fragment.c
            @Override // io.sentry.s2
            public final void a(r2 r2Var) {
                d.j(Ref.ObjectRef.this, r2Var);
            }
        });
        String f10 = f(fragment);
        v0 v0Var = (v0) objectRef.element;
        v0 H = v0Var == null ? null : v0Var.H(f82777f, f10);
        if (H == null) {
            return;
        }
        this.f82781d.put(fragment, H);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, io.sentry.w0] */
    public static final void j(Ref.ObjectRef transaction, r2 it) {
        Intrinsics.checkNotNullParameter(transaction, "$transaction");
        Intrinsics.checkNotNullParameter(it, "it");
        transaction.element = it.w();
    }

    private final void k(Fragment fragment) {
        v0 v0Var;
        if (g() && h(fragment) && (v0Var = this.f82781d.get(fragment)) != null) {
            SpanStatus status = v0Var.getStatus();
            if (status == null) {
                status = SpanStatus.OK;
            }
            v0Var.t(status);
            this.f82781d.remove(fragment);
        }
    }

    public final boolean c() {
        return this.f82780c;
    }

    public final boolean d() {
        return !this.f82779b.isEmpty();
    }

    @g
    public final Set<FragmentLifecycleState> e() {
        return this.f82779b;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentAttached(@g FragmentManager fragmentManager, @g Fragment fragment, @g Context context) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(context, "context");
        b(fragment, FragmentLifecycleState.ATTACHED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentCreated(@g FragmentManager fragmentManager, @g Fragment fragment, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.CREATED);
        if (fragment.isAdded()) {
            i(fragment);
        }
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentDestroyed(@g FragmentManager fragmentManager, @g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.DESTROYED);
        k(fragment);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentDetached(@g FragmentManager fragmentManager, @g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.DETACHED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentPaused(@g FragmentManager fragmentManager, @g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.PAUSED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentResumed(@g FragmentManager fragmentManager, @g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.RESUMED);
        k(fragment);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentSaveInstanceState(@g FragmentManager fragmentManager, @g Fragment fragment, @g Bundle outState) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(outState, "outState");
        b(fragment, FragmentLifecycleState.SAVE_INSTANCE_STATE);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentStarted(@g FragmentManager fragmentManager, @g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.STARTED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentStopped(@g FragmentManager fragmentManager, @g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.STOPPED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentViewCreated(@g FragmentManager fragmentManager, @g Fragment fragment, @g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(view, "view");
        b(fragment, FragmentLifecycleState.VIEW_CREATED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentViewDestroyed(@g FragmentManager fragmentManager, @g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        b(fragment, FragmentLifecycleState.VIEW_DESTROYED);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(@g n0 hub, @g Set<? extends FragmentLifecycleState> filterFragmentLifecycleBreadcrumbs, boolean z9) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(filterFragmentLifecycleBreadcrumbs, "filterFragmentLifecycleBreadcrumbs");
        this.f82778a = hub;
        this.f82779b = filterFragmentLifecycleBreadcrumbs;
        this.f82780c = z9;
        this.f82781d = new WeakHashMap<>();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public d(@m8.g io.sentry.n0 r2, boolean r3, boolean r4) {
        /*
            r1 = this;
            java.lang.String r0 = "hub"
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.d.<init>(io.sentry.n0, boolean, boolean):void");
    }

    public /* synthetic */ d(boolean z9, boolean z10, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? true : z9, (i4 & 2) != 0 ? false : z10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public d(boolean r3, boolean r4) {
        /*
            r2 = this;
            io.sentry.i0 r0 = io.sentry.i0.d0()
            java.lang.String r1 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            io.sentry.android.fragment.FragmentLifecycleState[] r1 = io.sentry.android.fragment.FragmentLifecycleState.values()
            java.util.Set r1 = kotlin.collections.ArraysKt.toSet(r1)
            if (r3 == 0) goto L14
            goto L15
        L14:
            r1 = 0
        L15:
            if (r1 == 0) goto L18
            goto L1c
        L18:
            java.util.Set r1 = kotlin.collections.SetsKt.emptySet()
        L1c:
            r2.<init>(r0, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.d.<init>(boolean, boolean):void");
    }
}

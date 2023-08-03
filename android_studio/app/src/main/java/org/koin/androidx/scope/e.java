package org.koin.androidx.scope;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: ScopeFragment.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\b\b\u0003\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001b\u0010\u0012\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lorg/koin/androidx/scope/e;", "Landroidx/fragment/app/Fragment;", "Lorg/koin/android/scope/a;", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "", "a", "Z", "initialiseScope", "Lorg/koin/core/scope/Scope;", "b", "Lorg/koin/androidx/scope/LifecycleScopeDelegate;", "getScope", "()Lorg/koin/core/scope/Scope;", "scope", "", "contentLayoutId", "<init>", "(IZ)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class e extends Fragment implements org.koin.android.scope.a {

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f92239c = {Reflection.property1(new PropertyReference1Impl(e.class, "scope", "getScope()Lorg/koin/core/scope/Scope;", 0))};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f92240a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final LifecycleScopeDelegate f92241b;

    public e() {
        this(0, false, 3, null);
    }

    public /* synthetic */ e(int i4, boolean z9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i4, (i10 & 2) != 0 ? true : z9);
    }

    @Override // org.koin.android.scope.a
    @g
    public Scope getScope() {
        return this.f92241b.getValue(this, f92239c[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f92240a) {
            w8.b z9 = getScope().z();
            z9.b("Open Fragment Scope: " + getScope());
        }
    }

    public e(@LayoutRes int i4, boolean z9) {
        super(i4);
        this.f92240a = z9;
        this.f92241b = b.c(this);
    }
}

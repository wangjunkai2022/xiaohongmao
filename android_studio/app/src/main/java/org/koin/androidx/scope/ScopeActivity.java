package org.koin.androidx.scope;

import android.os.Bundle;
import androidx.annotation.LayoutRes;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: ScopeActivity.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\b\b\u0003\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lorg/koin/androidx/scope/ScopeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lorg/koin/android/scope/a;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "", "a", "Z", "initialiseScope", "Lorg/koin/core/scope/Scope;", "b", "Lorg/koin/androidx/scope/LifecycleScopeDelegate;", "getScope", "()Lorg/koin/core/scope/Scope;", "scope", "", "contentLayoutId", "<init>", "(IZ)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class ScopeActivity extends AppCompatActivity implements org.koin.android.scope.a {

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f92235c = {Reflection.property1(new PropertyReference1Impl(ScopeActivity.class, "scope", "getScope()Lorg/koin/core/scope/Scope;", 0))};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f92236a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final LifecycleScopeDelegate f92237b;

    public ScopeActivity() {
        this(0, false, 3, null);
    }

    public /* synthetic */ ScopeActivity(int i4, boolean z9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i4, (i10 & 2) != 0 ? true : z9);
    }

    @Override // org.koin.android.scope.a
    @g
    public Scope getScope() {
        return this.f92237b.getValue(this, f92235c[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@h Bundle bundle) {
        super.onCreate(bundle);
        if (this.f92236a) {
            w8.b z9 = getScope().z();
            z9.b("Open Activity Scope: " + getScope());
        }
    }

    public ScopeActivity(@LayoutRes int i4, boolean z9) {
        super(i4);
        this.f92236a = z9;
        this.f92237b = a.b(this);
    }
}

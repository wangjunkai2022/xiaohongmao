package org.koin.androidx.scope;

import androidx.activity.ComponentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelLazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;

/* compiled from: LifecycleViewModelScopeDelegate.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00030\u0010¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00022\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0096\u0002R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000eR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00030\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u001a\u001a\u00060\u0016j\u0002`\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;", "Lkotlin/properties/ReadOnlyProperty;", "Landroidx/lifecycle/LifecycleOwner;", "Lorg/koin/core/scope/Scope;", "thisRef", "Lkotlin/reflect/KProperty;", "property", "c", "a", "Landroidx/lifecycle/LifecycleOwner;", "b", "()Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Lorg/koin/core/Koin;", "Lorg/koin/core/Koin;", "koin", "Lkotlin/Function1;", "Lkotlin/jvm/functions/Function1;", "createScope", "d", "Lorg/koin/core/scope/Scope;", "_scope", "", "Lorg/koin/core/qualifier/QualifierValue;", "e", "Ljava/lang/String;", "scopeId", "<init>", "(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class LifecycleViewModelScopeDelegate implements ReadOnlyProperty<LifecycleOwner, Scope> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final LifecycleOwner f92225a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Koin f92226b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final Function1<Koin, Scope> f92227c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private Scope f92228d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final String f92229e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LifecycleViewModelScopeDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lorg/koin/core/Koin;", "koin", "Lorg/koin/core/scope/Scope;", "a", "(Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a extends Lambda implements Function1<Koin, Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f92234a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(LifecycleOwner lifecycleOwner) {
            super(1);
            this.f92234a = lifecycleOwner;
        }

        @Override // kotlin.jvm.functions.Function1
        @g
        /* renamed from: a */
        public final Scope invoke(@g Koin koin) {
            Intrinsics.checkNotNullParameter(koin, "koin");
            return Koin.i(koin, org.koin.core.component.c.e(this.f92234a).getValue(), org.koin.core.component.c.e(this.f92234a), null, 4, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LifecycleViewModelScopeDelegate(@g LifecycleOwner lifecycleOwner, @g Koin koin, @g Function1<? super Koin, Scope> createScope) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(koin, "koin");
        Intrinsics.checkNotNullParameter(createScope, "createScope");
        this.f92225a = lifecycleOwner;
        this.f92226b = koin;
        this.f92227c = createScope;
        String value = org.koin.core.component.c.e(lifecycleOwner).getValue();
        this.f92229e = value;
        boolean z9 = lifecycleOwner instanceof ComponentActivity;
        final w8.b u9 = koin.u();
        u9.b("setup scope: " + this.f92228d + " for " + lifecycleOwner);
        Scope H = koin.H(value);
        this.f92228d = H == null ? (Scope) createScope.invoke(koin) : H;
        u9.b("got scope: " + this.f92228d + " for " + lifecycleOwner);
        lifecycleOwner.getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: org.koin.androidx.scope.LifecycleViewModelScopeDelegate.3
            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onCreate(@g LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                w8.b bVar = w8.b.this;
                bVar.b("Attach ViewModel scope: " + this.f92228d + " to " + this.b());
                ComponentActivity componentActivity = (ComponentActivity) this.b();
                f fVar = (f) new ViewModelLazy(Reflection.getOrCreateKotlinClass(f.class), new LifecycleViewModelScopeDelegate$3$onCreate$$inlined$viewModels$default$2(componentActivity), new LifecycleViewModelScopeDelegate$3$onCreate$$inlined$viewModels$default$1(componentActivity)).getValue();
                if (fVar.a() == null) {
                    fVar.b(this.f92228d);
                }
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.b.b(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.b.c(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.b.d(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.b.e(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.b.f(this, lifecycleOwner2);
            }
        });
    }

    @g
    public final LifecycleOwner b() {
        return this.f92225a;
    }

    @Override // kotlin.properties.ReadOnlyProperty
    @g
    /* renamed from: c */
    public Scope getValue(@g LifecycleOwner thisRef, @g KProperty<?> property) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        Scope scope = this.f92228d;
        if (scope != null) {
            Intrinsics.checkNotNull(scope);
            return scope;
        } else if (d.a(thisRef)) {
            Scope H = this.f92226b.H(org.koin.core.component.c.e(this.f92225a).getValue());
            if (H == null) {
                H = this.f92227c.invoke(this.f92226b);
            }
            this.f92228d = H;
            w8.b u9 = this.f92226b.u();
            u9.b("got scope: " + this.f92228d + " for " + this.f92225a);
            Scope scope2 = this.f92228d;
            Intrinsics.checkNotNull(scope2);
            return scope2;
        } else {
            throw new IllegalStateException(("can't get Scope for " + this.f92225a + " - LifecycleOwner is not Active").toString());
        }
    }

    public /* synthetic */ LifecycleViewModelScopeDelegate(LifecycleOwner lifecycleOwner, Koin koin, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleOwner, koin, (i4 & 4) != 0 ? new a(lifecycleOwner) : function1);
    }
}

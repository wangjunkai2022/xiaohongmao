package org.koin.androidx.scope;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;

/* compiled from: LifecycleScopeDelegate.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002B-\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00040\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u001d\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00032\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\bH\u0096\u0002R\u0017\u0010\u000f\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00040\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0018¨\u0006\u001c"}, d2 = {"Lorg/koin/androidx/scope/LifecycleScopeDelegate;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/properties/ReadOnlyProperty;", "Landroidx/lifecycle/LifecycleOwner;", "Lorg/koin/core/scope/Scope;", "", "d", "thisRef", "Lkotlin/reflect/KProperty;", "property", "f", "a", "Landroidx/lifecycle/LifecycleOwner;", "e", "()Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Lorg/koin/core/Koin;", "b", "Lorg/koin/core/Koin;", "koin", "Lkotlin/Function1;", "c", "Lkotlin/jvm/functions/Function1;", "createScope", "Lorg/koin/core/scope/Scope;", "_scope", "<init>", "(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class LifecycleScopeDelegate<T> implements ReadOnlyProperty<LifecycleOwner, Scope> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final LifecycleOwner f92218a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Koin f92219b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final Function1<Koin, Scope> f92220c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private Scope f92221d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LifecycleScopeDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/Koin;", "koin", "Lorg/koin/core/scope/Scope;", "a", "(Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a extends Lambda implements Function1<Koin, Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f92224a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(LifecycleOwner lifecycleOwner) {
            super(1);
            this.f92224a = lifecycleOwner;
        }

        @Override // kotlin.jvm.functions.Function1
        @g
        /* renamed from: a */
        public final Scope invoke(@g Koin koin) {
            Intrinsics.checkNotNullParameter(koin, "koin");
            return koin.e(org.koin.core.component.c.d(this.f92224a), org.koin.core.component.c.e(this.f92224a), this.f92224a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LifecycleScopeDelegate(@g LifecycleOwner lifecycleOwner, @g Koin koin, @g Function1<? super Koin, Scope> createScope) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(koin, "koin");
        Intrinsics.checkNotNullParameter(createScope, "createScope");
        this.f92218a = lifecycleOwner;
        this.f92219b = koin;
        this.f92220c = createScope;
        final w8.b u9 = koin.u();
        u9.b("setup scope: " + this.f92221d + " for " + lifecycleOwner);
        lifecycleOwner.getLifecycle().addObserver(new DefaultLifecycleObserver(this) { // from class: org.koin.androidx.scope.LifecycleScopeDelegate.2

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LifecycleScopeDelegate<T> f92222a;

            {
                this.f92222a = this;
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onCreate(@g LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                this.f92222a.d();
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onDestroy(@g LifecycleOwner owner) {
                Scope scope;
                Intrinsics.checkNotNullParameter(owner, "owner");
                w8.b bVar = u9;
                bVar.b("Closing scope: " + ((LifecycleScopeDelegate) this.f92222a).f92221d + " for " + this.f92222a.e());
                Scope scope2 = ((LifecycleScopeDelegate) this.f92222a).f92221d;
                boolean z9 = false;
                if (scope2 != null && !scope2.v()) {
                    z9 = true;
                }
                if (z9 && (scope = ((LifecycleScopeDelegate) this.f92222a).f92221d) != null) {
                    scope.e();
                }
                ((LifecycleScopeDelegate) this.f92222a).f92221d = null;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        if (this.f92221d == null) {
            w8.b u9 = this.f92219b.u();
            u9.b("Create scope: " + this.f92221d + " for " + this.f92218a);
            Scope H = this.f92219b.H(org.koin.core.component.c.d(this.f92218a));
            if (H == null) {
                H = this.f92220c.invoke(this.f92219b);
            }
            this.f92221d = H;
        }
    }

    @g
    public final LifecycleOwner e() {
        return this.f92218a;
    }

    @Override // kotlin.properties.ReadOnlyProperty
    @g
    /* renamed from: f */
    public Scope getValue(@g LifecycleOwner thisRef, @g KProperty<?> property) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        Scope scope = this.f92221d;
        if (scope != null) {
            if (scope != null) {
                return scope;
            }
            throw new IllegalStateException(("can't get Scope for " + this.f92218a).toString());
        }
        d();
        Scope scope2 = this.f92221d;
        if (scope2 != null) {
            return scope2;
        }
        throw new IllegalStateException(("can't get Scope for " + this.f92218a).toString());
    }

    public /* synthetic */ LifecycleScopeDelegate(LifecycleOwner lifecycleOwner, Koin koin, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleOwner, koin, (i4 & 4) != 0 ? new a(lifecycleOwner) : function1);
    }
}

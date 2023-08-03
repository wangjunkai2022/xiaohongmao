package r8;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.component.a;
import org.koin.core.scope.Scope;

/* compiled from: KoinFragmentFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\r"}, d2 = {"Lr8/b;", "Landroidx/fragment/app/FragmentFactory;", "Lorg/koin/core/component/a;", "Ljava/lang/ClassLoader;", "classLoader", "", "className", "Landroidx/fragment/app/Fragment;", "instantiate", "Lorg/koin/core/scope/Scope;", "scope", "<init>", "(Lorg/koin/core/scope/Scope;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class b extends FragmentFactory implements org.koin.core.component.a {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final Scope f93214a;

    public b() {
        this(null, 1, null);
    }

    public b(@h Scope scope) {
        this.f93214a = scope;
    }

    @Override // org.koin.core.component.a
    @g
    public Koin getKoin() {
        return a.C0815a.a(this);
    }

    @Override // androidx.fragment.app.FragmentFactory
    @g
    public Fragment instantiate(@g ClassLoader classLoader, @g String className) {
        Fragment fragment;
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(className, "className");
        Class<?> cls = Class.forName(className);
        Intrinsics.checkNotNullExpressionValue(cls, "forName(className)");
        KClass kotlinClass = JvmClassMappingKt.getKotlinClass(cls);
        Scope scope = this.f93214a;
        if (scope != null) {
            fragment = (Fragment) Scope.C(scope, kotlinClass, null, null, 6, null);
        } else {
            fragment = (Fragment) Koin.A(getKoin(), kotlinClass, null, null, 6, null);
        }
        if (fragment == null) {
            Fragment instantiate = super.instantiate(classLoader, className);
            Intrinsics.checkNotNullExpressionValue(instantiate, "super.instantiate(classLoader, className)");
            return instantiate;
        }
        return fragment;
    }

    public /* synthetic */ b(Scope scope, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : scope);
    }
}

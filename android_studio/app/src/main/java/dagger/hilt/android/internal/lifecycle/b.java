package dagger.hilt.android.internal.lifecycle;

import dagger.hilt.android.internal.lifecycle.a;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;
import java.util.Set;

/* compiled from: DefaultViewModelFactories_InternalFactoryFactory_Factory.java */
@r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class b implements h<a.d> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Set<String>> f62015a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<h6.f> f62016b;

    public b(u7.c<Set<String>> keySetProvider, u7.c<h6.f> viewModelComponentBuilderProvider) {
        this.f62015a = keySetProvider;
        this.f62016b = viewModelComponentBuilderProvider;
    }

    public static b a(u7.c<Set<String>> keySetProvider, u7.c<h6.f> viewModelComponentBuilderProvider) {
        return new b(keySetProvider, viewModelComponentBuilderProvider);
    }

    public static a.d c(Set<String> keySet, h6.f viewModelComponentBuilder) {
        return new a.d(keySet, viewModelComponentBuilder);
    }

    @Override // u7.c
    /* renamed from: b */
    public a.d get() {
        return c(this.f62015a.get(), this.f62016b.get());
    }
}

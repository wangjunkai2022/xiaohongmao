package v8;

import io.sentry.h4;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DefaultContextExt.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\u001a\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a#\u0010\b\u001a\u00020\u00002\u001b\u0010\u0007\u001a\u0017\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005¢\u0006\u0002\b\u0006\u001a\u0006\u0010\t\u001a\u00020\u0004\u001a\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n\u001a\u0014\u0010\u000f\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r\u001a\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n\u001a\u0014\u0010\u0011\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r¨\u0006\u0012"}, d2 = {"Lorg/koin/core/a;", "koinApplication", "d", "Lkotlin/Function1;", "", "Lorg/koin/dsl/KoinAppDeclaration;", "Lkotlin/ExtensionFunctionType;", "appDeclaration", "c", "e", "Lx8/a;", "module", "b", "", h4.b.f83291i, "a", "g", "f", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    public static final void a(@g List<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        d9.b.f62011a.a().g(modules);
    }

    public static final void b(@g x8.a module) {
        Intrinsics.checkNotNullParameter(module, "module");
        d9.b.f62011a.a().d(module);
    }

    @g
    public static final org.koin.core.a c(@g Function1<? super org.koin.core.a, Unit> appDeclaration) {
        Intrinsics.checkNotNullParameter(appDeclaration, "appDeclaration");
        return d9.b.f62011a.a().f(appDeclaration);
    }

    @g
    public static final org.koin.core.a d(@g org.koin.core.a koinApplication) {
        Intrinsics.checkNotNullParameter(koinApplication, "koinApplication");
        return d9.b.f62011a.a().h(koinApplication);
    }

    public static final void e() {
        d9.b.f62011a.a().a();
    }

    public static final void f(@g List<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        d9.b.f62011a.a().e(modules);
    }

    public static final void g(@g x8.a module) {
        Intrinsics.checkNotNullParameter(module, "module");
        d9.b.f62011a.a().c(module);
    }
}

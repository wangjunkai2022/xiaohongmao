package v8;

import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.error.KoinAppAlreadyStartedException;

/* compiled from: GlobalContext.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\b\u0010\n\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J%\u0010\u0010\u001a\u00020\u00022\u001b\u0010\u000f\u001a\u0017\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\fj\u0002`\r¢\u0006\u0002\b\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0016\u0010\u0016\u001a\u00020\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00110\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0016\u0010\u0018\u001a\u00020\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00110\u0014H\u0016¨\u0006\u001b"}, d2 = {"Lv8/b;", "Lv8/d;", "Lorg/koin/core/a;", "koinApplication", "", "j", "Lorg/koin/core/Koin;", "get", "b", ContextChain.TAG_INFRA, "a", "h", "Lkotlin/Function1;", "Lorg/koin/dsl/KoinAppDeclaration;", "Lkotlin/ExtensionFunctionType;", "appDeclaration", "f", "Lx8/a;", "module", "d", "", h4.b.f83291i, "g", "c", "e", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b implements d {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final b f94213a = new b();
    @h

    /* renamed from: b  reason: collision with root package name */
    private static Koin f94214b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private static org.koin.core.a f94215c;

    private b() {
    }

    private final void j(org.koin.core.a aVar) {
        if (f94214b == null) {
            f94215c = aVar;
            f94214b = aVar.e();
            return;
        }
        throw new KoinAppAlreadyStartedException("A Koin Application has already been started");
    }

    @Override // v8.d
    public void a() {
        synchronized (this) {
            Koin koin = f94214b;
            if (koin != null) {
                koin.a();
            }
            f94214b = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // v8.d
    @h
    public Koin b() {
        return f94214b;
    }

    @Override // v8.d
    public void c(@g x8.a module) {
        List<x8.a> listOf;
        Intrinsics.checkNotNullParameter(module, "module");
        synchronized (this) {
            Koin koin = f94213a.get();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(module);
            koin.S(listOf);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // v8.d
    public void d(@g x8.a module) {
        List listOf;
        Intrinsics.checkNotNullParameter(module, "module");
        synchronized (this) {
            Koin koin = f94213a.get();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(module);
            Koin.P(koin, listOf, false, 2, null);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // v8.d
    public void e(@g List<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        synchronized (this) {
            f94213a.get().S(modules);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // v8.d
    @g
    public org.koin.core.a f(@g Function1<? super org.koin.core.a, Unit> appDeclaration) {
        org.koin.core.a a10;
        Intrinsics.checkNotNullParameter(appDeclaration, "appDeclaration");
        synchronized (this) {
            a10 = org.koin.core.a.f92408c.a();
            f94213a.j(a10);
            appDeclaration.invoke(a10);
            a10.d();
        }
        return a10;
    }

    @Override // v8.d
    public void g(@g List<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        synchronized (this) {
            Koin.P(f94213a.get(), modules, false, 2, null);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // v8.d
    @g
    public Koin get() {
        Koin koin = f94214b;
        if (koin != null) {
            return koin;
        }
        throw new IllegalStateException("KoinApplication has not been started".toString());
    }

    @Override // v8.d
    @g
    public org.koin.core.a h(@g org.koin.core.a koinApplication) {
        Intrinsics.checkNotNullParameter(koinApplication, "koinApplication");
        synchronized (this) {
            f94213a.j(koinApplication);
            koinApplication.d();
        }
        return koinApplication;
    }

    @h
    public final org.koin.core.a i() {
        return f94215c;
    }
}

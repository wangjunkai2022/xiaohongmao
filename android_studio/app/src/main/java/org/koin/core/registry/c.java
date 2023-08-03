package org.koin.core.registry;

import io.sentry.h4;
import io.sentry.protocol.v;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.error.ScopeAlreadyCreatedException;
import org.koin.core.scope.Scope;

/* compiled from: ScopeRegistry.kt */
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u000e\u0018\u0000 /2\u00020\u0001:\u0001\u001bB\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b-\u0010.J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0010\t\u001a\u00060\u0007j\u0002`\bH\u0001J(\u0010\u000f\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0007j\u0002`\b2\u0006\u0010\r\u001a\u00020\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0001J\u001b\u0010\u0010\u001a\u00020\u00022\n\u0010\t\u001a\u00060\u0007j\u0002`\bH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0019\u001a\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR$\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\f0\u001ej\b\u0012\u0004\u0012\u00020\f`\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010 R$\u0010$\u001a\u0012\u0012\b\u0012\u00060\u0007j\u0002`\b\u0012\u0004\u0012\u00020\n0\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010#R \u0010)\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u000f\u0010%\u0012\u0004\b(\u0010\u0016\u001a\u0004\b&\u0010'R\u0017\u0010,\u001a\b\u0012\u0004\u0012\u00020\f0\u00178F¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u00060"}, d2 = {"Lorg/koin/core/registry/c;", "", "", "c", "Lx8/a;", "module", "l", "", "Lorg/koin/core/scope/ScopeID;", "scopeId", "Lorg/koin/core/scope/Scope;", "k", "Lz8/a;", "qualifier", v.b.f83881a, "d", "f", "(Ljava/lang/String;)V", "scope", "g", "(Lorg/koin/core/scope/Scope;)V", "b", "()V", "", h4.b.f83291i, "m", "Lorg/koin/core/Koin;", "a", "Lorg/koin/core/Koin;", "_koin", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "Ljava/util/HashSet;", "_scopeDefinitions", "", "Ljava/util/Map;", "_scopes", "Lorg/koin/core/scope/Scope;", "h", "()Lorg/koin/core/scope/Scope;", "getRootScope$annotations", "rootScope", "j", "()Ljava/util/Set;", "scopeDefinitions", "<init>", "(Lorg/koin/core/Koin;)V", "e", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class c {
    @g

    /* renamed from: e  reason: collision with root package name */
    public static final a f92526e = new a(null);
    @g

    /* renamed from: f  reason: collision with root package name */
    private static final String f92527f = "_root_";
    @g

    /* renamed from: g  reason: collision with root package name */
    private static final z8.c f92528g = z8.b.a(f92527f);
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Koin f92529a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<z8.a> f92530b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Scope> f92531c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final Scope f92532d;

    /* compiled from: ScopeRegistry.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\bR \u0010\u0003\u001a\u00020\u00028\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lorg/koin/core/registry/c$a;", "", "Lz8/c;", "rootScopeQualifier", "Lz8/c;", "a", "()Lz8/c;", "getRootScopeQualifier$annotations", "()V", "", "ROOT_SCOPE_ID", "Ljava/lang/String;", "<init>", "koin-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @PublishedApi
        public static /* synthetic */ void b() {
        }

        @g
        public final z8.c a() {
            return c.f92528g;
        }
    }

    public c(@g Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.f92529a = _koin;
        HashSet<z8.a> hashSet = new HashSet<>();
        this.f92530b = hashSet;
        Map<String, Scope> h4 = d9.b.f62011a.h();
        this.f92531c = h4;
        Scope scope = new Scope(f92528g, f92527f, true, _koin);
        this.f92532d = scope;
        hashSet.add(scope.I());
        h4.put(scope.x(), scope);
    }

    private final void c() {
        for (Scope scope : this.f92531c.values()) {
            scope.e();
        }
    }

    public static /* synthetic */ Scope e(c cVar, String str, z8.a aVar, Object obj, int i4, Object obj2) {
        if ((i4 & 4) != 0) {
            obj = null;
        }
        return cVar.d(str, aVar, obj);
    }

    @u8.b
    public static /* synthetic */ void i() {
    }

    private final void l(x8.a aVar) {
        this.f92530b.addAll(aVar.j());
    }

    public final void b() {
        c();
        this.f92531c.clear();
        this.f92530b.clear();
    }

    @PublishedApi
    @g
    public final Scope d(@g String scopeId, @g z8.a qualifier, @h Object obj) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        if (!this.f92530b.contains(qualifier)) {
            w8.b u9 = this.f92529a.u();
            u9.f("Warning: Scope '" + qualifier + "' not defined. Creating it");
            this.f92530b.add(qualifier);
        }
        if (!this.f92531c.containsKey(scopeId)) {
            Scope scope = new Scope(qualifier, scopeId, false, this.f92529a, 4, null);
            if (obj != null) {
                scope.c0(obj);
            }
            scope.W(this.f92532d);
            this.f92531c.put(scopeId, scope);
            return scope;
        }
        throw new ScopeAlreadyCreatedException("Scope with id '" + scopeId + "' is already created");
    }

    public final void f(@g String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Scope scope = this.f92531c.get(scopeId);
        if (scope != null) {
            g(scope);
        }
    }

    public final void g(@g Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f92529a.s().h(scope);
        this.f92531c.remove(scope.x());
    }

    @g
    public final Scope h() {
        return this.f92532d;
    }

    @g
    public final Set<z8.a> j() {
        return this.f92530b;
    }

    @h
    @PublishedApi
    public final Scope k(@g String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        return this.f92531c.get(scopeId);
    }

    public final void m(@g Set<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        for (x8.a aVar : modules) {
            l(aVar);
        }
    }
}

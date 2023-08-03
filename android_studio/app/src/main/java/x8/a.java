package x8;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.definition.Kind;
import org.koin.core.instance.d;
import org.koin.core.instance.f;
import org.koin.core.scope.Scope;
import z8.c;

/* compiled from: Module.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u00102\u001a\u00020\u0012¢\u0006\u0004\bV\u0010WJ!\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0002\"\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0014\u0010\b\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007J'\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0002\b\rJ-\u0010\u0011\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0010\u0018\u00012\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000Jq\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a0\u0019j\b\u0012\u0004\u0012\u00028\u0000`\u001b\"\u0006\b\u0000\u0010\u0010\u0018\u00012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0013\u001a\u00020\u00122)\b\b\u0010\u0018\u001a#\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00028\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0017¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000J\u0014\u0010\u001e\u001a\u00020\u00042\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0001J\u0014\u0010\u001f\u001a\u00020\u00042\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0001J\u0014\u0010!\u001a\u00020\u00042\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030 H\u0001J*\u0010'\u001a\u00020\u00042\n\u0010$\u001a\u00060\"j\u0002`#2\n\u0010%\u001a\u0006\u0012\u0002\b\u00030\u001a2\b\b\u0002\u0010&\u001a\u00020\u0012H\u0001Jg\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a0\u0019j\b\u0012\u0004\u0012\u00028\u0000`\u001b\"\u0006\b\u0000\u0010\u0010\u0018\u00012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2)\b\b\u0010\u0018\u001a#\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00028\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0017¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000Jo\u0010*\u001a\u001e\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a0\u0019j\b\u0012\u0004\u0012\u00028\u0000`\u001b\"\u0006\b\u0000\u0010\u0010\u0018\u00012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2)\b\b\u0010\u0018\u001a#\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00028\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0017¢\u0006\u0002\b\r2\u0006\u0010)\u001a\u00020\tH\u0081\bø\u0001\u0000J\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\u0003\u001a\u00020\u0000H\u0086\u0002J\u001d\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00000\u00072\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007H\u0086\u0002J\u0013\u0010/\u001a\u00020\u00122\b\u0010.\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u00101\u001a\u000200H\u0016R \u00102\u001a\u00020\u00128\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b2\u00103\u0012\u0004\b6\u00107\u001a\u0004\b4\u00105R\u0017\u00108\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;RZ\u0010?\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030 0<j\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030 `=2\u001e\u0010>\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030 0<j\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030 `=8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DRL\u0010G\u001a.\u0012\b\u0012\u00060\"j\u0002`#\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0Ej\u0016\u0012\b\u0012\u00060\"j\u0002`#\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a`F8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\bG\u0010H\u0012\u0004\bK\u00107\u001a\u0004\bI\u0010JR\u0011\u0010M\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\bL\u00105R0\u0010N\u001a\u0012\u0012\u0004\u0012\u00020\t0<j\b\u0012\u0004\u0012\u00020\t`=8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\bN\u0010@\u0012\u0004\bP\u00107\u001a\u0004\bO\u0010BR \u0010R\u001a\b\u0012\u0004\u0012\u00020\u00000Q8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006X"}, d2 = {"Lx8/a;", "", "", "module", "", "o", "([Lx8/a;)V", "", "n", "Lz8/a;", "qualifier", "Lkotlin/Function1;", "Lb9/d;", "Lkotlin/ExtensionFunctionType;", "scopeSet", y.b.f83920h, ExifInterface.GPS_DIRECTION_TRUE, y.b.f83919g, "", "createdAtStart", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "Lorg/koin/core/definition/Definition;", "definition", "Lkotlin/Pair;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "instanceFactory", "p", "q", "Lorg/koin/core/instance/f;", "u", "", "Lorg/koin/core/definition/IndexKey;", "mapping", "factory", "allowOverride", "v", "a", "scopeQualifier", "b", "t", h4.b.f83291i, "s", "other", "equals", "", "hashCode", "_createdAtStart", "Z", "l", "()Z", "get_createdAtStart$annotations", "()V", "id", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "<set-?>", "eagerInstances", "Ljava/util/HashSet;", "e", "()Ljava/util/HashSet;", "z", "(Ljava/util/HashSet;)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "mappings", "Ljava/util/HashMap;", "h", "()Ljava/util/HashMap;", "getMappings$annotations", "r", "isLoaded", "scopes", "j", "getScopes$annotations", "", "includedModules", "Ljava/util/List;", "g", "()Ljava/util/List;", "<init>", "(Z)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f94674a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final String f94675b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private HashSet<f<?>> f94676c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<String, d<?>> f94677d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<z8.a> f94678e;
    @g

    /* renamed from: f  reason: collision with root package name */
    private final List<a> f94679f;

    public a() {
        this(false, 1, null);
    }

    public a(boolean z9) {
        this.f94674a = z9;
        this.f94675b = d9.b.f62011a.e();
        this.f94676c = new HashSet<>();
        this.f94677d = new HashMap<>();
        this.f94678e = new HashSet<>();
        this.f94679f = new ArrayList();
    }

    public static /* synthetic */ Pair B(a aVar, z8.a aVar2, boolean z9, Function2 definition, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        z8.a aVar3 = aVar2;
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar3, definition, kind, emptyList));
        aVar.p(fVar);
        if (z9 || aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair(aVar, fVar);
    }

    public static /* synthetic */ Pair c(a aVar, z8.a aVar2, Function2 definition, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, definition, kind, emptyList));
        aVar.p(aVar3);
        return new Pair(aVar, aVar3);
    }

    public static /* synthetic */ Pair d(a aVar, z8.a aVar2, Function2 definition, z8.a scopeQualifier, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar2, definition, kind, emptyList));
        aVar.p(aVar3);
        return new Pair(aVar, aVar3);
    }

    @PublishedApi
    public static /* synthetic */ void i() {
    }

    @PublishedApi
    public static /* synthetic */ void k() {
    }

    @PublishedApi
    public static /* synthetic */ void m() {
    }

    public static /* synthetic */ void w(a aVar, String str, d dVar, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        aVar.v(str, dVar, z9);
    }

    public final /* synthetic */ <T> Pair<a, d<T>> A(z8.a aVar, boolean z9, Function2<? super Scope, ? super y8.a, ? extends T> definition) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
        p(fVar);
        if (z9 || l()) {
            u(fVar);
        }
        return new Pair<>(this, fVar);
    }

    public final /* synthetic */ <T> Pair<a, d<T>> a(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
        p(aVar2);
        return new Pair<>(this, aVar2);
    }

    @PublishedApi
    public final /* synthetic */ <T> Pair<a, d<T>> b(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition, z8.a scopeQualifier) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
        p(aVar2);
        return new Pair<>(this, aVar2);
    }

    @g
    public final HashSet<f<?>> e() {
        return this.f94676c;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(a.class), Reflection.getOrCreateKotlinClass(obj.getClass())) && Intrinsics.areEqual(this.f94675b, ((a) obj).f94675b);
    }

    @g
    public final String f() {
        return this.f94675b;
    }

    @g
    public final List<a> g() {
        return this.f94679f;
    }

    @g
    public final HashMap<String, d<?>> h() {
        return this.f94677d;
    }

    public int hashCode() {
        return this.f94675b.hashCode();
    }

    @g
    public final HashSet<z8.a> j() {
        return this.f94678e;
    }

    public final boolean l() {
        return this.f94674a;
    }

    public final void n(@g List<a> module) {
        Intrinsics.checkNotNullParameter(module, "module");
        CollectionsKt__MutableCollectionsKt.addAll(this.f94679f, module);
    }

    public final void o(@g a... module) {
        Intrinsics.checkNotNullParameter(module, "module");
        CollectionsKt__MutableCollectionsKt.addAll(this.f94679f, module);
    }

    @PublishedApi
    @u8.b
    public final void p(@g d<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        org.koin.core.definition.a<?> f10 = instanceFactory.f();
        w(this, org.koin.core.definition.b.c(f10.l(), f10.m(), f10.n()), instanceFactory, false, 4, null);
    }

    @PublishedApi
    @u8.b
    public final void q(@g d<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        org.koin.core.definition.a<?> f10 = instanceFactory.f();
        Iterator<T> it = f10.o().iterator();
        while (it.hasNext()) {
            w(this, org.koin.core.definition.b.c((KClass) it.next(), f10.m(), f10.n()), instanceFactory, false, 4, null);
        }
    }

    public final boolean r() {
        return this.f94677d.size() > 0;
    }

    @g
    public final List<a> s(@g List<a> modules) {
        List listOf;
        List<a> plus;
        Intrinsics.checkNotNullParameter(modules, "modules");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this);
        plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) modules);
        return plus;
    }

    @g
    public final List<a> t(@g a module) {
        List<a> listOf;
        Intrinsics.checkNotNullParameter(module, "module");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new a[]{this, module});
        return listOf;
    }

    @PublishedApi
    @u8.b
    public final void u(@g f<?> instanceFactory) {
        Intrinsics.checkNotNullParameter(instanceFactory, "instanceFactory");
        this.f94676c.add(instanceFactory);
    }

    @PublishedApi
    public final void v(@g String mapping, @g d<?> factory, boolean z9) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (!z9 && this.f94677d.containsKey(mapping)) {
            b.i(factory, mapping);
        }
        this.f94677d.put(mapping, factory);
    }

    public final /* synthetic */ <T> void x(Function1<? super b9.d, Unit> scopeSet) {
        Intrinsics.checkNotNullParameter(scopeSet, "scopeSet");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        z8.d dVar = new z8.d(Reflection.getOrCreateKotlinClass(Object.class));
        scopeSet.invoke(new b9.d(dVar, this));
        j().add(dVar);
    }

    public final void y(@g z8.a qualifier, @g Function1<? super b9.d, Unit> scopeSet) {
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        Intrinsics.checkNotNullParameter(scopeSet, "scopeSet");
        scopeSet.invoke(new b9.d(qualifier, this));
        this.f94678e.add(qualifier);
    }

    public final void z(@g HashSet<f<?>> hashSet) {
        Intrinsics.checkNotNullParameter(hashSet, "<set-?>");
        this.f94676c = hashSet;
    }

    public /* synthetic */ a(boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? false : z9);
    }
}

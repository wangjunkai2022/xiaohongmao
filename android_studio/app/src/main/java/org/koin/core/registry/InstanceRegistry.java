package org.koin.core.registry;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.definition.Kind;
import org.koin.core.instance.d;
import org.koin.core.instance.e;
import org.koin.core.instance.f;
import org.koin.core.logger.Level;
import org.koin.core.scope.Scope;

/* compiled from: InstanceRegistry.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010?\u001a\u00020;¢\u0006\u0004\bH\u0010IJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010\f\u001a\u00020\u00062\u001e\u0010\u000b\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\bj\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t`\nH\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J%\u0010\u0010\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J2\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u0016\u001a\u00060\u0014j\u0002`\u00152\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u0004H\u0007J3\u0010 \u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00172\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u001dH\u0000¢\u0006\u0004\b \u0010!J=\u0010%\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\"2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001b2\u0006\u0010\u001f\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020#H\u0000¢\u0006\u0004\b%\u0010&J^\u0010,\u001a\u00020\u0006\"\u0006\b\u0000\u0010\"\u0018\u00012\u0006\u0010'\u001a\u00028\u00002\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0012\b\u0002\u0010)\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001b0(2\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001d2\n\u0010+\u001a\u00060\u0014j\u0002`*H\u0081\b¢\u0006\u0004\b,\u0010-JJ\u0010.\u001a\u00020\u0006\"\u0006\b\u0000\u0010\"\u0018\u00012\u0006\u0010'\u001a\u00028\u00002\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0012\b\u0002\u0010)\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001b0(2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0081\b¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u000200H\u0000¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0006H\u0000¢\u0006\u0004\b4\u0010\u0013J/\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000(\"\u0004\b\u0000\u0010\"2\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001b2\u0006\u0010$\u001a\u00020#H\u0000¢\u0006\u0004\b5\u00106J\u001d\u00107\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH\u0000¢\u0006\u0004\b7\u00108J\u0006\u0010:\u001a\u000209R\u0017\u0010?\u001a\u00020;8\u0006¢\u0006\f\n\u0004\b4\u0010<\u001a\u0004\b=\u0010>R(\u0010B\u001a\u0016\u0012\b\u0012\u00060\u0014j\u0002`\u0015\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00170@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010AR,\u0010\u000b\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\bj\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t`\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010CR%\u0010G\u001a\u0016\u0012\b\u0012\u00060\u0014j\u0002`\u0015\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00170D8F¢\u0006\u0006\u001a\u0004\bE\u0010F¨\u0006J"}, d2 = {"Lorg/koin/core/registry/InstanceRegistry;", "", "Lx8/a;", "module", "", "allowOverride", "", "l", "Ljava/util/HashSet;", "Lorg/koin/core/instance/f;", "Lkotlin/collections/HashSet;", "eagerInstances", "c", "s", "", h4.b.f83291i, "m", "(Ljava/util/Set;Z)V", "b", "()V", "", "Lorg/koin/core/definition/IndexKey;", "mapping", "Lorg/koin/core/instance/d;", "factory", "logWarning", "p", "Lkotlin/reflect/KClass;", "clazz", "Lz8/a;", "qualifier", "scopeQualifier", "n", "(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Lorg/koin/core/instance/d;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/instance/c;", "instanceContext", "o", "(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lorg/koin/core/instance/c;)Ljava/lang/Object;", "instance", "", "secondaryTypes", "Lorg/koin/core/scope/ScopeID;", "scopeID", "f", "(Ljava/lang/Object;Lz8/a;Ljava/util/List;ZLz8/a;Ljava/lang/String;)V", "d", "(Ljava/lang/Object;Lz8/a;Ljava/util/List;Z)V", "Lorg/koin/core/scope/Scope;", "scope", "h", "(Lorg/koin/core/scope/Scope;)V", "a", ContextChain.TAG_INFRA, "(Lkotlin/reflect/KClass;Lorg/koin/core/instance/c;)Ljava/util/List;", "t", "(Ljava/util/Set;)V", "", "r", "Lorg/koin/core/Koin;", "Lorg/koin/core/Koin;", "k", "()Lorg/koin/core/Koin;", "_koin", "", "Ljava/util/Map;", "_instances", "Ljava/util/HashSet;", "", "j", "()Ljava/util/Map;", "instances", "<init>", "(Lorg/koin/core/Koin;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class InstanceRegistry {
    @g

    /* renamed from: a */
    private final Koin f92514a;
    @g

    /* renamed from: b */
    private final Map<String, d<?>> f92515b;
    @g

    /* renamed from: c */
    private final HashSet<f<?>> f92516c;

    public InstanceRegistry(@g Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.f92514a = _koin;
        this.f92515b = d9.b.f62011a.h();
        this.f92516c = new HashSet<>();
    }

    private final void c(HashSet<f<?>> hashSet) {
        if (!hashSet.isEmpty()) {
            if (this.f92514a.u().g(Level.DEBUG)) {
                this.f92514a.u().b("Creating eager instances ...");
            }
            Koin koin = this.f92514a;
            org.koin.core.instance.c cVar = new org.koin.core.instance.c(koin, koin.I().h(), null, 4, null);
            Iterator<T> it = hashSet.iterator();
            while (it.hasNext()) {
                ((f) it.next()).e(cVar);
            }
        }
    }

    public static /* synthetic */ void e(InstanceRegistry instanceRegistry, Object obj, z8.a aVar, List list, boolean z9, int i4, Object obj2) {
        List secondaryTypes;
        List emptyList;
        z8.a aVar2 = (i4 & 2) != 0 ? null : aVar;
        if ((i4 & 4) != 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            secondaryTypes = emptyList;
        } else {
            secondaryTypes = list;
        }
        boolean z10 = (i4 & 8) != 0 ? true : z9;
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        z8.a I = instanceRegistry.k().I().h().I();
        Kind kind = Kind.Scoped;
        Intrinsics.needClassReification();
        InstanceRegistry$declareRootInstance$def$1 instanceRegistry$declareRootInstance$def$1 = new InstanceRegistry$declareRootInstance$def$1(obj);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.definition.a aVar3 = new org.koin.core.definition.a(I, Reflection.getOrCreateKotlinClass(Object.class), aVar2, instanceRegistry$declareRootInstance$def$1, kind, secondaryTypes);
        f fVar = new f(aVar3);
        q(instanceRegistry, z10, org.koin.core.definition.b.c(aVar3.l(), aVar3.m(), aVar3.n()), fVar, false, 8, null);
        Iterator<T> it = aVar3.o().iterator();
        while (it.hasNext()) {
            q(instanceRegistry, z10, org.koin.core.definition.b.c((KClass) it.next(), aVar3.m(), aVar3.n()), fVar, false, 8, null);
        }
    }

    public static /* synthetic */ void g(InstanceRegistry instanceRegistry, Object obj, z8.a aVar, List list, boolean z9, z8.a scopeQualifier, String scopeID, int i4, Object obj2) {
        List secondaryTypes;
        List emptyList;
        z8.a aVar2 = (i4 & 2) != 0 ? null : aVar;
        if ((i4 & 4) != 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            secondaryTypes = emptyList;
        } else {
            secondaryTypes = list;
        }
        boolean z10 = (i4 & 8) != 0 ? true : z9;
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Kind kind = Kind.Scoped;
        Intrinsics.needClassReification();
        InstanceRegistry$declareScopedInstance$def$1 instanceRegistry$declareScopedInstance$def$1 = new InstanceRegistry$declareScopedInstance$def$1(obj);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.definition.a aVar3 = new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar2, instanceRegistry$declareScopedInstance$def$1, kind, secondaryTypes);
        String c10 = org.koin.core.definition.b.c(aVar3.l(), aVar3.m(), aVar3.n());
        d<?> dVar = instanceRegistry.j().get(c10);
        e eVar = dVar instanceof e ? (e) dVar : null;
        if (eVar != null) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Any");
            eVar.j(scopeID, obj);
            return;
        }
        e eVar2 = new e(aVar3);
        q(instanceRegistry, z10, c10, eVar2, false, 8, null);
        Iterator<T> it = aVar3.o().iterator();
        while (it.hasNext()) {
            q(instanceRegistry, z10, org.koin.core.definition.b.c((KClass) it.next(), aVar3.m(), aVar3.n()), eVar2, false, 8, null);
        }
    }

    private final void l(x8.a aVar, boolean z9) {
        for (Map.Entry<String, d<?>> entry : aVar.h().entrySet()) {
            q(this, z9, entry.getKey(), entry.getValue(), false, 8, null);
        }
    }

    public static /* synthetic */ void q(InstanceRegistry instanceRegistry, boolean z9, String str, d dVar, boolean z10, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            z10 = true;
        }
        instanceRegistry.p(z9, str, dVar, z10);
    }

    private final void s(x8.a aVar) {
        Set<String> keySet = aVar.h().keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "module.mappings.keys");
        for (String str : keySet) {
            if (this.f92515b.containsKey(str)) {
                d<?> dVar = this.f92515b.get(str);
                if (dVar != null) {
                    dVar.d();
                }
                this.f92515b.remove(str);
            }
        }
    }

    public final void a() {
        for (Map.Entry<String, d<?>> entry : this.f92515b.entrySet()) {
            entry.getKey();
            entry.getValue().d();
        }
        this.f92515b.clear();
    }

    public final void b() {
        c(this.f92516c);
        this.f92516c.clear();
    }

    @PublishedApi
    public final /* synthetic */ <T> void d(T t9, z8.a aVar, List<? extends KClass<?>> secondaryTypes, boolean z9) {
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        z8.a I = k().I().h().I();
        Kind kind = Kind.Scoped;
        Intrinsics.needClassReification();
        InstanceRegistry$declareRootInstance$def$1 instanceRegistry$declareRootInstance$def$1 = new InstanceRegistry$declareRootInstance$def$1(t9);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.definition.a aVar2 = new org.koin.core.definition.a(I, Reflection.getOrCreateKotlinClass(Object.class), aVar, instanceRegistry$declareRootInstance$def$1, kind, secondaryTypes);
        f fVar = new f(aVar2);
        q(this, z9, org.koin.core.definition.b.c(aVar2.l(), aVar2.m(), aVar2.n()), fVar, false, 8, null);
        Iterator<T> it = aVar2.o().iterator();
        while (it.hasNext()) {
            q(this, z9, org.koin.core.definition.b.c((KClass) it.next(), aVar2.m(), aVar2.n()), fVar, false, 8, null);
        }
    }

    @PublishedApi
    public final /* synthetic */ <T> void f(T t9, z8.a aVar, List<? extends KClass<?>> secondaryTypes, boolean z9, z8.a scopeQualifier, String scopeID) {
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Kind kind = Kind.Scoped;
        Intrinsics.needClassReification();
        InstanceRegistry$declareScopedInstance$def$1 instanceRegistry$declareScopedInstance$def$1 = new InstanceRegistry$declareScopedInstance$def$1(t9);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.definition.a aVar2 = new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar, instanceRegistry$declareScopedInstance$def$1, kind, secondaryTypes);
        String c10 = org.koin.core.definition.b.c(aVar2.l(), aVar2.m(), aVar2.n());
        d<?> dVar = j().get(c10);
        e eVar = dVar instanceof e ? (e) dVar : null;
        if (eVar != null) {
            Objects.requireNonNull(t9, "null cannot be cast to non-null type kotlin.Any");
            eVar.j(scopeID, t9);
            return;
        }
        e eVar2 = new e(aVar2);
        q(this, z9, c10, eVar2, false, 8, null);
        Iterator<T> it = aVar2.o().iterator();
        while (it.hasNext()) {
            q(this, z9, org.koin.core.definition.b.c((KClass) it.next(), aVar2.m(), aVar2.n()), eVar2, false, 8, null);
        }
    }

    public final void h(@g Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Collection<d<?>> values = this.f92515b.values();
        ArrayList<e> arrayList = new ArrayList();
        for (Object obj : values) {
            if (obj instanceof e) {
                arrayList.add(obj);
            }
        }
        for (e eVar : arrayList) {
            eVar.b(scope);
        }
    }

    @g
    public final <T> List<T> i(@g KClass<?> clazz, @g org.koin.core.instance.c instanceContext) {
        List<d> distinct;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(instanceContext, "instanceContext");
        Collection<d<?>> values = this.f92515b.values();
        ArrayList arrayList = new ArrayList();
        for (T t9 : values) {
            if (Intrinsics.areEqual(((d) t9).f().n(), instanceContext.c().I())) {
                arrayList.add(t9);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (T t10 : arrayList) {
            d dVar = (d) t10;
            if (Intrinsics.areEqual(dVar.f().l(), clazz) || dVar.f().o().contains(clazz)) {
                arrayList2.add(t10);
            }
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(distinct, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (d dVar2 : distinct) {
            arrayList3.add(dVar2.e(instanceContext));
        }
        return arrayList3;
    }

    @g
    public final Map<String, d<?>> j() {
        return this.f92515b;
    }

    @g
    public final Koin k() {
        return this.f92514a;
    }

    public final void m(@g Set<x8.a> modules, boolean z9) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        for (x8.a aVar : modules) {
            l(aVar, z9);
            this.f92516c.addAll(aVar.e());
        }
    }

    @h
    public final d<?> n(@g KClass<?> clazz, @h z8.a aVar, @g z8.a scopeQualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        return this.f92515b.get(org.koin.core.definition.b.c(clazz, aVar, scopeQualifier));
    }

    @h
    public final <T> T o(@h z8.a aVar, @g KClass<?> clazz, @g z8.a scopeQualifier, @g org.koin.core.instance.c instanceContext) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(instanceContext, "instanceContext");
        d<?> n9 = n(clazz, aVar, scopeQualifier);
        if (n9 != null) {
            return (T) n9.e(instanceContext);
        }
        return null;
    }

    @u8.b
    public final void p(boolean z9, @g String mapping, @g d<?> factory, boolean z10) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (this.f92515b.containsKey(mapping)) {
            if (!z9) {
                x8.b.i(factory, mapping);
            } else if (z10) {
                w8.b u9 = this.f92514a.u();
                u9.f("Override Mapping '" + mapping + "' with " + factory.f());
            }
        }
        if (this.f92514a.u().g(Level.DEBUG) && z10) {
            w8.b u10 = this.f92514a.u();
            u10.b("add mapping '" + mapping + "' for " + factory.f());
        }
        this.f92515b.put(mapping, factory);
    }

    public final int r() {
        return this.f92515b.size();
    }

    public final void t(@g Set<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        for (x8.a aVar : modules) {
            s(aVar);
        }
    }
}

package com.google.common.eventbus;

import com.google.common.base.a0;
import com.google.common.base.k0;
import com.google.common.base.v;
import com.google.common.base.w;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.b3;
import com.google.common.collect.f3;
import com.google.common.collect.h3;
import com.google.common.collect.k5;
import com.google.common.collect.x2;
import com.google.common.reflect.TypeToken;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.j2objc.annotations.Weak;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubscriberRegistry.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.common.cache.i<Class<?>, ImmutableList<Method>> f34067c = com.google.common.cache.d.D().M().b(new a());

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.common.cache.i<Class<?>, ImmutableSet<Class<?>>> f34068d = com.google.common.cache.d.D().M().b(new b());

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, CopyOnWriteArraySet<g>> f34069a = f3.V();
    @Weak

    /* renamed from: b  reason: collision with root package name */
    private final e f34070b;

    /* compiled from: SubscriberRegistry.java */
    /* loaded from: classes2.dex */
    static class a extends CacheLoader<Class<?>, ImmutableList<Method>> {
        a() {
        }

        @Override // com.google.common.cache.CacheLoader
        /* renamed from: i */
        public ImmutableList<Method> d(Class<?> cls) throws Exception {
            return j.e(cls);
        }
    }

    /* compiled from: SubscriberRegistry.java */
    /* loaded from: classes2.dex */
    static class b extends CacheLoader<Class<?>, ImmutableSet<Class<?>>> {
        b() {
        }

        @Override // com.google.common.cache.CacheLoader
        /* renamed from: i */
        public ImmutableSet<Class<?>> d(Class<?> cls) {
            return ImmutableSet.copyOf((Collection) TypeToken.of((Class) cls).getTypes().rawTypes());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubscriberRegistry.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f34071a;

        /* renamed from: b  reason: collision with root package name */
        private final List<Class<?>> f34072b;

        c(Method method) {
            this.f34071a = method.getName();
            this.f34072b = Arrays.asList(method.getParameterTypes());
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f34071a.equals(cVar.f34071a) && this.f34072b.equals(cVar.f34072b);
            }
            return false;
        }

        public int hashCode() {
            return w.b(this.f34071a, this.f34072b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(e eVar) {
        this.f34070b = (e) a0.E(eVar);
    }

    private h3<Class<?>, g> b(Object obj) {
        HashMultimap create = HashMultimap.create();
        k5<Method> it = d(obj.getClass()).iterator();
        while (it.hasNext()) {
            Method next = it.next();
            create.put(next.getParameterTypes()[0], g.d(this.f34070b, obj, next));
        }
        return create;
    }

    @h3.d
    static ImmutableSet<Class<?>> c(Class<?> cls) {
        try {
            return f34068d.b(cls);
        } catch (UncheckedExecutionException e4) {
            throw k0.q(e4.getCause());
        }
    }

    private static ImmutableList<Method> d(Class<?> cls) {
        return f34067c.b(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<Method> e(Class<?> cls) {
        Method[] declaredMethods;
        Set<Class> rawTypes = TypeToken.of((Class) cls).getTypes().rawTypes();
        HashMap Y = f3.Y();
        for (Class cls2 : rawTypes) {
            for (Method method : cls2.getDeclaredMethods()) {
                if (method.isAnnotationPresent(f.class) && !method.isSynthetic()) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    a0.w(parameterTypes.length == 1, "Method %s has @Subscribe annotation but has %s parameters.Subscriber methods must have exactly 1 parameter.", method, parameterTypes.length);
                    c cVar = new c(method);
                    if (!Y.containsKey(cVar)) {
                        Y.put(cVar, method);
                    }
                }
            }
        }
        return ImmutableList.copyOf(Y.values());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Iterator<g> f(Object obj) {
        ImmutableSet<Class<?>> c10 = c(obj.getClass());
        ArrayList u9 = b3.u(c10.size());
        k5<Class<?>> it = c10.iterator();
        while (it.hasNext()) {
            CopyOnWriteArraySet<g> copyOnWriteArraySet = this.f34069a.get(it.next());
            if (copyOnWriteArraySet != null) {
                u9.add(copyOnWriteArraySet.iterator());
            }
        }
        return x2.i(u9.iterator());
    }

    @h3.d
    Set<g> g(Class<?> cls) {
        return (Set) v.a(this.f34069a.get(cls), ImmutableSet.of());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(Object obj) {
        for (Map.Entry<Class<?>, Collection<g>> entry : b(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<g> value = entry.getValue();
            CopyOnWriteArraySet<g> copyOnWriteArraySet = this.f34069a.get(key);
            if (copyOnWriteArraySet == null) {
                CopyOnWriteArraySet<g> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
                copyOnWriteArraySet = (CopyOnWriteArraySet) v.a(this.f34069a.putIfAbsent(key, copyOnWriteArraySet2), copyOnWriteArraySet2);
            }
            copyOnWriteArraySet.addAll(value);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void i(java.lang.Object r5) {
        /*
            r4 = this;
            com.google.common.collect.h3 r0 = r4.b(r5)
            java.util.Map r0 = r0.asMap()
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L10:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L55
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.Class r2 = (java.lang.Class) r2
            java.lang.Object r1 = r1.getValue()
            java.util.Collection r1 = (java.util.Collection) r1
            java.util.concurrent.ConcurrentMap<java.lang.Class<?>, java.util.concurrent.CopyOnWriteArraySet<com.google.common.eventbus.g>> r3 = r4.f34069a
            java.lang.Object r2 = r3.get(r2)
            java.util.concurrent.CopyOnWriteArraySet r2 = (java.util.concurrent.CopyOnWriteArraySet) r2
            if (r2 == 0) goto L39
            boolean r1 = r2.removeAll(r1)
            if (r1 == 0) goto L39
            goto L10
        L39:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "missing event subscriber for an annotated method. Is "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r5 = " registered?"
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            r0.<init>(r5)
            throw r0
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.eventbus.j.i(java.lang.Object):void");
    }
}

package com.google.firebase.components;

import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ComponentRuntime.java */
/* loaded from: classes2.dex */
public class q extends com.google.firebase.components.a implements k3.a {

    /* renamed from: g  reason: collision with root package name */
    private static final o3.b<Set<Object>> f35453g = p.a();

    /* renamed from: a  reason: collision with root package name */
    private final Map<f<?>, o3.b<?>> f35454a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, o3.b<?>> f35455b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, x<?>> f35456c;

    /* renamed from: d  reason: collision with root package name */
    private final List<o3.b<k>> f35457d;

    /* renamed from: e  reason: collision with root package name */
    private final v f35458e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference<Boolean> f35459f;

    /* compiled from: ComponentRuntime.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f35460a;

        /* renamed from: b  reason: collision with root package name */
        private final List<o3.b<k>> f35461b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final List<f<?>> f35462c = new ArrayList();

        b(Executor executor) {
            this.f35460a = executor;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ k e(k kVar) {
            return kVar;
        }

        public b a(f<?> fVar) {
            this.f35462c.add(fVar);
            return this;
        }

        public b b(k kVar) {
            this.f35461b.add(r.a(kVar));
            return this;
        }

        public b c(Collection<o3.b<k>> collection) {
            this.f35461b.addAll(collection);
            return this;
        }

        public q d() {
            return new q(this.f35460a, this.f35461b, this.f35462c);
        }
    }

    public static b f(Executor executor) {
        return new b(executor);
    }

    private void g(List<f<?>> list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<o3.b<k>> it = this.f35457d.iterator();
            while (it.hasNext()) {
                try {
                    k kVar = it.next().get();
                    if (kVar != null) {
                        list.addAll(kVar.a());
                        it.remove();
                    }
                } catch (InvalidRegistrarException e4) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e4);
                }
            }
            if (this.f35454a.isEmpty()) {
                s.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f35454a.keySet());
                arrayList2.addAll(list);
                s.a(arrayList2);
            }
            for (f<?> fVar : list) {
                this.f35454a.put(fVar, new w(l.a(this, fVar)));
            }
            arrayList.addAll(r(list));
            arrayList.addAll(s());
            q();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        p();
    }

    private void h(Map<f<?>, o3.b<?>> map, boolean z9) {
        for (Map.Entry<f<?>, o3.b<?>> entry : map.entrySet()) {
            f<?> key = entry.getKey();
            o3.b<?> value = entry.getValue();
            if (key.i() || (key.j() && z9)) {
                value.get();
            }
        }
        this.f35458e.e();
    }

    private static <T> List<T> k(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t9 : iterable) {
            arrayList.add(t9);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ k o(k kVar) {
        return kVar;
    }

    private void p() {
        Boolean bool = this.f35459f.get();
        if (bool != null) {
            h(this.f35454a, bool.booleanValue());
        }
    }

    private void q() {
        for (f<?> fVar : this.f35454a.keySet()) {
            for (t tVar : fVar.c()) {
                if (tVar.g() && !this.f35456c.containsKey(tVar.c())) {
                    this.f35456c.put(tVar.c(), x.b(Collections.emptySet()));
                } else if (this.f35455b.containsKey(tVar.c())) {
                    continue;
                } else if (!tVar.f()) {
                    if (!tVar.g()) {
                        this.f35455b.put(tVar.c(), b0.b());
                    }
                } else {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", fVar, tVar.c()));
                }
            }
        }
    }

    private List<Runnable> r(List<f<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (f<?> fVar : list) {
            if (fVar.l()) {
                o3.b<?> bVar = this.f35454a.get(fVar);
                for (Class<? super Object> cls : fVar.e()) {
                    if (!this.f35455b.containsKey(cls)) {
                        this.f35455b.put(cls, bVar);
                    } else {
                        arrayList.add(n.a((b0) this.f35455b.get(cls), bVar));
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> s() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<f<?>, o3.b<?>> entry : this.f35454a.entrySet()) {
            f<?> key = entry.getKey();
            if (!key.l()) {
                o3.b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.e()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f35456c.containsKey(entry2.getKey())) {
                this.f35456c.put((Class) entry2.getKey(), x.b((Collection) entry2.getValue()));
            } else {
                x<?> xVar = this.f35456c.get(entry2.getKey());
                for (o3.b bVar : (Set) entry2.getValue()) {
                    arrayList.add(o.a(xVar, bVar));
                }
            }
        }
        return arrayList;
    }

    private static Iterable<o3.b<k>> t(Iterable<k> iterable) {
        ArrayList arrayList = new ArrayList();
        for (k kVar : iterable) {
            arrayList.add(m.a(kVar));
        }
        return arrayList;
    }

    @Override // k3.a
    public void a() {
        synchronized (this) {
            if (this.f35457d.isEmpty()) {
                return;
            }
            g(new ArrayList());
        }
    }

    @Override // com.google.firebase.components.g
    public synchronized <T> o3.b<Set<T>> b(Class<T> cls) {
        x<?> xVar = this.f35456c.get(cls);
        if (xVar != null) {
            return xVar;
        }
        return (o3.b<Set<T>>) f35453g;
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.g
    public /* bridge */ /* synthetic */ Set c(Class cls) {
        return super.c(cls);
    }

    @Override // com.google.firebase.components.g
    public synchronized <T> o3.b<T> d(Class<T> cls) {
        c0.c(cls, "Null interface requested.");
        return (o3.b<T>) this.f35455b.get(cls);
    }

    @Override // com.google.firebase.components.g
    public <T> o3.a<T> e(Class<T> cls) {
        o3.b<T> d4 = d(cls);
        if (d4 == null) {
            return b0.b();
        }
        if (d4 instanceof b0) {
            return (b0) d4;
        }
        return b0.f(d4);
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.g
    public /* bridge */ /* synthetic */ Object get(Class cls) {
        return super.get(cls);
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public void i() {
        for (o3.b<?> bVar : this.f35454a.values()) {
            bVar.get();
        }
    }

    public void j(boolean z9) {
        HashMap hashMap;
        if (this.f35459f.compareAndSet(null, Boolean.valueOf(z9))) {
            synchronized (this) {
                hashMap = new HashMap(this.f35454a);
            }
            h(hashMap, z9);
        }
    }

    @Deprecated
    public q(Executor executor, Iterable<k> iterable, f<?>... fVarArr) {
        this(executor, t(iterable), Arrays.asList(fVarArr));
    }

    private q(Executor executor, Iterable<o3.b<k>> iterable, Collection<f<?>> collection) {
        this.f35454a = new HashMap();
        this.f35455b = new HashMap();
        this.f35456c = new HashMap();
        this.f35459f = new AtomicReference<>();
        v vVar = new v(executor);
        this.f35458e = vVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(f.q(vVar, v.class, n3.d.class, n3.c.class));
        arrayList.add(f.q(this, k3.a.class, new Class[0]));
        for (f<?> fVar : collection) {
            if (fVar != null) {
                arrayList.add(fVar);
            }
        }
        this.f35457d = k(iterable);
        g(arrayList);
    }
}

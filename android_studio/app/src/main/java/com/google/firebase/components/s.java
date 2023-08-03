package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CycleDetector.java */
/* loaded from: classes2.dex */
public class s {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CycleDetector.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final f<?> f35464a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<b> f35465b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        private final Set<b> f35466c = new HashSet();

        b(f<?> fVar) {
            this.f35464a = fVar;
        }

        void a(b bVar) {
            this.f35465b.add(bVar);
        }

        void b(b bVar) {
            this.f35466c.add(bVar);
        }

        f<?> c() {
            return this.f35464a;
        }

        Set<b> d() {
            return this.f35465b;
        }

        boolean e() {
            return this.f35465b.isEmpty();
        }

        boolean f() {
            return this.f35466c.isEmpty();
        }

        void g(b bVar) {
            this.f35466c.remove(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CycleDetector.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f35467a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f35468b;

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return cVar.f35467a.equals(this.f35467a) && cVar.f35468b == this.f35468b;
            }
            return false;
        }

        public int hashCode() {
            return ((this.f35467a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f35468b).hashCode();
        }

        private c(Class<?> cls, boolean z9) {
            this.f35467a = cls;
            this.f35468b = z9;
        }
    }

    s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(List<f<?>> list) {
        Set<b> c10 = c(list);
        Set<b> b10 = b(c10);
        int i4 = 0;
        while (!b10.isEmpty()) {
            b next = b10.iterator().next();
            b10.remove(next);
            i4++;
            for (b bVar : next.d()) {
                bVar.g(next);
                if (bVar.f()) {
                    b10.add(bVar);
                }
            }
        }
        if (i4 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : c10) {
            if (!bVar2.f() && !bVar2.e()) {
                arrayList.add(bVar2.c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    private static Set<b> b(Set<b> set) {
        HashSet hashSet = new HashSet();
        for (b bVar : set) {
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set<b> c(List<f<?>> list) {
        Set<b> set;
        HashMap hashMap = new HashMap(list.size());
        for (f<?> fVar : list) {
            b bVar = new b(fVar);
            for (Class<? super Object> cls : fVar.e()) {
                c cVar = new c(cls, !fVar.l());
                if (!hashMap.containsKey(cVar)) {
                    hashMap.put(cVar, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cVar);
                if (!set2.isEmpty() && !cVar.f35468b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(bVar);
            }
        }
        for (Set<b> set3 : hashMap.values()) {
            for (b bVar2 : set3) {
                for (t tVar : bVar2.c().c()) {
                    if (tVar.e() && (set = (Set) hashMap.get(new c(tVar.c(), tVar.g()))) != null) {
                        for (b bVar3 : set) {
                            bVar2.a(bVar3);
                            bVar3.b(bVar2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        return hashSet;
    }
}

package com.google.android.datatransport.runtime.dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: SetFactory.java */
/* loaded from: classes2.dex */
public final class s<T> implements g<Set<T>> {

    /* renamed from: c  reason: collision with root package name */
    private static final g<Set<Object>> f20430c = j.a(Collections.emptySet());

    /* renamed from: a  reason: collision with root package name */
    private final List<u7.c<T>> f20431a;

    /* renamed from: b  reason: collision with root package name */
    private final List<u7.c<Collection<T>>> f20432b;

    /* compiled from: SetFactory.java */
    /* loaded from: classes2.dex */
    public static final class b<T> {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f20433c = false;

        /* renamed from: a  reason: collision with root package name */
        private final List<u7.c<T>> f20434a;

        /* renamed from: b  reason: collision with root package name */
        private final List<u7.c<Collection<T>>> f20435b;

        public b<T> a(u7.c<? extends Collection<? extends T>> cVar) {
            this.f20435b.add(cVar);
            return this;
        }

        public b<T> b(u7.c<? extends T> cVar) {
            this.f20434a.add(cVar);
            return this;
        }

        public s<T> c() {
            return new s<>(this.f20434a, this.f20435b);
        }

        private b(int i4, int i10) {
            this.f20434a = d.e(i4);
            this.f20435b = d.e(i10);
        }
    }

    public static <T> b<T> a(int i4, int i10) {
        return new b<>(i4, i10);
    }

    public static <T> g<Set<T>> b() {
        return (g<Set<T>>) f20430c;
    }

    @Override // u7.c
    /* renamed from: c */
    public Set<T> get() {
        int size = this.f20431a.size();
        ArrayList arrayList = new ArrayList(this.f20432b.size());
        int size2 = this.f20432b.size();
        for (int i4 = 0; i4 < size2; i4++) {
            Collection<T> collection = this.f20432b.get(i4).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet c10 = d.c(size);
        int size3 = this.f20431a.size();
        for (int i10 = 0; i10 < size3; i10++) {
            c10.add(p.b(this.f20431a.get(i10).get()));
        }
        int size4 = arrayList.size();
        for (int i11 = 0; i11 < size4; i11++) {
            for (Object obj : (Collection) arrayList.get(i11)) {
                c10.add(p.b(obj));
            }
        }
        return Collections.unmodifiableSet(c10);
    }

    private s(List<u7.c<T>> list, List<u7.c<Collection<T>>> list2) {
        this.f20431a = list;
        this.f20432b = list2;
    }
}

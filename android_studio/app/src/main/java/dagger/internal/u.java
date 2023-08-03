package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: SetFactory.java */
/* loaded from: classes3.dex */
public final class u<T> implements h<Set<T>> {

    /* renamed from: c  reason: collision with root package name */
    private static final h<Set<Object>> f62075c = k.a(Collections.emptySet());

    /* renamed from: a  reason: collision with root package name */
    private final List<u7.c<T>> f62076a;

    /* renamed from: b  reason: collision with root package name */
    private final List<u7.c<Collection<T>>> f62077b;

    /* compiled from: SetFactory.java */
    /* loaded from: classes3.dex */
    public static final class b<T> {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f62078c = false;

        /* renamed from: a  reason: collision with root package name */
        private final List<u7.c<T>> f62079a;

        /* renamed from: b  reason: collision with root package name */
        private final List<u7.c<Collection<T>>> f62080b;

        public b<T> a(u7.c<? extends Collection<? extends T>> cVar) {
            this.f62080b.add(cVar);
            return this;
        }

        public b<T> b(u7.c<? extends T> cVar) {
            this.f62079a.add(cVar);
            return this;
        }

        public u<T> c() {
            return new u<>(this.f62079a, this.f62080b);
        }

        private b(int i4, int i10) {
            this.f62079a = d.e(i4);
            this.f62080b = d.e(i10);
        }
    }

    public static <T> b<T> a(int i4, int i10) {
        return new b<>(i4, i10);
    }

    public static <T> h<Set<T>> b() {
        return (h<Set<T>>) f62075c;
    }

    @Override // u7.c
    /* renamed from: c */
    public Set<T> get() {
        int size = this.f62076a.size();
        ArrayList arrayList = new ArrayList(this.f62077b.size());
        int size2 = this.f62077b.size();
        for (int i4 = 0; i4 < size2; i4++) {
            Collection<T> collection = this.f62077b.get(i4).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet c10 = d.c(size);
        int size3 = this.f62076a.size();
        for (int i10 = 0; i10 < size3; i10++) {
            c10.add(p.b(this.f62076a.get(i10).get()));
        }
        int size4 = arrayList.size();
        for (int i11 = 0; i11 < size4; i11++) {
            for (Object obj : (Collection) arrayList.get(i11)) {
                c10.add(p.b(obj));
            }
        }
        return Collections.unmodifiableSet(c10);
    }

    private u(List<u7.c<T>> list, List<u7.c<Collection<T>>> list2) {
        this.f62076a = list;
        this.f62077b = list2;
    }
}

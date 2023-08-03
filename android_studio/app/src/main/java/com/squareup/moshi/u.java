package com.squareup.moshi;

import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: Moshi.java */
/* loaded from: classes3.dex */
public final class u {

    /* renamed from: e  reason: collision with root package name */
    static final List<h.e> f55723e;

    /* renamed from: a  reason: collision with root package name */
    private final List<h.e> f55724a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55725b;

    /* renamed from: c  reason: collision with root package name */
    private final ThreadLocal<e> f55726c = new ThreadLocal<>();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Object, h<?>> f55727d = new LinkedHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Moshi.java */
    /* loaded from: classes3.dex */
    public class a implements h.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Type f55728a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f55729b;

        a(Type type, h hVar) {
            this.f55728a = type;
            this.f55729b = hVar;
        }

        @Override // com.squareup.moshi.h.e
        @r7.h
        public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            if (set.isEmpty() && com.squareup.moshi.internal.c.A(this.f55728a, type)) {
                return this.f55729b;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Moshi.java */
    /* loaded from: classes3.dex */
    public class b implements h.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Type f55730a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f55731b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h f55732c;

        b(Type type, Class cls, h hVar) {
            this.f55730a = type;
            this.f55731b = cls;
            this.f55732c = hVar;
        }

        @Override // com.squareup.moshi.h.e
        @r7.h
        public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            if (com.squareup.moshi.internal.c.A(this.f55730a, type) && set.size() == 1 && com.squareup.moshi.internal.c.k(set, this.f55731b)) {
                return this.f55732c;
            }
            return null;
        }
    }

    /* compiled from: Moshi.java */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final List<h.e> f55733a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        int f55734b = 0;

        public c a(h.e eVar) {
            if (eVar != null) {
                List<h.e> list = this.f55733a;
                int i4 = this.f55734b;
                this.f55734b = i4 + 1;
                list.add(i4, eVar);
                return this;
            }
            throw new IllegalArgumentException("factory == null");
        }

        public c b(Object obj) {
            if (obj != null) {
                return a(com.squareup.moshi.a.c(obj));
            }
            throw new IllegalArgumentException("adapter == null");
        }

        public <T> c c(Type type, h<T> hVar) {
            return a(u.j(type, hVar));
        }

        public <T> c d(Type type, Class<? extends Annotation> cls, h<T> hVar) {
            return a(u.k(type, cls, hVar));
        }

        public c e(h.e eVar) {
            if (eVar != null) {
                this.f55733a.add(eVar);
                return this;
            }
            throw new IllegalArgumentException("factory == null");
        }

        public c f(Object obj) {
            if (obj != null) {
                return e(com.squareup.moshi.a.c(obj));
            }
            throw new IllegalArgumentException("adapter == null");
        }

        public <T> c g(Type type, h<T> hVar) {
            return e(u.j(type, hVar));
        }

        public <T> c h(Type type, Class<? extends Annotation> cls, h<T> hVar) {
            return e(u.k(type, cls, hVar));
        }

        @r7.c
        public u i() {
            return new u(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Moshi.java */
    /* loaded from: classes3.dex */
    public static final class d<T> extends h<T> {

        /* renamed from: a  reason: collision with root package name */
        final Type f55735a;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        final String f55736b;

        /* renamed from: c  reason: collision with root package name */
        final Object f55737c;
        @r7.h

        /* renamed from: d  reason: collision with root package name */
        h<T> f55738d;

        d(Type type, @r7.h String str, Object obj) {
            this.f55735a = type;
            this.f55736b = str;
            this.f55737c = obj;
        }

        @Override // com.squareup.moshi.h
        public T fromJson(JsonReader jsonReader) throws IOException {
            h<T> hVar = this.f55738d;
            if (hVar != null) {
                return hVar.fromJson(jsonReader);
            }
            throw new IllegalStateException("JsonAdapter isn't ready");
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, T t9) throws IOException {
            h<T> hVar = this.f55738d;
            if (hVar != null) {
                hVar.toJson(qVar, (q) t9);
                return;
            }
            throw new IllegalStateException("JsonAdapter isn't ready");
        }

        public String toString() {
            h<T> hVar = this.f55738d;
            return hVar != null ? hVar.toString() : super.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Moshi.java */
    /* loaded from: classes3.dex */
    public final class e {

        /* renamed from: a  reason: collision with root package name */
        final List<d<?>> f55739a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final Deque<d<?>> f55740b = new ArrayDeque();

        /* renamed from: c  reason: collision with root package name */
        boolean f55741c;

        e() {
        }

        <T> void a(h<T> hVar) {
            this.f55740b.getLast().f55738d = hVar;
        }

        IllegalArgumentException b(IllegalArgumentException illegalArgumentException) {
            if (this.f55741c) {
                return illegalArgumentException;
            }
            this.f55741c = true;
            if (this.f55740b.size() == 1 && this.f55740b.getFirst().f55736b == null) {
                return illegalArgumentException;
            }
            StringBuilder sb = new StringBuilder(illegalArgumentException.getMessage());
            Iterator<d<?>> descendingIterator = this.f55740b.descendingIterator();
            while (descendingIterator.hasNext()) {
                d<?> next = descendingIterator.next();
                sb.append("\nfor ");
                sb.append(next.f55735a);
                if (next.f55736b != null) {
                    sb.append(' ');
                    sb.append(next.f55736b);
                }
            }
            return new IllegalArgumentException(sb.toString(), illegalArgumentException);
        }

        void c(boolean z9) {
            this.f55740b.removeLast();
            if (this.f55740b.isEmpty()) {
                u.this.f55726c.remove();
                if (z9) {
                    synchronized (u.this.f55727d) {
                        int size = this.f55739a.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            d<?> dVar = this.f55739a.get(i4);
                            h<T> hVar = (h) u.this.f55727d.put(dVar.f55737c, dVar.f55738d);
                            if (hVar != 0) {
                                dVar.f55738d = hVar;
                                u.this.f55727d.put(dVar.f55737c, hVar);
                            }
                        }
                    }
                }
            }
        }

        <T> h<T> d(Type type, @r7.h String str, Object obj) {
            int size = this.f55739a.size();
            for (int i4 = 0; i4 < size; i4++) {
                d<?> dVar = this.f55739a.get(i4);
                if (dVar.f55737c.equals(obj)) {
                    this.f55740b.add(dVar);
                    h<T> hVar = (h<T>) dVar.f55738d;
                    return hVar != null ? hVar : dVar;
                }
            }
            d<?> dVar2 = new d<>(type, str, obj);
            this.f55739a.add(dVar2);
            this.f55740b.add(dVar2);
            return null;
        }
    }

    static {
        ArrayList arrayList = new ArrayList(5);
        f55723e = arrayList;
        arrayList.add(x.f55745a);
        arrayList.add(com.squareup.moshi.e.f55597b);
        arrayList.add(t.f55720c);
        arrayList.add(com.squareup.moshi.b.f55577c);
        arrayList.add(v.f55743a);
        arrayList.add(com.squareup.moshi.d.f55590d);
    }

    u(c cVar) {
        int size = cVar.f55733a.size();
        List<h.e> list = f55723e;
        ArrayList arrayList = new ArrayList(size + list.size());
        arrayList.addAll(cVar.f55733a);
        arrayList.addAll(list);
        this.f55724a = Collections.unmodifiableList(arrayList);
        this.f55725b = cVar.f55734b;
    }

    private Object i(Type type, Set<? extends Annotation> set) {
        return set.isEmpty() ? type : Arrays.asList(type, set);
    }

    static <T> h.e j(Type type, h<T> hVar) {
        if (type != null) {
            if (hVar != null) {
                return new a(type, hVar);
            }
            throw new IllegalArgumentException("jsonAdapter == null");
        }
        throw new IllegalArgumentException("type == null");
    }

    static <T> h.e k(Type type, Class<? extends Annotation> cls, h<T> hVar) {
        if (type != null) {
            if (cls != null) {
                if (hVar != null) {
                    if (cls.isAnnotationPresent(j.class)) {
                        if (cls.getDeclaredMethods().length <= 0) {
                            return new b(type, cls, hVar);
                        }
                        throw new IllegalArgumentException("Use JsonAdapter.Factory for annotations with elements");
                    }
                    throw new IllegalArgumentException(cls + " does not have @JsonQualifier");
                }
                throw new IllegalArgumentException("jsonAdapter == null");
            }
            throw new IllegalArgumentException("annotation == null");
        }
        throw new IllegalArgumentException("type == null");
    }

    @r7.c
    public <T> h<T> c(Class<T> cls) {
        return f(cls, com.squareup.moshi.internal.c.f55611a);
    }

    @r7.c
    public <T> h<T> d(Type type) {
        return f(type, com.squareup.moshi.internal.c.f55611a);
    }

    @r7.c
    public <T> h<T> e(Type type, Class<? extends Annotation> cls) {
        Objects.requireNonNull(cls, "annotationType == null");
        return f(type, Collections.singleton(z.d(cls)));
    }

    @r7.c
    public <T> h<T> f(Type type, Set<? extends Annotation> set) {
        return g(type, set, null);
    }

    @r7.c
    public <T> h<T> g(Type type, Set<? extends Annotation> set, @r7.h String str) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(set, "annotations == null");
        Type t9 = com.squareup.moshi.internal.c.t(com.squareup.moshi.internal.c.b(type));
        Object i4 = i(t9, set);
        synchronized (this.f55727d) {
            h<T> hVar = (h<T>) this.f55727d.get(i4);
            if (hVar != null) {
                return hVar;
            }
            e eVar = this.f55726c.get();
            if (eVar == null) {
                eVar = new e();
                this.f55726c.set(eVar);
            }
            h<T> d4 = eVar.d(t9, str, i4);
            try {
                if (d4 != null) {
                    return d4;
                }
                try {
                    int size = this.f55724a.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        h<T> hVar2 = (h<T>) this.f55724a.get(i10).create(t9, set, this);
                        if (hVar2 != null) {
                            eVar.a(hVar2);
                            eVar.c(true);
                            return hVar2;
                        }
                    }
                    throw new IllegalArgumentException("No JsonAdapter for " + com.squareup.moshi.internal.c.y(t9, set));
                } catch (IllegalArgumentException e4) {
                    throw eVar.b(e4);
                }
            } finally {
                eVar.c(false);
            }
        }
    }

    @r7.c
    public <T> h<T> h(Type type, Class<? extends Annotation>... clsArr) {
        if (clsArr.length == 1) {
            return e(type, clsArr[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(clsArr.length);
        for (Class<? extends Annotation> cls : clsArr) {
            linkedHashSet.add(z.d(cls));
        }
        return f(type, Collections.unmodifiableSet(linkedHashSet));
    }

    @r7.c
    public c l() {
        c cVar = new c();
        int i4 = this.f55725b;
        for (int i10 = 0; i10 < i4; i10++) {
            cVar.a(this.f55724a.get(i10));
        }
        int size = this.f55724a.size() - f55723e.size();
        for (int i11 = this.f55725b; i11 < size; i11++) {
            cVar.e(this.f55724a.get(i11));
        }
        return cVar;
    }

    @r7.c
    public <T> h<T> m(h.e eVar, Type type, Set<? extends Annotation> set) {
        Objects.requireNonNull(set, "annotations == null");
        Type t9 = com.squareup.moshi.internal.c.t(com.squareup.moshi.internal.c.b(type));
        int indexOf = this.f55724a.indexOf(eVar);
        if (indexOf != -1) {
            int size = this.f55724a.size();
            for (int i4 = indexOf + 1; i4 < size; i4++) {
                h<T> hVar = (h<T>) this.f55724a.get(i4).create(t9, set, this);
                if (hVar != null) {
                    return hVar;
                }
            }
            throw new IllegalArgumentException("No next JsonAdapter for " + com.squareup.moshi.internal.c.y(t9, set));
        }
        throw new IllegalArgumentException("Unable to skip past unknown factory " + eVar);
    }
}

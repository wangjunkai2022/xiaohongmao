package com.squareup.moshi;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* compiled from: ClassJsonAdapter.java */
/* loaded from: classes3.dex */
final class d<T> extends h<T> {

    /* renamed from: d  reason: collision with root package name */
    public static final h.e f55590d = new a();

    /* renamed from: a  reason: collision with root package name */
    private final c<T> f55591a;

    /* renamed from: b  reason: collision with root package name */
    private final b<?>[] f55592b;

    /* renamed from: c  reason: collision with root package name */
    private final JsonReader.b f55593c;

    /* compiled from: ClassJsonAdapter.java */
    /* loaded from: classes3.dex */
    class a implements h.e {
        a() {
        }

        private void a(u uVar, Type type, Map<String, b<?>> map) {
            Field[] declaredFields;
            g gVar;
            b<?> bVar;
            b<?> put;
            Class<?> j4 = z.j(type);
            boolean m9 = com.squareup.moshi.internal.c.m(j4);
            for (Field field : j4.getDeclaredFields()) {
                if (b(m9, field.getModifiers()) && ((gVar = (g) field.getAnnotation(g.class)) == null || !gVar.ignore())) {
                    Type u9 = com.squareup.moshi.internal.c.u(type, j4, field.getGenericType());
                    Set<? extends Annotation> n9 = com.squareup.moshi.internal.c.n(field);
                    String name = field.getName();
                    h<T> g4 = uVar.g(u9, n9, name);
                    field.setAccessible(true);
                    String p9 = com.squareup.moshi.internal.c.p(name, gVar);
                    if (map.put(p9, new b<>(p9, field, g4)) != null) {
                        throw new IllegalArgumentException("Conflicting fields:\n    " + put.f55595b + "\n    " + bVar.f55595b);
                    }
                }
            }
        }

        private boolean b(boolean z9, int i4) {
            if (Modifier.isStatic(i4) || Modifier.isTransient(i4)) {
                return false;
            }
            return Modifier.isPublic(i4) || Modifier.isProtected(i4) || !z9;
        }

        private void c(Type type, Class<?> cls) {
            Class<?> j4 = z.j(type);
            if (cls.isAssignableFrom(j4)) {
                throw new IllegalArgumentException("No JsonAdapter for " + type + ", you should probably use " + cls.getSimpleName() + " instead of " + j4.getSimpleName() + " (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter.");
            }
        }

        @Override // com.squareup.moshi.h.e
        @r7.h
        public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            if ((type instanceof Class) || (type instanceof ParameterizedType)) {
                Class<?> j4 = z.j(type);
                if (j4.isInterface() || j4.isEnum() || !set.isEmpty()) {
                    return null;
                }
                if (com.squareup.moshi.internal.c.m(j4)) {
                    c(type, List.class);
                    c(type, Set.class);
                    c(type, Map.class);
                    c(type, Collection.class);
                    String str = "Platform " + j4;
                    if (type instanceof ParameterizedType) {
                        str = str + " in " + type;
                    }
                    throw new IllegalArgumentException(str + " requires explicit JsonAdapter to be registered");
                } else if (!j4.isAnonymousClass()) {
                    if (!j4.isLocalClass()) {
                        if (j4.getEnclosingClass() != null && !Modifier.isStatic(j4.getModifiers())) {
                            throw new IllegalArgumentException("Cannot serialize non-static nested class " + j4.getName());
                        } else if (!Modifier.isAbstract(j4.getModifiers())) {
                            if (!com.squareup.moshi.internal.c.l(j4)) {
                                c a10 = c.a(j4);
                                TreeMap treeMap = new TreeMap();
                                while (type != Object.class) {
                                    a(uVar, type, treeMap);
                                    type = z.i(type);
                                }
                                return (h<T>) new d(a10, treeMap).nullSafe();
                            }
                            throw new IllegalArgumentException("Cannot serialize Kotlin type " + j4.getName() + ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact.");
                        } else {
                            throw new IllegalArgumentException("Cannot serialize abstract class " + j4.getName());
                        }
                    }
                    throw new IllegalArgumentException("Cannot serialize local class " + j4.getName());
                } else {
                    throw new IllegalArgumentException("Cannot serialize anonymous class " + j4.getName());
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassJsonAdapter.java */
    /* loaded from: classes3.dex */
    public static class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final String f55594a;

        /* renamed from: b  reason: collision with root package name */
        final Field f55595b;

        /* renamed from: c  reason: collision with root package name */
        final h<T> f55596c;

        b(String str, Field field, h<T> hVar) {
            this.f55594a = str;
            this.f55595b = field;
            this.f55596c = hVar;
        }

        void a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
            this.f55595b.set(obj, this.f55596c.fromJson(jsonReader));
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b(q qVar, Object obj) throws IllegalAccessException, IOException {
            this.f55596c.toJson(qVar, (q) this.f55595b.get(obj));
        }
    }

    d(c<T> cVar, Map<String, b<?>> map) {
        this.f55591a = cVar;
        this.f55592b = (b[]) map.values().toArray(new b[map.size()]);
        this.f55593c = JsonReader.b.a((String[]) map.keySet().toArray(new String[map.size()]));
    }

    @Override // com.squareup.moshi.h
    public T fromJson(JsonReader jsonReader) throws IOException {
        try {
            T b10 = this.f55591a.b();
            try {
                jsonReader.b();
                while (jsonReader.k()) {
                    int W = jsonReader.W(this.f55593c);
                    if (W == -1) {
                        jsonReader.h0();
                        jsonReader.l0();
                    } else {
                        this.f55592b[W].a(jsonReader, b10);
                    }
                }
                jsonReader.h();
                return b10;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        } catch (InstantiationException e4) {
            throw new RuntimeException(e4);
        } catch (InvocationTargetException e10) {
            throw com.squareup.moshi.internal.c.x(e10);
        }
    }

    @Override // com.squareup.moshi.h
    public void toJson(q qVar, T t9) throws IOException {
        b<?>[] bVarArr;
        try {
            qVar.d();
            for (b<?> bVar : this.f55592b) {
                qVar.A(bVar.f55594a);
                bVar.b(qVar, t9);
            }
            qVar.p();
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        }
    }

    public String toString() {
        return "JsonAdapter(" + this.f55591a + ")";
    }
}

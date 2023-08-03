package com.squareup.moshi;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* compiled from: AdapterMethodsFactory.java */
/* loaded from: classes3.dex */
final class a implements h.e {

    /* renamed from: a  reason: collision with root package name */
    private final List<f> f55529a;

    /* renamed from: b  reason: collision with root package name */
    private final List<f> f55530b;

    /* compiled from: AdapterMethodsFactory.java */
    /* renamed from: com.squareup.moshi.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0471a extends h<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f55531a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f55532b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ u f55533c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f f55534d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Set f55535e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Type f55536f;

        C0471a(f fVar, h hVar, u uVar, f fVar2, Set set, Type type) {
            this.f55531a = fVar;
            this.f55532b = hVar;
            this.f55533c = uVar;
            this.f55534d = fVar2;
            this.f55535e = set;
            this.f55536f = type;
        }

        @Override // com.squareup.moshi.h
        @r7.h
        public Object fromJson(JsonReader jsonReader) throws IOException {
            f fVar = this.f55534d;
            if (fVar == null) {
                return this.f55532b.fromJson(jsonReader);
            }
            if (!fVar.f55554g && jsonReader.I() == JsonReader.Token.NULL) {
                jsonReader.D();
                return null;
            }
            try {
                return this.f55534d.b(this.f55533c, jsonReader);
            } catch (InvocationTargetException e4) {
                Throwable cause = e4.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                throw new JsonDataException(cause + " at " + jsonReader.getPath(), cause);
            }
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, @r7.h Object obj) throws IOException {
            f fVar = this.f55531a;
            if (fVar == null) {
                this.f55532b.toJson(qVar, (q) obj);
            } else if (!fVar.f55554g && obj == null) {
                qVar.D();
            } else {
                try {
                    fVar.e(this.f55533c, qVar, obj);
                } catch (InvocationTargetException e4) {
                    Throwable cause = e4.getCause();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    }
                    throw new JsonDataException(cause + " at " + qVar.getPath(), cause);
                }
            }
        }

        public String toString() {
            return "JsonAdapter" + this.f55535e + "(" + this.f55536f + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterMethodsFactory.java */
    /* loaded from: classes3.dex */
    public class b extends f {
        b(Type type, Set set, Object obj, Method method, int i4, int i10, boolean z9) {
            super(type, set, obj, method, i4, i10, z9);
        }

        @Override // com.squareup.moshi.a.f
        public void e(u uVar, q qVar, @r7.h Object obj) throws IOException, InvocationTargetException {
            d(qVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterMethodsFactory.java */
    /* loaded from: classes3.dex */
    public class c extends f {

        /* renamed from: h  reason: collision with root package name */
        private h<Object> f55538h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Type[] f55539i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Type f55540j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Set f55541k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ Set f55542l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Type type, Set set, Object obj, Method method, int i4, int i10, boolean z9, Type[] typeArr, Type type2, Set set2, Set set3) {
            super(type, set, obj, method, i4, i10, z9);
            this.f55539i = typeArr;
            this.f55540j = type2;
            this.f55541k = set2;
            this.f55542l = set3;
        }

        @Override // com.squareup.moshi.a.f
        public void a(u uVar, h.e eVar) {
            h<Object> f10;
            super.a(uVar, eVar);
            if (z.e(this.f55539i[0], this.f55540j) && this.f55541k.equals(this.f55542l)) {
                f10 = uVar.m(eVar, this.f55540j, this.f55542l);
            } else {
                f10 = uVar.f(this.f55540j, this.f55542l);
            }
            this.f55538h = f10;
        }

        @Override // com.squareup.moshi.a.f
        public void e(u uVar, q qVar, @r7.h Object obj) throws IOException, InvocationTargetException {
            this.f55538h.toJson(qVar, (q) c(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterMethodsFactory.java */
    /* loaded from: classes3.dex */
    public class d extends f {
        d(Type type, Set set, Object obj, Method method, int i4, int i10, boolean z9) {
            super(type, set, obj, method, i4, i10, z9);
        }

        @Override // com.squareup.moshi.a.f
        public Object b(u uVar, JsonReader jsonReader) throws IOException, InvocationTargetException {
            return c(jsonReader);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterMethodsFactory.java */
    /* loaded from: classes3.dex */
    public class e extends f {

        /* renamed from: h  reason: collision with root package name */
        h<Object> f55543h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Type[] f55544i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Type f55545j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Set f55546k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ Set f55547l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Type type, Set set, Object obj, Method method, int i4, int i10, boolean z9, Type[] typeArr, Type type2, Set set2, Set set3) {
            super(type, set, obj, method, i4, i10, z9);
            this.f55544i = typeArr;
            this.f55545j = type2;
            this.f55546k = set2;
            this.f55547l = set3;
        }

        @Override // com.squareup.moshi.a.f
        public void a(u uVar, h.e eVar) {
            h<Object> f10;
            super.a(uVar, eVar);
            if (z.e(this.f55544i[0], this.f55545j) && this.f55546k.equals(this.f55547l)) {
                f10 = uVar.m(eVar, this.f55544i[0], this.f55546k);
            } else {
                f10 = uVar.f(this.f55544i[0], this.f55546k);
            }
            this.f55543h = f10;
        }

        @Override // com.squareup.moshi.a.f
        public Object b(u uVar, JsonReader jsonReader) throws IOException, InvocationTargetException {
            return c(this.f55543h.fromJson(jsonReader));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterMethodsFactory.java */
    /* loaded from: classes3.dex */
    public static abstract class f {

        /* renamed from: a  reason: collision with root package name */
        final Type f55548a;

        /* renamed from: b  reason: collision with root package name */
        final Set<? extends Annotation> f55549b;

        /* renamed from: c  reason: collision with root package name */
        final Object f55550c;

        /* renamed from: d  reason: collision with root package name */
        final Method f55551d;

        /* renamed from: e  reason: collision with root package name */
        final int f55552e;

        /* renamed from: f  reason: collision with root package name */
        final h<?>[] f55553f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f55554g;

        f(Type type, Set<? extends Annotation> set, Object obj, Method method, int i4, int i10, boolean z9) {
            this.f55548a = com.squareup.moshi.internal.c.b(type);
            this.f55549b = set;
            this.f55550c = obj;
            this.f55551d = method;
            this.f55552e = i10;
            this.f55553f = new h[i4 - i10];
            this.f55554g = z9;
        }

        public void a(u uVar, h.e eVar) {
            h<?> f10;
            if (this.f55553f.length > 0) {
                Type[] genericParameterTypes = this.f55551d.getGenericParameterTypes();
                Annotation[][] parameterAnnotations = this.f55551d.getParameterAnnotations();
                int length = genericParameterTypes.length;
                for (int i4 = this.f55552e; i4 < length; i4++) {
                    Type type = ((ParameterizedType) genericParameterTypes[i4]).getActualTypeArguments()[0];
                    Set<? extends Annotation> o9 = com.squareup.moshi.internal.c.o(parameterAnnotations[i4]);
                    h<?>[] hVarArr = this.f55553f;
                    int i10 = i4 - this.f55552e;
                    if (z.e(this.f55548a, type) && this.f55549b.equals(o9)) {
                        f10 = uVar.m(eVar, type, o9);
                    } else {
                        f10 = uVar.f(type, o9);
                    }
                    hVarArr[i10] = f10;
                }
            }
        }

        @r7.h
        public Object b(u uVar, JsonReader jsonReader) throws IOException, InvocationTargetException {
            throw new AssertionError();
        }

        @r7.h
        protected Object c(@r7.h Object obj) throws InvocationTargetException {
            h<?>[] hVarArr = this.f55553f;
            Object[] objArr = new Object[hVarArr.length + 1];
            objArr[0] = obj;
            System.arraycopy(hVarArr, 0, objArr, 1, hVarArr.length);
            try {
                return this.f55551d.invoke(this.f55550c, objArr);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        }

        protected Object d(@r7.h Object obj, @r7.h Object obj2) throws InvocationTargetException {
            h<?>[] hVarArr = this.f55553f;
            Object[] objArr = new Object[hVarArr.length + 2];
            objArr[0] = obj;
            objArr[1] = obj2;
            System.arraycopy(hVarArr, 0, objArr, 2, hVarArr.length);
            try {
                return this.f55551d.invoke(this.f55550c, objArr);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        }

        public void e(u uVar, q qVar, @r7.h Object obj) throws IOException, InvocationTargetException {
            throw new AssertionError();
        }
    }

    a(List<f> list, List<f> list2) {
        this.f55529a = list;
        this.f55530b = list2;
    }

    static f a(Object obj, Method method) {
        method.setAccessible(true);
        Type genericReturnType = method.getGenericReturnType();
        Set<? extends Annotation> n9 = com.squareup.moshi.internal.c.n(method);
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        if (genericParameterTypes.length >= 1 && genericParameterTypes[0] == JsonReader.class && genericReturnType != Void.TYPE && d(1, genericParameterTypes)) {
            return new d(genericReturnType, n9, obj, method, genericParameterTypes.length, 1, true);
        }
        if (genericParameterTypes.length == 1 && genericReturnType != Void.TYPE) {
            Set<? extends Annotation> o9 = com.squareup.moshi.internal.c.o(parameterAnnotations[0]);
            return new e(genericReturnType, n9, obj, method, genericParameterTypes.length, 1, com.squareup.moshi.internal.c.h(parameterAnnotations[0]), genericParameterTypes, genericReturnType, o9, n9);
        }
        throw new IllegalArgumentException("Unexpected signature for " + method + ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n");
    }

    @r7.h
    private static f b(List<f> list, Type type, Set<? extends Annotation> set) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            f fVar = list.get(i4);
            if (z.e(fVar.f55548a, type) && fVar.f55549b.equals(set)) {
                return fVar;
            }
        }
        return null;
    }

    public static a c(Object obj) {
        Method[] declaredMethods;
        f b10;
        f b11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Class<?> cls = obj.getClass(); cls != Object.class; cls = cls.getSuperclass()) {
            for (Method method : cls.getDeclaredMethods()) {
                if (method.isAnnotationPresent(y.class)) {
                    f e4 = e(obj, method);
                    if (b(arrayList, e4.f55548a, e4.f55549b) == null) {
                        arrayList.add(e4);
                    } else {
                        throw new IllegalArgumentException("Conflicting @ToJson methods:\n    " + b11.f55551d + "\n    " + e4.f55551d);
                    }
                }
                if (method.isAnnotationPresent(com.squareup.moshi.f.class)) {
                    f a10 = a(obj, method);
                    if (b(arrayList2, a10.f55548a, a10.f55549b) == null) {
                        arrayList2.add(a10);
                    } else {
                        throw new IllegalArgumentException("Conflicting @FromJson methods:\n    " + b10.f55551d + "\n    " + a10.f55551d);
                    }
                }
            }
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            throw new IllegalArgumentException("Expected at least one @ToJson or @FromJson method on " + obj.getClass().getName());
        }
        return new a(arrayList, arrayList2);
    }

    private static boolean d(int i4, Type[] typeArr) {
        int length = typeArr.length;
        while (i4 < length) {
            if (!(typeArr[i4] instanceof ParameterizedType) || ((ParameterizedType) typeArr[i4]).getRawType() != h.class) {
                return false;
            }
            i4++;
        }
        return true;
    }

    static f e(Object obj, Method method) {
        method.setAccessible(true);
        Type genericReturnType = method.getGenericReturnType();
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        if (genericParameterTypes.length >= 2 && genericParameterTypes[0] == q.class && genericReturnType == Void.TYPE && d(2, genericParameterTypes)) {
            return new b(genericParameterTypes[1], com.squareup.moshi.internal.c.o(parameterAnnotations[1]), obj, method, genericParameterTypes.length, 2, true);
        } else if (genericParameterTypes.length == 1 && genericReturnType != Void.TYPE) {
            Set<? extends Annotation> n9 = com.squareup.moshi.internal.c.n(method);
            Set<? extends Annotation> o9 = com.squareup.moshi.internal.c.o(parameterAnnotations[0]);
            return new c(genericParameterTypes[0], o9, obj, method, genericParameterTypes.length, 1, com.squareup.moshi.internal.c.h(parameterAnnotations[0]), genericParameterTypes, genericReturnType, o9, n9);
        } else {
            throw new IllegalArgumentException("Unexpected signature for " + method + ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n");
        }
    }

    @Override // com.squareup.moshi.h.e
    @r7.h
    public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
        f b10 = b(this.f55529a, type, set);
        f b11 = b(this.f55530b, type, set);
        h hVar = null;
        if (b10 == null && b11 == null) {
            return null;
        }
        if (b10 == null || b11 == null) {
            try {
                hVar = uVar.m(this, type, set);
            } catch (IllegalArgumentException e4) {
                String str = b10 == null ? "@ToJson" : "@FromJson";
                throw new IllegalArgumentException("No " + str + " adapter for " + com.squareup.moshi.internal.c.y(type, set), e4);
            }
        }
        h hVar2 = hVar;
        if (b10 != null) {
            b10.a(uVar, this);
        }
        if (b11 != null) {
            b11.a(uVar, this);
        }
        return new C0471a(b10, hVar2, uVar, b11, set, type);
    }
}

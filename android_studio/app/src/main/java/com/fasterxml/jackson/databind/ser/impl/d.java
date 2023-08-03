package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.util.v;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ReadOnlyClassToSerializerMap.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final a[] f15713a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15714b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15715c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReadOnlyClassToSerializerMap.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final g<Object> f15716a;

        /* renamed from: b  reason: collision with root package name */
        public final a f15717b;

        /* renamed from: c  reason: collision with root package name */
        protected final Class<?> f15718c;

        /* renamed from: d  reason: collision with root package name */
        protected final JavaType f15719d;

        /* renamed from: e  reason: collision with root package name */
        protected final boolean f15720e;

        public a(a aVar, v vVar, g<Object> gVar) {
            this.f15717b = aVar;
            this.f15716a = gVar;
            this.f15720e = vVar.c();
            this.f15718c = vVar.a();
            this.f15719d = vVar.b();
        }

        public boolean a(JavaType javaType) {
            return this.f15720e && javaType.equals(this.f15719d);
        }

        public boolean b(Class<?> cls) {
            return this.f15718c == cls && this.f15720e;
        }

        public boolean c(JavaType javaType) {
            return !this.f15720e && javaType.equals(this.f15719d);
        }

        public boolean d(Class<?> cls) {
            return this.f15718c == cls && !this.f15720e;
        }
    }

    public d(Map<v, g<Object>> map) {
        int a10 = a(map.size());
        this.f15714b = a10;
        this.f15715c = a10 - 1;
        a[] aVarArr = new a[a10];
        for (Map.Entry<v, g<Object>> entry : map.entrySet()) {
            v key = entry.getKey();
            int hashCode = key.hashCode() & this.f15715c;
            aVarArr[hashCode] = new a(aVarArr[hashCode], key, entry.getValue());
        }
        this.f15713a = aVarArr;
    }

    private static final int a(int i4) {
        int i10 = 8;
        while (i10 < (i4 <= 64 ? i4 + i4 : i4 + (i4 >> 2))) {
            i10 += i10;
        }
        return i10;
    }

    public static d b(HashMap<v, g<Object>> hashMap) {
        return new d(hashMap);
    }

    public int c() {
        return this.f15714b;
    }

    public g<Object> d(JavaType javaType) {
        a aVar = this.f15713a[v.h(javaType) & this.f15715c];
        if (aVar == null) {
            return null;
        }
        if (aVar.a(javaType)) {
            return aVar.f15716a;
        }
        do {
            aVar = aVar.f15717b;
            if (aVar == null) {
                return null;
            }
        } while (!aVar.a(javaType));
        return aVar.f15716a;
    }

    public g<Object> e(Class<?> cls) {
        a aVar = this.f15713a[v.i(cls) & this.f15715c];
        if (aVar == null) {
            return null;
        }
        if (aVar.b(cls)) {
            return aVar.f15716a;
        }
        do {
            aVar = aVar.f15717b;
            if (aVar == null) {
                return null;
            }
        } while (!aVar.b(cls));
        return aVar.f15716a;
    }

    public g<Object> f(JavaType javaType) {
        a aVar = this.f15713a[v.j(javaType) & this.f15715c];
        if (aVar == null) {
            return null;
        }
        if (aVar.c(javaType)) {
            return aVar.f15716a;
        }
        do {
            aVar = aVar.f15717b;
            if (aVar == null) {
                return null;
            }
        } while (!aVar.c(javaType));
        return aVar.f15716a;
    }

    public g<Object> g(Class<?> cls) {
        a aVar = this.f15713a[v.k(cls) & this.f15715c];
        if (aVar == null) {
            return null;
        }
        if (aVar.d(cls)) {
            return aVar.f15716a;
        }
        do {
            aVar = aVar.f15717b;
            if (aVar == null) {
                return null;
            }
        } while (!aVar.d(cls));
        return aVar.f15716a;
    }
}

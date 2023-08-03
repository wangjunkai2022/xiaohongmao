package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.util.v;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SerializerCache.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<v, com.fasterxml.jackson.databind.g<Object>> f15726a = new HashMap<>(64);

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<com.fasterxml.jackson.databind.ser.impl.d> f15727b = new AtomicReference<>();

    private final synchronized com.fasterxml.jackson.databind.ser.impl.d a() {
        com.fasterxml.jackson.databind.ser.impl.d dVar;
        dVar = this.f15727b.get();
        if (dVar == null) {
            dVar = com.fasterxml.jackson.databind.ser.impl.d.b(this.f15726a);
            this.f15727b.set(dVar);
        }
        return dVar;
    }

    public void b(JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        synchronized (this) {
            if (this.f15726a.put(new v(javaType, false), gVar) == null) {
                this.f15727b.set(null);
            }
            if (gVar instanceof i) {
                ((i) gVar).resolve(lVar);
            }
        }
    }

    public void c(Class<?> cls, JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        synchronized (this) {
            com.fasterxml.jackson.databind.g<Object> put = this.f15726a.put(new v(cls, false), gVar);
            com.fasterxml.jackson.databind.g<Object> put2 = this.f15726a.put(new v(javaType, false), gVar);
            if (put == null || put2 == null) {
                this.f15727b.set(null);
            }
            if (gVar instanceof i) {
                ((i) gVar).resolve(lVar);
            }
        }
    }

    public void d(Class<?> cls, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        synchronized (this) {
            if (this.f15726a.put(new v(cls, false), gVar) == null) {
                this.f15727b.set(null);
            }
            if (gVar instanceof i) {
                ((i) gVar).resolve(lVar);
            }
        }
    }

    public void e(JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar) {
        synchronized (this) {
            if (this.f15726a.put(new v(javaType, true), gVar) == null) {
                this.f15727b.set(null);
            }
        }
    }

    public void f(Class<?> cls, com.fasterxml.jackson.databind.g<Object> gVar) {
        synchronized (this) {
            if (this.f15726a.put(new v(cls, true), gVar) == null) {
                this.f15727b.set(null);
            }
        }
    }

    public synchronized void g() {
        this.f15726a.clear();
    }

    public com.fasterxml.jackson.databind.ser.impl.d h() {
        com.fasterxml.jackson.databind.ser.impl.d dVar = this.f15727b.get();
        return dVar != null ? dVar : a();
    }

    public synchronized int i() {
        return this.f15726a.size();
    }

    public com.fasterxml.jackson.databind.g<Object> j(JavaType javaType) {
        com.fasterxml.jackson.databind.g<Object> gVar;
        synchronized (this) {
            gVar = this.f15726a.get(new v(javaType, true));
        }
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<Object> k(Class<?> cls) {
        com.fasterxml.jackson.databind.g<Object> gVar;
        synchronized (this) {
            gVar = this.f15726a.get(new v(cls, true));
        }
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<Object> l(JavaType javaType) {
        com.fasterxml.jackson.databind.g<Object> gVar;
        synchronized (this) {
            gVar = this.f15726a.get(new v(javaType, false));
        }
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<Object> m(Class<?> cls) {
        com.fasterxml.jackson.databind.g<Object> gVar;
        synchronized (this) {
            gVar = this.f15726a.get(new v(cls, false));
        }
        return gVar;
    }
}

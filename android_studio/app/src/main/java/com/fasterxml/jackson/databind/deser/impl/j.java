package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: ReadableObjectId.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    protected Object f14834a;

    /* renamed from: b  reason: collision with root package name */
    protected final ObjectIdGenerator.IdKey f14835b;

    /* renamed from: c  reason: collision with root package name */
    protected LinkedList<a> f14836c;

    /* renamed from: d  reason: collision with root package name */
    protected c0 f14837d;

    public j(ObjectIdGenerator.IdKey idKey) {
        this.f14835b = idKey;
    }

    public void a(a aVar) {
        if (this.f14836c == null) {
            this.f14836c = new LinkedList<>();
        }
        this.f14836c.add(aVar);
    }

    public void b(Object obj) throws IOException {
        this.f14837d.a(this.f14835b, obj);
        this.f14834a = obj;
        Object obj2 = this.f14835b.key;
        LinkedList<a> linkedList = this.f14836c;
        if (linkedList != null) {
            Iterator<a> it = linkedList.iterator();
            this.f14836c = null;
            while (it.hasNext()) {
                it.next().c(obj2, obj);
            }
        }
    }

    public ObjectIdGenerator.IdKey c() {
        return this.f14835b;
    }

    public c0 d() {
        return this.f14837d;
    }

    public boolean e() {
        LinkedList<a> linkedList = this.f14836c;
        return (linkedList == null || linkedList.isEmpty()) ? false : true;
    }

    public Iterator<a> f() {
        LinkedList<a> linkedList = this.f14836c;
        if (linkedList == null) {
            return Collections.emptyList().iterator();
        }
        return linkedList.iterator();
    }

    public Object g() {
        Object c10 = this.f14837d.c(this.f14835b);
        this.f14834a = c10;
        return c10;
    }

    public void h(c0 c0Var) {
        this.f14837d = c0Var;
    }

    public boolean i(DeserializationContext deserializationContext) {
        return false;
    }

    public String toString() {
        return String.valueOf(this.f14835b);
    }

    /* compiled from: ReadableObjectId.java */
    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private final UnresolvedForwardReference f14838a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f14839b;

        public a(UnresolvedForwardReference unresolvedForwardReference, Class<?> cls) {
            this.f14838a = unresolvedForwardReference;
            this.f14839b = cls;
        }

        public Class<?> a() {
            return this.f14839b;
        }

        public JsonLocation b() {
            return this.f14838a.getLocation();
        }

        public abstract void c(Object obj, Object obj2) throws IOException;

        public boolean d(Object obj) {
            return obj.equals(this.f14838a.getUnresolvedId());
        }

        public a(UnresolvedForwardReference unresolvedForwardReference, JavaType javaType) {
            this.f14838a = unresolvedForwardReference;
            this.f14839b = javaType.getRawClass();
        }
    }
}

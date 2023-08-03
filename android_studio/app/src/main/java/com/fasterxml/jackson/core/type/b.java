package com.fasterxml.jackson.core.type;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* compiled from: TypeReference.java */
/* loaded from: classes.dex */
public abstract class b<T> implements Comparable<b<T>> {

    /* renamed from: a  reason: collision with root package name */
    protected final Type f14231a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            this.f14231a = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
            return;
        }
        throw new IllegalArgumentException("Internal error: TypeReference constructed without actual type information");
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(b<T> bVar) {
        return 0;
    }

    public Type b() {
        return this.f14231a;
    }
}

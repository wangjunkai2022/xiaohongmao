package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.ser.h;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SimpleFilterProvider extends com.fasterxml.jackson.databind.ser.f implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15672d = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final Map<String, h> f15673a;

    /* renamed from: b  reason: collision with root package name */
    protected h f15674b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f15675c;

    public SimpleFilterProvider() {
        this(new HashMap());
    }

    private static final h a(com.fasterxml.jackson.databind.ser.b bVar) {
        return SimpleBeanPropertyFilter.from(bVar);
    }

    private static final Map<String, h> b(Map<String, ?> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof h) {
                hashMap.put(entry.getKey(), (h) value);
            } else if (value instanceof com.fasterxml.jackson.databind.ser.b) {
                hashMap.put(entry.getKey(), a((com.fasterxml.jackson.databind.ser.b) value));
            } else {
                throw new IllegalArgumentException("Unrecognized filter type (" + value.getClass().getName() + ")");
            }
        }
        return hashMap;
    }

    @Deprecated
    public SimpleFilterProvider addFilter(String str, com.fasterxml.jackson.databind.ser.b bVar) {
        this.f15673a.put(str, a(bVar));
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.f
    @Deprecated
    public com.fasterxml.jackson.databind.ser.b findFilter(Object obj) {
        throw new UnsupportedOperationException("Access to deprecated filters not supported");
    }

    @Override // com.fasterxml.jackson.databind.ser.f
    public h findPropertyFilter(Object obj, Object obj2) {
        h hVar = this.f15673a.get(obj);
        if (hVar == null && (hVar = this.f15674b) == null && this.f15675c) {
            throw new IllegalArgumentException("No filter configured with id '" + obj + "' (type " + obj.getClass().getName() + ")");
        }
        return hVar;
    }

    public h getDefaultFilter() {
        return this.f15674b;
    }

    public h removeFilter(String str) {
        return this.f15673a.remove(str);
    }

    @Deprecated
    public SimpleFilterProvider setDefaultFilter(com.fasterxml.jackson.databind.ser.b bVar) {
        this.f15674b = SimpleBeanPropertyFilter.from(bVar);
        return this;
    }

    public SimpleFilterProvider setFailOnUnknownId(boolean z9) {
        this.f15675c = z9;
        return this;
    }

    public boolean willFailOnUnknownId() {
        return this.f15675c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleFilterProvider(Map<String, ?> map) {
        this.f15675c = true;
        for (Object obj : map.values()) {
            if (!(obj instanceof h)) {
                this.f15673a = b(map);
                return;
            }
        }
        this.f15673a = map;
    }

    public SimpleFilterProvider addFilter(String str, h hVar) {
        this.f15673a.put(str, hVar);
        return this;
    }

    public SimpleFilterProvider setDefaultFilter(h hVar) {
        this.f15674b = hVar;
        return this;
    }

    public SimpleFilterProvider addFilter(String str, SimpleBeanPropertyFilter simpleBeanPropertyFilter) {
        this.f15673a.put(str, simpleBeanPropertyFilter);
        return this;
    }

    public SimpleFilterProvider setDefaultFilter(SimpleBeanPropertyFilter simpleBeanPropertyFilter) {
        this.f15674b = simpleBeanPropertyFilter;
        return this;
    }
}

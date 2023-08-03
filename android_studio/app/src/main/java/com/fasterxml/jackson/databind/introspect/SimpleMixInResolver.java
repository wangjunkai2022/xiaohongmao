package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SimpleMixInResolver implements l.a, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15229c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final l.a f15230a;

    /* renamed from: b  reason: collision with root package name */
    protected Map<ClassKey, Class<?>> f15231b;

    public SimpleMixInResolver(l.a aVar) {
        this.f15230a = aVar;
    }

    public void addLocalDefinition(Class<?> cls, Class<?> cls2) {
        if (this.f15231b == null) {
            this.f15231b = new HashMap();
        }
        this.f15231b.put(new ClassKey(cls), cls2);
    }

    @Override // com.fasterxml.jackson.databind.introspect.l.a
    public Class<?> findMixInClassFor(Class<?> cls) {
        Map<ClassKey, Class<?>> map;
        l.a aVar = this.f15230a;
        Class<?> findMixInClassFor = aVar == null ? null : aVar.findMixInClassFor(cls);
        return (findMixInClassFor != null || (map = this.f15231b) == null) ? findMixInClassFor : map.get(new ClassKey(cls));
    }

    public boolean hasMixIns() {
        if (this.f15231b == null) {
            l.a aVar = this.f15230a;
            if (aVar == null) {
                return false;
            }
            if (aVar instanceof SimpleMixInResolver) {
                return ((SimpleMixInResolver) aVar).hasMixIns();
            }
            return true;
        }
        return true;
    }

    public int localSize() {
        Map<ClassKey, Class<?>> map = this.f15231b;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public void setLocalDefinitions(Map<Class<?>, Class<?>> map) {
        if (map != null && !map.isEmpty()) {
            HashMap hashMap = new HashMap(map.size());
            for (Map.Entry<Class<?>, Class<?>> entry : map.entrySet()) {
                hashMap.put(new ClassKey(entry.getKey()), entry.getValue());
            }
            this.f15231b = hashMap;
            return;
        }
        this.f15231b = null;
    }

    public SimpleMixInResolver withOverrides(l.a aVar) {
        return new SimpleMixInResolver(aVar, this.f15231b);
    }

    public SimpleMixInResolver withoutLocalDefinitions() {
        return new SimpleMixInResolver(this.f15230a, null);
    }

    @Override // com.fasterxml.jackson.databind.introspect.l.a
    public SimpleMixInResolver copy() {
        l.a aVar = this.f15230a;
        return new SimpleMixInResolver(aVar == null ? null : aVar.copy(), this.f15231b != null ? new HashMap(this.f15231b) : null);
    }

    protected SimpleMixInResolver(l.a aVar, Map<ClassKey, Class<?>> map) {
        this.f15230a = aVar;
        this.f15231b = map;
    }
}

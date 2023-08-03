package com.fasterxml.jackson.annotation;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import java.util.HashMap;
import java.util.Map;

/* compiled from: SimpleObjectIdResolver.java */
/* loaded from: classes.dex */
public class d0 implements c0 {

    /* renamed from: a  reason: collision with root package name */
    protected Map<ObjectIdGenerator.IdKey, Object> f13658a;

    @Override // com.fasterxml.jackson.annotation.c0
    public void a(ObjectIdGenerator.IdKey idKey, Object obj) {
        Map<ObjectIdGenerator.IdKey, Object> map = this.f13658a;
        if (map == null) {
            this.f13658a = new HashMap();
        } else {
            Object obj2 = map.get(idKey);
            if (obj2 != null) {
                if (obj2 == obj) {
                    return;
                }
                throw new IllegalStateException("Already had POJO for id (" + idKey.key.getClass().getName() + ") [" + idKey + "]");
            }
        }
        this.f13658a.put(idKey, obj);
    }

    @Override // com.fasterxml.jackson.annotation.c0
    public boolean b(c0 c0Var) {
        return c0Var.getClass() == getClass();
    }

    @Override // com.fasterxml.jackson.annotation.c0
    public Object c(ObjectIdGenerator.IdKey idKey) {
        Map<ObjectIdGenerator.IdKey, Object> map = this.f13658a;
        if (map == null) {
            return null;
        }
        return map.get(idKey);
    }

    @Override // com.fasterxml.jackson.annotation.c0
    public c0 d(Object obj) {
        return new d0();
    }
}

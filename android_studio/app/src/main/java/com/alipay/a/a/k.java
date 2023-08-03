package com.alipay.a.a;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class k implements i {
    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean b(Class<?> cls) {
        return Set.class.isAssignableFrom(cls);
    }

    @Override // com.alipay.a.a.i
    public final Object c(Object obj, Type type) {
        if (obj.getClass().equals(org.json.alipay.a.class)) {
            org.json.alipay.a aVar = (org.json.alipay.a) obj;
            HashSet hashSet = new HashSet();
            Class cls = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : Object.class;
            for (int i4 = 0; i4 < aVar.a(); i4++) {
                hashSet.add(e.a(aVar.b(i4), cls));
            }
            return hashSet;
        }
        return null;
    }
}

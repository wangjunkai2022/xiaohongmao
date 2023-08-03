package com.alipay.a.a;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a implements i, j {
    @Override // com.alipay.a.a.j
    public final Object a(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : (Object[]) obj) {
            arrayList.add(f.b(obj2));
        }
        return arrayList;
    }

    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean b(Class<?> cls) {
        return cls.isArray();
    }

    @Override // com.alipay.a.a.i
    public final Object c(Object obj, Type type) {
        if (obj.getClass().equals(org.json.alipay.a.class)) {
            org.json.alipay.a aVar = (org.json.alipay.a) obj;
            if (type instanceof GenericArrayType) {
                throw new IllegalArgumentException("Does not support generic array!");
            }
            Class<?> componentType = ((Class) type).getComponentType();
            int a10 = aVar.a();
            Object newInstance = Array.newInstance(componentType, a10);
            for (int i4 = 0; i4 < a10; i4++) {
                Array.set(newInstance, i4, e.a(aVar.b(i4), componentType));
            }
            return newInstance;
        }
        return null;
    }
}

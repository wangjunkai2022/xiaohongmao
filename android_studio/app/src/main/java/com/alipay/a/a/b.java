package com.alipay.a.a;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class b implements i, j {
    private static Collection<Object> d(Class<?> cls, Type type) {
        if (cls == AbstractCollection.class) {
            return new ArrayList();
        }
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(LinkedHashSet.class)) {
            return new LinkedHashSet();
        }
        if (cls.isAssignableFrom(TreeSet.class)) {
            return new TreeSet();
        }
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        if (cls.isAssignableFrom(EnumSet.class)) {
            return EnumSet.noneOf(type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : Object.class);
        }
        try {
            return (Collection) cls.newInstance();
        } catch (Exception unused) {
            throw new IllegalArgumentException("create instane error, class " + cls.getName());
        }
    }

    @Override // com.alipay.a.a.j
    public final Object a(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : (Iterable) obj) {
            arrayList.add(f.b(obj2));
        }
        return arrayList;
    }

    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean b(Class<?> cls) {
        return Collection.class.isAssignableFrom(cls);
    }

    @Override // com.alipay.a.a.i
    public final Object c(Object obj, Type type) {
        if (obj.getClass().equals(org.json.alipay.a.class)) {
            org.json.alipay.a aVar = (org.json.alipay.a) obj;
            Collection<Object> d4 = d(d.a.a(type), type);
            if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                for (int i4 = 0; i4 < aVar.a(); i4++) {
                    d4.add(e.a(aVar.b(i4), type2));
                }
                return d4;
            }
            throw new IllegalArgumentException("Does not support the implement for generics.");
        }
        return null;
    }
}

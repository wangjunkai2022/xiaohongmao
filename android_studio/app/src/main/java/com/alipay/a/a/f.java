package com.alipay.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static List<j> f6590a;

    static {
        ArrayList arrayList = new ArrayList();
        f6590a = arrayList;
        arrayList.add(new l());
        f6590a.add(new d());
        f6590a.add(new c());
        f6590a.add(new h());
        f6590a.add(new b());
        f6590a.add(new a());
        f6590a.add(new g());
    }

    public static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        Object b10 = b(obj);
        if (d.a.b(b10.getClass())) {
            return org.json.alipay.b.f(b10.toString());
        }
        if (Collection.class.isAssignableFrom(b10.getClass())) {
            return new org.json.alipay.a((Collection) ((List) b10)).toString();
        }
        if (Map.class.isAssignableFrom(b10.getClass())) {
            return new org.json.alipay.b((Map) b10).toString();
        }
        throw new IllegalArgumentException("Unsupported Class : " + b10.getClass());
    }

    public static Object b(Object obj) {
        Object a10;
        if (obj == null) {
            return null;
        }
        for (j jVar : f6590a) {
            if (jVar.b(obj.getClass()) && (a10 = jVar.a(obj)) != null) {
                return a10;
            }
        }
        throw new IllegalArgumentException("Unsupported Class : " + obj.getClass());
    }
}

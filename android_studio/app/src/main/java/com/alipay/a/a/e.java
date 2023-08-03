package com.alipay.a.a;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static List<i> f6589a;

    static {
        ArrayList arrayList = new ArrayList();
        f6589a = arrayList;
        arrayList.add(new l());
        f6589a.add(new d());
        f6589a.add(new c());
        f6589a.add(new h());
        f6589a.add(new k());
        f6589a.add(new b());
        f6589a.add(new a());
        f6589a.add(new g());
    }

    public static final <T> T a(Object obj, Type type) {
        T t9;
        for (i iVar : f6589a) {
            if (iVar.b(d.a.a(type)) && (t9 = (T) iVar.c(obj, type)) != null) {
                return t9;
            }
        }
        return null;
    }

    public static final Object b(String str, Type type) {
        Object bVar;
        if (str == null || str.length() == 0) {
            return null;
        }
        String trim = str.trim();
        if (trim.startsWith("[") && trim.endsWith("]")) {
            bVar = new org.json.alipay.a(trim);
        } else if (!trim.startsWith("{") || !trim.endsWith(com.alipay.sdk.util.i.f6967d)) {
            return a(trim, type);
        } else {
            bVar = new org.json.alipay.b(trim);
        }
        return a(bVar, type);
    }
}

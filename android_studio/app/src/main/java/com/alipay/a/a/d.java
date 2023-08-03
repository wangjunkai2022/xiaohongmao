package com.alipay.a.a;

import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class d implements i, j {
    @Override // com.alipay.a.a.j
    public final Object a(Object obj) {
        return ((Enum) obj).name();
    }

    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean b(Class<?> cls) {
        return Enum.class.isAssignableFrom(cls);
    }

    @Override // com.alipay.a.a.i
    public final Object c(Object obj, Type type) {
        return Enum.valueOf((Class) type, obj.toString());
    }
}

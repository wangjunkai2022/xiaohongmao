package com.alipay.a.a;

import java.lang.reflect.Type;
import java.util.Date;

/* loaded from: classes.dex */
public final class c implements i, j {
    @Override // com.alipay.a.a.j
    public final Object a(Object obj) {
        return Long.valueOf(((Date) obj).getTime());
    }

    @Override // com.alipay.a.a.i, com.alipay.a.a.j
    public final boolean b(Class<?> cls) {
        return Date.class.isAssignableFrom(cls);
    }

    @Override // com.alipay.a.a.i
    public final Object c(Object obj, Type type) {
        return new Date(((Long) obj).longValue());
    }
}

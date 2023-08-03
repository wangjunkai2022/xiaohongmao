package com.alipay.android.phone.mrpc.core;

import android.os.Looper;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<Object> f6622d = new ThreadLocal<>();

    /* renamed from: e  reason: collision with root package name */
    private static final ThreadLocal<Map<String, Object>> f6623e = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    private byte f6624a = 0;

    /* renamed from: b  reason: collision with root package name */
    private AtomicInteger f6625b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    private b0 f6626c;

    public d0(b0 b0Var) {
        this.f6626c = b0Var;
    }

    public final Object a(Method method, Object[] objArr) {
        if (Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalThreadStateException("can't in main thread call rpc .");
        }
        j.a aVar = (j.a) method.getAnnotation(j.a.class);
        boolean z9 = method.getAnnotation(j.b.class) != null;
        Type genericReturnType = method.getGenericReturnType();
        method.getAnnotations();
        ThreadLocal<Object> threadLocal = f6622d;
        threadLocal.set(null);
        ThreadLocal<Map<String, Object>> threadLocal2 = f6623e;
        threadLocal2.set(null);
        if (aVar != null) {
            String value = aVar.value();
            int incrementAndGet = this.f6625b.incrementAndGet();
            try {
                if (this.f6624a == 0) {
                    com.alipay.android.phone.mrpc.core.a.e eVar = new com.alipay.android.phone.mrpc.core.a.e(incrementAndGet, value, objArr);
                    if (threadLocal2.get() != null) {
                        eVar.a(threadLocal2.get());
                    }
                    byte[] a10 = eVar.a();
                    threadLocal2.set(null);
                    Object a11 = new com.alipay.android.phone.mrpc.core.a.d(genericReturnType, (byte[]) new n(this.f6626c.a(), method, incrementAndGet, value, a10, z9).a()).a();
                    if (genericReturnType != Void.TYPE) {
                        threadLocal.set(a11);
                    }
                }
                return threadLocal.get();
            } catch (RpcException e4) {
                e4.setOperationType(value);
                throw e4;
            }
        }
        throw new IllegalStateException("OperationType must be set.");
    }
}

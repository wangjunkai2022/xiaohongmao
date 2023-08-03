package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class p implements c {

    /* renamed from: h  reason: collision with root package name */
    private static p f6650h;

    /* renamed from: i  reason: collision with root package name */
    private static final ThreadFactory f6651i = new r();

    /* renamed from: a  reason: collision with root package name */
    Context f6652a;

    /* renamed from: b  reason: collision with root package name */
    private ThreadPoolExecutor f6653b;

    /* renamed from: c  reason: collision with root package name */
    private f f6654c = f.b("android");

    /* renamed from: d  reason: collision with root package name */
    private long f6655d;

    /* renamed from: e  reason: collision with root package name */
    private long f6656e;

    /* renamed from: f  reason: collision with root package name */
    private long f6657f;

    /* renamed from: g  reason: collision with root package name */
    private int f6658g;

    private p(Context context) {
        this.f6652a = context;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(10, 11, 3L, TimeUnit.SECONDS, new ArrayBlockingQueue(20), f6651i, new ThreadPoolExecutor.CallerRunsPolicy());
        this.f6653b = threadPoolExecutor;
        try {
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Exception unused) {
        }
        CookieSyncManager.createInstance(this.f6652a);
        CookieManager.getInstance().setAcceptCookie(true);
    }

    public static final p c(Context context) {
        p pVar = f6650h;
        return pVar != null ? pVar : e(context);
    }

    private static final synchronized p e(Context context) {
        synchronized (p.class) {
            p pVar = f6650h;
            if (pVar != null) {
                return pVar;
            }
            p pVar2 = new p(context);
            f6650h = pVar2;
            return pVar2;
        }
    }

    @Override // com.alipay.android.phone.mrpc.core.c
    public final Future<y> a(x xVar) {
        if (w.a(this.f6652a)) {
            String str = "HttpManager" + hashCode() + ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times";
            Object[] objArr = new Object[9];
            objArr[0] = Integer.valueOf(this.f6653b.getActiveCount());
            objArr[1] = Long.valueOf(this.f6653b.getCompletedTaskCount());
            objArr[2] = Long.valueOf(this.f6653b.getTaskCount());
            long j4 = this.f6657f;
            objArr[3] = Long.valueOf(j4 == 0 ? 0L : ((this.f6655d * 1000) / j4) >> 10);
            int i4 = this.f6658g;
            objArr[4] = Long.valueOf(i4 != 0 ? this.f6656e / i4 : 0L);
            objArr[5] = Long.valueOf(this.f6655d);
            objArr[6] = Long.valueOf(this.f6656e);
            objArr[7] = Long.valueOf(this.f6657f);
            objArr[8] = Integer.valueOf(this.f6658g);
            String.format(str, objArr);
        }
        u uVar = new u(this, (s) xVar);
        q qVar = new q(this, uVar, uVar);
        this.f6653b.execute(qVar);
        return qVar;
    }

    public final f b() {
        return this.f6654c;
    }

    public final void d(long j4) {
        this.f6655d += j4;
    }

    public final void f(long j4) {
        this.f6656e += j4;
        this.f6658g++;
    }

    public final void g(long j4) {
        this.f6657f += j4;
    }
}

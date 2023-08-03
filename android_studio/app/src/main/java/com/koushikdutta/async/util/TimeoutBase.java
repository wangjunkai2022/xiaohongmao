package com.koushikdutta.async.util;

import android.os.Handler;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.future.Cancellable;

/* loaded from: classes3.dex */
public class TimeoutBase {

    /* renamed from: a  reason: collision with root package name */
    protected Handlerish f45179a;

    /* renamed from: b  reason: collision with root package name */
    protected long f45180b;

    /* loaded from: classes3.dex */
    interface Handlerish {
        Object a(Runnable runnable, long j4);

        void b(Object obj);

        void post(Runnable runnable);
    }

    public TimeoutBase(final AsyncServer asyncServer, long j4) {
        this.f45180b = j4;
        this.f45179a = new Handlerish() { // from class: com.koushikdutta.async.util.TimeoutBase.1
            @Override // com.koushikdutta.async.util.TimeoutBase.Handlerish
            public Object a(Runnable runnable, long j10) {
                return asyncServer.e0(runnable, j10);
            }

            @Override // com.koushikdutta.async.util.TimeoutBase.Handlerish
            public void b(Object obj) {
                if (obj == null) {
                    return;
                }
                ((Cancellable) obj).cancel();
            }

            @Override // com.koushikdutta.async.util.TimeoutBase.Handlerish
            public void post(Runnable runnable) {
                asyncServer.c0(runnable);
            }
        };
    }

    protected void a() {
    }

    public void b(long j4) {
        this.f45180b = j4;
    }

    public TimeoutBase(final Handler handler, long j4) {
        this.f45180b = j4;
        this.f45179a = new Handlerish() { // from class: com.koushikdutta.async.util.TimeoutBase.2
            @Override // com.koushikdutta.async.util.TimeoutBase.Handlerish
            public Object a(Runnable runnable, long j10) {
                handler.postDelayed(runnable, j10);
                return runnable;
            }

            @Override // com.koushikdutta.async.util.TimeoutBase.Handlerish
            public void b(Object obj) {
                if (obj == null) {
                    return;
                }
                handler.removeCallbacks((Runnable) obj);
            }

            @Override // com.koushikdutta.async.util.TimeoutBase.Handlerish
            public void post(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }
}

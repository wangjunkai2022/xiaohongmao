package com.koushikdutta.async.util;

import android.os.Handler;
import com.koushikdutta.async.AsyncServer;

/* loaded from: classes3.dex */
public class IdleTimeout extends TimeoutBase {

    /* renamed from: c  reason: collision with root package name */
    Runnable f45163c;

    /* renamed from: d  reason: collision with root package name */
    Object f45164d;

    public IdleTimeout(AsyncServer asyncServer, long j4) {
        super(asyncServer, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f45179a.b(this.f45164d);
    }

    public void d() {
        this.f45179a.post(new Runnable() { // from class: com.koushikdutta.async.util.a
            @Override // java.lang.Runnable
            public final void run() {
                IdleTimeout.this.e();
            }
        });
    }

    public void f() {
        this.f45179a.b(this.f45164d);
        this.f45164d = this.f45179a.a(this.f45163c, this.f45180b);
    }

    public void g(Runnable runnable) {
        this.f45163c = runnable;
    }

    public IdleTimeout(Handler handler, long j4) {
        super(handler, j4);
    }
}

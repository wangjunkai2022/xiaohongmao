package com.koushikdutta.async.util;

import android.os.Handler;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.callback.ValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ThrottleTimeout<T> extends TimeoutBase {

    /* renamed from: c  reason: collision with root package name */
    ValueCallback<List<T>> f45174c;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<T> f45175d;

    /* renamed from: e  reason: collision with root package name */
    ThrottleMode f45176e;

    /* renamed from: f  reason: collision with root package name */
    Object f45177f;

    /* loaded from: classes3.dex */
    public enum ThrottleMode {
        Collect,
        Meter
    }

    public ThrottleTimeout(AsyncServer asyncServer, long j4, ValueCallback<List<T>> valueCallback) {
        super(asyncServer, j4);
        this.f45175d = new ArrayList<>();
        this.f45176e = ThrottleMode.Collect;
        this.f45174c = valueCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(Object obj) {
        this.f45175d.add(obj);
        if (this.f45176e == ThrottleMode.Collect) {
            this.f45179a.b(this.f45177f);
            this.f45177f = this.f45179a.a(new Runnable() { // from class: com.koushikdutta.async.util.b
                @Override // java.lang.Runnable
                public final void run() {
                    ThrottleTimeout.this.g();
                }
            }, this.f45180b);
        } else if (this.f45177f == null) {
            g();
            this.f45177f = this.f45179a.a(new Runnable() { // from class: com.koushikdutta.async.util.b
                @Override // java.lang.Runnable
                public final void run() {
                    ThrottleTimeout.this.g();
                }
            }, this.f45180b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f45177f = null;
        ArrayList arrayList = new ArrayList(this.f45175d);
        this.f45175d.clear();
        this.f45174c.a(arrayList);
    }

    public synchronized void f(final T t9) {
        this.f45179a.post(new Runnable() { // from class: com.koushikdutta.async.util.c
            @Override // java.lang.Runnable
            public final void run() {
                ThrottleTimeout.this.e(t9);
            }
        });
    }

    public void h(ValueCallback<List<T>> valueCallback) {
        this.f45174c = valueCallback;
    }

    public void i(ThrottleMode throttleMode) {
        this.f45176e = throttleMode;
    }

    public ThrottleTimeout(Handler handler, long j4, ValueCallback<List<T>> valueCallback) {
        super(handler, j4);
        this.f45175d = new ArrayList<>();
        this.f45176e = ThrottleMode.Collect;
        this.f45174c = valueCallback;
    }
}

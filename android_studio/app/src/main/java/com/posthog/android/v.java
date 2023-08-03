package com.posthog.android;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Stats.java */
/* loaded from: classes3.dex */
class v {

    /* renamed from: h  reason: collision with root package name */
    private static final String f47651h = "PostHog-Stats";

    /* renamed from: a  reason: collision with root package name */
    final HandlerThread f47652a;

    /* renamed from: b  reason: collision with root package name */
    final a f47653b;

    /* renamed from: c  reason: collision with root package name */
    long f47654c;

    /* renamed from: d  reason: collision with root package name */
    long f47655d;

    /* renamed from: e  reason: collision with root package name */
    long f47656e;

    /* renamed from: f  reason: collision with root package name */
    long f47657f;

    /* renamed from: g  reason: collision with root package name */
    Map<String, Long> f47658g = new HashMap();

    /* compiled from: Stats.java */
    /* loaded from: classes3.dex */
    private static class a extends Handler {

        /* renamed from: b  reason: collision with root package name */
        static final int f47659b = 1;

        /* renamed from: c  reason: collision with root package name */
        static final int f47660c = 2;

        /* renamed from: a  reason: collision with root package name */
        private final v f47661a;

        a(Looper looper, v vVar) {
            super(looper);
            this.f47661a = vVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i4 = message.what;
            if (i4 == 1) {
                this.f47661a.d(message.arg1);
            } else if (i4 == 2) {
                this.f47661a.e((Pair) message.obj);
            } else {
                throw new AssertionError("Unknown Stats handler message: " + message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v() {
        HandlerThread handlerThread = new HandlerThread(f47651h, 10);
        this.f47652a = handlerThread;
        handlerThread.start();
        this.f47653b = new a(handlerThread.getLooper(), this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w a() {
        return new w(System.currentTimeMillis(), this.f47654c, this.f47655d, this.f47656e, this.f47657f, Collections.unmodifiableMap(this.f47658g));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i4) {
        a aVar = this.f47653b;
        aVar.sendMessage(aVar.obtainMessage(1, i4, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(long j4) {
        a aVar = this.f47653b;
        aVar.sendMessage(aVar.obtainMessage(2, new Pair("PostHog", Long.valueOf(j4))));
    }

    void d(int i4) {
        this.f47654c++;
        this.f47655d += i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void e(Pair<String, Long> pair) {
        this.f47656e++;
        this.f47657f += ((Long) pair.second).longValue();
        Long l10 = this.f47658g.get(pair.first);
        if (l10 == null) {
            this.f47658g.put(pair.first, pair.second);
        } else {
            this.f47658g.put(pair.first, Long.valueOf(l10.longValue() + ((Long) pair.second).longValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f47652a.quit();
    }
}

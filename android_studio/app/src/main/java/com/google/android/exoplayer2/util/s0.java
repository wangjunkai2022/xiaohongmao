package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.q;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemHandlerWrapper.java */
/* loaded from: classes2.dex */
public final class s0 implements q {

    /* renamed from: b  reason: collision with root package name */
    private static final int f27691b = 50;
    @GuardedBy("messagePool")

    /* renamed from: c  reason: collision with root package name */
    private static final List<b> f27692c = new ArrayList(50);

    /* renamed from: a  reason: collision with root package name */
    private final Handler f27693a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SystemHandlerWrapper.java */
    /* loaded from: classes2.dex */
    public static final class b implements q.a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Message f27694a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private s0 f27695b;

        private b() {
        }

        private void c() {
            this.f27694a = null;
            this.f27695b = null;
            s0.q(this);
        }

        @Override // com.google.android.exoplayer2.util.q.a
        public q a() {
            return (q) com.google.android.exoplayer2.util.a.g(this.f27695b);
        }

        @Override // com.google.android.exoplayer2.util.q.a
        public void b() {
            ((Message) com.google.android.exoplayer2.util.a.g(this.f27694a)).sendToTarget();
            c();
        }

        public boolean d(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) com.google.android.exoplayer2.util.a.g(this.f27694a));
            c();
            return sendMessageAtFrontOfQueue;
        }

        public b e(Message message, s0 s0Var) {
            this.f27694a = message;
            this.f27695b = s0Var;
            return this;
        }
    }

    public s0(Handler handler) {
        this.f27693a = handler;
    }

    private static b p() {
        b remove;
        List<b> list = f27692c;
        synchronized (list) {
            if (list.isEmpty()) {
                remove = new b();
            } else {
                remove = list.remove(list.size() - 1);
            }
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(b bVar) {
        List<b> list = f27692c;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(bVar);
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean a(Runnable runnable, long j4) {
        return this.f27693a.postDelayed(runnable, j4);
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean b(int i4, int i10) {
        return this.f27693a.sendEmptyMessageDelayed(i4, i10);
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean c(Runnable runnable) {
        return this.f27693a.postAtFrontOfQueue(runnable);
    }

    @Override // com.google.android.exoplayer2.util.q
    public q.a d(int i4) {
        return p().e(this.f27693a.obtainMessage(i4), this);
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean e(q.a aVar) {
        return ((b) aVar).d(this.f27693a);
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean f(int i4) {
        return this.f27693a.hasMessages(i4);
    }

    @Override // com.google.android.exoplayer2.util.q
    public q.a g(int i4, int i10, int i11, @Nullable Object obj) {
        return p().e(this.f27693a.obtainMessage(i4, i10, i11, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.q
    public q.a h(int i4, @Nullable Object obj) {
        return p().e(this.f27693a.obtainMessage(i4, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.q
    public void i(@Nullable Object obj) {
        this.f27693a.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.q
    public Looper j() {
        return this.f27693a.getLooper();
    }

    @Override // com.google.android.exoplayer2.util.q
    public q.a k(int i4, int i10, int i11) {
        return p().e(this.f27693a.obtainMessage(i4, i10, i11), this);
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean l(int i4) {
        return this.f27693a.sendEmptyMessage(i4);
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean m(int i4, long j4) {
        return this.f27693a.sendEmptyMessageAtTime(i4, j4);
    }

    @Override // com.google.android.exoplayer2.util.q
    public void n(int i4) {
        this.f27693a.removeMessages(i4);
    }

    @Override // com.google.android.exoplayer2.util.q
    public boolean post(Runnable runnable) {
        return this.f27693a.post(runnable);
    }
}

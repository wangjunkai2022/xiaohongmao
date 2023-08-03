package com.facebook.drawee.backends.pipeline.info.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.j;
import com.facebook.common.internal.m;
import com.facebook.imagepipeline.image.g;
import com.facebook.infer.annotation.Nullsafe;
import i1.c;
import i1.h;
import java.io.Closeable;
import x0.k;
import x0.l;

/* compiled from: ImagePerfControllerListener2.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a extends i1.a<g> implements h<g>, Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final int f11296g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f11297h = 2;
    @r7.h

    /* renamed from: i  reason: collision with root package name */
    private static Handler f11298i;

    /* renamed from: b  reason: collision with root package name */
    private final s0.c f11299b;

    /* renamed from: c  reason: collision with root package name */
    private final l f11300c;

    /* renamed from: d  reason: collision with root package name */
    private final k f11301d;

    /* renamed from: e  reason: collision with root package name */
    private final m<Boolean> f11302e;

    /* renamed from: f  reason: collision with root package name */
    private final m<Boolean> f11303f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePerfControllerListener2.java */
    /* renamed from: com.facebook.drawee.backends.pipeline.info.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class HandlerC0087a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final k f11304a;

        public HandlerC0087a(@NonNull Looper looper, @NonNull k notifier) {
            super(looper);
            this.f11304a = notifier;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            l lVar = (l) j.i(msg.obj);
            int i4 = msg.what;
            if (i4 == 1) {
                this.f11304a.b(lVar, msg.arg1);
            } else if (i4 != 2) {
            } else {
                this.f11304a.a(lVar, msg.arg1);
            }
        }
    }

    public a(s0.c clock, l imagePerfState, k imagePerfNotifier, m<Boolean> asyncLogging, m<Boolean> useNewState) {
        this.f11299b = clock;
        this.f11300c = imagePerfState;
        this.f11301d = imagePerfNotifier;
        this.f11302e = asyncLogging;
        this.f11303f = useNewState;
    }

    @VisibleForTesting
    private void E(l state, long time) {
        state.G(false);
        state.z(time);
        K(state, 2);
    }

    private boolean I() {
        boolean booleanValue = this.f11302e.get().booleanValue();
        if (booleanValue && f11298i == null) {
            r();
        }
        return booleanValue;
    }

    private void J(l state, int imageLoadStatus) {
        if (I()) {
            Message obtainMessage = ((Handler) j.i(f11298i)).obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.arg1 = imageLoadStatus;
            obtainMessage.obj = state;
            f11298i.sendMessage(obtainMessage);
            return;
        }
        this.f11301d.b(state, imageLoadStatus);
    }

    private void K(l state, int visibilityState) {
        if (I()) {
            Message obtainMessage = ((Handler) j.i(f11298i)).obtainMessage();
            obtainMessage.what = 2;
            obtainMessage.arg1 = visibilityState;
            obtainMessage.obj = state;
            f11298i.sendMessage(obtainMessage);
            return;
        }
        this.f11301d.a(state, visibilityState);
    }

    private synchronized void r() {
        if (f11298i != null) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("ImagePerfControllerListener2Thread");
        handlerThread.start();
        f11298i = new HandlerC0087a((Looper) j.i(handlerThread.getLooper()), this.f11301d);
    }

    private l s() {
        return this.f11303f.get().booleanValue() ? new l() : this.f11300c;
    }

    @Override // i1.h
    /* renamed from: A */
    public void p(String id, g info, i1.d dimensionsInfo) {
        l s9 = s();
        s9.l(id);
        s9.s(this.f11299b.now());
        s9.p(dimensionsInfo);
        J(s9, 6);
    }

    @Override // i1.a, i1.c
    /* renamed from: D */
    public void a(String id, @r7.h g imageInfo) {
        long now = this.f11299b.now();
        l s9 = s();
        s9.n(now);
        s9.l(id);
        s9.t(imageInfo);
        J(s9, 2);
    }

    @VisibleForTesting
    public void G(l state, long now) {
        state.G(true);
        state.F(now);
        K(state, 1);
    }

    public void H() {
        s().e();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        H();
    }

    @Override // i1.a, i1.c
    public void d(String id, @r7.h Throwable throwable, @r7.h c.a extras) {
        long now = this.f11299b.now();
        l s9 = s();
        s9.r(extras);
        s9.j(now);
        s9.l(id);
        s9.q(throwable);
        J(s9, 5);
        E(s9, now);
    }

    @Override // i1.a, i1.c
    public void i(String id, @r7.h Object callerContext, @r7.h c.a extraData) {
        long now = this.f11299b.now();
        l s9 = s();
        s9.f();
        s9.o(now);
        s9.l(id);
        s9.g(callerContext);
        s9.r(extraData);
        J(s9, 0);
        G(s9, now);
    }

    @Override // i1.a, i1.c
    public void k(String id, @r7.h c.a extras) {
        long now = this.f11299b.now();
        l s9 = s();
        s9.r(extras);
        s9.l(id);
        int d4 = s9.d();
        if (d4 != 3 && d4 != 5 && d4 != 6) {
            s9.i(now);
            J(s9, 4);
        }
        E(s9, now);
    }

    @Override // i1.a, i1.c
    /* renamed from: y */
    public void b(String id, @r7.h g imageInfo, @r7.h c.a extraData) {
        long now = this.f11299b.now();
        l s9 = s();
        s9.r(extraData);
        s9.k(now);
        s9.x(now);
        s9.l(id);
        s9.t(imageInfo);
        J(s9, 3);
    }
}

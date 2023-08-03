package io.reactivex.internal.util;

import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingIgnoringReceiver.java */
/* loaded from: classes4.dex */
public final class d extends CountDownLatch implements n7.g<Throwable>, n7.a {

    /* renamed from: a  reason: collision with root package name */
    public Throwable f75914a;

    public d() {
        super(1);
    }

    @Override // n7.g
    /* renamed from: a */
    public void accept(Throwable th) {
        this.f75914a = th;
        countDown();
    }

    @Override // n7.a
    public void run() {
        countDown();
    }
}

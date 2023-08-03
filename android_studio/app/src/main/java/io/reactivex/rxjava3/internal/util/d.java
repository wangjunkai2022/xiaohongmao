package io.reactivex.rxjava3.internal.util;

import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingIgnoringReceiver.java */
/* loaded from: classes4.dex */
public final class d extends CountDownLatch implements q7.g<Throwable>, q7.a {

    /* renamed from: a  reason: collision with root package name */
    public Throwable f81329a;

    public d() {
        super(1);
    }

    @Override // q7.g
    /* renamed from: a */
    public void accept(Throwable e4) {
        this.f81329a = e4;
        countDown();
    }

    @Override // q7.a
    public void run() {
        countDown();
    }
}

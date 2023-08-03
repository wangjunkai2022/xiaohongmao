package com.google.android.play.core.tasks;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class t implements u {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f32055a = new CountDownLatch(1);

    private t() {
    }

    @Override // com.google.android.play.core.tasks.b
    public final void a(Exception exc) {
        this.f32055a.countDown();
    }

    public final void b() throws InterruptedException {
        this.f32055a.await();
    }

    public final boolean c(long j4, TimeUnit timeUnit) throws InterruptedException {
        return this.f32055a.await(j4, timeUnit);
    }

    @Override // com.google.android.play.core.tasks.c
    public final void onSuccess(Object obj) {
        this.f32055a.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ t(s sVar) {
    }
}

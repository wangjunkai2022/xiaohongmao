package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class s implements t {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f31146a = new CountDownLatch(1);

    private s() {
    }

    @Override // com.google.android.gms.tasks.f
    public final void a(@NonNull Exception exc) {
        this.f31146a.countDown();
    }

    @Override // com.google.android.gms.tasks.d
    public final void b() {
        this.f31146a.countDown();
    }

    public final void c() throws InterruptedException {
        this.f31146a.await();
    }

    public final boolean d(long j4, TimeUnit timeUnit) throws InterruptedException {
        return this.f31146a.await(j4, timeUnit);
    }

    @Override // com.google.android.gms.tasks.g
    public final void onSuccess(Object obj) {
        this.f31146a.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s(r rVar) {
    }
}

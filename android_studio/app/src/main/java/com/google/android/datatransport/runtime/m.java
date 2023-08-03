package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

/* compiled from: SafeLoggingExecutor.java */
/* loaded from: classes2.dex */
class m implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f20456a;

    /* compiled from: SafeLoggingExecutor.java */
    /* loaded from: classes2.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f20457a;

        a(Runnable runnable) {
            this.f20457a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f20457a.run();
            } catch (Exception e4) {
                m2.a.e("Executor", "Background execution failure.", e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Executor executor) {
        this.f20456a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f20456a.execute(new a(runnable));
    }
}

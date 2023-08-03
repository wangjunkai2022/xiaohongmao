package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* compiled from: DirectExecutor.java */
@h3.b
/* loaded from: classes2.dex */
enum t implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "MoreExecutors.directExecutor()";
    }
}

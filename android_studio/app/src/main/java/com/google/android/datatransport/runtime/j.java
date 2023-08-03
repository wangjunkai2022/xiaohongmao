package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: ExecutionModule.java */
@k2.h
/* loaded from: classes2.dex */
abstract class j {
    j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.f
    @k2.i
    public static Executor a() {
        return new m(Executors.newSingleThreadExecutor());
    }
}

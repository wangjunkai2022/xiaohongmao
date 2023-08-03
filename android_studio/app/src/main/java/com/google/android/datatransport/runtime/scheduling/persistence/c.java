package com.google.android.datatransport.runtime.scheduling.persistence;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.Closeable;

/* compiled from: EventStore.java */
@WorkerThread
/* loaded from: classes2.dex */
public interface c extends Closeable {
    long O(com.google.android.datatransport.runtime.o oVar);

    boolean P(com.google.android.datatransport.runtime.o oVar);

    void R(Iterable<i> iterable);

    Iterable<i> U(com.google.android.datatransport.runtime.o oVar);

    int c();

    @Nullable
    i k0(com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar);

    void n(Iterable<i> iterable);

    void t(com.google.android.datatransport.runtime.o oVar, long j4);

    Iterable<com.google.android.datatransport.runtime.o> v();
}

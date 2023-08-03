package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.auto.value.AutoValue;

/* compiled from: PersistedEvent.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class i {
    public static i a(long j4, com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar) {
        return new b(j4, oVar, iVar);
    }

    public abstract com.google.android.datatransport.runtime.i b();

    public abstract long c();

    public abstract com.google.android.datatransport.runtime.o d();
}

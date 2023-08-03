package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.r;

/* compiled from: SchedulingModule.java */
@k2.h
/* loaded from: classes2.dex */
public abstract class h {
    /* JADX INFO: Access modifiers changed from: package-private */
    @k2.i
    public static r b(Context context, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, SchedulerConfig schedulerConfig, @com.google.android.datatransport.runtime.time.b com.google.android.datatransport.runtime.time.a aVar) {
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.e(context, cVar, schedulerConfig);
    }

    @k2.a
    abstract e a(c cVar);
}

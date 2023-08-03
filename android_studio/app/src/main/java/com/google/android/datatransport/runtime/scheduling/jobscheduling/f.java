package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;

/* compiled from: JobInfoSchedulerService.java */
/* loaded from: classes2.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final JobInfoSchedulerService f20524a;

    /* renamed from: b  reason: collision with root package name */
    private final JobParameters f20525b;

    private f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f20524a = jobInfoSchedulerService;
        this.f20525b = jobParameters;
    }

    public static Runnable a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f20524a.jobFinished(this.f20525b, false);
    }
}

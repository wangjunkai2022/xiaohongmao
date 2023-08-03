package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

/* compiled from: JobInfoScheduler.java */
@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public class e implements r {

    /* renamed from: d  reason: collision with root package name */
    private static final String f20516d = "JobInfoScheduler";

    /* renamed from: e  reason: collision with root package name */
    static final String f20517e = "attemptNumber";

    /* renamed from: f  reason: collision with root package name */
    static final String f20518f = "backendName";

    /* renamed from: g  reason: collision with root package name */
    static final String f20519g = "priority";

    /* renamed from: h  reason: collision with root package name */
    static final String f20520h = "extras";

    /* renamed from: a  reason: collision with root package name */
    private final Context f20521a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.persistence.c f20522b;

    /* renamed from: c  reason: collision with root package name */
    private final SchedulerConfig f20523c;

    public e(Context context, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, SchedulerConfig schedulerConfig) {
        this.f20521a = context;
        this.f20522b = cVar;
        this.f20523c = schedulerConfig;
    }

    private boolean d(JobScheduler jobScheduler, int i4, int i10) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i11 = jobInfo.getExtras().getInt(f20517e);
            if (jobInfo.getId() == i4) {
                return i11 >= i10;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.r
    public void a(com.google.android.datatransport.runtime.o oVar, int i4) {
        b(oVar, i4, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.r
    public void b(com.google.android.datatransport.runtime.o oVar, int i4, boolean z9) {
        ComponentName componentName = new ComponentName(this.f20521a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f20521a.getSystemService("jobscheduler");
        int c10 = c(oVar);
        if (!z9 && d(jobScheduler, c10, i4)) {
            m2.a.b(f20516d, "Upload for context %s is already scheduled. Returning...", oVar);
            return;
        }
        long O = this.f20522b.O(oVar);
        JobInfo.Builder c11 = this.f20523c.c(new JobInfo.Builder(c10, componentName), oVar.d(), O, i4);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt(f20517e, i4);
        persistableBundle.putString(f20518f, oVar.b());
        persistableBundle.putInt("priority", p2.a.a(oVar.d()));
        if (oVar.c() != null) {
            persistableBundle.putString(f20520h, Base64.encodeToString(oVar.c(), 0));
        }
        c11.setExtras(persistableBundle);
        m2.a.d(f20516d, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", oVar, Integer.valueOf(c10), Long.valueOf(this.f20523c.h(oVar.d(), O, i4)), Long.valueOf(O), Integer.valueOf(i4));
        jobScheduler.schedule(c11.build());
    }

    @VisibleForTesting
    int c(com.google.android.datatransport.runtime.o oVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f20521a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(oVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(p2.a.a(oVar.d())).array());
        if (oVar.c() != null) {
            adler32.update(oVar.c());
        }
        return (int) adler32.getValue();
    }
}

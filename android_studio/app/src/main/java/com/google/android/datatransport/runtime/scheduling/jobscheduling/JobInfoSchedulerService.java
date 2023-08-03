package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.runtime.o;
import io.sentry.protocol.t;

@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i4 = jobParameters.getExtras().getInt(t.b.f83857b);
        int i10 = jobParameters.getExtras().getInt("attemptNumber");
        com.google.android.datatransport.runtime.t.f(getApplicationContext());
        o.a d4 = com.google.android.datatransport.runtime.o.a().b(string).d(p2.a.b(i4));
        if (string2 != null) {
            d4.c(Base64.decode(string2, 0));
        }
        com.google.android.datatransport.runtime.t.c().e().g(d4.a(), i10, f.a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}

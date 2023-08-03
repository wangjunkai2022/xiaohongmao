package com.google.android.exoplayer2.scheduler;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;

/* compiled from: PlatformScheduler.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class a implements e {

    /* renamed from: d  reason: collision with root package name */
    private static final String f24590d = "PlatformScheduler";

    /* renamed from: e  reason: collision with root package name */
    private static final String f24591e = "service_action";

    /* renamed from: f  reason: collision with root package name */
    private static final String f24592f = "service_package";

    /* renamed from: g  reason: collision with root package name */
    private static final String f24593g = "requirements";

    /* renamed from: h  reason: collision with root package name */
    private static final int f24594h;

    /* renamed from: a  reason: collision with root package name */
    private final int f24595a;

    /* renamed from: b  reason: collision with root package name */
    private final ComponentName f24596b;

    /* renamed from: c  reason: collision with root package name */
    private final JobScheduler f24597c;

    /* compiled from: PlatformScheduler.java */
    /* renamed from: com.google.android.exoplayer2.scheduler.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class job.JobServiceC0173a extends JobService {
        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
            if (notMetRequirements == 0) {
                z0.o1(this, new Intent((String) com.google.android.exoplayer2.util.a.g(extras.getString(a.f24591e))).setPackage((String) com.google.android.exoplayer2.util.a.g(extras.getString(a.f24592f))));
                return false;
            }
            StringBuilder sb = new StringBuilder(33);
            sb.append("Requirements not met: ");
            sb.append(notMetRequirements);
            w.n(a.f24590d, sb.toString());
            jobFinished(jobParameters, true);
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    static {
        f24594h = (z0.f27743a >= 26 ? 16 : 0) | 15;
    }

    @RequiresPermission("android.permission.RECEIVE_BOOT_COMPLETED")
    public a(Context context, int i4) {
        Context applicationContext = context.getApplicationContext();
        this.f24595a = i4;
        this.f24596b = new ComponentName(applicationContext, job.JobServiceC0173a.class);
        this.f24597c = (JobScheduler) com.google.android.exoplayer2.util.a.g((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }

    private static JobInfo c(int i4, ComponentName componentName, Requirements requirements, String str, String str2) {
        Requirements filterRequirements = requirements.filterRequirements(f24594h);
        if (!filterRequirements.equals(requirements)) {
            StringBuilder sb = new StringBuilder(46);
            sb.append("Ignoring unsupported requirements: ");
            sb.append(filterRequirements.getRequirements() ^ requirements.getRequirements());
            w.n(f24590d, sb.toString());
        }
        JobInfo.Builder builder = new JobInfo.Builder(i4, componentName);
        if (requirements.isUnmeteredNetworkRequired()) {
            builder.setRequiredNetworkType(2);
        } else if (requirements.isNetworkRequired()) {
            builder.setRequiredNetworkType(1);
        }
        builder.setRequiresDeviceIdle(requirements.isIdleRequired());
        builder.setRequiresCharging(requirements.isChargingRequired());
        if (z0.f27743a >= 26 && requirements.isStorageNotLowRequired()) {
            builder.setRequiresStorageNotLow(true);
        }
        builder.setPersisted(true);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(f24591e, str);
        persistableBundle.putString(f24592f, str2);
        persistableBundle.putInt("requirements", requirements.getRequirements());
        builder.setExtras(persistableBundle);
        return builder.build();
    }

    @Override // com.google.android.exoplayer2.scheduler.e
    public boolean a(Requirements requirements, String str, String str2) {
        return this.f24597c.schedule(c(this.f24595a, this.f24596b, requirements, str2, str)) == 1;
    }

    @Override // com.google.android.exoplayer2.scheduler.e
    public Requirements b(Requirements requirements) {
        return requirements.filterRequirements(f24594h);
    }

    @Override // com.google.android.exoplayer2.scheduler.e
    public boolean cancel() {
        this.f24597c.cancel(this.f24595a);
        return true;
    }
}

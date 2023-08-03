package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;

/* compiled from: AlarmManagerScheduler.java */
/* loaded from: classes2.dex */
public class a implements r {

    /* renamed from: f  reason: collision with root package name */
    private static final String f20497f = "AlarmManagerScheduler";

    /* renamed from: g  reason: collision with root package name */
    static final String f20498g = "attemptNumber";

    /* renamed from: h  reason: collision with root package name */
    static final String f20499h = "backendName";

    /* renamed from: i  reason: collision with root package name */
    static final String f20500i = "priority";

    /* renamed from: j  reason: collision with root package name */
    static final String f20501j = "extras";

    /* renamed from: a  reason: collision with root package name */
    private final Context f20502a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.persistence.c f20503b;

    /* renamed from: c  reason: collision with root package name */
    private AlarmManager f20504c;

    /* renamed from: d  reason: collision with root package name */
    private final SchedulerConfig f20505d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20506e;

    public a(Context context, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, com.google.android.datatransport.runtime.time.a aVar, SchedulerConfig schedulerConfig) {
        this(context, cVar, (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM), aVar, schedulerConfig);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.r
    public void a(com.google.android.datatransport.runtime.o oVar, int i4) {
        b(oVar, i4, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.r
    public void b(com.google.android.datatransport.runtime.o oVar, int i4, boolean z9) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter(f20499h, oVar.b());
        builder.appendQueryParameter("priority", String.valueOf(p2.a.a(oVar.d())));
        if (oVar.c() != null) {
            builder.appendQueryParameter(f20501j, Base64.encodeToString(oVar.c(), 0));
        }
        Intent intent = new Intent(this.f20502a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra(f20498g, i4);
        if (!z9 && c(intent)) {
            m2.a.b(f20497f, "Upload for context %s is already scheduled. Returning...", oVar);
            return;
        }
        long O = this.f20503b.O(oVar);
        long h4 = this.f20505d.h(oVar.d(), O, i4);
        m2.a.d(f20497f, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", oVar, Long.valueOf(h4), Long.valueOf(O), Integer.valueOf(i4));
        this.f20504c.set(3, this.f20506e.a() + h4, PendingIntent.getBroadcast(this.f20502a, 0, intent, 0));
    }

    @VisibleForTesting
    boolean c(Intent intent) {
        return PendingIntent.getBroadcast(this.f20502a, 0, intent, 536870912) != null;
    }

    @VisibleForTesting
    a(Context context, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, AlarmManager alarmManager, com.google.android.datatransport.runtime.time.a aVar, SchedulerConfig schedulerConfig) {
        this.f20502a = context;
        this.f20503b = cVar;
        this.f20504c = alarmManager;
        this.f20506e = aVar;
        this.f20505d = schedulerConfig;
    }
}

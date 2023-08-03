package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.runtime.o;
import io.sentry.protocol.t;

/* loaded from: classes2.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter(t.b.f83857b)).intValue();
        int i4 = intent.getExtras().getInt("attemptNumber");
        com.google.android.datatransport.runtime.t.f(context);
        o.a d4 = com.google.android.datatransport.runtime.o.a().b(queryParameter).d(p2.a.b(intValue));
        if (queryParameter2 != null) {
            d4.c(Base64.decode(queryParameter2, 0));
        }
        com.google.android.datatransport.runtime.t.c().e().g(d4.a(), i4, b.a());
    }
}

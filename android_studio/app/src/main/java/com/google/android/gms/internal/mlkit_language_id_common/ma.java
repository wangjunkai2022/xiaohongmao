package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class ma {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.gms.common.internal.b0 f30731a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicLong f30732b = new AtomicLong(-1);

    @VisibleForTesting
    ma(Context context, String str) {
        this.f30731a = com.google.android.gms.common.internal.a0.b(context, com.google.android.gms.common.internal.c0.b().b("mlkit:natural_language").a());
    }

    public static ma a(Context context) {
        return new ma(context, "mlkit:natural_language");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(long j4, Exception exc) {
        this.f30732b.set(j4);
    }

    public final synchronized void c(int i4, int i10, long j4, long j10) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f30732b.get() != -1 && elapsedRealtime - this.f30732b.get() <= TimeUnit.MINUTES.toMillis(30L)) {
            return;
        }
        this.f30731a.a(new TelemetryData(0, Arrays.asList(new MethodInvocation(i4, i10, 0, j4, j10, null, null, 0)))).h(new com.google.android.gms.tasks.f() { // from class: com.google.android.gms.internal.mlkit_language_id_common.la
            @Override // com.google.android.gms.tasks.f
            public final void a(Exception exc) {
                ma.this.b(elapsedRealtime, exc);
            }
        });
    }
}

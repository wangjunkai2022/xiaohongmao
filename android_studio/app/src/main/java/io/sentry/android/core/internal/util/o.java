package io.sentry.android.core.internal.util;

import android.os.Handler;
import android.view.Window;
import androidx.annotation.RequiresApi;
import io.sentry.android.core.internal.util.n;

/* compiled from: SentryFrameMetricsCollector.java */
/* loaded from: classes4.dex */
public final /* synthetic */ class o {
    @RequiresApi(api = 24)
    public static void a(n.c cVar, @m8.g Window window, @m8.h Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, @m8.h Handler handler) {
        window.addOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener, handler);
    }

    @RequiresApi(api = 24)
    public static void b(n.c cVar, @m8.g Window window, @m8.h Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener) {
        window.removeOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener);
    }
}

package dagger.hilt.android.internal.managers;

import android.app.Application;
import android.content.Context;

/* compiled from: BroadcastReceiverComponentManager.java */
/* loaded from: classes3.dex */
public final class e {
    private e() {
    }

    public static Object a(Context context) {
        Application a10 = g6.a.a(context.getApplicationContext());
        q6.f.a(a10 instanceof q6.c, "Hilt BroadcastReceiver must be attached to an @AndroidEntryPoint Application. Found: %s", a10.getClass());
        return ((q6.c) a10).generatedComponent();
    }
}

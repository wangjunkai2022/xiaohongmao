package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.c;

/* compiled from: DefaultConnectivityMonitorFactory.java */
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9437a = "ConnectivityMonitor";

    /* renamed from: b  reason: collision with root package name */
    private static final String f9438b = "android.permission.ACCESS_NETWORK_STATE";

    @Override // com.bumptech.glide.manager.d
    @NonNull
    public c a(@NonNull Context context, @NonNull c.a aVar) {
        boolean z9 = ContextCompat.checkSelfPermission(context, f9438b) == 0;
        if (Log.isLoggable(f9437a, 3)) {
            Log.d(f9437a, z9 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        if (z9) {
            return new e(context, aVar);
        }
        return new n();
    }
}

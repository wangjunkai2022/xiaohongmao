package com.google.android.gms.internal.base;

import android.os.Handler;
import android.os.Looper;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public class q extends Handler {
    public q() {
    }

    public q(Looper looper) {
        super(looper);
    }

    public q(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}

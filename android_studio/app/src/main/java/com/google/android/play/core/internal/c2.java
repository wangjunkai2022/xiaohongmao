package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class c2 extends z1 implements d2 {
    public static d2 x(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
        return queryLocalInterface instanceof d2 ? (d2) queryLocalInterface : new b2(iBinder);
    }
}

package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class j1 extends com.google.android.gms.internal.common.k implements k1 {
    public static k1 x(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof k1 ? (k1) queryLocalInterface : new i1(iBinder);
    }
}

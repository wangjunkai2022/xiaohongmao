package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class h2 extends z1 implements i2 {
    public static i2 x(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
        return queryLocalInterface instanceof i2 ? (i2) queryLocalInterface : new g2(iBinder);
    }
}

package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public interface d extends IInterface {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public static abstract class a extends com.google.android.gms.internal.common.k implements d {
        public a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        @NonNull
        public static d x(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof d ? (d) queryLocalInterface : new r(iBinder);
        }
    }
}

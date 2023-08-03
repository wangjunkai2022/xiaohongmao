package com.google.android.play.core.internal;

import android.os.Build;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b0 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static z a() {
        switch (Build.VERSION.SDK_INT) {
            case 21:
                return new g0();
            case 22:
                return new h0();
            case 23:
                return new l0();
            case 24:
                return new m0();
            case 25:
                return new n0();
            case 26:
                return new q0();
            case 27:
                if (Build.VERSION.PREVIEW_SDK_INT == 0) {
                    return new r0();
                }
                break;
        }
        return new t0();
    }
}

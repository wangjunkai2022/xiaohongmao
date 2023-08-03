package com.google.android.play.core.assetpacks;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class o0 {
    public static boolean a(@b3.b int i4) {
        return i4 == 1 || i4 == 7 || i4 == 2 || i4 == 3;
    }

    public static boolean b(@b3.b int i4) {
        return i4 == 2 || i4 == 7 || i4 == 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(@b3.b int i4, @b3.b int i10) {
        if (i4 == 5) {
            if (i10 != 5) {
                return true;
            }
            i4 = 5;
        }
        if (i4 == 6) {
            if (i10 != 6 && i10 != 5) {
                return true;
            }
            i4 = 6;
        }
        if (i4 != 4 || i10 == 4) {
            if (i4 == 3 && (i10 == 2 || i10 == 7 || i10 == 1 || i10 == 8)) {
                return true;
            }
            if (i4 == 2) {
                return i10 == 1 || i10 == 8;
            }
            return false;
        }
        return true;
    }

    public static boolean d(@b3.b int i4) {
        return i4 == 5 || i4 == 6 || i4 == 4;
    }
}

package com.google.android.gms.common;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class g0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i4) {
        int[] iArr = {1, 2, 3, 4, 5, 6};
        for (int i10 = 0; i10 < 6; i10++) {
            int i11 = iArr[i10];
            int i12 = i11 - 1;
            if (i11 == 0) {
                throw null;
            }
            if (i12 == i4) {
                return i11;
            }
        }
        return 1;
    }
}

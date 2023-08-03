package com.google.android.play.core.assetpacks;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class z0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i4) {
        return ((bArr[i4 + 1] & 255) << 8) | (bArr[i4] & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i4) {
        return (bArr[i4 + 3] & 255) | ((bArr[i4] & 255) << 24) | ((bArr[i4 + 1] & 255) << 16) | ((bArr[i4 + 2] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(byte[] bArr, int i4) {
        return ((a(bArr, i4 + 2) << 16) | a(bArr, i4)) & 4294967295L;
    }
}

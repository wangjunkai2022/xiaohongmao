package org.brotli.dec;

/* compiled from: Utils.java */
/* loaded from: classes5.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f91683a = new byte[1024];

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f91684b = new int[1024];

    n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, int i4, int i10) {
        int i11 = 0;
        while (i11 < i10) {
            int min = Math.min(i11 + 1024, i10) - i11;
            System.arraycopy(f91683a, 0, bArr, i4 + i11, min);
            i11 += min;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int[] iArr, int i4, int i10) {
        int i11 = 0;
        while (i11 < i10) {
            int min = Math.min(i11 + 1024, i10) - i11;
            System.arraycopy(f91684b, 0, iArr, i4 + i11, min);
            i11 += min;
        }
    }
}

package org.brotli.dec;

/* compiled from: IntReader.java */
/* loaded from: classes5.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f91630a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f91631b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(i iVar, int i4) {
        for (int i10 = 0; i10 < i4; i10++) {
            int[] iArr = iVar.f91631b;
            byte[] bArr = iVar.f91630a;
            int i11 = i10 * 4;
            iArr[i10] = ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(i iVar, byte[] bArr, int[] iArr) {
        iVar.f91630a = bArr;
        iVar.f91631b = iArr;
    }
}

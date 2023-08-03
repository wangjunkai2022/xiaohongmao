package org.brotli.dec;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HuffmanTreeGroup.java */
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private int f91627a;

    /* renamed from: b  reason: collision with root package name */
    int[] f91628b;

    /* renamed from: c  reason: collision with root package name */
    int[] f91629c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(h hVar, a aVar) {
        int length = hVar.f91629c.length;
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            hVar.f91629c[i10] = i4;
            e.n(hVar.f91627a, hVar.f91628b, i4, aVar);
            i4 += 1080;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(h hVar, int i4, int i10) {
        hVar.f91627a = i4;
        hVar.f91628b = new int[i10 * 1080];
        hVar.f91629c = new int[i10];
    }
}

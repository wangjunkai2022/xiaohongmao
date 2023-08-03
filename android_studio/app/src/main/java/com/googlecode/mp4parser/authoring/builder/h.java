package com.googlecode.mp4parser.authoring.builder;

import java.util.Arrays;

/* compiled from: TwoSecondIntersectionFinder.java */
/* loaded from: classes2.dex */
public class h implements c {

    /* renamed from: a  reason: collision with root package name */
    private int f36028a;

    /* renamed from: b  reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.d f36029b;

    public h(com.googlecode.mp4parser.authoring.d dVar, int i4) {
        this.f36029b = dVar;
        this.f36028a = i4;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.c
    public long[] a(com.googlecode.mp4parser.authoring.h hVar) {
        double d4 = 0.0d;
        for (com.googlecode.mp4parser.authoring.h hVar2 : this.f36029b.g()) {
            double duration = hVar2.getDuration() / hVar2.a0().h();
            if (d4 < duration) {
                d4 = duration;
            }
        }
        int i4 = 1;
        int min = Math.min(((int) Math.ceil(d4 / this.f36028a)) - 1, hVar.F().size());
        int i10 = min < 1 ? 1 : min;
        long[] jArr = new long[i10];
        Arrays.fill(jArr, -1L);
        jArr[0] = 1;
        long j4 = 0;
        long[] c02 = hVar.c0();
        int length = c02.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            long j10 = c02[i11];
            int h4 = ((int) ((j4 / hVar.a0().h()) / this.f36028a)) + i4;
            if (h4 >= i10) {
                break;
            }
            i12++;
            jArr[h4] = i12;
            j4 += j10;
            i11++;
            i10 = i10;
            i4 = 1;
        }
        long j11 = i12 + i4;
        for (int i13 = i10 - 1; i13 >= 0; i13--) {
            if (jArr[i13] == -1) {
                jArr[i13] = j11;
            }
            j11 = jArr[i13];
        }
        long[] jArr2 = new long[0];
        for (int i14 = 0; i14 < i10; i14++) {
            long j12 = jArr[i14];
            if (jArr2.length == 0 || jArr2[jArr2.length - i4] != j12) {
                jArr2 = Arrays.copyOf(jArr2, jArr2.length + i4);
                jArr2[jArr2.length - i4] = j12;
            }
        }
        return jArr2;
    }
}

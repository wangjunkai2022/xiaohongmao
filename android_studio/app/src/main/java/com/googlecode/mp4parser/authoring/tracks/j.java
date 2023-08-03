package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* compiled from: ChangeTimeScaleTrack.java */
/* loaded from: classes2.dex */
public class j implements com.googlecode.mp4parser.authoring.h {

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f36306e = Logger.getLogger(j.class.getName());

    /* renamed from: a  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36307a;

    /* renamed from: b  reason: collision with root package name */
    List<i.a> f36308b;

    /* renamed from: c  reason: collision with root package name */
    long[] f36309c;

    /* renamed from: d  reason: collision with root package name */
    long f36310d;

    public j(com.googlecode.mp4parser.authoring.h hVar, long j4, long[] jArr) {
        this.f36307a = hVar;
        this.f36310d = j4;
        double h4 = j4 / hVar.a0().h();
        this.f36308b = a(hVar.o(), h4);
        this.f36309c = b(hVar.c0(), h4, jArr, d(hVar, jArr, j4));
    }

    static List<i.a> a(List<i.a> list, double d4) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            for (i.a aVar : list) {
                arrayList.add(new i.a(aVar.a(), (int) Math.round(aVar.b() * d4)));
            }
            return arrayList;
        }
        return null;
    }

    static long[] b(long[] jArr, double d4, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[jArr.length];
        long j4 = 0;
        int i4 = 1;
        while (i4 <= jArr.length) {
            int i10 = i4 - 1;
            long round = Math.round(jArr[i10] * d4);
            int i11 = i4 + 1;
            int binarySearch = Arrays.binarySearch(jArr2, i11);
            if (binarySearch >= 0 && jArr3[binarySearch] != j4) {
                long j10 = jArr3[binarySearch] - (j4 + round);
                f36306e.finest(String.format("Sample %d %d / %d - correct by %d", Integer.valueOf(i4), Long.valueOf(j4), Long.valueOf(jArr3[binarySearch]), Long.valueOf(j10)));
                round += j10;
            }
            j4 += round;
            jArr4[i10] = round;
            i4 = i11;
        }
        return jArr4;
    }

    private static long[] d(com.googlecode.mp4parser.authoring.h hVar, long[] jArr, long j4) {
        long[] jArr2 = new long[jArr.length];
        long j10 = 0;
        int i4 = 0;
        int i10 = 1;
        while (true) {
            long j11 = i10;
            if (j11 > jArr[jArr.length - 1]) {
                return jArr2;
            }
            if (j11 == jArr[i4]) {
                jArr2[i4] = (j10 * j4) / hVar.a0().h();
                i4++;
            }
            j10 += hVar.c0()[i10 - 1];
            i10++;
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36307a.B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36307a.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> T() {
        return this.f36307a.T();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V() {
        return this.f36307a.V();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        com.googlecode.mp4parser.authoring.i iVar = (com.googlecode.mp4parser.authoring.i) this.f36307a.a0().clone();
        iVar.s(this.f36310d);
        return iVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36309c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36307a.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j4 = 0;
        for (long j10 : this.f36309c) {
            j4 += j10;
        }
        return j4;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36307a.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "timeScale(" + this.f36307a.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36307a.m0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return this.f36308b;
    }

    public String toString() {
        return "ChangeTimeScaleTrack{source=" + this.f36307a + '}';
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36307a.u();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return this.f36307a.z();
    }
}

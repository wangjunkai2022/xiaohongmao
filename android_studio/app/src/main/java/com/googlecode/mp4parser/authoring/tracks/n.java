package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: DivideTimeScaleTrack.java */
/* loaded from: classes2.dex */
public class n implements com.googlecode.mp4parser.authoring.h {

    /* renamed from: a  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36359a;

    /* renamed from: b  reason: collision with root package name */
    private int f36360b;

    public n(com.googlecode.mp4parser.authoring.h hVar, int i4) {
        this.f36359a = hVar;
        this.f36360b = i4;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36359a.B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36359a.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> T() {
        return this.f36359a.T();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V() {
        return this.f36359a.V();
    }

    List<i.a> a() {
        List<i.a> o9 = this.f36359a.o();
        if (o9 != null) {
            ArrayList arrayList = new ArrayList(o9.size());
            for (i.a aVar : o9) {
                arrayList.add(new i.a(aVar.a(), aVar.b() / this.f36360b));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        com.googlecode.mp4parser.authoring.i iVar = (com.googlecode.mp4parser.authoring.i) this.f36359a.a0().clone();
        iVar.s(this.f36359a.a0().h() / this.f36360b);
        return iVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        long[] jArr = new long[this.f36359a.c0().length];
        for (int i4 = 0; i4 < this.f36359a.c0().length; i4++) {
            jArr[i4] = this.f36359a.c0()[i4] / this.f36360b;
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36359a.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j4 = 0;
        for (long j10 : c0()) {
            j4 += j10;
        }
        return j4;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36359a.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "timscale(" + this.f36359a.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36359a.m0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return a();
    }

    public String toString() {
        return "MultiplyTimeScaleTrack{source=" + this.f36359a + '}';
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36359a.u();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return this.f36359a.z();
    }
}

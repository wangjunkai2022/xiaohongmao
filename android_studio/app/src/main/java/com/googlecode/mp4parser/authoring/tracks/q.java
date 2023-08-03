package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: MultiplyTimeScaleTrack.java */
/* loaded from: classes2.dex */
public class q implements com.googlecode.mp4parser.authoring.h {

    /* renamed from: a  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36404a;

    /* renamed from: b  reason: collision with root package name */
    private int f36405b;

    public q(com.googlecode.mp4parser.authoring.h hVar, int i4) {
        this.f36404a = hVar;
        this.f36405b = i4;
    }

    static List<i.a> a(List<i.a> list, int i4) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            for (i.a aVar : list) {
                arrayList.add(new i.a(aVar.a(), aVar.b() * i4));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36404a.B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36404a.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> T() {
        return this.f36404a.T();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V() {
        return this.f36404a.V();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        com.googlecode.mp4parser.authoring.i iVar = (com.googlecode.mp4parser.authoring.i) this.f36404a.a0().clone();
        iVar.s(this.f36404a.a0().h() * this.f36405b);
        return iVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        long[] jArr = new long[this.f36404a.c0().length];
        for (int i4 = 0; i4 < this.f36404a.c0().length; i4++) {
            jArr[i4] = this.f36404a.c0()[i4] * this.f36405b;
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36404a.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        return this.f36404a.getDuration() * this.f36405b;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36404a.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "timscale(" + this.f36404a.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36404a.m0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return a(this.f36404a.o(), this.f36405b);
    }

    public String toString() {
        return "MultiplyTimeScaleTrack{source=" + this.f36404a + '}';
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36404a.u();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return this.f36404a.z();
    }
}

package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: WrappingTrack.java */
/* loaded from: classes2.dex */
public class j implements h {

    /* renamed from: a  reason: collision with root package name */
    h f36062a;

    public j(h hVar) {
        this.f36062a = hVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36062a.B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> F() {
        return this.f36062a.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<c> T() {
        return this.f36062a.T();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V() {
        return this.f36062a.V();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i a0() {
        return this.f36062a.a0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36062a.c0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36062a.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        return this.f36062a.getDuration();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36062a.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return String.valueOf(this.f36062a.getName()) + "'";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36062a.m0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return this.f36062a.o();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36062a.u();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return this.f36062a.z();
    }
}

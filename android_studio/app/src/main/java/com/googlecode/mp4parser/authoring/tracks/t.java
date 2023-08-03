package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* compiled from: SilenceTrackImpl.java */
/* loaded from: classes2.dex */
public class t implements com.googlecode.mp4parser.authoring.h {

    /* renamed from: a  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36424a;

    /* renamed from: b  reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f36425b = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    long[] f36426c;

    /* renamed from: d  reason: collision with root package name */
    String f36427d;

    public t(com.googlecode.mp4parser.authoring.h hVar, long j4) {
        this.f36424a = hVar;
        this.f36427d = j4 + "ms silence";
        if (com.coremedia.iso.boxes.sampleentry.c.D.equals(hVar.u().J().getType())) {
            int a10 = com.googlecode.mp4parser.util.c.a(((a0().h() * j4) / 1000) / 1024);
            long[] jArr = new long[a10];
            this.f36426c = jArr;
            Arrays.fill(jArr, ((a0().h() * j4) / a10) / 1000);
            while (true) {
                int i4 = a10 - 1;
                if (a10 <= 0) {
                    return;
                }
                this.f36425b.add(new com.googlecode.mp4parser.authoring.g((ByteBuffer) ByteBuffer.wrap(new byte[]{33, 16, 4, 96, -116, com.google.common.base.c.F}).rewind()));
                a10 = i4;
            }
        } else {
            throw new RuntimeException("Tracks of type " + hVar.getClass().getSimpleName() + " are not supported");
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36425b;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> T() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V() {
        return this.f36424a.V();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36424a.a0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36426c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j4 = 0;
        for (long j10 : this.f36426c) {
            j4 += j10;
        }
        return j4;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36424a.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return this.f36427d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36424a.u();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }
}

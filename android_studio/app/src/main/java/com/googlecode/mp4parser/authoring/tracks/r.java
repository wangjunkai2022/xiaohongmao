package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.List;

/* compiled from: ReplaceSampleTrack.java */
/* loaded from: classes2.dex */
public class r extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36406d;

    /* renamed from: e  reason: collision with root package name */
    private long f36407e;

    /* renamed from: f  reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.f f36408f;

    /* renamed from: g  reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f36409g;

    /* compiled from: ReplaceSampleTrack.java */
    /* loaded from: classes2.dex */
    private class b extends AbstractList<com.googlecode.mp4parser.authoring.f> {
        private b() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public com.googlecode.mp4parser.authoring.f get(int i4) {
            if (r.this.f36407e == i4) {
                return r.this.f36408f;
            }
            return r.this.f36406d.F().get(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return r.this.f36406d.F().size();
        }

        /* synthetic */ b(r rVar, b bVar) {
            this();
        }
    }

    public r(com.googlecode.mp4parser.authoring.h hVar, long j4, ByteBuffer byteBuffer) {
        super("replace(" + hVar.getName() + ")");
        this.f36406d = hVar;
        this.f36407e = j4;
        this.f36408f = new com.googlecode.mp4parser.authoring.g(byteBuffer);
        this.f36409g = new b(this, null);
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36406d.B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36409g;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36406d.a0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] c0() {
        return this.f36406d.c0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36406d.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36406d.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36406d.m0();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return this.f36406d.o();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36406d.u();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public synchronized long[] z() {
        return this.f36406d.z();
    }
}

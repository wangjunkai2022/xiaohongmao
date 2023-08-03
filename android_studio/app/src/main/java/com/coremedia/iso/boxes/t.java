package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.LinkedList;
import java.util.List;

/* compiled from: FreeBox.java */
/* loaded from: classes.dex */
public class t implements d {

    /* renamed from: e  reason: collision with root package name */
    public static final String f10382e = "free";

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ boolean f10383f = false;

    /* renamed from: a  reason: collision with root package name */
    ByteBuffer f10384a;

    /* renamed from: b  reason: collision with root package name */
    List<d> f10385b;

    /* renamed from: c  reason: collision with root package name */
    private j f10386c;

    /* renamed from: d  reason: collision with root package name */
    private long f10387d;

    public t() {
        this.f10385b = new LinkedList();
        this.f10384a = ByteBuffer.wrap(new byte[0]);
    }

    @Override // com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        for (d dVar : this.f10385b) {
            dVar.a(writableByteChannel);
        }
        ByteBuffer allocate = ByteBuffer.allocate(8);
        com.coremedia.iso.i.i(allocate, this.f10384a.limit() + 8);
        allocate.put(f10382e.getBytes());
        allocate.rewind();
        writableByteChannel.write(allocate);
        allocate.rewind();
        this.f10384a.rewind();
        writableByteChannel.write(this.f10384a);
        this.f10384a.rewind();
    }

    public void b(d dVar) {
        this.f10384a.position(com.googlecode.mp4parser.util.c.a(dVar.getSize()));
        this.f10384a = this.f10384a.slice();
        this.f10385b.add(dVar);
    }

    public ByteBuffer c() {
        ByteBuffer byteBuffer = this.f10384a;
        if (byteBuffer != null) {
            return (ByteBuffer) byteBuffer.duplicate().rewind();
        }
        return null;
    }

    public void e(ByteBuffer byteBuffer) {
        this.f10384a = byteBuffer;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        return c() == null ? tVar.c() == null : c().equals(tVar.c());
    }

    @Override // com.coremedia.iso.boxes.d
    public j getParent() {
        return this.f10386c;
    }

    @Override // com.coremedia.iso.boxes.d
    public long getSize() {
        long j4 = 8;
        for (d dVar : this.f10385b) {
            j4 += dVar.getSize();
        }
        return j4 + this.f10384a.limit();
    }

    @Override // com.coremedia.iso.boxes.d
    public String getType() {
        return f10382e;
    }

    public int hashCode() {
        ByteBuffer byteBuffer = this.f10384a;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }

    @Override // com.coremedia.iso.boxes.d
    public long k() {
        return this.f10387d;
    }

    @Override // com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        this.f10387d = eVar.C() - byteBuffer.remaining();
        if (j4 > 1048576) {
            this.f10384a = eVar.e0(eVar.C(), j4);
            eVar.S(eVar.C() + j4);
            return;
        }
        ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j4));
        this.f10384a = allocate;
        eVar.read(allocate);
    }

    @Override // com.coremedia.iso.boxes.d
    public void r(j jVar) {
        this.f10386c = jVar;
    }

    public t(int i4) {
        this.f10385b = new LinkedList();
        this.f10384a = ByteBuffer.allocate(i4);
    }
}

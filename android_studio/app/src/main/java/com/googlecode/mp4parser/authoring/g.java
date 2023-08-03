package com.googlecode.mp4parser.authoring;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: SampleImpl.java */
/* loaded from: classes2.dex */
public class g implements f {

    /* renamed from: a  reason: collision with root package name */
    private final long f36047a;

    /* renamed from: b  reason: collision with root package name */
    private final long f36048b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f36049c;

    /* renamed from: d  reason: collision with root package name */
    private final com.coremedia.iso.boxes.j f36050d;

    public g(ByteBuffer byteBuffer) {
        this.f36047a = -1L;
        this.f36048b = byteBuffer.limit();
        this.f36049c = new ByteBuffer[]{byteBuffer};
        this.f36050d = null;
    }

    @Override // com.googlecode.mp4parser.authoring.f
    public ByteBuffer a() {
        c();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[com.googlecode.mp4parser.util.c.a(this.f36048b)]);
        for (ByteBuffer byteBuffer : this.f36049c) {
            wrap.put(byteBuffer.duplicate());
        }
        wrap.rewind();
        return wrap;
    }

    @Override // com.googlecode.mp4parser.authoring.f
    public void b(WritableByteChannel writableByteChannel) throws IOException {
        c();
        for (ByteBuffer byteBuffer : this.f36049c) {
            writableByteChannel.write(byteBuffer.duplicate());
        }
    }

    protected void c() {
        if (this.f36049c != null) {
            return;
        }
        com.coremedia.iso.boxes.j jVar = this.f36050d;
        if (jVar != null) {
            try {
                this.f36049c = new ByteBuffer[]{jVar.s(this.f36047a, this.f36048b)};
                return;
            } catch (IOException e4) {
                throw new RuntimeException("couldn't read sample " + this, e4);
            }
        }
        throw new RuntimeException("Missing parent container, can't read sample " + this);
    }

    @Override // com.googlecode.mp4parser.authoring.f
    public long getSize() {
        return this.f36048b;
    }

    public String toString() {
        return "SampleImpl{offset=" + this.f36047a + "{size=" + this.f36048b + '}';
    }

    public g(ByteBuffer[] byteBufferArr) {
        this.f36047a = -1L;
        int i4 = 0;
        for (ByteBuffer byteBuffer : byteBufferArr) {
            i4 += byteBuffer.remaining();
        }
        this.f36048b = i4;
        this.f36049c = byteBufferArr;
        this.f36050d = null;
    }

    public g(long j4, long j10, ByteBuffer byteBuffer) {
        this.f36047a = j4;
        this.f36048b = j10;
        this.f36049c = new ByteBuffer[]{byteBuffer};
        this.f36050d = null;
    }

    public g(long j4, long j10, com.coremedia.iso.boxes.j jVar) {
        this.f36047a = j4;
        this.f36048b = j10;
        this.f36049c = null;
        this.f36050d = jVar;
    }
}

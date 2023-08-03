package com.googlecode.mp4parser;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: MemoryDataSourceImpl.java */
/* loaded from: classes2.dex */
public class i implements e {

    /* renamed from: a  reason: collision with root package name */
    ByteBuffer f36965a;

    public i(byte[] bArr) {
        this.f36965a = ByteBuffer.wrap(bArr);
    }

    @Override // com.googlecode.mp4parser.e
    public long C() throws IOException {
        return this.f36965a.position();
    }

    @Override // com.googlecode.mp4parser.e
    public void S(long j4) throws IOException {
        this.f36965a.position(com.googlecode.mp4parser.util.c.a(j4));
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.e
    public ByteBuffer e0(long j4, long j10) throws IOException {
        int position = this.f36965a.position();
        this.f36965a.position(com.googlecode.mp4parser.util.c.a(j4));
        ByteBuffer slice = this.f36965a.slice();
        slice.limit(com.googlecode.mp4parser.util.c.a(j10));
        this.f36965a.position(position);
        return slice;
    }

    @Override // com.googlecode.mp4parser.e
    public long m(long j4, long j10, WritableByteChannel writableByteChannel) throws IOException {
        return writableByteChannel.write((ByteBuffer) ((ByteBuffer) this.f36965a.position(com.googlecode.mp4parser.util.c.a(j4))).slice().limit(com.googlecode.mp4parser.util.c.a(j10)));
    }

    @Override // com.googlecode.mp4parser.e
    public int read(ByteBuffer byteBuffer) throws IOException {
        if (this.f36965a.remaining() != 0 || byteBuffer.remaining() == 0) {
            int min = Math.min(byteBuffer.remaining(), this.f36965a.remaining());
            if (byteBuffer.hasArray()) {
                byteBuffer.put(this.f36965a.array(), this.f36965a.position(), min);
                ByteBuffer byteBuffer2 = this.f36965a;
                byteBuffer2.position(byteBuffer2.position() + min);
            } else {
                byte[] bArr = new byte[min];
                this.f36965a.get(bArr);
                byteBuffer.put(bArr);
            }
            return min;
        }
        return -1;
    }

    @Override // com.googlecode.mp4parser.e
    public long size() throws IOException {
        return this.f36965a.capacity();
    }

    public i(ByteBuffer byteBuffer) {
        this.f36965a = byteBuffer;
    }
}

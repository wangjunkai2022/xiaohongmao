package com.googlecode.mp4parser;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: DirectFileReadDataSource.java */
/* loaded from: classes2.dex */
public class f implements e {

    /* renamed from: c  reason: collision with root package name */
    private static final int f36951c = 8192;

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f36952a;

    /* renamed from: b  reason: collision with root package name */
    private String f36953b;

    public f(File file) throws IOException {
        this.f36952a = new RandomAccessFile(file, "r");
        this.f36953b = file.getName();
    }

    @Override // com.googlecode.mp4parser.e
    public long C() throws IOException {
        return this.f36952a.getFilePointer();
    }

    @Override // com.googlecode.mp4parser.e
    public void S(long j4) throws IOException {
        this.f36952a.seek(j4);
    }

    public int a(ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[byteBuffer.remaining()];
        int read = this.f36952a.read(bArr);
        byteBuffer.put(bArr, 0, read);
        return read;
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36952a.close();
    }

    @Override // com.googlecode.mp4parser.e
    public ByteBuffer e0(long j4, long j10) throws IOException {
        this.f36952a.seek(j4);
        byte[] bArr = new byte[com.googlecode.mp4parser.util.c.a(j10)];
        this.f36952a.readFully(bArr);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.googlecode.mp4parser.e
    public long m(long j4, long j10, WritableByteChannel writableByteChannel) throws IOException {
        return writableByteChannel.write(e0(j4, j10));
    }

    @Override // com.googlecode.mp4parser.e
    public int read(ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[8192];
        int i4 = 0;
        int i10 = 0;
        while (i4 < remaining) {
            i10 = this.f36952a.read(bArr, 0, Math.min(remaining - i4, 8192));
            if (i10 < 0) {
                break;
            }
            i4 += i10;
            byteBuffer.put(bArr, 0, i10);
        }
        if (i10 >= 0 || i4 != 0) {
            return i4;
        }
        return -1;
    }

    @Override // com.googlecode.mp4parser.e
    public long size() throws IOException {
        return this.f36952a.length();
    }

    public String toString() {
        return this.f36953b;
    }
}

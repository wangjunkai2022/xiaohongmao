package com.googlecode.mp4parser;

import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;

/* compiled from: FileDataSourceImpl.java */
/* loaded from: classes2.dex */
public class g implements e {

    /* renamed from: a  reason: collision with root package name */
    FileChannel f36954a;

    /* renamed from: b  reason: collision with root package name */
    String f36955b;

    public g(File file) throws FileNotFoundException {
        this.f36954a = new FileInputStream(file).getChannel();
        this.f36955b = file.getName();
    }

    @Override // com.googlecode.mp4parser.e
    public long C() throws IOException {
        return this.f36954a.position();
    }

    @Override // com.googlecode.mp4parser.e
    public void S(long j4) throws IOException {
        this.f36954a.position(j4);
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36954a.close();
    }

    @Override // com.googlecode.mp4parser.e
    public ByteBuffer e0(long j4, long j10) throws IOException {
        return this.f36954a.map(FileChannel.MapMode.READ_ONLY, j4, j10);
    }

    @Override // com.googlecode.mp4parser.e
    public long m(long j4, long j10, WritableByteChannel writableByteChannel) throws IOException {
        return this.f36954a.transferTo(j4, j10, writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.e
    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.f36954a.read(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.e
    public long size() throws IOException {
        return this.f36954a.size();
    }

    public String toString() {
        return this.f36955b;
    }

    public g(String str) throws FileNotFoundException {
        File file = new File(str);
        this.f36954a = h.b.a(new FileInputStream(file), file).getChannel();
        this.f36955b = file.getName();
    }

    public g(FileChannel fileChannel) {
        this.f36954a = fileChannel;
        this.f36955b = "unknown";
    }

    public g(FileChannel fileChannel, String str) {
        this.f36954a = fileChannel;
        this.f36955b = str;
    }
}

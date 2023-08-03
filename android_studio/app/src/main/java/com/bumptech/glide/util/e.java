package com.bumptech.glide.util;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* compiled from: ExceptionPassthroughInputStream.java */
/* loaded from: classes.dex */
public final class e extends InputStream {
    @GuardedBy("POOL")

    /* renamed from: c  reason: collision with root package name */
    private static final Queue<e> f9706c = o.f(0);

    /* renamed from: a  reason: collision with root package name */
    private InputStream f9707a;

    /* renamed from: b  reason: collision with root package name */
    private IOException f9708b;

    e() {
    }

    static void a() {
        synchronized (f9706c) {
            while (true) {
                Queue<e> queue = f9706c;
                if (!queue.isEmpty()) {
                    queue.remove();
                }
            }
        }
    }

    @NonNull
    public static e d(@NonNull InputStream inputStream) {
        e poll;
        Queue<e> queue = f9706c;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new e();
        }
        poll.h(inputStream);
        return poll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f9707a.available();
    }

    @Nullable
    public IOException b() {
        return this.f9708b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f9707a.close();
    }

    void h(@NonNull InputStream inputStream) {
        this.f9707a = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i4) {
        this.f9707a.mark(i4);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f9707a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.f9707a.read();
        } catch (IOException e4) {
            this.f9708b = e4;
            throw e4;
        }
    }

    public void release() {
        this.f9708b = null;
        this.f9707a = null;
        Queue<e> queue = f9706c;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f9707a.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        try {
            return this.f9707a.skip(j4);
        } catch (IOException e4) {
            this.f9708b = e4;
            throw e4;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.f9707a.read(bArr);
        } catch (IOException e4) {
            this.f9708b = e4;
            throw e4;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        try {
            return this.f9707a.read(bArr, i4, i10);
        } catch (IOException e4) {
            this.f9708b = e4;
            throw e4;
        }
    }
}

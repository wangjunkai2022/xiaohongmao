package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* compiled from: ExceptionCatchingInputStream.java */
@Deprecated
/* loaded from: classes.dex */
public class d extends InputStream {

    /* renamed from: c  reason: collision with root package name */
    private static final Queue<d> f9703c = o.f(0);

    /* renamed from: a  reason: collision with root package name */
    private InputStream f9704a;

    /* renamed from: b  reason: collision with root package name */
    private IOException f9705b;

    d() {
    }

    static void a() {
        while (true) {
            Queue<d> queue = f9703c;
            if (queue.isEmpty()) {
                return;
            }
            queue.remove();
        }
    }

    @NonNull
    public static d d(@NonNull InputStream inputStream) {
        d poll;
        Queue<d> queue = f9703c;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new d();
        }
        poll.h(inputStream);
        return poll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f9704a.available();
    }

    @Nullable
    public IOException b() {
        return this.f9705b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f9704a.close();
    }

    void h(@NonNull InputStream inputStream) {
        this.f9704a = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i4) {
        this.f9704a.mark(i4);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f9704a.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f9704a.read(bArr);
        } catch (IOException e4) {
            this.f9705b = e4;
            return -1;
        }
    }

    public void release() {
        this.f9705b = null;
        this.f9704a = null;
        Queue<d> queue = f9703c;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f9704a.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j4) {
        try {
            return this.f9704a.skip(j4);
        } catch (IOException e4) {
            this.f9705b = e4;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) {
        try {
            return this.f9704a.read(bArr, i4, i10);
        } catch (IOException e4) {
            this.f9705b = e4;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f9704a.read();
        } catch (IOException e4) {
            this.f9705b = e4;
            return -1;
        }
    }
}

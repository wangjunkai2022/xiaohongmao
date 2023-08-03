package com.facebook.soloader;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;

/* compiled from: FileLocker.java */
/* loaded from: classes.dex */
public final class o implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final FileOutputStream f13542a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final FileLock f13543b;

    private o(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        this.f13542a = fileOutputStream;
        try {
            FileLock lock = fileOutputStream.getChannel().lock();
            if (lock == null) {
                fileOutputStream.close();
            }
            this.f13543b = lock;
        } catch (Throwable th) {
            this.f13542a.close();
            throw th;
        }
    }

    public static o a(File file) throws IOException {
        return new o(file);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            FileLock fileLock = this.f13543b;
            if (fileLock != null) {
                fileLock.release();
            }
        } finally {
            this.f13542a.close();
        }
    }
}

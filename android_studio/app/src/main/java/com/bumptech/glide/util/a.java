package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ByteBufferUtil.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f9690a = 16384;

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicReference<byte[]> f9691b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ByteBufferUtil.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f9695a;

        /* renamed from: b  reason: collision with root package name */
        final int f9696b;

        /* renamed from: c  reason: collision with root package name */
        final byte[] f9697c;

        b(@NonNull byte[] bArr, int i4, int i10) {
            this.f9697c = bArr;
            this.f9695a = i4;
            this.f9696b = i10;
        }
    }

    private a() {
    }

    @NonNull
    public static ByteBuffer a(@NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length <= 2147483647L) {
                if (length != 0) {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        fileChannel = randomAccessFile.getChannel();
                        MappedByteBuffer load = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                        try {
                            fileChannel.close();
                        } catch (IOException unused) {
                        }
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused2) {
                        }
                        return load;
                    } catch (Throwable th) {
                        th = th;
                        if (fileChannel != null) {
                            try {
                                fileChannel.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused4) {
                            }
                        }
                        throw th;
                    }
                }
                throw new IOException("File unsuitable for memory mapping");
            }
            throw new IOException("File too large to map into memory");
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static ByteBuffer b(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f9691b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(andSet);
            if (read >= 0) {
                byteArrayOutputStream.write(andSet, 0, read);
            } else {
                f9691b.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return d(ByteBuffer.allocateDirect(byteArray.length).put(byteArray));
            }
        }
    }

    @Nullable
    private static b c(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static ByteBuffer d(ByteBuffer byteBuffer) {
        return (ByteBuffer) byteBuffer.position(0);
    }

    @NonNull
    public static byte[] e(@NonNull ByteBuffer byteBuffer) {
        b c10 = c(byteBuffer);
        if (c10 != null && c10.f9695a == 0 && c10.f9696b == c10.f9697c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        d(asReadOnlyBuffer);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void f(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        d(byteBuffer);
        FileChannel fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
        } catch (Throwable th) {
            th = th;
            randomAccessFile = null;
        }
        try {
            fileChannel = randomAccessFile.getChannel();
            fileChannel.write(byteBuffer);
            fileChannel.force(false);
            fileChannel.close();
            randomAccessFile.close();
            try {
                fileChannel.close();
            } catch (IOException unused) {
            }
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException unused3) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    @NonNull
    public static InputStream g(@NonNull ByteBuffer byteBuffer) {
        return new C0066a(byteBuffer);
    }

    public static void h(@NonNull ByteBuffer byteBuffer, @NonNull OutputStream outputStream) throws IOException {
        b c10 = c(byteBuffer);
        if (c10 != null) {
            byte[] bArr = c10.f9697c;
            int i4 = c10.f9695a;
            outputStream.write(bArr, i4, c10.f9696b + i4);
            return;
        }
        byte[] andSet = f9691b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (byteBuffer.remaining() > 0) {
            int min = Math.min(byteBuffer.remaining(), andSet.length);
            byteBuffer.get(andSet, 0, min);
            outputStream.write(andSet, 0, min);
        }
        f9691b.set(andSet);
    }

    /* compiled from: ByteBufferUtil.java */
    /* renamed from: com.bumptech.glide.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0066a extends InputStream {

        /* renamed from: c  reason: collision with root package name */
        private static final int f9692c = -1;
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f9693a;

        /* renamed from: b  reason: collision with root package name */
        private int f9694b = -1;

        C0066a(@NonNull ByteBuffer byteBuffer) {
            this.f9693a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f9693a.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i4) {
            this.f9694b = this.f9693a.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f9693a.hasRemaining()) {
                return this.f9693a.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int i4 = this.f9694b;
            if (i4 != -1) {
                this.f9693a.position(i4);
            } else {
                throw new IOException("Cannot reset to unset mark position");
            }
        }

        @Override // java.io.InputStream
        public long skip(long j4) {
            if (this.f9693a.hasRemaining()) {
                long min = Math.min(j4, available());
                ByteBuffer byteBuffer = this.f9693a;
                byteBuffer.position((int) (byteBuffer.position() + min));
                return min;
            }
            return -1L;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i4, int i10) {
            if (this.f9693a.hasRemaining()) {
                int min = Math.min(i10, available());
                this.f9693a.get(bArr, i4, min);
                return min;
            }
            return -1;
        }
    }
}

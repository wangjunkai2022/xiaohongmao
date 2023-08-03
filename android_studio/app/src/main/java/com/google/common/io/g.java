package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;

/* compiled from: ByteStreams.java */
@h3.c
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final int f34456a = 8192;

    /* renamed from: b  reason: collision with root package name */
    private static final int f34457b = 524288;

    /* renamed from: c  reason: collision with root package name */
    private static final int f34458c = 2147483639;

    /* renamed from: d  reason: collision with root package name */
    private static final int f34459d = 20;

    /* renamed from: e  reason: collision with root package name */
    private static final OutputStream f34460e = new a();

    /* compiled from: ByteStreams.java */
    /* loaded from: classes2.dex */
    static class a extends OutputStream {
        a() {
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i4) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            com.google.common.base.a0.E(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i4, int i10) {
            com.google.common.base.a0.E(bArr);
        }
    }

    private g() {
    }

    private static byte[] a(Deque<byte[]> deque, int i4) {
        byte[] bArr = new byte[i4];
        int i10 = i4;
        while (i10 > 0) {
            byte[] removeFirst = deque.removeFirst();
            int min = Math.min(i10, removeFirst.length);
            System.arraycopy(removeFirst, 0, bArr, i4 - i10, min);
            i10 -= min;
        }
        return bArr;
    }

    @CanIgnoreReturnValue
    public static long b(InputStream inputStream, OutputStream outputStream) throws IOException {
        com.google.common.base.a0.E(inputStream);
        com.google.common.base.a0.E(outputStream);
        byte[] d4 = d();
        long j4 = 0;
        while (true) {
            int read = inputStream.read(d4);
            if (read == -1) {
                return j4;
            }
            outputStream.write(d4, 0, read);
            j4 += read;
        }
    }

    @CanIgnoreReturnValue
    public static long c(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        com.google.common.base.a0.E(readableByteChannel);
        com.google.common.base.a0.E(writableByteChannel);
        long j4 = 0;
        if (readableByteChannel instanceof FileChannel) {
            FileChannel fileChannel = (FileChannel) readableByteChannel;
            long position = fileChannel.position();
            long j10 = position;
            while (true) {
                long transferTo = fileChannel.transferTo(j10, 524288L, writableByteChannel);
                j10 += transferTo;
                fileChannel.position(j10);
                if (transferTo <= 0 && j10 >= fileChannel.size()) {
                    return j10 - position;
                }
            }
        } else {
            ByteBuffer wrap = ByteBuffer.wrap(d());
            while (readableByteChannel.read(wrap) != -1) {
                wrap.flip();
                while (wrap.hasRemaining()) {
                    j4 += writableByteChannel.write(wrap);
                }
                wrap.clear();
            }
            return j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] d() {
        return new byte[8192];
    }

    @CanIgnoreReturnValue
    @h3.a
    public static long e(InputStream inputStream) throws IOException {
        byte[] d4 = d();
        long j4 = 0;
        while (true) {
            long read = inputStream.read(d4);
            if (read == -1) {
                return j4;
            }
            j4 += read;
        }
    }

    @h3.a
    public static InputStream f(InputStream inputStream, long j4) {
        return new d(inputStream, j4);
    }

    @h3.a
    public static com.google.common.io.b g(ByteArrayInputStream byteArrayInputStream) {
        return new b((ByteArrayInputStream) com.google.common.base.a0.E(byteArrayInputStream));
    }

    @h3.a
    public static com.google.common.io.b h(byte[] bArr) {
        return g(new ByteArrayInputStream(bArr));
    }

    @h3.a
    public static com.google.common.io.b i(byte[] bArr, int i4) {
        com.google.common.base.a0.d0(i4, bArr.length);
        return g(new ByteArrayInputStream(bArr, i4, bArr.length - i4));
    }

    @h3.a
    public static com.google.common.io.c j() {
        return l(new ByteArrayOutputStream());
    }

    @h3.a
    public static com.google.common.io.c k(int i4) {
        if (i4 >= 0) {
            return l(new ByteArrayOutputStream(i4));
        }
        throw new IllegalArgumentException(String.format("Invalid size: %s", Integer.valueOf(i4)));
    }

    @h3.a
    public static com.google.common.io.c l(ByteArrayOutputStream byteArrayOutputStream) {
        return new c((ByteArrayOutputStream) com.google.common.base.a0.E(byteArrayOutputStream));
    }

    @h3.a
    public static OutputStream m() {
        return f34460e;
    }

    @CanIgnoreReturnValue
    @h3.a
    public static int n(InputStream inputStream, byte[] bArr, int i4, int i10) throws IOException {
        com.google.common.base.a0.E(inputStream);
        com.google.common.base.a0.E(bArr);
        if (i10 >= 0) {
            int i11 = 0;
            while (i11 < i10) {
                int read = inputStream.read(bArr, i4 + i11, i10 - i11);
                if (read == -1) {
                    break;
                }
                i11 += read;
            }
            return i11;
        }
        throw new IndexOutOfBoundsException("len is negative");
    }

    @CanIgnoreReturnValue
    @h3.a
    public static <T> T o(InputStream inputStream, com.google.common.io.d<T> dVar) throws IOException {
        int read;
        com.google.common.base.a0.E(inputStream);
        com.google.common.base.a0.E(dVar);
        byte[] d4 = d();
        do {
            read = inputStream.read(d4);
            if (read == -1) {
                break;
            }
        } while (dVar.b(d4, 0, read));
        return dVar.a();
    }

    @h3.a
    public static void p(InputStream inputStream, byte[] bArr) throws IOException {
        q(inputStream, bArr, 0, bArr.length);
    }

    @h3.a
    public static void q(InputStream inputStream, byte[] bArr, int i4, int i10) throws IOException {
        int n9 = n(inputStream, bArr, i4, i10);
        if (n9 == i10) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + n9 + " bytes; " + i10 + " bytes expected");
    }

    @h3.a
    public static void r(InputStream inputStream, long j4) throws IOException {
        long t9 = t(inputStream, j4);
        if (t9 >= j4) {
            return;
        }
        throw new EOFException("reached end of stream after skipping " + t9 + " bytes; " + j4 + " bytes expected");
    }

    private static long s(InputStream inputStream, long j4) throws IOException {
        int available = inputStream.available();
        if (available == 0) {
            return 0L;
        }
        return inputStream.skip(Math.min(available, j4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long t(InputStream inputStream, long j4) throws IOException {
        byte[] d4 = d();
        long j10 = 0;
        while (j10 < j4) {
            long j11 = j4 - j10;
            long s9 = s(inputStream, j11);
            if (s9 == 0) {
                s9 = inputStream.read(d4, 0, (int) Math.min(j11, d4.length));
                if (s9 == -1) {
                    break;
                }
            }
            j10 += s9;
        }
        return j10;
    }

    public static byte[] u(InputStream inputStream) throws IOException {
        com.google.common.base.a0.E(inputStream);
        return w(inputStream, new ArrayDeque(20), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] v(InputStream inputStream, long j4) throws IOException {
        com.google.common.base.a0.p(j4 >= 0, "expectedSize (%s) must be non-negative", j4);
        if (j4 <= 2147483639) {
            int i4 = (int) j4;
            byte[] bArr = new byte[i4];
            int i10 = i4;
            while (i10 > 0) {
                int i11 = i4 - i10;
                int read = inputStream.read(bArr, i11, i10);
                if (read == -1) {
                    return Arrays.copyOf(bArr, i11);
                }
                i10 -= read;
            }
            int read2 = inputStream.read();
            if (read2 == -1) {
                return bArr;
            }
            ArrayDeque arrayDeque = new ArrayDeque(22);
            arrayDeque.add(bArr);
            arrayDeque.add(new byte[]{(byte) read2});
            return w(inputStream, arrayDeque, i4 + 1);
        }
        throw new OutOfMemoryError(j4 + " bytes is too large to fit in a byte array");
    }

    private static byte[] w(InputStream inputStream, Deque<byte[]> deque, int i4) throws IOException {
        int i10 = 8192;
        while (i4 < f34458c) {
            int min = Math.min(i10, f34458c - i4);
            byte[] bArr = new byte[min];
            deque.add(bArr);
            int i11 = 0;
            while (i11 < min) {
                int read = inputStream.read(bArr, i11, min - i11);
                if (read == -1) {
                    return a(deque, i4);
                }
                i11 += read;
                i4 += read;
            }
            i10 = com.google.common.math.d.u(i10, 2);
        }
        if (inputStream.read() == -1) {
            return a(deque, f34458c);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ByteStreams.java */
    /* loaded from: classes2.dex */
    public static class b implements com.google.common.io.b {

        /* renamed from: a  reason: collision with root package name */
        final DataInput f34461a;

        b(ByteArrayInputStream byteArrayInputStream) {
            this.f34461a = new DataInputStream(byteArrayInputStream);
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public boolean readBoolean() {
            try {
                return this.f34461a.readBoolean();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public byte readByte() {
            try {
                return this.f34461a.readByte();
            } catch (EOFException e4) {
                throw new IllegalStateException(e4);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public char readChar() {
            try {
                return this.f34461a.readChar();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public double readDouble() {
            try {
                return this.f34461a.readDouble();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public float readFloat() {
            try {
                return this.f34461a.readFloat();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public void readFully(byte[] bArr) {
            try {
                this.f34461a.readFully(bArr);
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public int readInt() {
            try {
                return this.f34461a.readInt();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public String readLine() {
            try {
                return this.f34461a.readLine();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public long readLong() {
            try {
                return this.f34461a.readLong();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public short readShort() {
            try {
                return this.f34461a.readShort();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public String readUTF() {
            try {
                return this.f34461a.readUTF();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public int readUnsignedByte() {
            try {
                return this.f34461a.readUnsignedByte();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public int readUnsignedShort() {
            try {
                return this.f34461a.readUnsignedShort();
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public int skipBytes(int i4) {
            try {
                return this.f34461a.skipBytes(i4);
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public void readFully(byte[] bArr, int i4, int i10) {
            try {
                this.f34461a.readFully(bArr, i4, i10);
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ByteStreams.java */
    /* loaded from: classes2.dex */
    public static class c implements com.google.common.io.c {

        /* renamed from: a  reason: collision with root package name */
        final DataOutput f34462a;

        /* renamed from: b  reason: collision with root package name */
        final ByteArrayOutputStream f34463b;

        c(ByteArrayOutputStream byteArrayOutputStream) {
            this.f34463b = byteArrayOutputStream;
            this.f34462a = new DataOutputStream(byteArrayOutputStream);
        }

        @Override // com.google.common.io.c
        public byte[] toByteArray() {
            return this.f34463b.toByteArray();
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void write(int i4) {
            try {
                this.f34462a.write(i4);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeBoolean(boolean z9) {
            try {
                this.f34462a.writeBoolean(z9);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeByte(int i4) {
            try {
                this.f34462a.writeByte(i4);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeBytes(String str) {
            try {
                this.f34462a.writeBytes(str);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeChar(int i4) {
            try {
                this.f34462a.writeChar(i4);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeChars(String str) {
            try {
                this.f34462a.writeChars(str);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeDouble(double d4) {
            try {
                this.f34462a.writeDouble(d4);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeFloat(float f10) {
            try {
                this.f34462a.writeFloat(f10);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeInt(int i4) {
            try {
                this.f34462a.writeInt(i4);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeLong(long j4) {
            try {
                this.f34462a.writeLong(j4);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeShort(int i4) {
            try {
                this.f34462a.writeShort(i4);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void writeUTF(String str) {
            try {
                this.f34462a.writeUTF(str);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void write(byte[] bArr) {
            try {
                this.f34462a.write(bArr);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // com.google.common.io.c, java.io.DataOutput
        public void write(byte[] bArr, int i4, int i10) {
            try {
                this.f34462a.write(bArr, i4, i10);
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }
    }

    /* compiled from: ByteStreams.java */
    /* loaded from: classes2.dex */
    private static final class d extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private long f34464a;

        /* renamed from: b  reason: collision with root package name */
        private long f34465b;

        d(InputStream inputStream, long j4) {
            super(inputStream);
            this.f34465b = -1L;
            com.google.common.base.a0.E(inputStream);
            com.google.common.base.a0.e(j4 >= 0, "limit must be non-negative");
            this.f34464a = j4;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f34464a);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i4) {
            ((FilterInputStream) this).in.mark(i4);
            this.f34465b = this.f34464a;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.f34464a == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f34464a--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (((FilterInputStream) this).in.markSupported()) {
                if (this.f34465b != -1) {
                    ((FilterInputStream) this).in.reset();
                    this.f34464a = this.f34465b;
                } else {
                    throw new IOException("Mark not set");
                }
            } else {
                throw new IOException("Mark not supported");
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j4) throws IOException {
            long skip = ((FilterInputStream) this).in.skip(Math.min(j4, this.f34464a));
            this.f34464a -= skip;
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i4, int i10) throws IOException {
            long j4 = this.f34464a;
            if (j4 == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i4, (int) Math.min(i10, j4));
            if (read != -1) {
                this.f34464a -= read;
            }
            return read;
        }
    }
}

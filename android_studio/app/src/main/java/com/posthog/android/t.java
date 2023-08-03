package com.posthog.android;

import com.facebook.cache.disk.a;
import com.posthog.android.l;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: QueueFile.java */
/* loaded from: classes3.dex */
public class t implements Closeable {

    /* renamed from: h  reason: collision with root package name */
    private static final int f47628h = 4096;

    /* renamed from: j  reason: collision with root package name */
    static final int f47630j = 16;

    /* renamed from: a  reason: collision with root package name */
    final RandomAccessFile f47631a;

    /* renamed from: b  reason: collision with root package name */
    int f47632b;

    /* renamed from: c  reason: collision with root package name */
    private int f47633c;

    /* renamed from: d  reason: collision with root package name */
    private b f47634d;

    /* renamed from: e  reason: collision with root package name */
    private b f47635e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f47636f;

    /* renamed from: g  reason: collision with root package name */
    private static final Logger f47627g = Logger.getLogger(t.class.getName());

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f47629i = new byte[4096];

    /* compiled from: QueueFile.java */
    /* loaded from: classes3.dex */
    class a implements l.a {

        /* renamed from: a  reason: collision with root package name */
        boolean f47637a = true;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ StringBuilder f47638b;

        a(StringBuilder sb) {
            this.f47638b = sb;
        }

        @Override // com.posthog.android.l.a
        public boolean d(InputStream inputStream, int i4) throws IOException {
            if (this.f47637a) {
                this.f47637a = false;
            } else {
                this.f47638b.append(", ");
            }
            this.f47638b.append(i4);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFile.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        static final b f47640c = new b(0, 0);

        /* renamed from: d  reason: collision with root package name */
        static final int f47641d = 4;

        /* renamed from: a  reason: collision with root package name */
        final int f47642a;

        /* renamed from: b  reason: collision with root package name */
        final int f47643b;

        b(int i4, int i10) {
            this.f47642a = i4;
            this.f47643b = i10;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f47642a + ", length = " + this.f47643b + "]";
        }
    }

    public t(File file) throws IOException {
        this.f47636f = new byte[16];
        if (!file.exists()) {
            k(file);
        }
        this.f47631a = q(file);
        y();
    }

    private static int A(byte[] bArr, int i4) {
        return ((bArr[i4] & 255) << 24) + ((bArr[i4 + 1] & 255) << 16) + ((bArr[i4 + 2] & 255) << 8) + (bArr[i4 + 3] & 255);
    }

    private int D() {
        return this.f47632b - L();
    }

    private void H(int i4, int i10) throws IOException {
        while (i10 > 0) {
            byte[] bArr = f47629i;
            int min = Math.min(i10, bArr.length);
            J(i4, bArr, 0, min);
            i10 -= min;
            i4 += min;
        }
    }

    private void J(int i4, byte[] bArr, int i10, int i11) throws IOException {
        int M = M(i4);
        int i12 = M + i11;
        int i13 = this.f47632b;
        if (i12 <= i13) {
            this.f47631a.seek(M);
            this.f47631a.write(bArr, i10, i11);
            return;
        }
        int i14 = i13 - M;
        this.f47631a.seek(M);
        this.f47631a.write(bArr, i10, i14);
        this.f47631a.seek(16L);
        this.f47631a.write(bArr, i10 + i14, i11 - i14);
    }

    private void K(int i4) throws IOException {
        this.f47631a.setLength(i4);
        this.f47631a.getChannel().force(true);
    }

    private int L() {
        if (this.f47633c == 0) {
            return 16;
        }
        b bVar = this.f47635e;
        int i4 = bVar.f47642a;
        int i10 = this.f47634d.f47642a;
        if (i4 >= i10) {
            return (i4 - i10) + 4 + bVar.f47643b + 16;
        }
        return (((i4 + 4) + bVar.f47643b) + this.f47632b) - i10;
    }

    private void W(int i4, int i10, int i11, int i12) throws IOException {
        X(this.f47636f, 0, i4);
        X(this.f47636f, 4, i10);
        X(this.f47636f, 8, i11);
        X(this.f47636f, 12, i12);
        this.f47631a.seek(0L);
        this.f47631a.write(this.f47636f);
    }

    private static void X(byte[] bArr, int i4, int i10) {
        bArr[i4] = (byte) (i10 >> 24);
        bArr[i4 + 1] = (byte) (i10 >> 16);
        bArr[i4 + 2] = (byte) (i10 >> 8);
        bArr[i4 + 3] = (byte) i10;
    }

    private void h(int i4) throws IOException {
        int i10 = i4 + 4;
        int D = D();
        if (D >= i10) {
            return;
        }
        int i11 = this.f47632b;
        while (true) {
            D += i11;
            int i12 = i11 << 1;
            if (i12 < i11) {
                throw new EOFException("Cannot grow file beyond " + i11 + " bytes");
            } else if (D >= i10) {
                K(i12);
                b bVar = this.f47635e;
                int M = M(bVar.f47642a + 4 + bVar.f47643b);
                if (M <= this.f47634d.f47642a) {
                    FileChannel channel = this.f47631a.getChannel();
                    channel.position(this.f47632b);
                    int i13 = M - 16;
                    long j4 = i13;
                    if (channel.transferTo(16L, j4, channel) == j4) {
                        H(16, i13);
                    } else {
                        throw new AssertionError("Copied insufficient number of bytes!");
                    }
                }
                int i14 = this.f47635e.f47642a;
                int i15 = this.f47634d.f47642a;
                if (i14 < i15) {
                    int i16 = (this.f47632b + i14) - 16;
                    W(i12, this.f47633c, i15, i16);
                    this.f47635e = new b(i16, this.f47635e.f47643b);
                } else {
                    W(i12, this.f47633c, i15, i14);
                }
                this.f47632b = i12;
                return;
            } else {
                i11 = i12;
            }
        }
    }

    private static void k(File file) throws IOException {
        File file2 = new File(file.getPath() + a.e.J);
        RandomAccessFile q9 = q(file2);
        try {
            q9.setLength(4096L);
            q9.seek(0L);
            byte[] bArr = new byte[16];
            X(bArr, 0, 4096);
            q9.write(bArr);
            q9.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            q9.close();
            throw th;
        }
    }

    private static RandomAccessFile q(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private b s(int i4) throws IOException {
        if (i4 == 0) {
            return b.f47640c;
        }
        I(i4, this.f47636f, 0, 4);
        return new b(i4, A(this.f47636f, 0));
    }

    private void y() throws IOException {
        this.f47631a.seek(0L);
        this.f47631a.readFully(this.f47636f);
        this.f47632b = A(this.f47636f, 0);
        this.f47633c = A(this.f47636f, 4);
        int A = A(this.f47636f, 8);
        int A2 = A(this.f47636f, 12);
        if (this.f47632b <= this.f47631a.length()) {
            int i4 = this.f47632b;
            if (i4 > 0) {
                if (A >= 0 && i4 > M(A)) {
                    if (A2 >= 0 && this.f47632b > M(A2)) {
                        this.f47634d = s(A);
                        this.f47635e = s(A2);
                        return;
                    }
                    throw new IOException("File is corrupt; last position stored in header (" + A2 + ") is invalid.");
                }
                throw new IOException("File is corrupt; first position stored in header (" + A + ") is invalid.");
            }
            throw new IOException("File is corrupt; length stored in header (" + this.f47632b + ") is invalid.");
        }
        throw new IOException("File is truncated. Expected length: " + this.f47632b + ", Actual length: " + this.f47631a.length());
    }

    public synchronized void E() throws IOException {
        G(1);
    }

    public synchronized void G(int i4) throws IOException {
        if (p()) {
            throw new NoSuchElementException();
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Cannot remove negative (" + i4 + ") number of elements.");
        } else if (i4 != 0) {
            int i10 = this.f47633c;
            if (i4 == i10) {
                d();
            } else if (i4 <= i10) {
                b bVar = this.f47634d;
                int i11 = bVar.f47642a;
                int i12 = bVar.f47643b;
                int i13 = i11;
                int i14 = 0;
                for (int i15 = 0; i15 < i4; i15++) {
                    i14 += i12 + 4;
                    i13 = M(i13 + 4 + i12);
                    I(i13, this.f47636f, 0, 4);
                    i12 = A(this.f47636f, 0);
                }
                W(this.f47632b, this.f47633c - i4, i13, this.f47635e.f47642a);
                this.f47633c -= i4;
                this.f47634d = new b(i13, i12);
                H(i11, i14);
            } else {
                throw new IllegalArgumentException("Cannot remove more elements (" + i4 + ") than present in queue (" + this.f47633c + ").");
            }
        }
    }

    void I(int i4, byte[] bArr, int i10, int i11) throws IOException {
        int M = M(i4);
        int i12 = M + i11;
        int i13 = this.f47632b;
        if (i12 <= i13) {
            this.f47631a.seek(M);
            this.f47631a.readFully(bArr, i10, i11);
            return;
        }
        int i14 = i13 - M;
        this.f47631a.seek(M);
        this.f47631a.readFully(bArr, i10, i14);
        this.f47631a.seek(16L);
        this.f47631a.readFully(bArr, i10 + i14, i11 - i14);
    }

    int M(int i4) {
        int i10 = this.f47632b;
        return i4 < i10 ? i4 : (i4 + 16) - i10;
    }

    public void a(byte[] bArr) throws IOException {
        b(bArr, 0, bArr.length);
    }

    public synchronized void b(byte[] bArr, int i4, int i10) throws IOException {
        int M;
        if (bArr != null) {
            if ((i4 | i10) >= 0 && i10 <= bArr.length - i4) {
                h(i10);
                boolean p9 = p();
                if (p9) {
                    M = 16;
                } else {
                    b bVar = this.f47635e;
                    M = M(bVar.f47642a + 4 + bVar.f47643b);
                }
                b bVar2 = new b(M, i10);
                X(this.f47636f, 0, i10);
                J(bVar2.f47642a, this.f47636f, 0, 4);
                J(bVar2.f47642a + 4, bArr, i4, i10);
                W(this.f47632b, this.f47633c + 1, p9 ? bVar2.f47642a : this.f47634d.f47642a, bVar2.f47642a);
                this.f47635e = bVar2;
                this.f47633c++;
                if (p9) {
                    this.f47634d = bVar2;
                }
            } else {
                throw new IndexOutOfBoundsException();
            }
        } else {
            throw new NullPointerException("data == null");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f47631a.close();
    }

    public synchronized void d() throws IOException {
        W(4096, 0, 0, 0);
        this.f47631a.seek(16L);
        this.f47631a.write(f47629i, 0, 4080);
        this.f47633c = 0;
        b bVar = b.f47640c;
        this.f47634d = bVar;
        this.f47635e = bVar;
        if (this.f47632b > 4096) {
            K(4096);
        }
        this.f47632b = 4096;
    }

    public synchronized int i(l.a aVar) throws IOException {
        int i4 = this.f47634d.f47642a;
        int i10 = 0;
        while (true) {
            int i11 = this.f47633c;
            if (i10 >= i11) {
                return i11;
            }
            b s9 = s(i4);
            if (!aVar.d(new c(s9), s9.f47643b)) {
                return i10 + 1;
            }
            i4 = M(s9.f47642a + 4 + s9.f47643b);
            i10++;
        }
    }

    public synchronized boolean p() {
        return this.f47633c == 0;
    }

    public synchronized byte[] r() throws IOException {
        if (p()) {
            return null;
        }
        b bVar = this.f47634d;
        int i4 = bVar.f47643b;
        byte[] bArr = new byte[i4];
        I(bVar.f47642a + 4, bArr, 0, i4);
        return bArr;
    }

    public synchronized int size() {
        return this.f47633c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f47632b);
        sb.append(", size=");
        sb.append(this.f47633c);
        sb.append(", first=");
        sb.append(this.f47634d);
        sb.append(", last=");
        sb.append(this.f47635e);
        sb.append(", element lengths=[");
        try {
            i(new a(sb));
        } catch (IOException e4) {
            f47627g.log(Level.WARNING, "read error", (Throwable) e4);
        }
        sb.append("]]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFile.java */
    /* loaded from: classes3.dex */
    public final class c extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private int f47644a;

        /* renamed from: b  reason: collision with root package name */
        private int f47645b;

        c(b bVar) {
            this.f47644a = t.this.M(bVar.f47642a + 4);
            this.f47645b = bVar.f47643b;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i4, int i10) throws IOException {
            if ((i4 | i10) >= 0 && i10 <= bArr.length - i4) {
                int i11 = this.f47645b;
                if (i11 == 0) {
                    return -1;
                }
                if (i10 > i11) {
                    i10 = i11;
                }
                t.this.I(this.f47644a, bArr, i4, i10);
                this.f47644a = t.this.M(this.f47644a + i10);
                this.f47645b -= i10;
                return i10;
            }
            throw new ArrayIndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f47645b == 0) {
                return -1;
            }
            t.this.f47631a.seek(this.f47644a);
            int read = t.this.f47631a.read();
            this.f47644a = t.this.M(this.f47644a + 1);
            this.f47645b--;
            return read;
        }
    }

    t(RandomAccessFile randomAccessFile) throws IOException {
        this.f47636f = new byte[16];
        this.f47631a = randomAccessFile;
        y();
    }
}

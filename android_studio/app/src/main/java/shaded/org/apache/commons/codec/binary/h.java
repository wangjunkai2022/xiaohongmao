package shaded.org.apache.commons.codec.binary;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import shaded.org.apache.commons.codec.binary.g;

/* compiled from: BaseNCodecInputStream.java */
/* loaded from: classes5.dex */
public class h extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final g f93474a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f93475b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f93476c;

    /* renamed from: d  reason: collision with root package name */
    private final g.a f93477d;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(InputStream inputStream, g gVar, boolean z9) {
        super(inputStream);
        this.f93476c = new byte[1];
        this.f93477d = new g.a();
        this.f93475b = z9;
        this.f93474a = gVar;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return !this.f93477d.f93471f ? 1 : 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i4) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = read(this.f93476c, 0, 1);
        while (read == 0) {
            read = read(this.f93476c, 0, 1);
        }
        if (read > 0) {
            byte b10 = this.f93476c[0];
            return b10 < 0 ? b10 + 256 : b10;
        }
        return -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j4) throws IOException {
        int read;
        if (j4 < 0) {
            throw new IllegalArgumentException("Negative skip length: " + j4);
        }
        byte[] bArr = new byte[512];
        long j10 = j4;
        while (j10 > 0 && (read = read(bArr, 0, (int) Math.min(512, j10))) != -1) {
            j10 -= read;
        }
        return j4 - j10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        Objects.requireNonNull(bArr);
        if (i4 >= 0 && i10 >= 0) {
            if (i4 > bArr.length || i4 + i10 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i10 == 0) {
                return 0;
            }
            int i11 = 0;
            while (i11 == 0) {
                if (!this.f93474a.q(this.f93477d)) {
                    byte[] bArr2 = new byte[this.f93475b ? 4096 : 8192];
                    int read = ((FilterInputStream) this).in.read(bArr2);
                    if (this.f93475b) {
                        this.f93474a.j(bArr2, 0, read, this.f93477d);
                    } else {
                        this.f93474a.h(bArr2, 0, read, this.f93477d);
                    }
                }
                i11 = this.f93474a.v(bArr, i4, i10, this.f93477d);
            }
            return i11;
        }
        throw new IndexOutOfBoundsException();
    }
}

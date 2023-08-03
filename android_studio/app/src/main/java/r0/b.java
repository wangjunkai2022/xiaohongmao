package r0;

import com.facebook.infer.annotation.Nullsafe;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* compiled from: TailAppendingInputStream.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f93175a;

    /* renamed from: b  reason: collision with root package name */
    private int f93176b;

    /* renamed from: c  reason: collision with root package name */
    private int f93177c;

    public b(InputStream inputStream, byte[] tail) {
        super(inputStream);
        Objects.requireNonNull(inputStream);
        Objects.requireNonNull(tail);
        this.f93175a = tail;
    }

    private int a() {
        int i4 = this.f93176b;
        byte[] bArr = this.f93175a;
        if (i4 >= bArr.length) {
            return -1;
        }
        this.f93176b = i4 + 1;
        return bArr[i4] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int readLimit) {
        if (((FilterInputStream) this).in.markSupported()) {
            super.mark(readLimit);
            this.f93177c = this.f93176b;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        return read != -1 ? read : a();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.reset();
            this.f93176b = this.f93177c;
            return;
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buffer) throws IOException {
        return read(buffer, 0, buffer.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buffer, int offset, int count) throws IOException {
        int read = ((FilterInputStream) this).in.read(buffer, offset, count);
        if (read != -1) {
            return read;
        }
        int i4 = 0;
        if (count == 0) {
            return 0;
        }
        while (i4 < count) {
            int a10 = a();
            if (a10 == -1) {
                break;
            }
            buffer[offset + i4] = (byte) a10;
            i4++;
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }
}

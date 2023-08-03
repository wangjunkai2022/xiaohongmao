package r0;

import com.facebook.infer.annotation.Nullsafe;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* compiled from: LimitedInputStream.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f93173a;

    /* renamed from: b  reason: collision with root package name */
    private int f93174b;

    public a(InputStream inputStream, int limit) {
        super(inputStream);
        Objects.requireNonNull(inputStream);
        if (limit >= 0) {
            this.f93173a = limit;
            this.f93174b = -1;
            return;
        }
        throw new IllegalArgumentException("limit must be >= 0");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return Math.min(((FilterInputStream) this).in.available(), this.f93173a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int readLimit) {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.mark(readLimit);
            this.f93174b = this.f93173a;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f93173a == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f93173a--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (((FilterInputStream) this).in.markSupported()) {
            if (this.f93174b != -1) {
                ((FilterInputStream) this).in.reset();
                this.f93173a = this.f93174b;
                return;
            }
            throw new IOException("mark not set");
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long byteCount) throws IOException {
        long skip = ((FilterInputStream) this).in.skip(Math.min(byteCount, this.f93173a));
        this.f93173a = (int) (this.f93173a - skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buffer, int byteOffset, int byteCount) throws IOException {
        int i4 = this.f93173a;
        if (i4 == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(buffer, byteOffset, Math.min(byteCount, i4));
        if (read > 0) {
            this.f93173a -= read;
        }
        return read;
    }
}

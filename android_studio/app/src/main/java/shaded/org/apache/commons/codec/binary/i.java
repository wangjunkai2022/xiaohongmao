package shaded.org.apache.commons.codec.binary;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
import shaded.org.apache.commons.codec.binary.g;

/* compiled from: BaseNCodecOutputStream.java */
/* loaded from: classes5.dex */
public class i extends FilterOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f93478a;

    /* renamed from: b  reason: collision with root package name */
    private final g f93479b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f93480c;

    /* renamed from: d  reason: collision with root package name */
    private final g.a f93481d;

    public i(OutputStream outputStream, g gVar, boolean z9) {
        super(outputStream);
        this.f93480c = new byte[1];
        this.f93481d = new g.a();
        this.f93479b = gVar;
        this.f93478a = z9;
    }

    private void b(boolean z9) throws IOException {
        byte[] bArr;
        int v9;
        int f10 = this.f93479b.f(this.f93481d);
        if (f10 > 0 && (v9 = this.f93479b.v((bArr = new byte[f10]), 0, f10, this.f93481d)) > 0) {
            ((FilterOutputStream) this).out.write(bArr, 0, v9);
        }
        if (z9) {
            ((FilterOutputStream) this).out.flush();
        }
    }

    public void a() throws IOException {
        if (this.f93478a) {
            this.f93479b.j(this.f93480c, 0, -1, this.f93481d);
        } else {
            this.f93479b.h(this.f93480c, 0, -1, this.f93481d);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a();
        flush();
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        b(true);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i4) throws IOException {
        byte[] bArr = this.f93480c;
        bArr[0] = (byte) i4;
        write(bArr, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        Objects.requireNonNull(bArr);
        if (i4 >= 0 && i10 >= 0) {
            if (i4 > bArr.length || i4 + i10 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i10 > 0) {
                if (this.f93478a) {
                    this.f93479b.j(bArr, i4, i10, this.f93481d);
                } else {
                    this.f93479b.h(bArr, i4, i10, this.f93481d);
                }
                b(false);
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}

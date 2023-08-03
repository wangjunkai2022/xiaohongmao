package x3;

import java.io.IOException;
import java.io.OutputStream;
import v3.c;

/* compiled from: BitstreamWriter.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f94657a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f94658b = new int[8];

    /* renamed from: c  reason: collision with root package name */
    private int f94659c;

    public a(OutputStream outputStream) {
        this.f94657a = outputStream;
    }

    private void d() throws IOException {
        int[] iArr = this.f94658b;
        this.f94657a.write(iArr[7] | (iArr[0] << 7) | (iArr[1] << 6) | (iArr[2] << 5) | (iArr[3] << 4) | (iArr[4] << 3) | (iArr[5] << 2) | (iArr[6] << 1));
    }

    public void a() throws IOException {
        for (int i4 = this.f94659c; i4 < 8; i4++) {
            this.f94658b[i4] = 0;
        }
        this.f94659c = 0;
        d();
    }

    public void b(int i4) throws IOException {
        c.a(i4);
        if (this.f94659c == 8) {
            this.f94659c = 0;
            d();
        }
        int[] iArr = this.f94658b;
        int i10 = this.f94659c;
        this.f94659c = i10 + 1;
        iArr[i10] = i4;
    }

    public void c(int i4) throws IOException {
        this.f94657a.write(i4);
    }

    public void e(long j4, int i4) throws IOException {
        for (int i10 = 0; i10 < i4; i10++) {
            b(((int) (j4 >> ((i4 - i10) - 1))) & 1);
        }
    }

    public void f() throws IOException {
        e(0L, 8 - this.f94659c);
    }
}

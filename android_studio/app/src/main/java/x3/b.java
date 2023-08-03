package x3;

import java.io.IOException;
import java.io.OutputStream;
import v3.c;

/* compiled from: CAVLCWriter.java */
/* loaded from: classes2.dex */
public class b extends a {
    public b(OutputStream outputStream) {
        super(outputStream);
    }

    public void g(boolean z9, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        b(z9 ? 1 : 0);
        c.g("\t" + z9);
    }

    public void h(long j4, int i4, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        for (int i10 = 0; i10 < i4; i10++) {
            b(((int) (j4 >> ((i4 - i10) - 1))) & 1);
        }
        c.g("\t" + j4);
    }

    public void i(int i4, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        n(((i4 << 1) * (i4 < 0 ? -1 : 1)) + (i4 <= 0 ? 0 : 1));
        c.g("\t" + i4);
    }

    public void j() {
        throw new IllegalStateException("todo");
    }

    public void k() throws IOException {
        b(1);
        f();
        a();
    }

    public void l(int i4, int i10) throws IOException {
        e(i4, i10);
    }

    public void m(int i4, int i10, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        e((long) i4, i10);
        c.g("\t" + i4);
    }

    public void n(int i4) throws IOException {
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= 15) {
                break;
            }
            int i13 = (1 << i11) + i12;
            if (i4 < i13) {
                i10 = i11;
                break;
            } else {
                i11++;
                i12 = i13;
            }
        }
        e(0L, i10);
        b(1);
        e(i4 - i12, i10);
    }

    public void o(int i4, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        n(i4);
        c.g("\t" + i4);
    }
}

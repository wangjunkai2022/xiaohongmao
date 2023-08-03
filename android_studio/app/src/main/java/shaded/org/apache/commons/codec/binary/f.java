package shaded.org.apache.commons.codec.binary;

import java.io.OutputStream;

/* compiled from: Base64OutputStream.java */
/* loaded from: classes5.dex */
public class f extends i {
    public f(OutputStream outputStream) {
        this(outputStream, true);
    }

    public f(OutputStream outputStream, boolean z9) {
        super(outputStream, new d(false), z9);
    }

    public f(OutputStream outputStream, boolean z9, int i4, byte[] bArr) {
        super(outputStream, new d(i4, bArr), z9);
    }
}

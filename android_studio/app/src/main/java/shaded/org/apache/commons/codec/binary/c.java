package shaded.org.apache.commons.codec.binary;

import java.io.OutputStream;

/* compiled from: Base32OutputStream.java */
/* loaded from: classes5.dex */
public class c extends i {
    public c(OutputStream outputStream) {
        this(outputStream, true);
    }

    public c(OutputStream outputStream, boolean z9) {
        super(outputStream, new a(false), z9);
    }

    public c(OutputStream outputStream, boolean z9, int i4, byte[] bArr) {
        super(outputStream, new a(i4, bArr), z9);
    }
}

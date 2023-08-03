package shaded.org.apache.commons.codec.binary;

import java.io.InputStream;

/* compiled from: Base32InputStream.java */
/* loaded from: classes5.dex */
public class b extends h {
    public b(InputStream inputStream) {
        this(inputStream, false);
    }

    public b(InputStream inputStream, boolean z9) {
        super(inputStream, new a(false), z9);
    }

    public b(InputStream inputStream, boolean z9, int i4, byte[] bArr) {
        super(inputStream, new a(i4, bArr), z9);
    }
}

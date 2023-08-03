package shaded.org.apache.commons.codec.binary;

import java.io.InputStream;

/* compiled from: Base64InputStream.java */
/* loaded from: classes5.dex */
public class e extends h {
    public e(InputStream inputStream) {
        this(inputStream, false);
    }

    public e(InputStream inputStream, boolean z9) {
        super(inputStream, new d(false), z9);
    }

    public e(InputStream inputStream, boolean z9, int i4, byte[] bArr) {
        super(inputStream, new d(i4, bArr), z9);
    }
}

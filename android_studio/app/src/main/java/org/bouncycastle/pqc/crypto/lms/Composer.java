package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.util.Encodable;

/* loaded from: classes5.dex */
public class Composer {
    private final ByteArrayOutputStream bos = new ByteArrayOutputStream();

    private Composer() {
    }

    public static Composer compose() {
        return new Composer();
    }

    public Composer bool(boolean z9) {
        this.bos.write(z9 ? 1 : 0);
        return this;
    }

    public byte[] build() {
        return this.bos.toByteArray();
    }

    public Composer bytes(Encodable encodable) {
        try {
            this.bos.write(encodable.getEncoded());
            return this;
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage(), e4);
        }
    }

    public Composer bytes(byte[] bArr) {
        try {
            this.bos.write(bArr);
            return this;
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage(), e4);
        }
    }

    public Composer bytes(byte[] bArr, int i4, int i10) {
        try {
            this.bos.write(bArr, i4, i10);
            return this;
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage(), e4);
        }
    }

    public Composer bytes(Encodable[] encodableArr) {
        try {
            for (Encodable encodable : encodableArr) {
                this.bos.write(encodable.getEncoded());
            }
            return this;
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage(), e4);
        }
    }

    public Composer bytes(byte[][] bArr) {
        try {
            for (byte[] bArr2 : bArr) {
                this.bos.write(bArr2);
            }
            return this;
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage(), e4);
        }
    }

    public Composer bytes(byte[][] bArr, int i4, int i10) {
        while (i4 != i10) {
            try {
                this.bos.write(bArr[i4]);
                i4++;
            } catch (Exception e4) {
                throw new RuntimeException(e4.getMessage(), e4);
            }
        }
        return this;
    }

    public Composer pad(int i4, int i10) {
        while (i10 >= 0) {
            try {
                this.bos.write(i4);
                i10--;
            } catch (Exception e4) {
                throw new RuntimeException(e4.getMessage(), e4);
            }
        }
        return this;
    }

    public Composer padUntil(int i4, int i10) {
        while (this.bos.size() < i10) {
            this.bos.write(i4);
        }
        return this;
    }

    public Composer u16str(int i4) {
        int i10 = i4 & 65535;
        this.bos.write((byte) (i10 >>> 8));
        this.bos.write((byte) i10);
        return this;
    }

    public Composer u32str(int i4) {
        this.bos.write((byte) (i4 >>> 24));
        this.bos.write((byte) (i4 >>> 16));
        this.bos.write((byte) (i4 >>> 8));
        this.bos.write((byte) i4);
        return this;
    }

    public Composer u64str(long j4) {
        u32str((int) (j4 >>> 32));
        u32str((int) j4);
        return this;
    }
}

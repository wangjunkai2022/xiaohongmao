package org.bouncycastle.pqc.crypto.mceliece;

/* loaded from: classes5.dex */
public class McElieceCCA2Parameters extends McElieceParameters {
    private final String digest;

    public McElieceCCA2Parameters() {
        this(11, 50, "SHA-256");
    }

    public McElieceCCA2Parameters(int i4) {
        this(i4, "SHA-256");
    }

    public McElieceCCA2Parameters(int i4, int i10) {
        this(i4, i10, "SHA-256");
    }

    public McElieceCCA2Parameters(int i4, int i10, int i11) {
        this(i4, i10, i11, "SHA-256");
    }

    public McElieceCCA2Parameters(int i4, int i10, int i11, String str) {
        super(i4, i10, i11);
        this.digest = str;
    }

    public McElieceCCA2Parameters(int i4, int i10, String str) {
        super(i4, i10);
        this.digest = str;
    }

    public McElieceCCA2Parameters(int i4, String str) {
        super(i4);
        this.digest = str;
    }

    public McElieceCCA2Parameters(String str) {
        this(11, 50, str);
    }

    public String getDigest() {
        return this.digest;
    }
}

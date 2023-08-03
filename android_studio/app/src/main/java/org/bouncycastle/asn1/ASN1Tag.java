package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
final class ASN1Tag {
    private final int tagClass;
    private final int tagNumber;

    private ASN1Tag(int i4, int i10) {
        this.tagClass = i4;
        this.tagNumber = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Tag create(int i4, int i10) {
        return new ASN1Tag(i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTagClass() {
        return this.tagClass;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTagNumber() {
        return this.tagNumber;
    }
}

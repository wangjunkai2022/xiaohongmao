package org.bouncycastle.asn1.x509;

/* loaded from: classes4.dex */
public class X509NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char separator;
    private String value;

    public X509NameTokenizer(String str) {
        this(str, ',');
    }

    public X509NameTokenizer(String str, char c10) {
        this.buf = new StringBuffer();
        this.value = str;
        this.index = -1;
        this.separator = c10;
    }

    public boolean hasMoreTokens() {
        return this.index != this.value.length();
    }

    public String nextToken() {
        if (this.index == this.value.length()) {
            return null;
        }
        int i4 = this.index + 1;
        this.buf.setLength(0);
        boolean z9 = false;
        boolean z10 = false;
        while (i4 != this.value.length()) {
            char charAt = this.value.charAt(i4);
            if (charAt == '\"') {
                if (!z9) {
                    z10 = !z10;
                }
            } else if (!z9 && !z10) {
                if (charAt == '\\') {
                    this.buf.append(charAt);
                    z9 = true;
                } else if (charAt == this.separator) {
                    break;
                } else {
                    this.buf.append(charAt);
                }
                i4++;
            }
            this.buf.append(charAt);
            z9 = false;
            i4++;
        }
        this.index = i4;
        return this.buf.toString();
    }
}

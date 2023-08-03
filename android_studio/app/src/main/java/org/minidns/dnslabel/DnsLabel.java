package org.minidns.dnslabel;

import java.io.ByteArrayOutputStream;
import java.util.Locale;

/* loaded from: classes5.dex */
public abstract class DnsLabel implements CharSequence {

    /* renamed from: e  reason: collision with root package name */
    public static final int f92647e = 63;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f92648f = true;

    /* renamed from: a  reason: collision with root package name */
    public final String f92649a;

    /* renamed from: b  reason: collision with root package name */
    private transient String f92650b;

    /* renamed from: c  reason: collision with root package name */
    private transient DnsLabel f92651c;

    /* renamed from: d  reason: collision with root package name */
    private transient byte[] f92652d;

    /* loaded from: classes5.dex */
    public static class LabelToLongException extends IllegalArgumentException {

        /* renamed from: a  reason: collision with root package name */
        private static final long f92653a = 1;
        public final String label;

        LabelToLongException(String str) {
            this.label = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DnsLabel(String str) {
        this.f92649a = str;
        if (f92648f) {
            h();
            if (this.f92652d.length > 63) {
                throw new LabelToLongException(str);
            }
        }
    }

    public static DnsLabel b(String str) {
        if (str != null && !str.isEmpty()) {
            if (c.k(str)) {
                return c.j(str);
            }
            return e.j(str);
        }
        throw new IllegalArgumentException("Label is null or empty");
    }

    public static DnsLabel[] c(String[] strArr) {
        DnsLabel[] dnsLabelArr = new DnsLabel[strArr.length];
        for (int i4 = 0; i4 < strArr.length; i4++) {
            dnsLabelArr[i4] = b(strArr[i4]);
        }
        return dnsLabelArr;
    }

    public static boolean g(String str) {
        return str.toLowerCase(Locale.US).startsWith("xn--");
    }

    private void h() {
        if (this.f92652d == null) {
            this.f92652d = this.f92649a.getBytes();
        }
    }

    public final DnsLabel a() {
        if (this.f92651c == null) {
            this.f92651c = b(this.f92649a.toLowerCase(Locale.US));
        }
        return this.f92651c;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i4) {
        return this.f92649a.charAt(i4);
    }

    public final String d() {
        if (this.f92650b == null) {
            this.f92650b = e();
        }
        return this.f92650b;
    }

    protected String e() {
        return this.f92649a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DnsLabel) {
            return this.f92649a.equals(((DnsLabel) obj).f92649a);
        }
        return false;
    }

    public final String f() {
        return getClass().getSimpleName();
    }

    public final int hashCode() {
        return this.f92649a.hashCode();
    }

    public final void i(ByteArrayOutputStream byteArrayOutputStream) {
        h();
        byteArrayOutputStream.write(this.f92652d.length);
        byte[] bArr = this.f92652d;
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f92649a.length();
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i4, int i10) {
        return this.f92649a.subSequence(i4, i10);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f92649a;
    }
}

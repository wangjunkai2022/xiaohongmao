package org.minidns.dnsname;

/* loaded from: classes5.dex */
public abstract class InvalidDnsNameException extends IllegalStateException {

    /* renamed from: b  reason: collision with root package name */
    private static final long f92723b = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final String f92724a;

    /* loaded from: classes5.dex */
    public static class DNSNameTooLongException extends InvalidDnsNameException {

        /* renamed from: d  reason: collision with root package name */
        private static final long f92725d = 1;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f92726c;

        public DNSNameTooLongException(String str, byte[] bArr) {
            super(str);
            this.f92726c = bArr;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return "The DNS name '" + this.f92724a + "' exceeds the maximum name length of 255 octets by " + (this.f92726c.length - 255) + " octets.";
        }
    }

    /* loaded from: classes5.dex */
    public static class LabelTooLongException extends InvalidDnsNameException {

        /* renamed from: d  reason: collision with root package name */
        private static final long f92727d = 1;

        /* renamed from: c  reason: collision with root package name */
        private final String f92728c;

        public LabelTooLongException(String str, String str2) {
            super(str);
            this.f92728c = str2;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return "The DNS name '" + this.f92724a + "' contains the label '" + this.f92728c + "' which exceeds the maximum label length of 63 octets by " + (this.f92728c.length() - 63) + " octets.";
        }
    }

    protected InvalidDnsNameException(String str) {
        this.f92724a = str;
    }
}

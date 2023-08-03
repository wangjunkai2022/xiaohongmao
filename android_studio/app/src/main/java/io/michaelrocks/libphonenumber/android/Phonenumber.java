package io.michaelrocks.libphonenumber.android;

import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class Phonenumber {

    /* loaded from: classes3.dex */
    public static class PhoneNumber implements Serializable {

        /* renamed from: q  reason: collision with root package name */
        private static final long f70966q = 1;

        /* renamed from: a  reason: collision with root package name */
        private boolean f70967a;

        /* renamed from: c  reason: collision with root package name */
        private boolean f70969c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f70971e;

        /* renamed from: g  reason: collision with root package name */
        private boolean f70973g;

        /* renamed from: i  reason: collision with root package name */
        private boolean f70975i;

        /* renamed from: k  reason: collision with root package name */
        private boolean f70977k;

        /* renamed from: m  reason: collision with root package name */
        private boolean f70979m;

        /* renamed from: o  reason: collision with root package name */
        private boolean f70981o;

        /* renamed from: b  reason: collision with root package name */
        private int f70968b = 0;

        /* renamed from: d  reason: collision with root package name */
        private long f70970d = 0;

        /* renamed from: f  reason: collision with root package name */
        private String f70972f = "";

        /* renamed from: h  reason: collision with root package name */
        private boolean f70974h = false;

        /* renamed from: j  reason: collision with root package name */
        private int f70976j = 1;

        /* renamed from: l  reason: collision with root package name */
        private String f70978l = "";

        /* renamed from: p  reason: collision with root package name */
        private String f70982p = "";

        /* renamed from: n  reason: collision with root package name */
        private CountryCodeSource f70980n = CountryCodeSource.UNSPECIFIED;

        /* loaded from: classes3.dex */
        public enum CountryCodeSource {
            FROM_NUMBER_WITH_PLUS_SIGN,
            FROM_NUMBER_WITH_IDD,
            FROM_NUMBER_WITHOUT_PLUS_SIGN,
            FROM_DEFAULT_COUNTRY,
            UNSPECIFIED
        }

        public final PhoneNumber clear() {
            clearCountryCode();
            clearNationalNumber();
            clearExtension();
            clearItalianLeadingZero();
            clearNumberOfLeadingZeros();
            clearRawInput();
            clearCountryCodeSource();
            clearPreferredDomesticCarrierCode();
            return this;
        }

        public PhoneNumber clearCountryCode() {
            this.f70967a = false;
            this.f70968b = 0;
            return this;
        }

        public PhoneNumber clearCountryCodeSource() {
            this.f70979m = false;
            this.f70980n = CountryCodeSource.UNSPECIFIED;
            return this;
        }

        public PhoneNumber clearExtension() {
            this.f70971e = false;
            this.f70972f = "";
            return this;
        }

        public PhoneNumber clearItalianLeadingZero() {
            this.f70973g = false;
            this.f70974h = false;
            return this;
        }

        public PhoneNumber clearNationalNumber() {
            this.f70969c = false;
            this.f70970d = 0L;
            return this;
        }

        public PhoneNumber clearNumberOfLeadingZeros() {
            this.f70975i = false;
            this.f70976j = 1;
            return this;
        }

        public PhoneNumber clearPreferredDomesticCarrierCode() {
            this.f70981o = false;
            this.f70982p = "";
            return this;
        }

        public PhoneNumber clearRawInput() {
            this.f70977k = false;
            this.f70978l = "";
            return this;
        }

        public boolean equals(Object that) {
            return (that instanceof PhoneNumber) && exactlySameAs((PhoneNumber) that);
        }

        public boolean exactlySameAs(PhoneNumber other) {
            if (other == null) {
                return false;
            }
            if (this == other) {
                return true;
            }
            return this.f70968b == other.f70968b && this.f70970d == other.f70970d && this.f70972f.equals(other.f70972f) && this.f70974h == other.f70974h && this.f70976j == other.f70976j && this.f70978l.equals(other.f70978l) && this.f70980n == other.f70980n && this.f70982p.equals(other.f70982p) && hasPreferredDomesticCarrierCode() == other.hasPreferredDomesticCarrierCode();
        }

        public int getCountryCode() {
            return this.f70968b;
        }

        public CountryCodeSource getCountryCodeSource() {
            return this.f70980n;
        }

        public String getExtension() {
            return this.f70972f;
        }

        public long getNationalNumber() {
            return this.f70970d;
        }

        public int getNumberOfLeadingZeros() {
            return this.f70976j;
        }

        public String getPreferredDomesticCarrierCode() {
            return this.f70982p;
        }

        public String getRawInput() {
            return this.f70978l;
        }

        public boolean hasCountryCode() {
            return this.f70967a;
        }

        public boolean hasCountryCodeSource() {
            return this.f70979m;
        }

        public boolean hasExtension() {
            return this.f70971e;
        }

        public boolean hasItalianLeadingZero() {
            return this.f70973g;
        }

        public boolean hasNationalNumber() {
            return this.f70969c;
        }

        public boolean hasNumberOfLeadingZeros() {
            return this.f70975i;
        }

        public boolean hasPreferredDomesticCarrierCode() {
            return this.f70981o;
        }

        public boolean hasRawInput() {
            return this.f70977k;
        }

        public int hashCode() {
            return ((((((((((((((((2173 + getCountryCode()) * 53) + Long.valueOf(getNationalNumber()).hashCode()) * 53) + getExtension().hashCode()) * 53) + (isItalianLeadingZero() ? 1231 : 1237)) * 53) + getNumberOfLeadingZeros()) * 53) + getRawInput().hashCode()) * 53) + getCountryCodeSource().hashCode()) * 53) + getPreferredDomesticCarrierCode().hashCode()) * 53) + (hasPreferredDomesticCarrierCode() ? 1231 : 1237);
        }

        public boolean isItalianLeadingZero() {
            return this.f70974h;
        }

        public PhoneNumber mergeFrom(PhoneNumber other) {
            if (other.hasCountryCode()) {
                setCountryCode(other.getCountryCode());
            }
            if (other.hasNationalNumber()) {
                setNationalNumber(other.getNationalNumber());
            }
            if (other.hasExtension()) {
                setExtension(other.getExtension());
            }
            if (other.hasItalianLeadingZero()) {
                setItalianLeadingZero(other.isItalianLeadingZero());
            }
            if (other.hasNumberOfLeadingZeros()) {
                setNumberOfLeadingZeros(other.getNumberOfLeadingZeros());
            }
            if (other.hasRawInput()) {
                setRawInput(other.getRawInput());
            }
            if (other.hasCountryCodeSource()) {
                setCountryCodeSource(other.getCountryCodeSource());
            }
            if (other.hasPreferredDomesticCarrierCode()) {
                setPreferredDomesticCarrierCode(other.getPreferredDomesticCarrierCode());
            }
            return this;
        }

        public PhoneNumber setCountryCode(int value) {
            this.f70967a = true;
            this.f70968b = value;
            return this;
        }

        public PhoneNumber setCountryCodeSource(CountryCodeSource value) {
            Objects.requireNonNull(value);
            this.f70979m = true;
            this.f70980n = value;
            return this;
        }

        public PhoneNumber setExtension(String value) {
            Objects.requireNonNull(value);
            this.f70971e = true;
            this.f70972f = value;
            return this;
        }

        public PhoneNumber setItalianLeadingZero(boolean value) {
            this.f70973g = true;
            this.f70974h = value;
            return this;
        }

        public PhoneNumber setNationalNumber(long value) {
            this.f70969c = true;
            this.f70970d = value;
            return this;
        }

        public PhoneNumber setNumberOfLeadingZeros(int value) {
            this.f70975i = true;
            this.f70976j = value;
            return this;
        }

        public PhoneNumber setPreferredDomesticCarrierCode(String value) {
            Objects.requireNonNull(value);
            this.f70981o = true;
            this.f70982p = value;
            return this;
        }

        public PhoneNumber setRawInput(String value) {
            Objects.requireNonNull(value);
            this.f70977k = true;
            this.f70978l = value;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Country Code: ");
            sb.append(this.f70968b);
            sb.append(" National Number: ");
            sb.append(this.f70970d);
            if (hasItalianLeadingZero() && isItalianLeadingZero()) {
                sb.append(" Leading Zero(s): true");
            }
            if (hasNumberOfLeadingZeros()) {
                sb.append(" Number of leading zeros: ");
                sb.append(this.f70976j);
            }
            if (hasExtension()) {
                sb.append(" Extension: ");
                sb.append(this.f70972f);
            }
            if (hasCountryCodeSource()) {
                sb.append(" Country Code Source: ");
                sb.append(this.f70980n);
            }
            if (hasPreferredDomesticCarrierCode()) {
                sb.append(" Preferred Domestic Carrier Code: ");
                sb.append(this.f70982p);
            }
            return sb.toString();
        }
    }

    private Phonenumber() {
    }
}

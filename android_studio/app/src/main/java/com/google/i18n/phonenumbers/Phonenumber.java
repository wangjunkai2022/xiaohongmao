package com.google.i18n.phonenumbers;

import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class Phonenumber {

    /* loaded from: classes2.dex */
    public static class PhoneNumber implements Serializable {

        /* renamed from: q  reason: collision with root package name */
        private static final long f35622q = 1;

        /* renamed from: a  reason: collision with root package name */
        private boolean f35623a;

        /* renamed from: c  reason: collision with root package name */
        private boolean f35625c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f35627e;

        /* renamed from: g  reason: collision with root package name */
        private boolean f35629g;

        /* renamed from: i  reason: collision with root package name */
        private boolean f35631i;

        /* renamed from: k  reason: collision with root package name */
        private boolean f35633k;

        /* renamed from: m  reason: collision with root package name */
        private boolean f35635m;

        /* renamed from: o  reason: collision with root package name */
        private boolean f35637o;

        /* renamed from: b  reason: collision with root package name */
        private int f35624b = 0;

        /* renamed from: d  reason: collision with root package name */
        private long f35626d = 0;

        /* renamed from: f  reason: collision with root package name */
        private String f35628f = "";

        /* renamed from: h  reason: collision with root package name */
        private boolean f35630h = false;

        /* renamed from: j  reason: collision with root package name */
        private int f35632j = 1;

        /* renamed from: l  reason: collision with root package name */
        private String f35634l = "";

        /* renamed from: p  reason: collision with root package name */
        private String f35638p = "";

        /* renamed from: n  reason: collision with root package name */
        private CountryCodeSource f35636n = CountryCodeSource.UNSPECIFIED;

        /* loaded from: classes2.dex */
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
            this.f35623a = false;
            this.f35624b = 0;
            return this;
        }

        public PhoneNumber clearCountryCodeSource() {
            this.f35635m = false;
            this.f35636n = CountryCodeSource.UNSPECIFIED;
            return this;
        }

        public PhoneNumber clearExtension() {
            this.f35627e = false;
            this.f35628f = "";
            return this;
        }

        public PhoneNumber clearItalianLeadingZero() {
            this.f35629g = false;
            this.f35630h = false;
            return this;
        }

        public PhoneNumber clearNationalNumber() {
            this.f35625c = false;
            this.f35626d = 0L;
            return this;
        }

        public PhoneNumber clearNumberOfLeadingZeros() {
            this.f35631i = false;
            this.f35632j = 1;
            return this;
        }

        public PhoneNumber clearPreferredDomesticCarrierCode() {
            this.f35637o = false;
            this.f35638p = "";
            return this;
        }

        public PhoneNumber clearRawInput() {
            this.f35633k = false;
            this.f35634l = "";
            return this;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PhoneNumber) && exactlySameAs((PhoneNumber) obj);
        }

        public boolean exactlySameAs(PhoneNumber phoneNumber) {
            if (phoneNumber == null) {
                return false;
            }
            if (this == phoneNumber) {
                return true;
            }
            return this.f35624b == phoneNumber.f35624b && this.f35626d == phoneNumber.f35626d && this.f35628f.equals(phoneNumber.f35628f) && this.f35630h == phoneNumber.f35630h && this.f35632j == phoneNumber.f35632j && this.f35634l.equals(phoneNumber.f35634l) && this.f35636n == phoneNumber.f35636n && this.f35638p.equals(phoneNumber.f35638p) && hasPreferredDomesticCarrierCode() == phoneNumber.hasPreferredDomesticCarrierCode();
        }

        public int getCountryCode() {
            return this.f35624b;
        }

        public CountryCodeSource getCountryCodeSource() {
            return this.f35636n;
        }

        public String getExtension() {
            return this.f35628f;
        }

        public long getNationalNumber() {
            return this.f35626d;
        }

        public int getNumberOfLeadingZeros() {
            return this.f35632j;
        }

        public String getPreferredDomesticCarrierCode() {
            return this.f35638p;
        }

        public String getRawInput() {
            return this.f35634l;
        }

        public boolean hasCountryCode() {
            return this.f35623a;
        }

        public boolean hasCountryCodeSource() {
            return this.f35635m;
        }

        public boolean hasExtension() {
            return this.f35627e;
        }

        public boolean hasItalianLeadingZero() {
            return this.f35629g;
        }

        public boolean hasNationalNumber() {
            return this.f35625c;
        }

        public boolean hasNumberOfLeadingZeros() {
            return this.f35631i;
        }

        public boolean hasPreferredDomesticCarrierCode() {
            return this.f35637o;
        }

        public boolean hasRawInput() {
            return this.f35633k;
        }

        public int hashCode() {
            return ((((((((((((((((2173 + getCountryCode()) * 53) + Long.valueOf(getNationalNumber()).hashCode()) * 53) + getExtension().hashCode()) * 53) + (isItalianLeadingZero() ? 1231 : 1237)) * 53) + getNumberOfLeadingZeros()) * 53) + getRawInput().hashCode()) * 53) + getCountryCodeSource().hashCode()) * 53) + getPreferredDomesticCarrierCode().hashCode()) * 53) + (hasPreferredDomesticCarrierCode() ? 1231 : 1237);
        }

        public boolean isItalianLeadingZero() {
            return this.f35630h;
        }

        public PhoneNumber mergeFrom(PhoneNumber phoneNumber) {
            if (phoneNumber.hasCountryCode()) {
                setCountryCode(phoneNumber.getCountryCode());
            }
            if (phoneNumber.hasNationalNumber()) {
                setNationalNumber(phoneNumber.getNationalNumber());
            }
            if (phoneNumber.hasExtension()) {
                setExtension(phoneNumber.getExtension());
            }
            if (phoneNumber.hasItalianLeadingZero()) {
                setItalianLeadingZero(phoneNumber.isItalianLeadingZero());
            }
            if (phoneNumber.hasNumberOfLeadingZeros()) {
                setNumberOfLeadingZeros(phoneNumber.getNumberOfLeadingZeros());
            }
            if (phoneNumber.hasRawInput()) {
                setRawInput(phoneNumber.getRawInput());
            }
            if (phoneNumber.hasCountryCodeSource()) {
                setCountryCodeSource(phoneNumber.getCountryCodeSource());
            }
            if (phoneNumber.hasPreferredDomesticCarrierCode()) {
                setPreferredDomesticCarrierCode(phoneNumber.getPreferredDomesticCarrierCode());
            }
            return this;
        }

        public PhoneNumber setCountryCode(int i4) {
            this.f35623a = true;
            this.f35624b = i4;
            return this;
        }

        public PhoneNumber setCountryCodeSource(CountryCodeSource countryCodeSource) {
            Objects.requireNonNull(countryCodeSource);
            this.f35635m = true;
            this.f35636n = countryCodeSource;
            return this;
        }

        public PhoneNumber setExtension(String str) {
            Objects.requireNonNull(str);
            this.f35627e = true;
            this.f35628f = str;
            return this;
        }

        public PhoneNumber setItalianLeadingZero(boolean z9) {
            this.f35629g = true;
            this.f35630h = z9;
            return this;
        }

        public PhoneNumber setNationalNumber(long j4) {
            this.f35625c = true;
            this.f35626d = j4;
            return this;
        }

        public PhoneNumber setNumberOfLeadingZeros(int i4) {
            this.f35631i = true;
            this.f35632j = i4;
            return this;
        }

        public PhoneNumber setPreferredDomesticCarrierCode(String str) {
            Objects.requireNonNull(str);
            this.f35637o = true;
            this.f35638p = str;
            return this;
        }

        public PhoneNumber setRawInput(String str) {
            Objects.requireNonNull(str);
            this.f35633k = true;
            this.f35634l = str;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Country Code: ");
            sb.append(this.f35624b);
            sb.append(" National Number: ");
            sb.append(this.f35626d);
            if (hasItalianLeadingZero() && isItalianLeadingZero()) {
                sb.append(" Leading Zero(s): true");
            }
            if (hasNumberOfLeadingZeros()) {
                sb.append(" Number of leading zeros: ");
                sb.append(this.f35632j);
            }
            if (hasExtension()) {
                sb.append(" Extension: ");
                sb.append(this.f35628f);
            }
            if (hasCountryCodeSource()) {
                sb.append(" Country Code Source: ");
                sb.append(this.f35636n);
            }
            if (hasPreferredDomesticCarrierCode()) {
                sb.append(" Preferred Domestic Carrier Code: ");
                sb.append(this.f35638p);
            }
            return sb.toString();
        }
    }

    private Phonenumber() {
    }
}

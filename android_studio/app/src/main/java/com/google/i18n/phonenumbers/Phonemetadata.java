package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class Phonemetadata {

    /* loaded from: classes2.dex */
    public static class NumberFormat implements Externalizable {

        /* renamed from: l  reason: collision with root package name */
        private static final long f35565l = 1;

        /* renamed from: a  reason: collision with root package name */
        private boolean f35566a;

        /* renamed from: c  reason: collision with root package name */
        private boolean f35568c;

        /* renamed from: f  reason: collision with root package name */
        private boolean f35571f;

        /* renamed from: h  reason: collision with root package name */
        private boolean f35573h;

        /* renamed from: j  reason: collision with root package name */
        private boolean f35575j;

        /* renamed from: b  reason: collision with root package name */
        private String f35567b = "";

        /* renamed from: d  reason: collision with root package name */
        private String f35569d = "";

        /* renamed from: e  reason: collision with root package name */
        private List<String> f35570e = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        private String f35572g = "";

        /* renamed from: i  reason: collision with root package name */
        private boolean f35574i = false;

        /* renamed from: k  reason: collision with root package name */
        private String f35576k = "";

        /* loaded from: classes2.dex */
        public static final class Builder extends NumberFormat {
            public NumberFormat build() {
                return this;
            }

            public Builder mergeFrom(NumberFormat numberFormat) {
                if (numberFormat.hasPattern()) {
                    setPattern(numberFormat.getPattern());
                }
                if (numberFormat.hasFormat()) {
                    setFormat(numberFormat.getFormat());
                }
                for (int i4 = 0; i4 < numberFormat.leadingDigitsPatternSize(); i4++) {
                    addLeadingDigitsPattern(numberFormat.getLeadingDigitsPattern(i4));
                }
                if (numberFormat.hasNationalPrefixFormattingRule()) {
                    setNationalPrefixFormattingRule(numberFormat.getNationalPrefixFormattingRule());
                }
                if (numberFormat.hasDomesticCarrierCodeFormattingRule()) {
                    setDomesticCarrierCodeFormattingRule(numberFormat.getDomesticCarrierCodeFormattingRule());
                }
                if (numberFormat.hasNationalPrefixOptionalWhenFormatting()) {
                    setNationalPrefixOptionalWhenFormatting(numberFormat.getNationalPrefixOptionalWhenFormatting());
                }
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public NumberFormat addLeadingDigitsPattern(String str) {
            Objects.requireNonNull(str);
            this.f35570e.add(str);
            return this;
        }

        public NumberFormat clearNationalPrefixFormattingRule() {
            this.f35571f = false;
            this.f35572g = "";
            return this;
        }

        public String getDomesticCarrierCodeFormattingRule() {
            return this.f35576k;
        }

        public String getFormat() {
            return this.f35569d;
        }

        public String getLeadingDigitsPattern(int i4) {
            return this.f35570e.get(i4);
        }

        public int getLeadingDigitsPatternCount() {
            return this.f35570e.size();
        }

        public String getNationalPrefixFormattingRule() {
            return this.f35572g;
        }

        public boolean getNationalPrefixOptionalWhenFormatting() {
            return this.f35574i;
        }

        public String getPattern() {
            return this.f35567b;
        }

        public boolean hasDomesticCarrierCodeFormattingRule() {
            return this.f35575j;
        }

        public boolean hasFormat() {
            return this.f35568c;
        }

        public boolean hasNationalPrefixFormattingRule() {
            return this.f35571f;
        }

        public boolean hasNationalPrefixOptionalWhenFormatting() {
            return this.f35573h;
        }

        public boolean hasPattern() {
            return this.f35566a;
        }

        public List<String> leadingDigitPatterns() {
            return this.f35570e;
        }

        @Deprecated
        public int leadingDigitsPatternSize() {
            return getLeadingDigitsPatternCount();
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            setPattern(objectInput.readUTF());
            setFormat(objectInput.readUTF());
            int readInt = objectInput.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                this.f35570e.add(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setNationalPrefixFormattingRule(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setDomesticCarrierCodeFormattingRule(objectInput.readUTF());
            }
            setNationalPrefixOptionalWhenFormatting(objectInput.readBoolean());
        }

        public NumberFormat setDomesticCarrierCodeFormattingRule(String str) {
            this.f35575j = true;
            this.f35576k = str;
            return this;
        }

        public NumberFormat setFormat(String str) {
            this.f35568c = true;
            this.f35569d = str;
            return this;
        }

        public NumberFormat setNationalPrefixFormattingRule(String str) {
            this.f35571f = true;
            this.f35572g = str;
            return this;
        }

        public NumberFormat setNationalPrefixOptionalWhenFormatting(boolean z9) {
            this.f35573h = true;
            this.f35574i = z9;
            return this;
        }

        public NumberFormat setPattern(String str) {
            this.f35566a = true;
            this.f35567b = str;
            return this;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeUTF(this.f35567b);
            objectOutput.writeUTF(this.f35569d);
            int leadingDigitsPatternSize = leadingDigitsPatternSize();
            objectOutput.writeInt(leadingDigitsPatternSize);
            for (int i4 = 0; i4 < leadingDigitsPatternSize; i4++) {
                objectOutput.writeUTF(this.f35570e.get(i4));
            }
            objectOutput.writeBoolean(this.f35571f);
            if (this.f35571f) {
                objectOutput.writeUTF(this.f35572g);
            }
            objectOutput.writeBoolean(this.f35575j);
            if (this.f35575j) {
                objectOutput.writeUTF(this.f35576k);
            }
            objectOutput.writeBoolean(this.f35574i);
        }
    }

    /* loaded from: classes2.dex */
    public static class PhoneMetadata implements Externalizable {
        private static final long F2 = 1;
        private boolean A;
        private boolean C;
        private boolean E;
        private boolean G;
        private boolean I;
        private boolean K;
        private boolean M;
        private boolean O;
        private boolean Q;
        private boolean S;
        private boolean T1;
        private boolean U;
        private boolean W;

        /* renamed from: a  reason: collision with root package name */
        private boolean f35577a;

        /* renamed from: b2  reason: collision with root package name */
        private boolean f35580b2;

        /* renamed from: c  reason: collision with root package name */
        private boolean f35581c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f35583e;

        /* renamed from: g  reason: collision with root package name */
        private boolean f35585g;

        /* renamed from: g1  reason: collision with root package name */
        private boolean f35586g1;

        /* renamed from: i  reason: collision with root package name */
        private boolean f35589i;

        /* renamed from: k  reason: collision with root package name */
        private boolean f35591k;

        /* renamed from: m  reason: collision with root package name */
        private boolean f35593m;

        /* renamed from: o  reason: collision with root package name */
        private boolean f35595o;

        /* renamed from: p2  reason: collision with root package name */
        private boolean f35598p2;

        /* renamed from: q  reason: collision with root package name */
        private boolean f35599q;

        /* renamed from: s  reason: collision with root package name */
        private boolean f35601s;

        /* renamed from: u  reason: collision with root package name */
        private boolean f35603u;

        /* renamed from: w  reason: collision with root package name */
        private boolean f35605w;

        /* renamed from: y  reason: collision with root package name */
        private boolean f35609y;

        /* renamed from: y2  reason: collision with root package name */
        private boolean f35611y2;

        /* renamed from: b  reason: collision with root package name */
        private PhoneNumberDesc f35578b = null;

        /* renamed from: d  reason: collision with root package name */
        private PhoneNumberDesc f35582d = null;

        /* renamed from: f  reason: collision with root package name */
        private PhoneNumberDesc f35584f = null;

        /* renamed from: h  reason: collision with root package name */
        private PhoneNumberDesc f35588h = null;

        /* renamed from: j  reason: collision with root package name */
        private PhoneNumberDesc f35590j = null;

        /* renamed from: l  reason: collision with root package name */
        private PhoneNumberDesc f35592l = null;

        /* renamed from: n  reason: collision with root package name */
        private PhoneNumberDesc f35594n = null;

        /* renamed from: p  reason: collision with root package name */
        private PhoneNumberDesc f35596p = null;

        /* renamed from: r  reason: collision with root package name */
        private PhoneNumberDesc f35600r = null;

        /* renamed from: t  reason: collision with root package name */
        private PhoneNumberDesc f35602t = null;

        /* renamed from: v  reason: collision with root package name */
        private PhoneNumberDesc f35604v = null;

        /* renamed from: x  reason: collision with root package name */
        private PhoneNumberDesc f35606x = null;

        /* renamed from: z  reason: collision with root package name */
        private PhoneNumberDesc f35612z = null;
        private PhoneNumberDesc B = null;
        private PhoneNumberDesc D = null;
        private PhoneNumberDesc F = null;
        private PhoneNumberDesc H = null;
        private String J = "";
        private int L = 0;
        private String N = "";
        private String P = "";
        private String R = "";
        private String T = "";
        private String V = "";

        /* renamed from: b1  reason: collision with root package name */
        private String f35579b1 = "";

        /* renamed from: p1  reason: collision with root package name */
        private boolean f35597p1 = false;

        /* renamed from: x1  reason: collision with root package name */
        private List<NumberFormat> f35607x1 = new ArrayList();

        /* renamed from: y1  reason: collision with root package name */
        private List<NumberFormat> f35610y1 = new ArrayList();
        private boolean V1 = false;

        /* renamed from: g2  reason: collision with root package name */
        private String f35587g2 = "";

        /* renamed from: x2  reason: collision with root package name */
        private boolean f35608x2 = false;
        private boolean E2 = false;

        /* loaded from: classes2.dex */
        public static final class Builder extends PhoneMetadata {
            public PhoneMetadata build() {
                return this;
            }

            @Override // com.google.i18n.phonenumbers.Phonemetadata.PhoneMetadata
            public Builder setId(String str) {
                super.setId(str);
                return this;
            }

            @Override // com.google.i18n.phonenumbers.Phonemetadata.PhoneMetadata
            public Builder setInternationalPrefix(String str) {
                super.setInternationalPrefix(str);
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public PhoneMetadata addIntlNumberFormat(NumberFormat numberFormat) {
            Objects.requireNonNull(numberFormat);
            this.f35610y1.add(numberFormat);
            return this;
        }

        public PhoneMetadata addNumberFormat(NumberFormat numberFormat) {
            Objects.requireNonNull(numberFormat);
            this.f35607x1.add(numberFormat);
            return this;
        }

        public PhoneMetadata clearIntlNumberFormat() {
            this.f35610y1.clear();
            return this;
        }

        public PhoneMetadata clearLeadingZeroPossible() {
            this.f35598p2 = false;
            this.f35608x2 = false;
            return this;
        }

        public PhoneMetadata clearMainCountryForCode() {
            this.T1 = false;
            this.V1 = false;
            return this;
        }

        public PhoneMetadata clearMobileNumberPortableRegion() {
            this.f35611y2 = false;
            this.E2 = false;
            return this;
        }

        public PhoneMetadata clearNationalPrefix() {
            this.Q = false;
            this.R = "";
            return this;
        }

        public PhoneMetadata clearNationalPrefixTransformRule() {
            this.W = false;
            this.f35579b1 = "";
            return this;
        }

        public PhoneMetadata clearPreferredExtnPrefix() {
            this.S = false;
            this.T = "";
            return this;
        }

        public PhoneMetadata clearPreferredInternationalPrefix() {
            this.O = false;
            this.P = "";
            return this;
        }

        public PhoneMetadata clearSameMobileAndFixedLinePattern() {
            this.f35586g1 = false;
            this.f35597p1 = false;
            return this;
        }

        public PhoneNumberDesc getCarrierSpecific() {
            return this.D;
        }

        public int getCountryCode() {
            return this.L;
        }

        public PhoneNumberDesc getEmergency() {
            return this.f35604v;
        }

        public PhoneNumberDesc getFixedLine() {
            return this.f35582d;
        }

        public PhoneNumberDesc getGeneralDesc() {
            return this.f35578b;
        }

        public PhoneNumberDesc getGeneralDescBuilder() {
            if (this.f35578b == null) {
                this.f35578b = new PhoneNumberDesc();
            }
            return this.f35578b;
        }

        public String getId() {
            return this.J;
        }

        public String getInternationalPrefix() {
            return this.N;
        }

        public NumberFormat getIntlNumberFormat(int i4) {
            return this.f35610y1.get(i4);
        }

        public int getIntlNumberFormatCount() {
            return this.f35610y1.size();
        }

        public List<NumberFormat> getIntlNumberFormatList() {
            return this.f35610y1;
        }

        public String getLeadingDigits() {
            return this.f35587g2;
        }

        public boolean getMainCountryForCode() {
            return this.V1;
        }

        public PhoneNumberDesc getMobile() {
            return this.f35584f;
        }

        public boolean getMobileNumberPortableRegion() {
            return this.E2;
        }

        public String getNationalPrefix() {
            return this.R;
        }

        public String getNationalPrefixForParsing() {
            return this.V;
        }

        public String getNationalPrefixTransformRule() {
            return this.f35579b1;
        }

        public PhoneNumberDesc getNoInternationalDialling() {
            return this.H;
        }

        public NumberFormat getNumberFormat(int i4) {
            return this.f35607x1.get(i4);
        }

        public int getNumberFormatCount() {
            return this.f35607x1.size();
        }

        public List<NumberFormat> getNumberFormatList() {
            return this.f35607x1;
        }

        public PhoneNumberDesc getPager() {
            return this.f35600r;
        }

        public PhoneNumberDesc getPersonalNumber() {
            return this.f35594n;
        }

        public String getPreferredExtnPrefix() {
            return this.T;
        }

        public String getPreferredInternationalPrefix() {
            return this.P;
        }

        public PhoneNumberDesc getPremiumRate() {
            return this.f35590j;
        }

        public boolean getSameMobileAndFixedLinePattern() {
            return this.f35597p1;
        }

        public PhoneNumberDesc getSharedCost() {
            return this.f35592l;
        }

        public PhoneNumberDesc getShortCode() {
            return this.f35612z;
        }

        public PhoneNumberDesc getSmsServices() {
            return this.F;
        }

        public PhoneNumberDesc getStandardRate() {
            return this.B;
        }

        public PhoneNumberDesc getTollFree() {
            return this.f35588h;
        }

        public PhoneNumberDesc getUan() {
            return this.f35602t;
        }

        public PhoneNumberDesc getVoicemail() {
            return this.f35606x;
        }

        public PhoneNumberDesc getVoip() {
            return this.f35596p;
        }

        public boolean hasCarrierSpecific() {
            return this.C;
        }

        public boolean hasCountryCode() {
            return this.K;
        }

        public boolean hasEmergency() {
            return this.f35603u;
        }

        public boolean hasFixedLine() {
            return this.f35581c;
        }

        public boolean hasGeneralDesc() {
            return this.f35577a;
        }

        public boolean hasId() {
            return this.I;
        }

        public boolean hasInternationalPrefix() {
            return this.M;
        }

        public boolean hasLeadingDigits() {
            return this.f35580b2;
        }

        public boolean hasLeadingZeroPossible() {
            return this.f35598p2;
        }

        public boolean hasMainCountryForCode() {
            return this.T1;
        }

        public boolean hasMobile() {
            return this.f35583e;
        }

        public boolean hasMobileNumberPortableRegion() {
            return this.f35611y2;
        }

        public boolean hasNationalPrefix() {
            return this.Q;
        }

        public boolean hasNationalPrefixForParsing() {
            return this.U;
        }

        public boolean hasNationalPrefixTransformRule() {
            return this.W;
        }

        public boolean hasNoInternationalDialling() {
            return this.G;
        }

        public boolean hasPager() {
            return this.f35599q;
        }

        public boolean hasPersonalNumber() {
            return this.f35593m;
        }

        public boolean hasPreferredExtnPrefix() {
            return this.S;
        }

        public boolean hasPreferredInternationalPrefix() {
            return this.O;
        }

        public boolean hasPremiumRate() {
            return this.f35589i;
        }

        public boolean hasSameMobileAndFixedLinePattern() {
            return this.f35586g1;
        }

        public boolean hasSharedCost() {
            return this.f35591k;
        }

        public boolean hasShortCode() {
            return this.f35609y;
        }

        public boolean hasSmsServices() {
            return this.E;
        }

        public boolean hasStandardRate() {
            return this.A;
        }

        public boolean hasTollFree() {
            return this.f35585g;
        }

        public boolean hasUan() {
            return this.f35601s;
        }

        public boolean hasVoicemail() {
            return this.f35605w;
        }

        public boolean hasVoip() {
            return this.f35595o;
        }

        @Deprecated
        public int intlNumberFormatSize() {
            return getIntlNumberFormatCount();
        }

        @Deprecated
        public List<NumberFormat> intlNumberFormats() {
            return getIntlNumberFormatList();
        }

        public boolean isLeadingZeroPossible() {
            return this.f35608x2;
        }

        public boolean isMainCountryForCode() {
            return this.V1;
        }

        @Deprecated
        public boolean isMobileNumberPortableRegion() {
            return getMobileNumberPortableRegion();
        }

        @Deprecated
        public int numberFormatSize() {
            return getNumberFormatCount();
        }

        @Deprecated
        public List<NumberFormat> numberFormats() {
            return getNumberFormatList();
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc = new PhoneNumberDesc();
                phoneNumberDesc.readExternal(objectInput);
                setGeneralDesc(phoneNumberDesc);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc2 = new PhoneNumberDesc();
                phoneNumberDesc2.readExternal(objectInput);
                setFixedLine(phoneNumberDesc2);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc3 = new PhoneNumberDesc();
                phoneNumberDesc3.readExternal(objectInput);
                setMobile(phoneNumberDesc3);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc4 = new PhoneNumberDesc();
                phoneNumberDesc4.readExternal(objectInput);
                setTollFree(phoneNumberDesc4);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc5 = new PhoneNumberDesc();
                phoneNumberDesc5.readExternal(objectInput);
                setPremiumRate(phoneNumberDesc5);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc6 = new PhoneNumberDesc();
                phoneNumberDesc6.readExternal(objectInput);
                setSharedCost(phoneNumberDesc6);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc7 = new PhoneNumberDesc();
                phoneNumberDesc7.readExternal(objectInput);
                setPersonalNumber(phoneNumberDesc7);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc8 = new PhoneNumberDesc();
                phoneNumberDesc8.readExternal(objectInput);
                setVoip(phoneNumberDesc8);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc9 = new PhoneNumberDesc();
                phoneNumberDesc9.readExternal(objectInput);
                setPager(phoneNumberDesc9);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc10 = new PhoneNumberDesc();
                phoneNumberDesc10.readExternal(objectInput);
                setUan(phoneNumberDesc10);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc11 = new PhoneNumberDesc();
                phoneNumberDesc11.readExternal(objectInput);
                setEmergency(phoneNumberDesc11);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc12 = new PhoneNumberDesc();
                phoneNumberDesc12.readExternal(objectInput);
                setVoicemail(phoneNumberDesc12);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc13 = new PhoneNumberDesc();
                phoneNumberDesc13.readExternal(objectInput);
                setShortCode(phoneNumberDesc13);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc14 = new PhoneNumberDesc();
                phoneNumberDesc14.readExternal(objectInput);
                setStandardRate(phoneNumberDesc14);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc15 = new PhoneNumberDesc();
                phoneNumberDesc15.readExternal(objectInput);
                setCarrierSpecific(phoneNumberDesc15);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc16 = new PhoneNumberDesc();
                phoneNumberDesc16.readExternal(objectInput);
                setSmsServices(phoneNumberDesc16);
            }
            if (objectInput.readBoolean()) {
                PhoneNumberDesc phoneNumberDesc17 = new PhoneNumberDesc();
                phoneNumberDesc17.readExternal(objectInput);
                setNoInternationalDialling(phoneNumberDesc17);
            }
            setId(objectInput.readUTF());
            setCountryCode(objectInput.readInt());
            setInternationalPrefix(objectInput.readUTF());
            if (objectInput.readBoolean()) {
                setPreferredInternationalPrefix(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setNationalPrefix(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setPreferredExtnPrefix(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setNationalPrefixForParsing(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setNationalPrefixTransformRule(objectInput.readUTF());
            }
            setSameMobileAndFixedLinePattern(objectInput.readBoolean());
            int readInt = objectInput.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                NumberFormat numberFormat = new NumberFormat();
                numberFormat.readExternal(objectInput);
                this.f35607x1.add(numberFormat);
            }
            int readInt2 = objectInput.readInt();
            for (int i10 = 0; i10 < readInt2; i10++) {
                NumberFormat numberFormat2 = new NumberFormat();
                numberFormat2.readExternal(objectInput);
                this.f35610y1.add(numberFormat2);
            }
            setMainCountryForCode(objectInput.readBoolean());
            if (objectInput.readBoolean()) {
                setLeadingDigits(objectInput.readUTF());
            }
            setLeadingZeroPossible(objectInput.readBoolean());
            setMobileNumberPortableRegion(objectInput.readBoolean());
        }

        public PhoneMetadata setCarrierSpecific(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.C = true;
            this.D = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setCountryCode(int i4) {
            this.K = true;
            this.L = i4;
            return this;
        }

        public PhoneMetadata setEmergency(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35603u = true;
            this.f35604v = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setFixedLine(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35581c = true;
            this.f35582d = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setGeneralDesc(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35577a = true;
            this.f35578b = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setId(String str) {
            this.I = true;
            this.J = str;
            return this;
        }

        public PhoneMetadata setInternationalPrefix(String str) {
            this.M = true;
            this.N = str;
            return this;
        }

        public PhoneMetadata setLeadingDigits(String str) {
            this.f35580b2 = true;
            this.f35587g2 = str;
            return this;
        }

        public PhoneMetadata setLeadingZeroPossible(boolean z9) {
            this.f35598p2 = true;
            this.f35608x2 = z9;
            return this;
        }

        public PhoneMetadata setMainCountryForCode(boolean z9) {
            this.T1 = true;
            this.V1 = z9;
            return this;
        }

        public PhoneMetadata setMobile(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35583e = true;
            this.f35584f = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setMobileNumberPortableRegion(boolean z9) {
            this.f35611y2 = true;
            this.E2 = z9;
            return this;
        }

        public PhoneMetadata setNationalPrefix(String str) {
            this.Q = true;
            this.R = str;
            return this;
        }

        public PhoneMetadata setNationalPrefixForParsing(String str) {
            this.U = true;
            this.V = str;
            return this;
        }

        public PhoneMetadata setNationalPrefixTransformRule(String str) {
            this.W = true;
            this.f35579b1 = str;
            return this;
        }

        public PhoneMetadata setNoInternationalDialling(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.G = true;
            this.H = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setPager(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35599q = true;
            this.f35600r = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setPersonalNumber(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35593m = true;
            this.f35594n = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setPreferredExtnPrefix(String str) {
            this.S = true;
            this.T = str;
            return this;
        }

        public PhoneMetadata setPreferredInternationalPrefix(String str) {
            this.O = true;
            this.P = str;
            return this;
        }

        public PhoneMetadata setPremiumRate(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35589i = true;
            this.f35590j = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setSameMobileAndFixedLinePattern(boolean z9) {
            this.f35586g1 = true;
            this.f35597p1 = z9;
            return this;
        }

        public PhoneMetadata setSharedCost(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35591k = true;
            this.f35592l = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setShortCode(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35609y = true;
            this.f35612z = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setSmsServices(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.E = true;
            this.F = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setStandardRate(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.A = true;
            this.B = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setTollFree(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35585g = true;
            this.f35588h = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setUan(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35601s = true;
            this.f35602t = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setVoicemail(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35605w = true;
            this.f35606x = phoneNumberDesc;
            return this;
        }

        public PhoneMetadata setVoip(PhoneNumberDesc phoneNumberDesc) {
            Objects.requireNonNull(phoneNumberDesc);
            this.f35595o = true;
            this.f35596p = phoneNumberDesc;
            return this;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f35577a);
            if (this.f35577a) {
                this.f35578b.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35581c);
            if (this.f35581c) {
                this.f35582d.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35583e);
            if (this.f35583e) {
                this.f35584f.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35585g);
            if (this.f35585g) {
                this.f35588h.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35589i);
            if (this.f35589i) {
                this.f35590j.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35591k);
            if (this.f35591k) {
                this.f35592l.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35593m);
            if (this.f35593m) {
                this.f35594n.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35595o);
            if (this.f35595o) {
                this.f35596p.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35599q);
            if (this.f35599q) {
                this.f35600r.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35601s);
            if (this.f35601s) {
                this.f35602t.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35603u);
            if (this.f35603u) {
                this.f35604v.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35605w);
            if (this.f35605w) {
                this.f35606x.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f35609y);
            if (this.f35609y) {
                this.f35612z.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.A);
            if (this.A) {
                this.B.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.C);
            if (this.C) {
                this.D.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.E);
            if (this.E) {
                this.F.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.G);
            if (this.G) {
                this.H.writeExternal(objectOutput);
            }
            objectOutput.writeUTF(this.J);
            objectOutput.writeInt(this.L);
            objectOutput.writeUTF(this.N);
            objectOutput.writeBoolean(this.O);
            if (this.O) {
                objectOutput.writeUTF(this.P);
            }
            objectOutput.writeBoolean(this.Q);
            if (this.Q) {
                objectOutput.writeUTF(this.R);
            }
            objectOutput.writeBoolean(this.S);
            if (this.S) {
                objectOutput.writeUTF(this.T);
            }
            objectOutput.writeBoolean(this.U);
            if (this.U) {
                objectOutput.writeUTF(this.V);
            }
            objectOutput.writeBoolean(this.W);
            if (this.W) {
                objectOutput.writeUTF(this.f35579b1);
            }
            objectOutput.writeBoolean(this.f35597p1);
            int numberFormatSize = numberFormatSize();
            objectOutput.writeInt(numberFormatSize);
            for (int i4 = 0; i4 < numberFormatSize; i4++) {
                this.f35607x1.get(i4).writeExternal(objectOutput);
            }
            int intlNumberFormatSize = intlNumberFormatSize();
            objectOutput.writeInt(intlNumberFormatSize);
            for (int i10 = 0; i10 < intlNumberFormatSize; i10++) {
                this.f35610y1.get(i10).writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.V1);
            objectOutput.writeBoolean(this.f35580b2);
            if (this.f35580b2) {
                objectOutput.writeUTF(this.f35587g2);
            }
            objectOutput.writeBoolean(this.f35608x2);
            objectOutput.writeBoolean(this.E2);
        }
    }

    /* loaded from: classes2.dex */
    public static class PhoneMetadataCollection implements Externalizable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f35613b = 1;

        /* renamed from: a  reason: collision with root package name */
        private List<PhoneMetadata> f35614a = new ArrayList();

        /* loaded from: classes2.dex */
        public static final class Builder extends PhoneMetadataCollection {
            public PhoneMetadataCollection build() {
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public PhoneMetadataCollection addMetadata(PhoneMetadata phoneMetadata) {
            Objects.requireNonNull(phoneMetadata);
            this.f35614a.add(phoneMetadata);
            return this;
        }

        public PhoneMetadataCollection clear() {
            this.f35614a.clear();
            return this;
        }

        public int getMetadataCount() {
            return this.f35614a.size();
        }

        public List<PhoneMetadata> getMetadataList() {
            return this.f35614a;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            int readInt = objectInput.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                PhoneMetadata phoneMetadata = new PhoneMetadata();
                phoneMetadata.readExternal(objectInput);
                this.f35614a.add(phoneMetadata);
            }
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            int metadataCount = getMetadataCount();
            objectOutput.writeInt(metadataCount);
            for (int i4 = 0; i4 < metadataCount; i4++) {
                this.f35614a.get(i4).writeExternal(objectOutput);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class PhoneNumberDesc implements Externalizable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f35615g = 1;

        /* renamed from: a  reason: collision with root package name */
        private boolean f35616a;

        /* renamed from: e  reason: collision with root package name */
        private boolean f35620e;

        /* renamed from: b  reason: collision with root package name */
        private String f35617b = "";

        /* renamed from: c  reason: collision with root package name */
        private List<Integer> f35618c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private List<Integer> f35619d = new ArrayList();

        /* renamed from: f  reason: collision with root package name */
        private String f35621f = "";

        /* loaded from: classes2.dex */
        public static final class Builder extends PhoneNumberDesc {
            public PhoneNumberDesc build() {
                return this;
            }

            public Builder mergeFrom(PhoneNumberDesc phoneNumberDesc) {
                if (phoneNumberDesc.hasNationalNumberPattern()) {
                    setNationalNumberPattern(phoneNumberDesc.getNationalNumberPattern());
                }
                for (int i4 = 0; i4 < phoneNumberDesc.getPossibleLengthCount(); i4++) {
                    addPossibleLength(phoneNumberDesc.getPossibleLength(i4));
                }
                for (int i10 = 0; i10 < phoneNumberDesc.getPossibleLengthLocalOnlyCount(); i10++) {
                    addPossibleLengthLocalOnly(phoneNumberDesc.getPossibleLengthLocalOnly(i10));
                }
                if (phoneNumberDesc.hasExampleNumber()) {
                    setExampleNumber(phoneNumberDesc.getExampleNumber());
                }
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public PhoneNumberDesc addPossibleLength(int i4) {
            this.f35618c.add(Integer.valueOf(i4));
            return this;
        }

        public PhoneNumberDesc addPossibleLengthLocalOnly(int i4) {
            this.f35619d.add(Integer.valueOf(i4));
            return this;
        }

        public PhoneNumberDesc clearExampleNumber() {
            this.f35620e = false;
            this.f35621f = "";
            return this;
        }

        public PhoneNumberDesc clearNationalNumberPattern() {
            this.f35616a = false;
            this.f35617b = "";
            return this;
        }

        public PhoneNumberDesc clearPossibleLength() {
            this.f35618c.clear();
            return this;
        }

        public PhoneNumberDesc clearPossibleLengthLocalOnly() {
            this.f35619d.clear();
            return this;
        }

        public boolean exactlySameAs(PhoneNumberDesc phoneNumberDesc) {
            return this.f35617b.equals(phoneNumberDesc.f35617b) && this.f35618c.equals(phoneNumberDesc.f35618c) && this.f35619d.equals(phoneNumberDesc.f35619d) && this.f35621f.equals(phoneNumberDesc.f35621f);
        }

        public String getExampleNumber() {
            return this.f35621f;
        }

        public String getNationalNumberPattern() {
            return this.f35617b;
        }

        public int getPossibleLength(int i4) {
            return this.f35618c.get(i4).intValue();
        }

        public int getPossibleLengthCount() {
            return this.f35618c.size();
        }

        public List<Integer> getPossibleLengthList() {
            return this.f35618c;
        }

        public int getPossibleLengthLocalOnly(int i4) {
            return this.f35619d.get(i4).intValue();
        }

        public int getPossibleLengthLocalOnlyCount() {
            return this.f35619d.size();
        }

        public List<Integer> getPossibleLengthLocalOnlyList() {
            return this.f35619d;
        }

        public boolean hasExampleNumber() {
            return this.f35620e;
        }

        public boolean hasNationalNumberPattern() {
            return this.f35616a;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                setNationalNumberPattern(objectInput.readUTF());
            }
            int readInt = objectInput.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                this.f35618c.add(Integer.valueOf(objectInput.readInt()));
            }
            int readInt2 = objectInput.readInt();
            for (int i10 = 0; i10 < readInt2; i10++) {
                this.f35619d.add(Integer.valueOf(objectInput.readInt()));
            }
            if (objectInput.readBoolean()) {
                setExampleNumber(objectInput.readUTF());
            }
        }

        public PhoneNumberDesc setExampleNumber(String str) {
            this.f35620e = true;
            this.f35621f = str;
            return this;
        }

        public PhoneNumberDesc setNationalNumberPattern(String str) {
            this.f35616a = true;
            this.f35617b = str;
            return this;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f35616a);
            if (this.f35616a) {
                objectOutput.writeUTF(this.f35617b);
            }
            int possibleLengthCount = getPossibleLengthCount();
            objectOutput.writeInt(possibleLengthCount);
            for (int i4 = 0; i4 < possibleLengthCount; i4++) {
                objectOutput.writeInt(this.f35618c.get(i4).intValue());
            }
            int possibleLengthLocalOnlyCount = getPossibleLengthLocalOnlyCount();
            objectOutput.writeInt(possibleLengthLocalOnlyCount);
            for (int i10 = 0; i10 < possibleLengthLocalOnlyCount; i10++) {
                objectOutput.writeInt(this.f35619d.get(i10).intValue());
            }
            objectOutput.writeBoolean(this.f35620e);
            if (this.f35620e) {
                objectOutput.writeUTF(this.f35621f);
            }
        }
    }

    private Phonemetadata() {
    }
}

package io.michaelrocks.libphonenumber.android;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class Phonemetadata {

    /* loaded from: classes3.dex */
    public static class NumberFormat implements Externalizable {

        /* renamed from: l  reason: collision with root package name */
        private static final long f70909l = 1;

        /* renamed from: a  reason: collision with root package name */
        private boolean f70910a;

        /* renamed from: c  reason: collision with root package name */
        private boolean f70912c;

        /* renamed from: f  reason: collision with root package name */
        private boolean f70915f;

        /* renamed from: h  reason: collision with root package name */
        private boolean f70917h;

        /* renamed from: j  reason: collision with root package name */
        private boolean f70919j;

        /* renamed from: b  reason: collision with root package name */
        private String f70911b = "";

        /* renamed from: d  reason: collision with root package name */
        private String f70913d = "";

        /* renamed from: e  reason: collision with root package name */
        private List<String> f70914e = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        private String f70916g = "";

        /* renamed from: i  reason: collision with root package name */
        private boolean f70918i = false;

        /* renamed from: k  reason: collision with root package name */
        private String f70920k = "";

        /* loaded from: classes3.dex */
        public static final class Builder extends NumberFormat {
            public NumberFormat build() {
                return this;
            }

            public Builder mergeFrom(NumberFormat other) {
                if (other.hasPattern()) {
                    setPattern(other.getPattern());
                }
                if (other.hasFormat()) {
                    setFormat(other.getFormat());
                }
                for (int i4 = 0; i4 < other.leadingDigitsPatternSize(); i4++) {
                    addLeadingDigitsPattern(other.getLeadingDigitsPattern(i4));
                }
                if (other.hasNationalPrefixFormattingRule()) {
                    setNationalPrefixFormattingRule(other.getNationalPrefixFormattingRule());
                }
                if (other.hasDomesticCarrierCodeFormattingRule()) {
                    setDomesticCarrierCodeFormattingRule(other.getDomesticCarrierCodeFormattingRule());
                }
                if (other.hasNationalPrefixOptionalWhenFormatting()) {
                    setNationalPrefixOptionalWhenFormatting(other.getNationalPrefixOptionalWhenFormatting());
                }
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public NumberFormat addLeadingDigitsPattern(String value) {
            Objects.requireNonNull(value);
            this.f70914e.add(value);
            return this;
        }

        public NumberFormat clearNationalPrefixFormattingRule() {
            this.f70915f = false;
            this.f70916g = "";
            return this;
        }

        public String getDomesticCarrierCodeFormattingRule() {
            return this.f70920k;
        }

        public String getFormat() {
            return this.f70913d;
        }

        public String getLeadingDigitsPattern(int index) {
            return this.f70914e.get(index);
        }

        public String getNationalPrefixFormattingRule() {
            return this.f70916g;
        }

        public boolean getNationalPrefixOptionalWhenFormatting() {
            return this.f70918i;
        }

        public String getPattern() {
            return this.f70911b;
        }

        public boolean hasDomesticCarrierCodeFormattingRule() {
            return this.f70919j;
        }

        public boolean hasFormat() {
            return this.f70912c;
        }

        public boolean hasNationalPrefixFormattingRule() {
            return this.f70915f;
        }

        public boolean hasNationalPrefixOptionalWhenFormatting() {
            return this.f70917h;
        }

        public boolean hasPattern() {
            return this.f70910a;
        }

        public List<String> leadingDigitPatterns() {
            return this.f70914e;
        }

        public int leadingDigitsPatternSize() {
            return this.f70914e.size();
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            setPattern(objectInput.readUTF());
            setFormat(objectInput.readUTF());
            int readInt = objectInput.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                this.f70914e.add(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setNationalPrefixFormattingRule(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                setDomesticCarrierCodeFormattingRule(objectInput.readUTF());
            }
            setNationalPrefixOptionalWhenFormatting(objectInput.readBoolean());
        }

        public NumberFormat setDomesticCarrierCodeFormattingRule(String value) {
            this.f70919j = true;
            this.f70920k = value;
            return this;
        }

        public NumberFormat setFormat(String value) {
            this.f70912c = true;
            this.f70913d = value;
            return this;
        }

        public NumberFormat setNationalPrefixFormattingRule(String value) {
            this.f70915f = true;
            this.f70916g = value;
            return this;
        }

        public NumberFormat setNationalPrefixOptionalWhenFormatting(boolean value) {
            this.f70917h = true;
            this.f70918i = value;
            return this;
        }

        public NumberFormat setPattern(String value) {
            this.f70910a = true;
            this.f70911b = value;
            return this;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeUTF(this.f70911b);
            objectOutput.writeUTF(this.f70913d);
            int leadingDigitsPatternSize = leadingDigitsPatternSize();
            objectOutput.writeInt(leadingDigitsPatternSize);
            for (int i4 = 0; i4 < leadingDigitsPatternSize; i4++) {
                objectOutput.writeUTF(this.f70914e.get(i4));
            }
            objectOutput.writeBoolean(this.f70915f);
            if (this.f70915f) {
                objectOutput.writeUTF(this.f70916g);
            }
            objectOutput.writeBoolean(this.f70919j);
            if (this.f70919j) {
                objectOutput.writeUTF(this.f70920k);
            }
            objectOutput.writeBoolean(this.f70918i);
        }
    }

    /* loaded from: classes3.dex */
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
        private boolean f70921a;

        /* renamed from: b2  reason: collision with root package name */
        private boolean f70924b2;

        /* renamed from: c  reason: collision with root package name */
        private boolean f70925c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f70927e;

        /* renamed from: g  reason: collision with root package name */
        private boolean f70929g;

        /* renamed from: g1  reason: collision with root package name */
        private boolean f70930g1;

        /* renamed from: i  reason: collision with root package name */
        private boolean f70933i;

        /* renamed from: k  reason: collision with root package name */
        private boolean f70935k;

        /* renamed from: m  reason: collision with root package name */
        private boolean f70937m;

        /* renamed from: o  reason: collision with root package name */
        private boolean f70939o;

        /* renamed from: p2  reason: collision with root package name */
        private boolean f70942p2;

        /* renamed from: q  reason: collision with root package name */
        private boolean f70943q;

        /* renamed from: s  reason: collision with root package name */
        private boolean f70945s;

        /* renamed from: u  reason: collision with root package name */
        private boolean f70947u;

        /* renamed from: w  reason: collision with root package name */
        private boolean f70949w;

        /* renamed from: y  reason: collision with root package name */
        private boolean f70953y;

        /* renamed from: y2  reason: collision with root package name */
        private boolean f70955y2;

        /* renamed from: b  reason: collision with root package name */
        private PhoneNumberDesc f70922b = null;

        /* renamed from: d  reason: collision with root package name */
        private PhoneNumberDesc f70926d = null;

        /* renamed from: f  reason: collision with root package name */
        private PhoneNumberDesc f70928f = null;

        /* renamed from: h  reason: collision with root package name */
        private PhoneNumberDesc f70932h = null;

        /* renamed from: j  reason: collision with root package name */
        private PhoneNumberDesc f70934j = null;

        /* renamed from: l  reason: collision with root package name */
        private PhoneNumberDesc f70936l = null;

        /* renamed from: n  reason: collision with root package name */
        private PhoneNumberDesc f70938n = null;

        /* renamed from: p  reason: collision with root package name */
        private PhoneNumberDesc f70940p = null;

        /* renamed from: r  reason: collision with root package name */
        private PhoneNumberDesc f70944r = null;

        /* renamed from: t  reason: collision with root package name */
        private PhoneNumberDesc f70946t = null;

        /* renamed from: v  reason: collision with root package name */
        private PhoneNumberDesc f70948v = null;

        /* renamed from: x  reason: collision with root package name */
        private PhoneNumberDesc f70950x = null;

        /* renamed from: z  reason: collision with root package name */
        private PhoneNumberDesc f70956z = null;
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
        private String f70923b1 = "";

        /* renamed from: p1  reason: collision with root package name */
        private boolean f70941p1 = false;

        /* renamed from: x1  reason: collision with root package name */
        private List<NumberFormat> f70951x1 = new ArrayList();

        /* renamed from: y1  reason: collision with root package name */
        private List<NumberFormat> f70954y1 = new ArrayList();
        private boolean V1 = false;

        /* renamed from: g2  reason: collision with root package name */
        private String f70931g2 = "";

        /* renamed from: x2  reason: collision with root package name */
        private boolean f70952x2 = false;
        private boolean E2 = false;

        /* loaded from: classes3.dex */
        public static final class Builder extends PhoneMetadata {
            public PhoneMetadata build() {
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public PhoneMetadata addIntlNumberFormat(NumberFormat value) {
            Objects.requireNonNull(value);
            this.f70954y1.add(value);
            return this;
        }

        public PhoneMetadata addNumberFormat(NumberFormat value) {
            Objects.requireNonNull(value);
            this.f70951x1.add(value);
            return this;
        }

        public PhoneMetadata clearIntlNumberFormat() {
            this.f70954y1.clear();
            return this;
        }

        public PhoneMetadata clearLeadingZeroPossible() {
            this.f70942p2 = false;
            this.f70952x2 = false;
            return this;
        }

        public PhoneMetadata clearMainCountryForCode() {
            this.T1 = false;
            this.V1 = false;
            return this;
        }

        public PhoneMetadata clearMobileNumberPortableRegion() {
            this.f70955y2 = false;
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
            this.f70923b1 = "";
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
            this.f70930g1 = false;
            this.f70941p1 = false;
            return this;
        }

        public PhoneNumberDesc getCarrierSpecific() {
            return this.D;
        }

        public int getCountryCode() {
            return this.L;
        }

        public PhoneNumberDesc getEmergency() {
            return this.f70948v;
        }

        public PhoneNumberDesc getFixedLine() {
            return this.f70926d;
        }

        public PhoneNumberDesc getGeneralDesc() {
            return this.f70922b;
        }

        public String getId() {
            return this.J;
        }

        public String getInternationalPrefix() {
            return this.N;
        }

        public NumberFormat getIntlNumberFormat(int index) {
            return this.f70954y1.get(index);
        }

        public String getLeadingDigits() {
            return this.f70931g2;
        }

        public boolean getMainCountryForCode() {
            return this.V1;
        }

        public PhoneNumberDesc getMobile() {
            return this.f70928f;
        }

        public String getNationalPrefix() {
            return this.R;
        }

        public String getNationalPrefixForParsing() {
            return this.V;
        }

        public String getNationalPrefixTransformRule() {
            return this.f70923b1;
        }

        public PhoneNumberDesc getNoInternationalDialling() {
            return this.H;
        }

        public NumberFormat getNumberFormat(int index) {
            return this.f70951x1.get(index);
        }

        public PhoneNumberDesc getPager() {
            return this.f70944r;
        }

        public PhoneNumberDesc getPersonalNumber() {
            return this.f70938n;
        }

        public String getPreferredExtnPrefix() {
            return this.T;
        }

        public String getPreferredInternationalPrefix() {
            return this.P;
        }

        public PhoneNumberDesc getPremiumRate() {
            return this.f70934j;
        }

        public boolean getSameMobileAndFixedLinePattern() {
            return this.f70941p1;
        }

        public PhoneNumberDesc getSharedCost() {
            return this.f70936l;
        }

        public PhoneNumberDesc getShortCode() {
            return this.f70956z;
        }

        public PhoneNumberDesc getSmsServices() {
            return this.F;
        }

        public PhoneNumberDesc getStandardRate() {
            return this.B;
        }

        public PhoneNumberDesc getTollFree() {
            return this.f70932h;
        }

        public PhoneNumberDesc getUan() {
            return this.f70946t;
        }

        public PhoneNumberDesc getVoicemail() {
            return this.f70950x;
        }

        public PhoneNumberDesc getVoip() {
            return this.f70940p;
        }

        public boolean hasCarrierSpecific() {
            return this.C;
        }

        public boolean hasCountryCode() {
            return this.K;
        }

        public boolean hasEmergency() {
            return this.f70947u;
        }

        public boolean hasFixedLine() {
            return this.f70925c;
        }

        public boolean hasGeneralDesc() {
            return this.f70921a;
        }

        public boolean hasId() {
            return this.I;
        }

        public boolean hasInternationalPrefix() {
            return this.M;
        }

        public boolean hasLeadingDigits() {
            return this.f70924b2;
        }

        public boolean hasLeadingZeroPossible() {
            return this.f70942p2;
        }

        public boolean hasMainCountryForCode() {
            return this.T1;
        }

        public boolean hasMobile() {
            return this.f70927e;
        }

        public boolean hasMobileNumberPortableRegion() {
            return this.f70955y2;
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
            return this.f70943q;
        }

        public boolean hasPersonalNumber() {
            return this.f70937m;
        }

        public boolean hasPreferredExtnPrefix() {
            return this.S;
        }

        public boolean hasPreferredInternationalPrefix() {
            return this.O;
        }

        public boolean hasPremiumRate() {
            return this.f70933i;
        }

        public boolean hasSameMobileAndFixedLinePattern() {
            return this.f70930g1;
        }

        public boolean hasSharedCost() {
            return this.f70935k;
        }

        public boolean hasShortCode() {
            return this.f70953y;
        }

        public boolean hasSmsServices() {
            return this.E;
        }

        public boolean hasStandardRate() {
            return this.A;
        }

        public boolean hasTollFree() {
            return this.f70929g;
        }

        public boolean hasUan() {
            return this.f70945s;
        }

        public boolean hasVoicemail() {
            return this.f70949w;
        }

        public boolean hasVoip() {
            return this.f70939o;
        }

        public int intlNumberFormatSize() {
            return this.f70954y1.size();
        }

        public List<NumberFormat> intlNumberFormats() {
            return this.f70954y1;
        }

        public boolean isLeadingZeroPossible() {
            return this.f70952x2;
        }

        public boolean isMainCountryForCode() {
            return this.V1;
        }

        public boolean isMobileNumberPortableRegion() {
            return this.E2;
        }

        public int numberFormatSize() {
            return this.f70951x1.size();
        }

        public List<NumberFormat> numberFormats() {
            return this.f70951x1;
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
                this.f70951x1.add(numberFormat);
            }
            int readInt2 = objectInput.readInt();
            for (int i10 = 0; i10 < readInt2; i10++) {
                NumberFormat numberFormat2 = new NumberFormat();
                numberFormat2.readExternal(objectInput);
                this.f70954y1.add(numberFormat2);
            }
            setMainCountryForCode(objectInput.readBoolean());
            if (objectInput.readBoolean()) {
                setLeadingDigits(objectInput.readUTF());
            }
            setLeadingZeroPossible(objectInput.readBoolean());
            setMobileNumberPortableRegion(objectInput.readBoolean());
        }

        public PhoneMetadata setCarrierSpecific(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.C = true;
            this.D = value;
            return this;
        }

        public PhoneMetadata setCountryCode(int value) {
            this.K = true;
            this.L = value;
            return this;
        }

        public PhoneMetadata setEmergency(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70947u = true;
            this.f70948v = value;
            return this;
        }

        public PhoneMetadata setFixedLine(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70925c = true;
            this.f70926d = value;
            return this;
        }

        public PhoneMetadata setGeneralDesc(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70921a = true;
            this.f70922b = value;
            return this;
        }

        public PhoneMetadata setId(String value) {
            this.I = true;
            this.J = value;
            return this;
        }

        public PhoneMetadata setInternationalPrefix(String value) {
            this.M = true;
            this.N = value;
            return this;
        }

        public PhoneMetadata setLeadingDigits(String value) {
            this.f70924b2 = true;
            this.f70931g2 = value;
            return this;
        }

        public PhoneMetadata setLeadingZeroPossible(boolean value) {
            this.f70942p2 = true;
            this.f70952x2 = value;
            return this;
        }

        public PhoneMetadata setMainCountryForCode(boolean value) {
            this.T1 = true;
            this.V1 = value;
            return this;
        }

        public PhoneMetadata setMobile(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70927e = true;
            this.f70928f = value;
            return this;
        }

        public PhoneMetadata setMobileNumberPortableRegion(boolean value) {
            this.f70955y2 = true;
            this.E2 = value;
            return this;
        }

        public PhoneMetadata setNationalPrefix(String value) {
            this.Q = true;
            this.R = value;
            return this;
        }

        public PhoneMetadata setNationalPrefixForParsing(String value) {
            this.U = true;
            this.V = value;
            return this;
        }

        public PhoneMetadata setNationalPrefixTransformRule(String value) {
            this.W = true;
            this.f70923b1 = value;
            return this;
        }

        public PhoneMetadata setNoInternationalDialling(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.G = true;
            this.H = value;
            return this;
        }

        public PhoneMetadata setPager(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70943q = true;
            this.f70944r = value;
            return this;
        }

        public PhoneMetadata setPersonalNumber(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70937m = true;
            this.f70938n = value;
            return this;
        }

        public PhoneMetadata setPreferredExtnPrefix(String value) {
            this.S = true;
            this.T = value;
            return this;
        }

        public PhoneMetadata setPreferredInternationalPrefix(String value) {
            this.O = true;
            this.P = value;
            return this;
        }

        public PhoneMetadata setPremiumRate(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70933i = true;
            this.f70934j = value;
            return this;
        }

        public PhoneMetadata setSameMobileAndFixedLinePattern(boolean value) {
            this.f70930g1 = true;
            this.f70941p1 = value;
            return this;
        }

        public PhoneMetadata setSharedCost(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70935k = true;
            this.f70936l = value;
            return this;
        }

        public PhoneMetadata setShortCode(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70953y = true;
            this.f70956z = value;
            return this;
        }

        public PhoneMetadata setSmsServices(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.E = true;
            this.F = value;
            return this;
        }

        public PhoneMetadata setStandardRate(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.A = true;
            this.B = value;
            return this;
        }

        public PhoneMetadata setTollFree(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70929g = true;
            this.f70932h = value;
            return this;
        }

        public PhoneMetadata setUan(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70945s = true;
            this.f70946t = value;
            return this;
        }

        public PhoneMetadata setVoicemail(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70949w = true;
            this.f70950x = value;
            return this;
        }

        public PhoneMetadata setVoip(PhoneNumberDesc value) {
            Objects.requireNonNull(value);
            this.f70939o = true;
            this.f70940p = value;
            return this;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f70921a);
            if (this.f70921a) {
                this.f70922b.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70925c);
            if (this.f70925c) {
                this.f70926d.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70927e);
            if (this.f70927e) {
                this.f70928f.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70929g);
            if (this.f70929g) {
                this.f70932h.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70933i);
            if (this.f70933i) {
                this.f70934j.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70935k);
            if (this.f70935k) {
                this.f70936l.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70937m);
            if (this.f70937m) {
                this.f70938n.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70939o);
            if (this.f70939o) {
                this.f70940p.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70943q);
            if (this.f70943q) {
                this.f70944r.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70945s);
            if (this.f70945s) {
                this.f70946t.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70947u);
            if (this.f70947u) {
                this.f70948v.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70949w);
            if (this.f70949w) {
                this.f70950x.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f70953y);
            if (this.f70953y) {
                this.f70956z.writeExternal(objectOutput);
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
                objectOutput.writeUTF(this.f70923b1);
            }
            objectOutput.writeBoolean(this.f70941p1);
            int numberFormatSize = numberFormatSize();
            objectOutput.writeInt(numberFormatSize);
            for (int i4 = 0; i4 < numberFormatSize; i4++) {
                this.f70951x1.get(i4).writeExternal(objectOutput);
            }
            int intlNumberFormatSize = intlNumberFormatSize();
            objectOutput.writeInt(intlNumberFormatSize);
            for (int i10 = 0; i10 < intlNumberFormatSize; i10++) {
                this.f70954y1.get(i10).writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.V1);
            objectOutput.writeBoolean(this.f70924b2);
            if (this.f70924b2) {
                objectOutput.writeUTF(this.f70931g2);
            }
            objectOutput.writeBoolean(this.f70952x2);
            objectOutput.writeBoolean(this.E2);
        }
    }

    /* loaded from: classes3.dex */
    public static class PhoneMetadataCollection implements Externalizable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f70957b = 1;

        /* renamed from: a  reason: collision with root package name */
        private List<PhoneMetadata> f70958a = new ArrayList();

        /* loaded from: classes3.dex */
        public static final class Builder extends PhoneMetadataCollection {
            public PhoneMetadataCollection build() {
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public PhoneMetadataCollection addMetadata(PhoneMetadata value) {
            Objects.requireNonNull(value);
            this.f70958a.add(value);
            return this;
        }

        public PhoneMetadataCollection clear() {
            this.f70958a.clear();
            return this;
        }

        public int getMetadataCount() {
            return this.f70958a.size();
        }

        public List<PhoneMetadata> getMetadataList() {
            return this.f70958a;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            int readInt = objectInput.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                PhoneMetadata phoneMetadata = new PhoneMetadata();
                phoneMetadata.readExternal(objectInput);
                this.f70958a.add(phoneMetadata);
            }
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            int metadataCount = getMetadataCount();
            objectOutput.writeInt(metadataCount);
            for (int i4 = 0; i4 < metadataCount; i4++) {
                this.f70958a.get(i4).writeExternal(objectOutput);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class PhoneNumberDesc implements Externalizable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f70959g = 1;

        /* renamed from: a  reason: collision with root package name */
        private boolean f70960a;

        /* renamed from: e  reason: collision with root package name */
        private boolean f70964e;

        /* renamed from: b  reason: collision with root package name */
        private String f70961b = "";

        /* renamed from: c  reason: collision with root package name */
        private List<Integer> f70962c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private List<Integer> f70963d = new ArrayList();

        /* renamed from: f  reason: collision with root package name */
        private String f70965f = "";

        /* loaded from: classes3.dex */
        public static final class Builder extends PhoneNumberDesc {
            public PhoneNumberDesc build() {
                return this;
            }

            public Builder mergeFrom(PhoneNumberDesc other) {
                if (other.hasNationalNumberPattern()) {
                    setNationalNumberPattern(other.getNationalNumberPattern());
                }
                for (int i4 = 0; i4 < other.getPossibleLengthCount(); i4++) {
                    addPossibleLength(other.getPossibleLength(i4));
                }
                for (int i10 = 0; i10 < other.getPossibleLengthLocalOnlyCount(); i10++) {
                    addPossibleLengthLocalOnly(other.getPossibleLengthLocalOnly(i10));
                }
                if (other.hasExampleNumber()) {
                    setExampleNumber(other.getExampleNumber());
                }
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public PhoneNumberDesc addPossibleLength(int value) {
            this.f70962c.add(Integer.valueOf(value));
            return this;
        }

        public PhoneNumberDesc addPossibleLengthLocalOnly(int value) {
            this.f70963d.add(Integer.valueOf(value));
            return this;
        }

        public PhoneNumberDesc clearExampleNumber() {
            this.f70964e = false;
            this.f70965f = "";
            return this;
        }

        public PhoneNumberDesc clearNationalNumberPattern() {
            this.f70960a = false;
            this.f70961b = "";
            return this;
        }

        public PhoneNumberDesc clearPossibleLength() {
            this.f70962c.clear();
            return this;
        }

        public PhoneNumberDesc clearPossibleLengthLocalOnly() {
            this.f70963d.clear();
            return this;
        }

        public boolean exactlySameAs(PhoneNumberDesc other) {
            return this.f70961b.equals(other.f70961b) && this.f70962c.equals(other.f70962c) && this.f70963d.equals(other.f70963d) && this.f70965f.equals(other.f70965f);
        }

        public String getExampleNumber() {
            return this.f70965f;
        }

        public String getNationalNumberPattern() {
            return this.f70961b;
        }

        public int getPossibleLength(int index) {
            return this.f70962c.get(index).intValue();
        }

        public int getPossibleLengthCount() {
            return this.f70962c.size();
        }

        public List<Integer> getPossibleLengthList() {
            return this.f70962c;
        }

        public int getPossibleLengthLocalOnly(int index) {
            return this.f70963d.get(index).intValue();
        }

        public int getPossibleLengthLocalOnlyCount() {
            return this.f70963d.size();
        }

        public List<Integer> getPossibleLengthLocalOnlyList() {
            return this.f70963d;
        }

        public boolean hasExampleNumber() {
            return this.f70964e;
        }

        public boolean hasNationalNumberPattern() {
            return this.f70960a;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                setNationalNumberPattern(objectInput.readUTF());
            }
            int readInt = objectInput.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                this.f70962c.add(Integer.valueOf(objectInput.readInt()));
            }
            int readInt2 = objectInput.readInt();
            for (int i10 = 0; i10 < readInt2; i10++) {
                this.f70963d.add(Integer.valueOf(objectInput.readInt()));
            }
            if (objectInput.readBoolean()) {
                setExampleNumber(objectInput.readUTF());
            }
        }

        public PhoneNumberDesc setExampleNumber(String value) {
            this.f70964e = true;
            this.f70965f = value;
            return this;
        }

        public PhoneNumberDesc setNationalNumberPattern(String value) {
            this.f70960a = true;
            this.f70961b = value;
            return this;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f70960a);
            if (this.f70960a) {
                objectOutput.writeUTF(this.f70961b);
            }
            int possibleLengthCount = getPossibleLengthCount();
            objectOutput.writeInt(possibleLengthCount);
            for (int i4 = 0; i4 < possibleLengthCount; i4++) {
                objectOutput.writeInt(this.f70962c.get(i4).intValue());
            }
            int possibleLengthLocalOnlyCount = getPossibleLengthLocalOnlyCount();
            objectOutput.writeInt(possibleLengthLocalOnlyCount);
            for (int i10 = 0; i10 < possibleLengthLocalOnlyCount; i10++) {
                objectOutput.writeInt(this.f70963d.get(i10).intValue());
            }
            objectOutput.writeBoolean(this.f70964e);
            if (this.f70964e) {
                objectOutput.writeUTF(this.f70965f);
            }
        }
    }

    private Phonemetadata() {
    }
}

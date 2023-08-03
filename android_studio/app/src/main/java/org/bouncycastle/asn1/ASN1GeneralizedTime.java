package org.bouncycastle.asn1;

import com.im.freechat.utils.e;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class ASN1GeneralizedTime extends ASN1Primitive {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1GeneralizedTime.class, 24) { // from class: org.bouncycastle.asn1.ASN1GeneralizedTime.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1GeneralizedTime.createPrimitive(dEROctetString.getOctets());
        }
    };
    final byte[] contents;

    public ASN1GeneralizedTime(String str) {
        this.contents = Strings.toByteArray(str);
        try {
            getDate();
        } catch (ParseException e4) {
            throw new IllegalArgumentException("invalid date string: " + e4.getMessage());
        }
    }

    public ASN1GeneralizedTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", DateUtil.EN_Locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = Strings.toByteArray(simpleDateFormat.format(date));
    }

    public ASN1GeneralizedTime(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = Strings.toByteArray(simpleDateFormat.format(date));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1GeneralizedTime(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("GeneralizedTime string too short");
        }
        this.contents = bArr;
        if (!isDigit(0) || !isDigit(1) || !isDigit(2) || !isDigit(3)) {
            throw new IllegalArgumentException("illegal characters in GeneralizedTime string");
        }
    }

    private SimpleDateFormat calculateGMTDateFormat() {
        SimpleDateFormat simpleDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : hasSeconds() ? new SimpleDateFormat("yyyyMMddHHmmssz") : hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat;
    }

    private String calculateGMTOffset(String str) {
        String str2;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str2 = "-";
        } else {
            str2 = "+";
        }
        int i4 = rawOffset / 3600000;
        int i10 = (rawOffset - (((i4 * 60) * 60) * 1000)) / e.f43748a;
        try {
            if (timeZone.useDaylightTime()) {
                if (hasFractionalSeconds()) {
                    str = pruneFractionalSeconds(str);
                }
                SimpleDateFormat calculateGMTDateFormat = calculateGMTDateFormat();
                if (timeZone.inDaylightTime(calculateGMTDateFormat.parse(str + "GMT" + str2 + convert(i4) + ":" + convert(i10)))) {
                    i4 += str2.equals("+") ? 1 : -1;
                }
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str2 + convert(i4) + ":" + convert(i10);
    }

    private String convert(int i4) {
        if (i4 < 10) {
            return "0" + i4;
        }
        return Integer.toString(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1GeneralizedTime createPrimitive(byte[] bArr) {
        return new ASN1GeneralizedTime(bArr);
    }

    public static ASN1GeneralizedTime getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1GeneralizedTime)) {
            return (ASN1GeneralizedTime) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1GeneralizedTime) {
                return (ASN1GeneralizedTime) aSN1Primitive;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (ASN1GeneralizedTime) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static ASN1GeneralizedTime getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1GeneralizedTime) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    private boolean isDigit(int i4) {
        byte[] bArr = this.contents;
        return bArr.length > i4 && bArr[i4] >= 48 && bArr[i4] <= 57;
    }

    private String pruneFractionalSeconds(String str) {
        String str2;
        StringBuilder sb;
        char charAt;
        String substring = str.substring(14);
        int i4 = 1;
        while (i4 < substring.length() && '0' <= (charAt = substring.charAt(i4)) && charAt <= '9') {
            i4++;
        }
        int i10 = i4 - 1;
        if (i10 > 3) {
            str2 = substring.substring(0, 4) + substring.substring(i4);
            sb = new StringBuilder();
        } else if (i10 == 1) {
            str2 = substring.substring(0, i4) + "00" + substring.substring(i4);
            sb = new StringBuilder();
        } else if (i10 != 2) {
            return str;
        } else {
            str2 = substring.substring(0, i4) + "0" + substring.substring(i4);
            sb = new StringBuilder();
        }
        sb.append(str.substring(0, 14));
        sb.append(str2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1GeneralizedTime) {
            return Arrays.areEqual(this.contents, ((ASN1GeneralizedTime) aSN1Primitive).contents);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 24, this.contents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, this.contents.length);
    }

    public Date getDate() throws ParseException {
        SimpleDateFormat calculateGMTDateFormat;
        String fromByteArray = Strings.fromByteArray(this.contents);
        if (fromByteArray.endsWith("Z")) {
            calculateGMTDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'") : hasSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss'Z'") : hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmm'Z'") : new SimpleDateFormat("yyyyMMddHH'Z'");
            calculateGMTDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else if (fromByteArray.indexOf(45) > 0 || fromByteArray.indexOf(43) > 0) {
            fromByteArray = getTime();
            calculateGMTDateFormat = calculateGMTDateFormat();
        } else {
            calculateGMTDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : hasSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss") : hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
            calculateGMTDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (hasFractionalSeconds()) {
            fromByteArray = pruneFractionalSeconds(fromByteArray);
        }
        return DateUtil.epochAdjust(calculateGMTDateFormat.parse(fromByteArray));
    }

    public String getTime() {
        int length;
        String fromByteArray = Strings.fromByteArray(this.contents);
        if (fromByteArray.charAt(fromByteArray.length() - 1) == 'Z') {
            return fromByteArray.substring(0, fromByteArray.length() - 1) + "GMT+00:00";
        }
        int length2 = fromByteArray.length() - 6;
        char charAt = fromByteArray.charAt(length2);
        if ((charAt == '-' || charAt == '+') && fromByteArray.indexOf("GMT") == length2 - 3) {
            return fromByteArray;
        }
        int length3 = fromByteArray.length() - 5;
        char charAt2 = fromByteArray.charAt(length3);
        if (charAt2 == '-' || charAt2 == '+') {
            StringBuilder sb = new StringBuilder();
            sb.append(fromByteArray.substring(0, length3));
            sb.append("GMT");
            int i4 = length3 + 3;
            sb.append(fromByteArray.substring(length3, i4));
            sb.append(":");
            sb.append(fromByteArray.substring(i4));
            return sb.toString();
        }
        char charAt3 = fromByteArray.charAt(fromByteArray.length() - 3);
        if (charAt3 != '-' && charAt3 != '+') {
            return fromByteArray + calculateGMTOffset(fromByteArray);
        }
        return fromByteArray.substring(0, length) + "GMT" + fromByteArray.substring(length) + ":00";
    }

    public String getTimeString() {
        return Strings.fromByteArray(this.contents);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasFractionalSeconds() {
        int i4 = 0;
        while (true) {
            byte[] bArr = this.contents;
            if (i4 == bArr.length) {
                return false;
            }
            if (bArr[i4] == 46 && i4 == 14) {
                return true;
            }
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasMinutes() {
        return isDigit(10) && isDigit(11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasSeconds() {
        return isDigit(12) && isDigit(13);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERGeneralizedTime(this.contents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DERGeneralizedTime(this.contents);
    }
}

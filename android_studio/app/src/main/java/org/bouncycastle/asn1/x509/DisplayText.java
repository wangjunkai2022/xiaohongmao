package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1BMPString;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UTF8String;
import org.bouncycastle.asn1.ASN1VisibleString;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.DERVisibleString;

/* loaded from: classes4.dex */
public class DisplayText extends ASN1Object implements ASN1Choice {
    public static final int CONTENT_TYPE_BMPSTRING = 1;
    public static final int CONTENT_TYPE_IA5STRING = 0;
    public static final int CONTENT_TYPE_UTF8STRING = 2;
    public static final int CONTENT_TYPE_VISIBLESTRING = 3;
    public static final int DISPLAY_TEXT_MAXIMUM_SIZE = 200;
    int contentType;
    ASN1String contents;

    public DisplayText(int i4, String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.contentType = i4;
        this.contents = i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? new DERUTF8String(str) : new DERVisibleString(str) : new DERUTF8String(str) : new DERBMPString(str) : new DERIA5String(str);
    }

    public DisplayText(String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.contentType = 2;
        this.contents = new DERUTF8String(str);
    }

    private DisplayText(ASN1String aSN1String) {
        int i4;
        this.contents = aSN1String;
        if (aSN1String instanceof ASN1UTF8String) {
            i4 = 2;
        } else if (aSN1String instanceof ASN1BMPString) {
            i4 = 1;
        } else if (aSN1String instanceof ASN1IA5String) {
            i4 = 0;
        } else if (!(aSN1String instanceof ASN1VisibleString)) {
            throw new IllegalArgumentException("unknown STRING type in DisplayText");
        } else {
            i4 = 3;
        }
        this.contentType = i4;
    }

    public static DisplayText getInstance(Object obj) {
        if (obj instanceof ASN1String) {
            return new DisplayText((ASN1String) obj);
        }
        if (obj == null || (obj instanceof DisplayText)) {
            return (DisplayText) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DisplayText getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public String getString() {
        return this.contents.getString();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return (ASN1Primitive) this.contents;
    }
}

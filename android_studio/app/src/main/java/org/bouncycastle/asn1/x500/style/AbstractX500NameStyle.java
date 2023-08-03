package org.bouncycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.x500.AttributeTypeAndValue;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.X500NameStyle;

/* loaded from: classes4.dex */
public abstract class AbstractX500NameStyle implements X500NameStyle {
    private int calcHashCode(ASN1Encodable aSN1Encodable) {
        return IETFUtils.canonicalString(aSN1Encodable).hashCode();
    }

    public static Hashtable copyHashTable(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable2.put(nextElement, hashtable.get(nextElement));
        }
        return hashtable2;
    }

    private boolean foundMatch(boolean z9, RDN rdn, RDN[] rdnArr) {
        if (z9) {
            for (int length = rdnArr.length - 1; length >= 0; length--) {
                if (rdnArr[length] != null && rdnAreEqual(rdn, rdnArr[length])) {
                    rdnArr[length] = null;
                    return true;
                }
            }
        } else {
            for (int i4 = 0; i4 != rdnArr.length; i4++) {
                if (rdnArr[i4] != null && rdnAreEqual(rdn, rdnArr[i4])) {
                    rdnArr[i4] = null;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public boolean areEqual(X500Name x500Name, X500Name x500Name2) {
        RDN[] rDNs = x500Name.getRDNs();
        RDN[] rDNs2 = x500Name2.getRDNs();
        if (rDNs.length != rDNs2.length) {
            return false;
        }
        boolean z9 = (rDNs[0].getFirst() == null || rDNs2[0].getFirst() == null) ? false : !rDNs[0].getFirst().getType().equals((ASN1Primitive) rDNs2[0].getFirst().getType());
        for (int i4 = 0; i4 != rDNs.length; i4++) {
            if (!foundMatch(z9, rDNs[i4], rDNs2)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public int calculateHashCode(X500Name x500Name) {
        RDN[] rDNs = x500Name.getRDNs();
        int i4 = 0;
        for (int i10 = 0; i10 != rDNs.length; i10++) {
            if (rDNs[i10].isMultiValued()) {
                AttributeTypeAndValue[] typesAndValues = rDNs[i10].getTypesAndValues();
                for (int i11 = 0; i11 != typesAndValues.length; i11++) {
                    i4 = (i4 ^ typesAndValues[i11].getType().hashCode()) ^ calcHashCode(typesAndValues[i11].getValue());
                }
            } else {
                i4 = (i4 ^ rDNs[i10].getFirst().getType().hashCode()) ^ calcHashCode(rDNs[i10].getFirst().getValue());
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Encodable encodeStringValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        return new DERUTF8String(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean rdnAreEqual(RDN rdn, RDN rdn2) {
        return IETFUtils.rDNAreEqual(rdn, rdn2);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public ASN1Encodable stringToValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            if (str.length() != 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            return encodeStringValue(aSN1ObjectIdentifier, str);
        }
        try {
            return IETFUtils.valueFromHexString(str, 1);
        } catch (IOException unused) {
            throw new ASN1ParsingException("can't recode value for oid " + aSN1ObjectIdentifier.getId());
        }
    }
}

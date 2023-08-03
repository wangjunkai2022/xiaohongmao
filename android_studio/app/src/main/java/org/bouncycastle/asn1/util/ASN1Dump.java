package org.bouncycastle.asn1.util;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1ApplicationSpecific;
import org.bouncycastle.asn1.ASN1BMPString;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1Boolean;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1External;
import org.bouncycastle.asn1.ASN1GeneralizedTime;
import org.bouncycastle.asn1.ASN1GraphicString;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1NumericString;
import org.bouncycastle.asn1.ASN1ObjectDescriptor;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1PrintableString;
import org.bouncycastle.asn1.ASN1RelativeOID;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1T61String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UTCTime;
import org.bouncycastle.asn1.ASN1UTF8String;
import org.bouncycastle.asn1.ASN1Util;
import org.bouncycastle.asn1.ASN1VideotexString;
import org.bouncycastle.asn1.ASN1VisibleString;
import org.bouncycastle.asn1.BEROctetString;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DLBitString;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes4.dex */
public class ASN1Dump {
    private static final int SAMPLE_SIZE = 32;
    private static final String TAB = "    ";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void _dumpAsString(String str, boolean z9, ASN1Primitive aSN1Primitive, StringBuffer stringBuffer) {
        StringBuilder sb;
        String string;
        BigInteger value;
        StringBuilder sb2;
        String str2;
        String dumpBinaryDataAsString;
        String id;
        StringBuilder sb3;
        int length;
        ASN1Primitive aSN1Primitive2;
        String lineSeparator = Strings.lineSeparator();
        if (!(aSN1Primitive instanceof ASN1Null)) {
            int i4 = 0;
            if (aSN1Primitive instanceof ASN1Sequence) {
                stringBuffer.append(str);
                stringBuffer.append(aSN1Primitive instanceof BERSequence ? "BER Sequence" : aSN1Primitive instanceof DERSequence ? "DER Sequence" : "Sequence");
                stringBuffer.append(lineSeparator);
                ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
                String str3 = str + TAB;
                int size = aSN1Sequence.size();
                while (i4 < size) {
                    _dumpAsString(str3, z9, aSN1Sequence.getObjectAt(i4).toASN1Primitive(), stringBuffer);
                    i4++;
                }
                return;
            } else if (aSN1Primitive instanceof ASN1Set) {
                stringBuffer.append(str);
                stringBuffer.append(aSN1Primitive instanceof BERSet ? "BER Set" : aSN1Primitive instanceof DERSet ? "DER Set" : "Set");
                stringBuffer.append(lineSeparator);
                ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
                String str4 = str + TAB;
                int size2 = aSN1Set.size();
                while (i4 < size2) {
                    _dumpAsString(str4, z9, aSN1Set.getObjectAt(i4).toASN1Primitive(), stringBuffer);
                    i4++;
                }
                return;
            } else {
                if (aSN1Primitive instanceof ASN1ApplicationSpecific) {
                    aSN1Primitive2 = ((ASN1ApplicationSpecific) aSN1Primitive).getTaggedObject();
                } else if (aSN1Primitive instanceof ASN1TaggedObject) {
                    stringBuffer.append(str);
                    stringBuffer.append(aSN1Primitive instanceof BERTaggedObject ? "BER Tagged " : aSN1Primitive instanceof DERTaggedObject ? "DER Tagged " : "Tagged ");
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
                    stringBuffer.append(ASN1Util.getTagText(aSN1TaggedObject));
                    if (!aSN1TaggedObject.isExplicit()) {
                        stringBuffer.append(" IMPLICIT ");
                    }
                    stringBuffer.append(lineSeparator);
                    str = str + TAB;
                    aSN1Primitive2 = aSN1TaggedObject.getBaseObject().toASN1Primitive();
                } else if (!(aSN1Primitive instanceof ASN1OctetString)) {
                    if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append("ObjectIdentifier(");
                        id = ((ASN1ObjectIdentifier) aSN1Primitive).getId();
                    } else if (!(aSN1Primitive instanceof ASN1RelativeOID)) {
                        if (aSN1Primitive instanceof ASN1Boolean) {
                            sb = new StringBuilder();
                            sb.append(str);
                            sb.append("Boolean(");
                            sb.append(((ASN1Boolean) aSN1Primitive).isTrue());
                        } else {
                            if (aSN1Primitive instanceof ASN1Integer) {
                                sb = new StringBuilder();
                                sb.append(str);
                                sb.append("Integer(");
                                value = ((ASN1Integer) aSN1Primitive).getValue();
                            } else if (!(aSN1Primitive instanceof ASN1BitString)) {
                                if (aSN1Primitive instanceof ASN1IA5String) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("IA5String(");
                                    string = ((ASN1IA5String) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1UTF8String) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("UTF8String(");
                                    string = ((ASN1UTF8String) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1NumericString) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("NumericString(");
                                    string = ((ASN1NumericString) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1PrintableString) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("PrintableString(");
                                    string = ((ASN1PrintableString) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1VisibleString) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("VisibleString(");
                                    string = ((ASN1VisibleString) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1BMPString) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("BMPString(");
                                    string = ((ASN1BMPString) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1T61String) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("T61String(");
                                    string = ((ASN1T61String) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1GraphicString) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("GraphicString(");
                                    string = ((ASN1GraphicString) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1VideotexString) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("VideotexString(");
                                    string = ((ASN1VideotexString) aSN1Primitive).getString();
                                } else if (aSN1Primitive instanceof ASN1UTCTime) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("UTCTime(");
                                    string = ((ASN1UTCTime) aSN1Primitive).getTime();
                                } else if (aSN1Primitive instanceof ASN1GeneralizedTime) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("GeneralizedTime(");
                                    string = ((ASN1GeneralizedTime) aSN1Primitive).getTime();
                                } else if (aSN1Primitive instanceof ASN1Enumerated) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("DER Enumerated(");
                                    value = ((ASN1Enumerated) aSN1Primitive).getValue();
                                } else if (!(aSN1Primitive instanceof ASN1ObjectDescriptor)) {
                                    if (!(aSN1Primitive instanceof ASN1External)) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append(aSN1Primitive.toString());
                                        sb.append(lineSeparator);
                                        dumpBinaryDataAsString = sb.toString();
                                        stringBuffer.append(dumpBinaryDataAsString);
                                        return;
                                    }
                                    ASN1External aSN1External = (ASN1External) aSN1Primitive;
                                    stringBuffer.append(str + "External " + lineSeparator);
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(str);
                                    sb4.append(TAB);
                                    String sb5 = sb4.toString();
                                    if (aSN1External.getDirectReference() != null) {
                                        stringBuffer.append(sb5 + "Direct Reference: " + aSN1External.getDirectReference().getId() + lineSeparator);
                                    }
                                    if (aSN1External.getIndirectReference() != null) {
                                        stringBuffer.append(sb5 + "Indirect Reference: " + aSN1External.getIndirectReference().toString() + lineSeparator);
                                    }
                                    if (aSN1External.getDataValueDescriptor() != null) {
                                        _dumpAsString(sb5, z9, aSN1External.getDataValueDescriptor(), stringBuffer);
                                    }
                                    stringBuffer.append(sb5 + "Encoding: " + aSN1External.getEncoding() + lineSeparator);
                                    _dumpAsString(sb5, z9, aSN1External.getExternalContent(), stringBuffer);
                                    return;
                                } else {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("ObjectDescriptor(");
                                    string = ((ASN1ObjectDescriptor) aSN1Primitive).getBaseGraphicString().getString();
                                }
                                sb.append(string);
                                sb.append(") ");
                                sb.append(lineSeparator);
                                dumpBinaryDataAsString = sb.toString();
                                stringBuffer.append(dumpBinaryDataAsString);
                                return;
                            } else {
                                ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
                                byte[] bytes = aSN1BitString.getBytes();
                                int padBits = aSN1BitString.getPadBits();
                                if (aSN1BitString instanceof DERBitString) {
                                    sb2 = new StringBuilder();
                                    sb2.append(str);
                                    str2 = "DER Bit String[";
                                } else if (aSN1BitString instanceof DLBitString) {
                                    sb2 = new StringBuilder();
                                    sb2.append(str);
                                    str2 = "DL Bit String[";
                                } else {
                                    sb2 = new StringBuilder();
                                    sb2.append(str);
                                    str2 = "BER Bit String[";
                                }
                                sb2.append(str2);
                                sb2.append(bytes.length);
                                sb2.append(", ");
                                sb2.append(padBits);
                                sb2.append("] ");
                                stringBuffer.append(sb2.toString());
                                if (z9) {
                                    dumpBinaryDataAsString = dumpBinaryDataAsString(str, bytes);
                                    stringBuffer.append(dumpBinaryDataAsString);
                                    return;
                                }
                            }
                            sb.append(value);
                        }
                        sb.append(")");
                        sb.append(lineSeparator);
                        dumpBinaryDataAsString = sb.toString();
                        stringBuffer.append(dumpBinaryDataAsString);
                        return;
                    } else {
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append("RelativeOID(");
                        id = ((ASN1RelativeOID) aSN1Primitive).getId();
                    }
                    sb.append(id);
                    sb.append(")");
                    sb.append(lineSeparator);
                    dumpBinaryDataAsString = sb.toString();
                    stringBuffer.append(dumpBinaryDataAsString);
                    return;
                } else {
                    ASN1OctetString aSN1OctetString = (ASN1OctetString) aSN1Primitive;
                    if (aSN1Primitive instanceof BEROctetString) {
                        sb3 = new StringBuilder();
                        sb3.append(str);
                        sb3.append("BER Constructed Octet String[");
                        length = aSN1OctetString.getOctets().length;
                    } else {
                        sb3 = new StringBuilder();
                        sb3.append(str);
                        sb3.append("DER Octet String[");
                        length = aSN1OctetString.getOctets().length;
                    }
                    sb3.append(length);
                    sb3.append("] ");
                    stringBuffer.append(sb3.toString());
                    if (z9) {
                        dumpBinaryDataAsString = dumpBinaryDataAsString(str, aSN1OctetString.getOctets());
                        stringBuffer.append(dumpBinaryDataAsString);
                        return;
                    }
                }
                _dumpAsString(str, z9, aSN1Primitive2, stringBuffer);
                return;
            }
        }
        stringBuffer.append(str);
        stringBuffer.append("NULL");
        stringBuffer.append(lineSeparator);
    }

    private static String calculateAscString(byte[] bArr, int i4, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = i4; i11 != i4 + i10; i11++) {
            if (bArr[i11] >= 32 && bArr[i11] <= 126) {
                stringBuffer.append((char) bArr[i11]);
            }
        }
        return stringBuffer.toString();
    }

    public static String dumpAsString(Object obj) {
        return dumpAsString(obj, false);
    }

    public static String dumpAsString(Object obj, boolean z9) {
        ASN1Primitive aSN1Primitive;
        if (obj instanceof ASN1Primitive) {
            aSN1Primitive = (ASN1Primitive) obj;
        } else if (!(obj instanceof ASN1Encodable)) {
            return "unknown object type " + obj.toString();
        } else {
            aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        }
        StringBuffer stringBuffer = new StringBuffer();
        _dumpAsString("", z9, aSN1Primitive, stringBuffer);
        return stringBuffer.toString();
    }

    private static String dumpBinaryDataAsString(String str, byte[] bArr) {
        String calculateAscString;
        String lineSeparator = Strings.lineSeparator();
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + TAB;
        stringBuffer.append(lineSeparator);
        for (int i4 = 0; i4 < bArr.length; i4 += 32) {
            int length = bArr.length - i4;
            stringBuffer.append(str2);
            if (length > 32) {
                stringBuffer.append(Strings.fromByteArray(Hex.encode(bArr, i4, 32)));
                stringBuffer.append(TAB);
                calculateAscString = calculateAscString(bArr, i4, 32);
            } else {
                stringBuffer.append(Strings.fromByteArray(Hex.encode(bArr, i4, bArr.length - i4)));
                for (int length2 = bArr.length - i4; length2 != 32; length2++) {
                    stringBuffer.append("  ");
                }
                stringBuffer.append(TAB);
                calculateAscString = calculateAscString(bArr, i4, bArr.length - i4);
            }
            stringBuffer.append(calculateAscString);
            stringBuffer.append(lineSeparator);
        }
        return stringBuffer.toString();
    }
}

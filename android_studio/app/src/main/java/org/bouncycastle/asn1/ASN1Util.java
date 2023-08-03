package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public abstract class ASN1Util {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1TaggedObject checkTag(ASN1TaggedObject aSN1TaggedObject, int i4, int i10) {
        if (aSN1TaggedObject.hasTag(i4, i10)) {
            return aSN1TaggedObject;
        }
        String tagText = getTagText(i4, i10);
        String tagText2 = getTagText(aSN1TaggedObject);
        throw new IllegalStateException("Expected " + tagText + " tag but found " + tagText2);
    }

    static ASN1TaggedObjectParser checkTag(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10) {
        if (aSN1TaggedObjectParser.hasTag(i4, i10)) {
            return aSN1TaggedObjectParser;
        }
        String tagText = getTagText(i4, i10);
        String tagText2 = getTagText(aSN1TaggedObjectParser);
        throw new IllegalStateException("Expected " + tagText + " tag but found " + tagText2);
    }

    public static ASN1Primitive getBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i4, int i10, boolean z9, int i11) {
        return checkTag(aSN1TaggedObject, i4, i10).getBaseUniversal(z9, i11);
    }

    public static ASN1Primitive getContextBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i4, boolean z9, int i10) {
        return getBaseUniversal(aSN1TaggedObject, 128, i4, z9, i10);
    }

    public static ASN1Object getExplicitBaseObject(ASN1TaggedObject aSN1TaggedObject, int i4, int i10) {
        return checkTag(aSN1TaggedObject, i4, i10).getExplicitBaseObject();
    }

    public static ASN1TaggedObject getExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4, int i10) {
        return checkTag(aSN1TaggedObject, i4, i10).getExplicitBaseTagged();
    }

    public static ASN1Object getExplicitContextBaseObject(ASN1TaggedObject aSN1TaggedObject, int i4) {
        return getExplicitBaseObject(aSN1TaggedObject, 128, i4);
    }

    public static ASN1TaggedObject getExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4) {
        return getExplicitBaseTagged(aSN1TaggedObject, 128, i4);
    }

    public static ASN1TaggedObject getImplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4, int i10, int i11, int i12) {
        return checkTag(aSN1TaggedObject, i4, i10).getImplicitBaseTagged(i11, i12);
    }

    public static ASN1TaggedObject getImplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4, int i10, int i11) {
        return getImplicitBaseTagged(aSN1TaggedObject, 128, i4, i10, i11);
    }

    public static String getTagText(int i4, int i10) {
        StringBuilder sb;
        String str;
        if (i4 == 64) {
            sb = new StringBuilder();
            str = "[APPLICATION ";
        } else if (i4 == 128) {
            sb = new StringBuilder();
            str = "[CONTEXT ";
        } else if (i4 != 192) {
            sb = new StringBuilder();
            str = "[UNIVERSAL ";
        } else {
            sb = new StringBuilder();
            str = "[PRIVATE ";
        }
        sb.append(str);
        sb.append(i10);
        sb.append("]");
        return sb.toString();
    }

    static String getTagText(ASN1Tag aSN1Tag) {
        return getTagText(aSN1Tag.getTagClass(), aSN1Tag.getTagNumber());
    }

    public static String getTagText(ASN1TaggedObject aSN1TaggedObject) {
        return getTagText(aSN1TaggedObject.getTagClass(), aSN1TaggedObject.getTagNo());
    }

    public static String getTagText(ASN1TaggedObjectParser aSN1TaggedObjectParser) {
        return getTagText(aSN1TaggedObjectParser.getTagClass(), aSN1TaggedObjectParser.getTagNo());
    }

    public static ASN1Encodable parseBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10, boolean z9, int i11) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i4, i10).parseBaseUniversal(z9, i11);
    }

    public static ASN1Encodable parseContextBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, boolean z9, int i10) throws IOException {
        return parseBaseUniversal(aSN1TaggedObjectParser, 128, i4, z9, i10);
    }

    public static ASN1Encodable parseExplicitBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i4, i10).parseExplicitBaseObject();
    }

    public static ASN1TaggedObjectParser parseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i4, i10).parseExplicitBaseTagged();
    }

    public static ASN1Encodable parseExplicitContextBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4) throws IOException {
        return parseExplicitBaseObject(aSN1TaggedObjectParser, 128, i4);
    }

    public static ASN1TaggedObjectParser parseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4) throws IOException {
        return parseExplicitBaseTagged(aSN1TaggedObjectParser, 128, i4);
    }

    public static ASN1TaggedObjectParser parseImplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10, int i11, int i12) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i4, i10).parseImplicitBaseTagged(i11, i12);
    }

    public static ASN1TaggedObjectParser parseImplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10, int i11) throws IOException {
        return parseImplicitBaseTagged(aSN1TaggedObjectParser, 128, i4, i10, i11);
    }

    public static ASN1Primitive tryGetBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i4, int i10, boolean z9, int i11) {
        if (aSN1TaggedObject.hasTag(i4, i10)) {
            return aSN1TaggedObject.getBaseUniversal(z9, i11);
        }
        return null;
    }

    public static ASN1Primitive tryGetContextBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i4, boolean z9, int i10) {
        return tryGetBaseUniversal(aSN1TaggedObject, 128, i4, z9, i10);
    }

    public static ASN1Object tryGetExplicitBaseObject(ASN1TaggedObject aSN1TaggedObject, int i4, int i10) {
        if (aSN1TaggedObject.hasTag(i4, i10)) {
            return aSN1TaggedObject.getExplicitBaseObject();
        }
        return null;
    }

    public static ASN1TaggedObject tryGetExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4, int i10) {
        if (aSN1TaggedObject.hasTag(i4, i10)) {
            return aSN1TaggedObject.getExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1Object tryGetExplicitContextBaseObject(ASN1TaggedObject aSN1TaggedObject, int i4) {
        return tryGetExplicitBaseObject(aSN1TaggedObject, 128, i4);
    }

    public static ASN1TaggedObject tryGetExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4) {
        return tryGetExplicitBaseTagged(aSN1TaggedObject, 128, i4);
    }

    public static ASN1TaggedObject tryGetImplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4, int i10, int i11, int i12) {
        if (aSN1TaggedObject.hasTag(i4, i10)) {
            return aSN1TaggedObject.getImplicitBaseTagged(i11, i12);
        }
        return null;
    }

    public static ASN1TaggedObject tryGetImplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i4, int i10, int i11) {
        return tryGetImplicitBaseTagged(aSN1TaggedObject, 128, i4, i10, i11);
    }

    public static ASN1Encodable tryParseBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10, boolean z9, int i11) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i4, i10)) {
            return aSN1TaggedObjectParser.parseBaseUniversal(z9, i11);
        }
        return null;
    }

    public static ASN1Encodable tryParseContextBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, boolean z9, int i10) throws IOException {
        return tryParseBaseUniversal(aSN1TaggedObjectParser, 128, i4, z9, i10);
    }

    public static ASN1Encodable tryParseExplicitBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i4, i10)) {
            return aSN1TaggedObjectParser.parseExplicitBaseObject();
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i4, i10)) {
            return aSN1TaggedObjectParser.parseExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1Encodable tryParseExplicitContextBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4) throws IOException {
        return tryParseExplicitBaseObject(aSN1TaggedObjectParser, 128, i4);
    }

    public static ASN1TaggedObjectParser tryParseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4) throws IOException {
        return tryParseExplicitBaseTagged(aSN1TaggedObjectParser, 128, i4);
    }

    public static ASN1TaggedObjectParser tryParseImplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10, int i11, int i12) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i4, i10)) {
            return aSN1TaggedObjectParser.parseImplicitBaseTagged(i11, i12);
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseImplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i4, int i10, int i11) throws IOException {
        return tryParseImplicitBaseTagged(aSN1TaggedObjectParser, 128, i4, i10, i11);
    }
}

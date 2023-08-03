package org.bouncycastle.asn1;

import java.io.IOException;
import org.bouncycastle.util.Objects;

/* loaded from: classes4.dex */
public abstract class ASN1External extends ASN1Primitive {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1External.class, 8) { // from class: org.bouncycastle.asn1.ASN1External.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitConstructed(ASN1Sequence aSN1Sequence) {
            return aSN1Sequence.toASN1External();
        }
    };
    ASN1Primitive dataValueDescriptor;
    ASN1ObjectIdentifier directReference;
    int encoding;
    ASN1Primitive externalContent;
    ASN1Integer indirectReference;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1External(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Integer aSN1Integer, ASN1Primitive aSN1Primitive, int i4, ASN1Primitive aSN1Primitive2) {
        this.directReference = aSN1ObjectIdentifier;
        this.indirectReference = aSN1Integer;
        this.dataValueDescriptor = aSN1Primitive;
        this.encoding = checkEncoding(i4);
        this.externalContent = checkExternalContent(i4, aSN1Primitive2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1External(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Integer aSN1Integer, ASN1Primitive aSN1Primitive, DERTaggedObject dERTaggedObject) {
        this.directReference = aSN1ObjectIdentifier;
        this.indirectReference = aSN1Integer;
        this.dataValueDescriptor = aSN1Primitive;
        this.encoding = checkEncoding(dERTaggedObject.getTagNo());
        this.externalContent = getExternalContent(dERTaggedObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1External(ASN1Sequence aSN1Sequence) {
        int i4 = 0;
        ASN1Primitive objFromSequence = getObjFromSequence(aSN1Sequence, 0);
        if (objFromSequence instanceof ASN1ObjectIdentifier) {
            this.directReference = (ASN1ObjectIdentifier) objFromSequence;
            objFromSequence = getObjFromSequence(aSN1Sequence, 1);
            i4 = 1;
        }
        if (objFromSequence instanceof ASN1Integer) {
            this.indirectReference = (ASN1Integer) objFromSequence;
            i4++;
            objFromSequence = getObjFromSequence(aSN1Sequence, i4);
        }
        if (!(objFromSequence instanceof ASN1TaggedObject)) {
            this.dataValueDescriptor = objFromSequence;
            i4++;
            objFromSequence = getObjFromSequence(aSN1Sequence, i4);
        }
        if (aSN1Sequence.size() != i4 + 1) {
            throw new IllegalArgumentException("input sequence too large");
        }
        if (!(objFromSequence instanceof ASN1TaggedObject)) {
            throw new IllegalArgumentException("No tagged object found in sequence. Structure doesn't seem to be of type External");
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objFromSequence;
        this.encoding = checkEncoding(aSN1TaggedObject.getTagNo());
        this.externalContent = getExternalContent(aSN1TaggedObject);
    }

    private static int checkEncoding(int i4) {
        if (i4 < 0 || i4 > 2) {
            throw new IllegalArgumentException("invalid encoding value: " + i4);
        }
        return i4;
    }

    private static ASN1Primitive checkExternalContent(int i4, ASN1Primitive aSN1Primitive) {
        ASN1UniversalType aSN1UniversalType;
        if (i4 == 1) {
            aSN1UniversalType = ASN1OctetString.TYPE;
        } else if (i4 != 2) {
            return aSN1Primitive;
        } else {
            aSN1UniversalType = ASN1BitString.TYPE;
        }
        return aSN1UniversalType.checkedCast(aSN1Primitive);
    }

    private static ASN1Primitive getExternalContent(ASN1TaggedObject aSN1TaggedObject) {
        int tagClass = aSN1TaggedObject.getTagClass();
        int tagNo = aSN1TaggedObject.getTagNo();
        if (128 != tagClass) {
            throw new IllegalArgumentException("invalid tag: " + ASN1Util.getTagText(tagClass, tagNo));
        } else if (tagNo != 0) {
            if (tagNo != 1) {
                if (tagNo == 2) {
                    return ASN1BitString.getInstance(aSN1TaggedObject, false);
                }
                throw new IllegalArgumentException("invalid tag: " + ASN1Util.getTagText(tagClass, tagNo));
            }
            return ASN1OctetString.getInstance(aSN1TaggedObject, false);
        } else {
            return aSN1TaggedObject.getExplicitBaseObject().toASN1Primitive();
        }
    }

    public static ASN1External getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1External)) {
            return (ASN1External) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1External) {
                return (ASN1External) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1External) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e4) {
                throw new IllegalArgumentException("failed to construct external from byte[]: " + e4.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1External getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1External) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    private static ASN1Primitive getObjFromSequence(ASN1Sequence aSN1Sequence, int i4) {
        if (aSN1Sequence.size() > i4) {
            return aSN1Sequence.getObjectAt(i4).toASN1Primitive();
        }
        throw new IllegalArgumentException("too few objects in input sequence");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (this == aSN1Primitive) {
            return true;
        }
        if (aSN1Primitive instanceof ASN1External) {
            ASN1External aSN1External = (ASN1External) aSN1Primitive;
            return Objects.areEqual(this.directReference, aSN1External.directReference) && Objects.areEqual(this.indirectReference, aSN1External.indirectReference) && Objects.areEqual(this.dataValueDescriptor, aSN1External.dataValueDescriptor) && this.encoding == aSN1External.encoding && this.externalContent.equals(aSN1External.externalContent);
        }
        return false;
    }

    abstract ASN1Sequence buildSequence();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeIdentifier(z9, 40);
        buildSequence().encode(aSN1OutputStream, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        return buildSequence().encodedLength(z9);
    }

    public ASN1Primitive getDataValueDescriptor() {
        return this.dataValueDescriptor;
    }

    public ASN1ObjectIdentifier getDirectReference() {
        return this.directReference;
    }

    public int getEncoding() {
        return this.encoding;
    }

    public ASN1Primitive getExternalContent() {
        return this.externalContent;
    }

    public ASN1Integer getIndirectReference() {
        return this.indirectReference;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return (((Objects.hashCode(this.directReference) ^ Objects.hashCode(this.indirectReference)) ^ Objects.hashCode(this.dataValueDescriptor)) ^ this.encoding) ^ this.externalContent.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERExternal(this.directReference, this.indirectReference, this.dataValueDescriptor, this.encoding, this.externalContent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLExternal(this.directReference, this.indirectReference, this.dataValueDescriptor, this.encoding, this.externalContent);
    }
}

package org.bouncycastle.asn1;

import com.google.android.exoplayer2.extractor.ts.a0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Objects;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public abstract class ASN1TaggedObject extends ASN1Primitive implements ASN1TaggedObjectParser {
    private static final int DECLARED_EXPLICIT = 1;
    private static final int DECLARED_IMPLICIT = 2;
    private static final int PARSED_EXPLICIT = 3;
    private static final int PARSED_IMPLICIT = 4;
    final int explicitness;
    final ASN1Encodable obj;
    final int tagClass;
    final int tagNo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1TaggedObject(int i4, int i10, int i11, ASN1Encodable aSN1Encodable) {
        Objects.requireNonNull(aSN1Encodable, "'obj' cannot be null");
        if (i10 == 0 || (i10 & 192) != i10) {
            throw new IllegalArgumentException("invalid tag class: " + i10);
        }
        this.explicitness = aSN1Encodable instanceof ASN1Choice ? 1 : i4;
        this.tagClass = i10;
        this.tagNo = i11;
        this.obj = aSN1Encodable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1TaggedObject(boolean z9, int i4, int i10, ASN1Encodable aSN1Encodable) {
        this(z9 ? 1 : 2, i4, i10, aSN1Encodable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1TaggedObject(boolean z9, int i4, ASN1Encodable aSN1Encodable) {
        this(z9, 128, i4, aSN1Encodable);
    }

    private static ASN1TaggedObject checkedCast(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            return (ASN1TaggedObject) aSN1Primitive;
        }
        throw new IllegalStateException("unexpected object: " + aSN1Primitive.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Primitive createConstructedDL(int i4, int i10, ASN1EncodableVector aSN1EncodableVector) {
        DLTaggedObject dLTaggedObject = aSN1EncodableVector.size() == 1 ? new DLTaggedObject(3, i4, i10, aSN1EncodableVector.get(0)) : new DLTaggedObject(4, i4, i10, DLFactory.createSequence(aSN1EncodableVector));
        return i4 != 64 ? dLTaggedObject : new DLApplicationSpecific(dLTaggedObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Primitive createConstructedIL(int i4, int i10, ASN1EncodableVector aSN1EncodableVector) {
        BERTaggedObject bERTaggedObject = aSN1EncodableVector.size() == 1 ? new BERTaggedObject(3, i4, i10, aSN1EncodableVector.get(0)) : new BERTaggedObject(4, i4, i10, BERFactory.createSequence(aSN1EncodableVector));
        return i4 != 64 ? bERTaggedObject : new BERApplicationSpecific(bERTaggedObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Primitive createPrimitive(int i4, int i10, byte[] bArr) {
        DLTaggedObject dLTaggedObject = new DLTaggedObject(4, i4, i10, new DEROctetString(bArr));
        return i4 != 64 ? dLTaggedObject : new DLApplicationSpecific(dLTaggedObject);
    }

    public static ASN1TaggedObject getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1TaggedObject)) {
            return (ASN1TaggedObject) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1TaggedObject) {
                return (ASN1TaggedObject) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return checkedCast(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (IOException e4) {
                throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + e4.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        if (128 == aSN1TaggedObject.getTagClass()) {
            if (z9) {
                return aSN1TaggedObject.getExplicitBaseTagged();
            }
            throw new IllegalArgumentException("this method not valid for implicitly tagged tagged objects");
        }
        throw new IllegalStateException("this method only valid for CONTEXT_SPECIFIC tags");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1ApplicationSpecific) {
            return aSN1Primitive.equals((ASN1Primitive) this);
        }
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
            if (this.tagNo == aSN1TaggedObject.tagNo && this.tagClass == aSN1TaggedObject.tagClass) {
                if (this.explicitness == aSN1TaggedObject.explicitness || isExplicit() == aSN1TaggedObject.isExplicit()) {
                    ASN1Primitive aSN1Primitive2 = this.obj.toASN1Primitive();
                    ASN1Primitive aSN1Primitive3 = aSN1TaggedObject.obj.toASN1Primitive();
                    if (aSN1Primitive2 == aSN1Primitive3) {
                        return true;
                    }
                    if (isExplicit()) {
                        return aSN1Primitive2.asn1Equals(aSN1Primitive3);
                    }
                    try {
                        return Arrays.areEqual(getEncoded(), aSN1TaggedObject.getEncoded());
                    } catch (IOException unused) {
                        return false;
                    }
                }
                return false;
            }
            return false;
        }
        return false;
    }

    abstract String getASN1Encoding();

    public ASN1Object getBaseObject() {
        ASN1Encodable aSN1Encodable = this.obj;
        return aSN1Encodable instanceof ASN1Object ? (ASN1Object) aSN1Encodable : aSN1Encodable.toASN1Primitive();
    }

    public ASN1Primitive getBaseUniversal(boolean z9, int i4) {
        ASN1UniversalType aSN1UniversalType = ASN1UniversalTypes.get(i4);
        if (aSN1UniversalType != null) {
            return getBaseUniversal(z9, aSN1UniversalType);
        }
        throw new IllegalArgumentException("unsupported UNIVERSAL tag number: " + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Primitive getBaseUniversal(boolean z9, ASN1UniversalType aSN1UniversalType) {
        if (z9) {
            if (isExplicit()) {
                return aSN1UniversalType.checkedCast(this.obj.toASN1Primitive());
            }
            throw new IllegalStateException("object explicit - implicit expected.");
        } else if (1 != this.explicitness) {
            ASN1Primitive aSN1Primitive = this.obj.toASN1Primitive();
            int i4 = this.explicitness;
            return i4 != 3 ? i4 != 4 ? aSN1UniversalType.checkedCast(aSN1Primitive) : aSN1Primitive instanceof ASN1Sequence ? aSN1UniversalType.fromImplicitConstructed((ASN1Sequence) aSN1Primitive) : aSN1UniversalType.fromImplicitPrimitive((DEROctetString) aSN1Primitive) : aSN1UniversalType.fromImplicitConstructed(rebuildConstructed(aSN1Primitive));
        } else {
            throw new IllegalStateException("object explicit - implicit expected.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getContents() {
        try {
            byte[] encoded = this.obj.toASN1Primitive().getEncoded(getASN1Encoding());
            if (isExplicit()) {
                return encoded;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(encoded);
            ASN1InputStream.readTagNumber(byteArrayInputStream, byteArrayInputStream.read());
            int readLength = ASN1InputStream.readLength(byteArrayInputStream, byteArrayInputStream.available(), false);
            int available = byteArrayInputStream.available();
            int i4 = readLength < 0 ? available - 2 : available;
            if (i4 >= 0) {
                byte[] bArr = new byte[i4];
                System.arraycopy(encoded, encoded.length - available, bArr, 0, i4);
                return bArr;
            }
            throw new ASN1ParsingException("failed to get contents");
        } catch (IOException e4) {
            throw new ASN1ParsingException("failed to get contents", e4);
        }
    }

    public ASN1Object getExplicitBaseObject() {
        if (isExplicit()) {
            ASN1Encodable aSN1Encodable = this.obj;
            return aSN1Encodable instanceof ASN1Object ? (ASN1Object) aSN1Encodable : aSN1Encodable.toASN1Primitive();
        }
        throw new IllegalStateException("object implicit - explicit expected.");
    }

    public ASN1TaggedObject getExplicitBaseTagged() {
        if (isExplicit()) {
            return checkedCast(this.obj.toASN1Primitive());
        }
        throw new IllegalStateException("object implicit - explicit expected.");
    }

    public ASN1TaggedObject getImplicitBaseTagged(int i4, int i10) {
        if (i4 == 0 || (i4 & 192) != i4) {
            throw new IllegalArgumentException("invalid base tag class: " + i4);
        }
        int i11 = this.explicitness;
        if (i11 != 1) {
            return i11 != 2 ? replaceTag(i4, i10) : ASN1Util.checkTag(checkedCast(this.obj.toASN1Primitive()), i4, i10);
        }
        throw new IllegalStateException("object explicit - implicit expected.");
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return this;
    }

    public ASN1Primitive getObject() {
        if (128 == getTagClass()) {
            return this.obj.toASN1Primitive();
        }
        throw new IllegalStateException("this method only valid for CONTEXT_SPECIFIC tags");
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable getObjectParser(int i4, boolean z9) throws IOException {
        if (128 == getTagClass()) {
            return parseBaseUniversal(z9, i4);
        }
        throw new ASN1Exception("this method only valid for CONTEXT_SPECIFIC tags");
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagClass() {
        return this.tagClass;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasContextTag(int i4) {
        return this.tagClass == 128 && this.tagNo == i4;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasTag(int i4, int i10) {
        return this.tagClass == i4 && this.tagNo == i10;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return (((this.tagClass * 7919) ^ this.tagNo) ^ (isExplicit() ? 15 : a0.A)) ^ this.obj.toASN1Primitive().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isConstructed() {
        return encodeConstructed();
    }

    public boolean isExplicit() {
        int i4 = this.explicitness;
        return i4 == 1 || i4 == 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isParsed() {
        int i4 = this.explicitness;
        return i4 == 3 || i4 == 4;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z9, int i4) throws IOException {
        ASN1Primitive baseUniversal = getBaseUniversal(z9, i4);
        return i4 != 3 ? i4 != 4 ? i4 != 16 ? i4 != 17 ? baseUniversal : ((ASN1Set) baseUniversal).parser() : ((ASN1Sequence) baseUniversal).parser() : ((ASN1OctetString) baseUniversal).parser() : ((ASN1BitString) baseUniversal).parser();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() throws IOException {
        return getExplicitBaseObject();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException {
        return getExplicitBaseTagged();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int i4, int i10) throws IOException {
        return getImplicitBaseTagged(i4, i10);
    }

    abstract ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive);

    abstract ASN1TaggedObject replaceTag(int i4, int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERTaggedObject(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLTaggedObject(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    public String toString() {
        return ASN1Util.getTagText(this.tagClass, this.tagNo) + this.obj;
    }
}

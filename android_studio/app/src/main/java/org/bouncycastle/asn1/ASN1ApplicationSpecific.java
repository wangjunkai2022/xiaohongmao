package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public abstract class ASN1ApplicationSpecific extends ASN1Primitive implements ASN1ApplicationSpecificParser {
    final ASN1TaggedObject taggedObject;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1ApplicationSpecific(ASN1TaggedObject aSN1TaggedObject) {
        checkTagClass(aSN1TaggedObject.getTagClass());
        this.taggedObject = aSN1TaggedObject;
    }

    private static int checkTagClass(int i4) {
        if (64 == i4) {
            return i4;
        }
        throw new IllegalArgumentException();
    }

    public static ASN1ApplicationSpecific getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1ApplicationSpecific)) {
            return (ASN1ApplicationSpecific) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        try {
            return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
        } catch (IOException e4) {
            throw new IllegalArgumentException("Failed to construct object from byte[]: " + e4.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        ASN1TaggedObject aSN1TaggedObject;
        if (aSN1Primitive instanceof ASN1ApplicationSpecific) {
            aSN1TaggedObject = ((ASN1ApplicationSpecific) aSN1Primitive).taggedObject;
        } else if (!(aSN1Primitive instanceof ASN1TaggedObject)) {
            return false;
        } else {
            aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
        }
        return this.taggedObject.equals((ASN1Primitive) aSN1TaggedObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        this.taggedObject.encode(aSN1OutputStream, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return this.taggedObject.encodeConstructed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        return this.taggedObject.encodedLength(z9);
    }

    public int getApplicationTag() {
        return this.taggedObject.getTagNo();
    }

    public byte[] getContents() {
        return this.taggedObject.getContents();
    }

    public ASN1Primitive getEnclosedObject() throws IOException {
        return this.taggedObject.getBaseObject().toASN1Primitive();
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return this;
    }

    public ASN1Primitive getObject() throws IOException {
        return getEnclosedObject();
    }

    public ASN1Primitive getObject(int i4) throws IOException {
        return this.taggedObject.getBaseUniversal(false, i4);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable getObjectParser(int i4, boolean z9) throws IOException {
        throw new ASN1Exception("this method only valid for CONTEXT_SPECIFIC tags");
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagClass() {
        return 64;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this.taggedObject.getTagNo();
    }

    public ASN1TaggedObject getTaggedObject() {
        return this.taggedObject;
    }

    public boolean hasApplicationTag(int i4) {
        return this.taggedObject.hasTag(64, i4);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasContextTag(int i4) {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasTag(int i4, int i10) {
        return this.taggedObject.hasTag(i4, i10);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return this.taggedObject.hashCode();
    }

    public boolean isConstructed() {
        return this.taggedObject.isConstructed();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z9, int i4) throws IOException {
        return this.taggedObject.parseBaseUniversal(z9, i4);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() throws IOException {
        return this.taggedObject.parseExplicitBaseObject();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException {
        return this.taggedObject.parseExplicitBaseTagged();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int i4, int i10) throws IOException {
        return this.taggedObject.parseImplicitBaseTagged(i4, i10);
    }

    @Override // org.bouncycastle.asn1.ASN1ApplicationSpecificParser
    public ASN1Encodable readObject() throws IOException {
        return parseExplicitBaseObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERApplicationSpecific((ASN1TaggedObject) this.taggedObject.toDERObject());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLApplicationSpecific((ASN1TaggedObject) this.taggedObject.toDLObject());
    }
}

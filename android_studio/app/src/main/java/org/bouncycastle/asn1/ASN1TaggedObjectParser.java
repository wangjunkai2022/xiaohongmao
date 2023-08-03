package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public interface ASN1TaggedObjectParser extends ASN1Encodable, InMemoryRepresentable {
    ASN1Encodable getObjectParser(int i4, boolean z9) throws IOException;

    int getTagClass();

    int getTagNo();

    boolean hasContextTag(int i4);

    boolean hasTag(int i4, int i10);

    ASN1Encodable parseBaseUniversal(boolean z9, int i4) throws IOException;

    ASN1Encodable parseExplicitBaseObject() throws IOException;

    ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException;

    ASN1TaggedObjectParser parseImplicitBaseTagged(int i4, int i10) throws IOException;
}

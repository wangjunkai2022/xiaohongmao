package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

/* loaded from: classes4.dex */
public class RoleSyntax extends ASN1Object {
    private GeneralNames roleAuthority;
    private GeneralName roleName;

    public RoleSyntax(String str) {
        this(new GeneralName(6, str == null ? "" : str));
    }

    private RoleSyntax(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() < 1 || aSN1Sequence.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        for (int i4 = 0; i4 != aSN1Sequence.size(); i4++) {
            ASN1TaggedObject aSN1TaggedObject = ASN1TaggedObject.getInstance(aSN1Sequence.getObjectAt(i4));
            int tagNo = aSN1TaggedObject.getTagNo();
            if (tagNo == 0) {
                this.roleAuthority = GeneralNames.getInstance(aSN1TaggedObject, false);
            } else if (tagNo != 1) {
                throw new IllegalArgumentException("Unknown tag in RoleSyntax");
            } else {
                this.roleName = GeneralName.getInstance(aSN1TaggedObject, true);
            }
        }
    }

    public RoleSyntax(GeneralName generalName) {
        this(null, generalName);
    }

    public RoleSyntax(GeneralNames generalNames, GeneralName generalName) {
        if (generalName == null || generalName.getTagNo() != 6 || ((ASN1String) generalName.getName()).getString().equals("")) {
            throw new IllegalArgumentException("the role name MUST be non empty and MUST use the URI option of GeneralName");
        }
        this.roleAuthority = generalNames;
        this.roleName = generalName;
    }

    public static RoleSyntax getInstance(Object obj) {
        if (obj instanceof RoleSyntax) {
            return (RoleSyntax) obj;
        }
        if (obj != null) {
            return new RoleSyntax(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GeneralNames getRoleAuthority() {
        return this.roleAuthority;
    }

    public String[] getRoleAuthorityAsString() {
        GeneralNames generalNames = this.roleAuthority;
        if (generalNames == null) {
            return new String[0];
        }
        GeneralName[] names = generalNames.getNames();
        String[] strArr = new String[names.length];
        for (int i4 = 0; i4 < names.length; i4++) {
            ASN1Encodable name = names[i4].getName();
            if (name instanceof ASN1String) {
                strArr[i4] = ((ASN1String) name).getString();
            } else {
                strArr[i4] = name.toString();
            }
        }
        return strArr;
    }

    public GeneralName getRoleName() {
        return this.roleName;
    }

    public String getRoleNameAsString() {
        return ((ASN1String) this.roleName.getName()).getString();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        GeneralNames generalNames = this.roleAuthority;
        if (generalNames != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 0, (ASN1Encodable) generalNames));
        }
        aSN1EncodableVector.add(new DERTaggedObject(true, 1, (ASN1Encodable) this.roleName));
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Name: " + getRoleNameAsString() + " - Auth: ");
        GeneralNames generalNames = this.roleAuthority;
        if (generalNames == null || generalNames.getNames().length == 0) {
            stringBuffer.append("N/A");
        } else {
            String[] roleAuthorityAsString = getRoleAuthorityAsString();
            stringBuffer.append('[');
            stringBuffer.append(roleAuthorityAsString[0]);
            for (int i4 = 1; i4 < roleAuthorityAsString.length; i4++) {
                stringBuffer.append(", ");
                stringBuffer.append(roleAuthorityAsString[i4]);
            }
            stringBuffer.append(']');
        }
        return stringBuffer.toString();
    }
}

package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class X9ECPoint extends ASN1Object {

    /* renamed from: c  reason: collision with root package name */
    private ECCurve f91160c;
    private final ASN1OctetString encoding;

    /* renamed from: p  reason: collision with root package name */
    private ECPoint f91161p;

    public X9ECPoint(ECCurve eCCurve, ASN1OctetString aSN1OctetString) {
        this(eCCurve, aSN1OctetString.getOctets());
    }

    public X9ECPoint(ECCurve eCCurve, byte[] bArr) {
        this.f91160c = eCCurve;
        this.encoding = new DEROctetString(Arrays.clone(bArr));
    }

    public X9ECPoint(ECPoint eCPoint, boolean z9) {
        this.f91161p = eCPoint.normalize();
        this.encoding = new DEROctetString(eCPoint.getEncoded(z9));
    }

    public synchronized ECPoint getPoint() {
        if (this.f91161p == null) {
            this.f91161p = this.f91160c.decodePoint(this.encoding.getOctets()).normalize();
        }
        return this.f91161p;
    }

    public byte[] getPointEncoding() {
        return Arrays.clone(this.encoding.getOctets());
    }

    public boolean isPointCompressed() {
        byte[] octets = this.encoding.getOctets();
        if (octets == null || octets.length <= 0) {
            return false;
        }
        return octets[0] == 2 || octets[0] == 3;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.encoding;
    }
}

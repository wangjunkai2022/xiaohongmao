package org.bouncycastle.crypto.ec;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes4.dex */
public class ECPair {

    /* renamed from: x  reason: collision with root package name */
    private final ECPoint f91208x;

    /* renamed from: y  reason: collision with root package name */
    private final ECPoint f91209y;

    public ECPair(ECPoint eCPoint, ECPoint eCPoint2) {
        this.f91208x = eCPoint;
        this.f91209y = eCPoint2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ECPair) {
            return equals((ECPair) obj);
        }
        return false;
    }

    public boolean equals(ECPair eCPair) {
        return eCPair.getX().equals(getX()) && eCPair.getY().equals(getY());
    }

    public ECPoint getX() {
        return this.f91208x;
    }

    public ECPoint getY() {
        return this.f91209y;
    }

    public int hashCode() {
        return this.f91208x.hashCode() + (this.f91209y.hashCode() * 37);
    }
}

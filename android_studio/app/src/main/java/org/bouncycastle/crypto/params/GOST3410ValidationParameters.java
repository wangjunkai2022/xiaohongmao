package org.bouncycastle.crypto.params;

/* loaded from: classes4.dex */
public class GOST3410ValidationParameters {

    /* renamed from: c  reason: collision with root package name */
    private int f91337c;
    private long cL;

    /* renamed from: x0  reason: collision with root package name */
    private int f91338x0;
    private long x0L;

    public GOST3410ValidationParameters(int i4, int i10) {
        this.f91338x0 = i4;
        this.f91337c = i10;
    }

    public GOST3410ValidationParameters(long j4, long j10) {
        this.x0L = j4;
        this.cL = j10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GOST3410ValidationParameters) {
            GOST3410ValidationParameters gOST3410ValidationParameters = (GOST3410ValidationParameters) obj;
            return gOST3410ValidationParameters.f91337c == this.f91337c && gOST3410ValidationParameters.f91338x0 == this.f91338x0 && gOST3410ValidationParameters.cL == this.cL && gOST3410ValidationParameters.x0L == this.x0L;
        }
        return false;
    }

    public int getC() {
        return this.f91337c;
    }

    public long getCL() {
        return this.cL;
    }

    public int getX0() {
        return this.f91338x0;
    }

    public long getX0L() {
        return this.x0L;
    }

    public int hashCode() {
        int i4 = this.f91338x0 ^ this.f91337c;
        long j4 = this.x0L;
        long j10 = this.cL;
        return (((i4 ^ ((int) j4)) ^ ((int) (j4 >> 32))) ^ ((int) j10)) ^ ((int) (j10 >> 32));
    }
}

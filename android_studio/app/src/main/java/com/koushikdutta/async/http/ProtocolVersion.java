package com.koushikdutta.async.http;

import java.io.Serializable;

/* loaded from: classes3.dex */
public class ProtocolVersion implements Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f44676d = 8950662842175091068L;

    /* renamed from: a  reason: collision with root package name */
    protected final String f44677a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f44678b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f44679c;

    public ProtocolVersion(String str, int i4, int i10) {
        if (str == null) {
            throw new IllegalArgumentException("Protocol name must not be null.");
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Protocol major version number must not be negative.");
        }
        if (i10 >= 0) {
            this.f44677a = str;
            this.f44678b = i4;
            this.f44679c = i10;
            return;
        }
        throw new IllegalArgumentException("Protocol minor version number may not be negative");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public int compareToVersion(ProtocolVersion protocolVersion) {
        if (protocolVersion != null) {
            if (this.f44677a.equals(protocolVersion.f44677a)) {
                int major = getMajor() - protocolVersion.getMajor();
                return major == 0 ? getMinor() - protocolVersion.getMinor() : major;
            }
            throw new IllegalArgumentException("Versions for different protocols cannot be compared. " + this + " " + protocolVersion);
        }
        throw new IllegalArgumentException("Protocol version must not be null.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProtocolVersion) {
            ProtocolVersion protocolVersion = (ProtocolVersion) obj;
            return this.f44677a.equals(protocolVersion.f44677a) && this.f44678b == protocolVersion.f44678b && this.f44679c == protocolVersion.f44679c;
        }
        return false;
    }

    public ProtocolVersion forVersion(int i4, int i10) {
        return (i4 == this.f44678b && i10 == this.f44679c) ? this : new ProtocolVersion(this.f44677a, i4, i10);
    }

    public final int getMajor() {
        return this.f44678b;
    }

    public final int getMinor() {
        return this.f44679c;
    }

    public final String getProtocol() {
        return this.f44677a;
    }

    public final boolean greaterEquals(ProtocolVersion protocolVersion) {
        return isComparable(protocolVersion) && compareToVersion(protocolVersion) >= 0;
    }

    public final int hashCode() {
        return (this.f44677a.hashCode() ^ (this.f44678b * com.google.android.exoplayer2.audio.a.f21096f)) ^ this.f44679c;
    }

    public boolean isComparable(ProtocolVersion protocolVersion) {
        return protocolVersion != null && this.f44677a.equals(protocolVersion.f44677a);
    }

    public final boolean lessEquals(ProtocolVersion protocolVersion) {
        return isComparable(protocolVersion) && compareToVersion(protocolVersion) <= 0;
    }

    public String toString() {
        return this.f44677a + com.fasterxml.jackson.core.e.f13819f + Integer.toString(this.f44678b) + '.' + Integer.toString(this.f44679c);
    }
}

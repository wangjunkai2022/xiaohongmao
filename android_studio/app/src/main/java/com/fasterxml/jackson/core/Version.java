package com.fasterxml.jackson.core;

import java.io.Serializable;

/* loaded from: classes.dex */
public class Version implements Comparable<Version>, Serializable {

    /* renamed from: g  reason: collision with root package name */
    private static final long f13754g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final Version f13755h = new Version(0, 0, 0, null, null, null);

    /* renamed from: a  reason: collision with root package name */
    protected final int f13756a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f13757b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f13758c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f13759d;

    /* renamed from: e  reason: collision with root package name */
    protected final String f13760e;

    /* renamed from: f  reason: collision with root package name */
    protected final String f13761f;

    @Deprecated
    public Version(int i4, int i10, int i11, String str) {
        this(i4, i10, i11, str, null, null);
    }

    public static Version unknownVersion() {
        return f13755h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            Version version = (Version) obj;
            return version.f13756a == this.f13756a && version.f13757b == this.f13757b && version.f13758c == this.f13758c && version.f13760e.equals(this.f13760e) && version.f13759d.equals(this.f13759d);
        }
        return false;
    }

    public String getArtifactId() {
        return this.f13760e;
    }

    public String getGroupId() {
        return this.f13759d;
    }

    public int getMajorVersion() {
        return this.f13756a;
    }

    public int getMinorVersion() {
        return this.f13757b;
    }

    public int getPatchLevel() {
        return this.f13758c;
    }

    public int hashCode() {
        return this.f13760e.hashCode() ^ (((this.f13759d.hashCode() + this.f13756a) - this.f13757b) + this.f13758c);
    }

    public boolean isSnapshot() {
        String str = this.f13761f;
        return str != null && str.length() > 0;
    }

    @Deprecated
    public boolean isUknownVersion() {
        return isUnknownVersion();
    }

    public boolean isUnknownVersion() {
        return this == f13755h;
    }

    public String toFullString() {
        return this.f13759d + e.f13819f + this.f13760e + e.f13819f + toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f13756a);
        sb.append('.');
        sb.append(this.f13757b);
        sb.append('.');
        sb.append(this.f13758c);
        if (isSnapshot()) {
            sb.append(shaded.org.apache.commons.codec.language.l.f93713d);
            sb.append(this.f13761f);
        }
        return sb.toString();
    }

    public Version(int i4, int i10, int i11, String str, String str2, String str3) {
        this.f13756a = i4;
        this.f13757b = i10;
        this.f13758c = i11;
        this.f13761f = str;
        this.f13759d = str2 == null ? "" : str2;
        this.f13760e = str3 == null ? "" : str3;
    }

    @Override // java.lang.Comparable
    public int compareTo(Version version) {
        if (version == this) {
            return 0;
        }
        int compareTo = this.f13759d.compareTo(version.f13759d);
        if (compareTo == 0) {
            int compareTo2 = this.f13760e.compareTo(version.f13760e);
            if (compareTo2 == 0) {
                int i4 = this.f13756a - version.f13756a;
                if (i4 == 0) {
                    int i10 = this.f13757b - version.f13757b;
                    return i10 == 0 ? this.f13758c - version.f13758c : i10;
                }
                return i4;
            }
            return compareTo2;
        }
        return compareTo;
    }
}

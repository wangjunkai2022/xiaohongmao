package com.google.android.gms.common.images;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.sentry.protocol.y;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f29037a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29038b;

    public a(int i4, int i10) {
        this.f29037a = i4;
        this.f29038b = i10;
    }

    @NonNull
    public static a c(@NonNull String str) throws NumberFormatException {
        if (str != null) {
            int indexOf = str.indexOf(42);
            if (indexOf < 0) {
                indexOf = str.indexOf(120);
            }
            if (indexOf >= 0) {
                try {
                    return new a(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
                } catch (NumberFormatException unused) {
                    throw d(str);
                }
            }
            throw d(str);
        }
        throw new IllegalArgumentException("string must not be null");
    }

    private static NumberFormatException d(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append("Invalid Size: \"");
        sb.append(str);
        sb.append("\"");
        throw new NumberFormatException(sb.toString());
    }

    public int a() {
        return this.f29038b;
    }

    public int b() {
        return this.f29037a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f29037a == aVar.f29037a && this.f29038b == aVar.f29038b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i4 = this.f29038b;
        int i10 = this.f29037a;
        return i4 ^ ((i10 >>> 16) | (i10 << 16));
    }

    @NonNull
    public String toString() {
        int i4 = this.f29037a;
        int i10 = this.f29038b;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i4);
        sb.append(y.b.f83919g);
        sb.append(i10);
        return sb.toString();
    }
}

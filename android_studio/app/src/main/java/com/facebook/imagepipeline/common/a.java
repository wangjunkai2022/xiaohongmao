package com.facebook.imagepipeline.common;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.regex.Pattern;
import r7.h;

/* compiled from: BytesRange.java */
@s7.b
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final int f12169c = Integer.MAX_VALUE;
    @h

    /* renamed from: d  reason: collision with root package name */
    private static Pattern f12170d;

    /* renamed from: a  reason: collision with root package name */
    public final int f12171a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12172b;

    public a(int from, int to) {
        this.f12171a = from;
        this.f12172b = to;
    }

    public static a b(int from) {
        j.d(Boolean.valueOf(from >= 0));
        return new a(from, Integer.MAX_VALUE);
    }

    @h
    public static a c(@h String header) throws IllegalArgumentException {
        if (header == null) {
            return null;
        }
        if (f12170d == null) {
            f12170d = Pattern.compile("[-/ ]");
        }
        try {
            String[] split = f12170d.split(header);
            j.d(Boolean.valueOf(split.length == 4));
            j.d(Boolean.valueOf(split[0].equals("bytes")));
            int parseInt = Integer.parseInt(split[1]);
            int parseInt2 = Integer.parseInt(split[2]);
            int parseInt3 = Integer.parseInt(split[3]);
            j.d(Boolean.valueOf(parseInt2 > parseInt));
            j.d(Boolean.valueOf(parseInt3 > parseInt2));
            if (parseInt2 < parseInt3 - 1) {
                return new a(parseInt, parseInt2);
            }
            return new a(parseInt, Integer.MAX_VALUE);
        } catch (IllegalArgumentException e4) {
            throw new IllegalArgumentException(String.format(null, "Invalid Content-Range header value: \"%s\"", header), e4);
        }
    }

    public static a e(int to) {
        j.d(Boolean.valueOf(to > 0));
        return new a(0, to);
    }

    private static String f(int n9) {
        return n9 == Integer.MAX_VALUE ? "" : Integer.toString(n9);
    }

    public boolean a(@h a compare) {
        return compare != null && this.f12171a <= compare.f12171a && this.f12172b >= compare.f12172b;
    }

    public String d() {
        return String.format(null, "bytes=%s-%s", f(this.f12171a), f(this.f12172b));
    }

    public boolean equals(@h Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof a) {
            a aVar = (a) other;
            return this.f12171a == aVar.f12171a && this.f12172b == aVar.f12172b;
        }
        return false;
    }

    public int hashCode() {
        return com.facebook.common.util.b.b(this.f12171a, this.f12172b);
    }

    public String toString() {
        return String.format(null, "%s-%s", f(this.f12171a), f(this.f12172b));
    }
}

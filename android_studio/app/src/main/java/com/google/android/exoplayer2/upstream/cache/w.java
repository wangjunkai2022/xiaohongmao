package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleCacheSpan.java */
/* loaded from: classes2.dex */
public final class w extends j {

    /* renamed from: g  reason: collision with root package name */
    static final String f27203g = ".exo";

    /* renamed from: h  reason: collision with root package name */
    private static final String f27204h = ".v3.exo";

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f27205i = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f27206j = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f27207k = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    private w(String str, long j4, long j10, long j11, @Nullable File file) {
        super(str, j4, j10, j11, file);
    }

    @Nullable
    public static w e(File file, long j4, long j10, m mVar) {
        File file2;
        String l10;
        String name = file.getName();
        if (name.endsWith(f27204h)) {
            file2 = file;
        } else {
            File k10 = k(file, mVar);
            if (k10 == null) {
                return null;
            }
            file2 = k10;
            name = k10.getName();
        }
        Matcher matcher = f27207k.matcher(name);
        if (matcher.matches() && (l10 = mVar.l(Integer.parseInt((String) com.google.android.exoplayer2.util.a.g(matcher.group(1))))) != null) {
            long length = j4 == -1 ? file2.length() : j4;
            if (length == 0) {
                return null;
            }
            return new w(l10, Long.parseLong((String) com.google.android.exoplayer2.util.a.g(matcher.group(2))), length, j10 == com.google.android.exoplayer2.i.f23649b ? Long.parseLong((String) com.google.android.exoplayer2.util.a.g(matcher.group(3))) : j10, file2);
        }
        return null;
    }

    @Nullable
    public static w f(File file, long j4, m mVar) {
        return e(file, j4, com.google.android.exoplayer2.i.f23649b, mVar);
    }

    public static w g(String str, long j4, long j10) {
        return new w(str, j4, j10, com.google.android.exoplayer2.i.f23649b, null);
    }

    public static w h(String str, long j4) {
        return new w(str, j4, -1L, com.google.android.exoplayer2.i.f23649b, null);
    }

    public static File i(File file, int i4, long j4, long j10) {
        StringBuilder sb = new StringBuilder(60);
        sb.append(i4);
        sb.append(".");
        sb.append(j4);
        sb.append(".");
        sb.append(j10);
        sb.append(f27204h);
        return new File(file, sb.toString());
    }

    @Nullable
    private static File k(File file, m mVar) {
        String str;
        String name = file.getName();
        Matcher matcher = f27206j.matcher(name);
        if (matcher.matches()) {
            str = z0.w1((String) com.google.android.exoplayer2.util.a.g(matcher.group(1)));
        } else {
            matcher = f27205i.matcher(name);
            str = matcher.matches() ? (String) com.google.android.exoplayer2.util.a.g(matcher.group(1)) : null;
        }
        if (str == null) {
            return null;
        }
        File i4 = i((File) com.google.android.exoplayer2.util.a.k(file.getParentFile()), mVar.f(str), Long.parseLong((String) com.google.android.exoplayer2.util.a.g(matcher.group(2))), Long.parseLong((String) com.google.android.exoplayer2.util.a.g(matcher.group(3))));
        if (file.renameTo(i4)) {
            return i4;
        }
        return null;
    }

    public w d(File file, long j4) {
        com.google.android.exoplayer2.util.a.i(this.f27108d);
        return new w(this.f27105a, this.f27106b, this.f27107c, j4, file);
    }
}

package com.google.android.exoplayer2.text.webvtt;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: WebvttParserUtil.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f25929a = Pattern.compile("^NOTE([ \t].*)?$");

    /* renamed from: b  reason: collision with root package name */
    private static final String f25930b = "WEBVTT";

    private i() {
    }

    @Nullable
    public static Matcher a(h0 h0Var) {
        String q9;
        while (true) {
            String q10 = h0Var.q();
            if (q10 == null) {
                return null;
            }
            if (f25929a.matcher(q10).matches()) {
                do {
                    q9 = h0Var.q();
                    if (q9 != null) {
                    }
                } while (!q9.isEmpty());
            } else {
                Matcher matcher = f.f25878f.matcher(q10);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }

    public static boolean b(h0 h0Var) {
        String q9 = h0Var.q();
        return q9 != null && q9.startsWith(f25930b);
    }

    public static float c(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long d(String str) throws NumberFormatException {
        String[] m12 = z0.m1(str, "\\.");
        long j4 = 0;
        for (String str2 : z0.l1(m12[0], ":")) {
            j4 = (j4 * 60) + Long.parseLong(str2);
        }
        long j10 = j4 * 1000;
        if (m12.length == 2) {
            j10 += Long.parseLong(m12[1]);
        }
        return j10 * 1000;
    }

    public static void e(h0 h0Var) throws ParserException {
        int e4 = h0Var.e();
        if (b(h0Var)) {
            return;
        }
        h0Var.S(e4);
        String valueOf = String.valueOf(h0Var.q());
        throw new ParserException(valueOf.length() != 0 ? "Expected WEBVTT. Got ".concat(valueOf) : new String("Expected WEBVTT. Got "));
    }
}

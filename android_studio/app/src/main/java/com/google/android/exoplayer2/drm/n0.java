package com.google.android.exoplayer2.drm;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Map;

/* compiled from: WidevineUtil.java */
/* loaded from: classes2.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f21801a = "LicenseDurationRemaining";

    /* renamed from: b  reason: collision with root package name */
    public static final String f21802b = "PlaybackDurationRemaining";

    private n0() {
    }

    private static long a(Map<String, String> map, String str) {
        if (map != null) {
            try {
                String str2 = map.get(str);
                return str2 != null ? Long.parseLong(str2) : com.google.android.exoplayer2.i.f23649b;
            } catch (NumberFormatException unused) {
                return com.google.android.exoplayer2.i.f23649b;
            }
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    @Nullable
    public static Pair<Long, Long> b(DrmSession drmSession) {
        Map<String, String> l10 = drmSession.l();
        if (l10 == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(l10, f21801a)), Long.valueOf(a(l10, f21802b)));
    }
}

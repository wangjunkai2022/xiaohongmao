package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ui.q;
import java.util.Locale;

/* compiled from: DefaultTrackNameProvider.java */
/* loaded from: classes2.dex */
public class h implements v0 {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f26371a;

    public h(Resources resources) {
        this.f26371a = (Resources) com.google.android.exoplayer2.util.a.g(resources);
    }

    private String b(Format format) {
        int i4 = format.channelCount;
        if (i4 == -1 || i4 < 1) {
            return "";
        }
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 6 || i4 == 7) {
                    return this.f26371a.getString(q.k.W);
                }
                if (i4 != 8) {
                    return this.f26371a.getString(q.k.V);
                }
                return this.f26371a.getString(q.k.X);
            }
            return this.f26371a.getString(q.k.U);
        }
        return this.f26371a.getString(q.k.J);
    }

    private String c(Format format) {
        int i4 = format.bitrate;
        return i4 == -1 ? "" : this.f26371a.getString(q.k.I, Float.valueOf(i4 / 1000000.0f));
    }

    private String d(Format format) {
        return TextUtils.isEmpty(format.label) ? "" : format.label;
    }

    private String e(Format format) {
        String j4 = j(f(format), h(format));
        return TextUtils.isEmpty(j4) ? d(format) : j4;
    }

    private String f(Format format) {
        String str = format.language;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        return (com.google.android.exoplayer2.util.z0.f27743a >= 21 ? Locale.forLanguageTag(str) : new Locale(str)).getDisplayName();
    }

    private String g(Format format) {
        int i4 = format.width;
        int i10 = format.height;
        return (i4 == -1 || i10 == -1) ? "" : this.f26371a.getString(q.k.K, Integer.valueOf(i4), Integer.valueOf(i10));
    }

    private String h(Format format) {
        String string = (format.roleFlags & 2) != 0 ? this.f26371a.getString(q.k.L) : "";
        if ((format.roleFlags & 4) != 0) {
            string = j(string, this.f26371a.getString(q.k.O));
        }
        if ((format.roleFlags & 8) != 0) {
            string = j(string, this.f26371a.getString(q.k.N));
        }
        return (format.roleFlags & 1088) != 0 ? j(string, this.f26371a.getString(q.k.M)) : string;
    }

    private static int i(Format format) {
        int l10 = com.google.android.exoplayer2.util.a0.l(format.sampleMimeType);
        if (l10 != -1) {
            return l10;
        }
        if (com.google.android.exoplayer2.util.a0.o(format.codecs) != null) {
            return 2;
        }
        if (com.google.android.exoplayer2.util.a0.c(format.codecs) != null) {
            return 1;
        }
        if (format.width == -1 && format.height == -1) {
            return (format.channelCount == -1 && format.sampleRate == -1) ? -1 : 1;
        }
        return 2;
    }

    private String j(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (str2.length() > 0) {
                str = TextUtils.isEmpty(str) ? str2 : this.f26371a.getString(q.k.H, str, str2);
            }
        }
        return str;
    }

    @Override // com.google.android.exoplayer2.ui.v0
    public String a(Format format) {
        String e4;
        int i4 = i(format);
        if (i4 == 2) {
            e4 = j(h(format), g(format), c(format));
        } else if (i4 == 1) {
            e4 = j(e(format), b(format), c(format));
        } else {
            e4 = e(format);
        }
        return e4.length() == 0 ? this.f26371a.getString(q.k.Y) : e4;
    }
}

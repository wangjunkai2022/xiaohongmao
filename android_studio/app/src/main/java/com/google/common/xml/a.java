package com.google.common.xml;

import com.google.common.escape.f;
import com.google.common.escape.g;
import kotlin.text.Typography;
import okio.Utf8;

/* compiled from: XmlEscapers.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final char f35397a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final char f35398b = 31;

    /* renamed from: c  reason: collision with root package name */
    private static final f f35399c;

    /* renamed from: d  reason: collision with root package name */
    private static final f f35400d;

    /* renamed from: e  reason: collision with root package name */
    private static final f f35401e;

    static {
        g.c b10 = g.b();
        b10.d((char) 0, Utf8.REPLACEMENT_CHARACTER);
        b10.e("�");
        for (char c10 = 0; c10 <= 31; c10 = (char) (c10 + 1)) {
            if (c10 != '\t' && c10 != '\n' && c10 != '\r') {
                b10.b(c10, "�");
            }
        }
        b10.b(Typography.amp, "&amp;");
        b10.b(Typography.less, "&lt;");
        b10.b(Typography.greater, "&gt;");
        f35400d = b10.c();
        b10.b('\'', "&apos;");
        b10.b('\"', "&quot;");
        f35399c = b10.c();
        b10.b('\t', "&#x9;");
        b10.b('\n', "&#xA;");
        b10.b('\r', "&#xD;");
        f35401e = b10.c();
    }

    private a() {
    }

    public static f a() {
        return f35401e;
    }

    public static f b() {
        return f35400d;
    }
}

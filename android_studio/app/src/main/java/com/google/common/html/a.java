package com.google.common.html;

import com.google.common.escape.f;
import com.google.common.escape.g;
import kotlin.text.Typography;

/* compiled from: HtmlEscapers.java */
@h3.b
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final f f34386a = g.b().b('\"', "&quot;").b('\'', "&#39;").b(Typography.amp, "&amp;").b(Typography.less, "&lt;").b(Typography.greater, "&gt;").c();

    private a() {
    }

    public static f a() {
        return f34386a;
    }
}

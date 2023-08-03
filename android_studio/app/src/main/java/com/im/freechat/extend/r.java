package com.im.freechat.extend;

import androidx.core.graphics.ColorUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StringExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u000e\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0000\u001a\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0000*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000\"\u0015\u0010\b\u001a\u00020\u0005*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"", "Ljava/io/File;", "c", "pattern", "b", "", "a", "(Ljava/lang/String;)I", "color", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class r {
    public static final int a(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return ColorUtils.HSLToColor(new float[]{Math.abs(str.hashCode() % 360), 0.6f, 0.4f});
    }

    @m8.h
    public static final String b(@m8.g String str, @m8.g String pattern) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Date parse = o.f().parse(str);
        if (parse == null) {
            return null;
        }
        return new SimpleDateFormat(pattern, Locale.US).format(parse);
    }

    @m8.h
    public static final File c(@m8.h String str) {
        if (str != null) {
            return new File(str);
        }
        return null;
    }
}

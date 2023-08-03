package com.qennnsad.aknkaksd.util.translation;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: Translator.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\n\u0010\u0001\u001a\u00020\u0000*\u00020\u0000\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0000*\u00020\u0000¨\u0006\u0005"}, d2 = {"", "c", "", "b", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f {
    @m8.g
    public static final String a(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String substring = str.substring(1, str.length() - 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final boolean b(@m8.g String str) {
        boolean startsWith$default;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "%", false, 2, null);
        if (startsWith$default) {
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, "%", false, 2, null);
            return endsWith$default;
        }
        return false;
    }

    @m8.g
    public static final String c(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return '%' + str + '%';
    }
}

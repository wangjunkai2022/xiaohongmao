package c9;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import m8.g;

/* compiled from: StringExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\n\u0010\u0001\u001a\u00020\u0000*\u00020\u0000¨\u0006\u0002"}, d2 = {"", "a", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class c {
    @g
    public static final String a(@g String str) {
        char first;
        char last;
        int lastIndex;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() <= 1) {
            return str;
        }
        first = StringsKt___StringsKt.first(str);
        if (first == '\"') {
            last = StringsKt___StringsKt.last(str);
            if (last == '\"') {
                lastIndex = StringsKt__StringsKt.getLastIndex(str);
                String substring = str.substring(1, lastIndex);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring;
            }
            return str;
        }
        return str;
    }
}

package kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize;

import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringsKt;
import m8.g;

/* compiled from: capitalizeDecapitalize.kt */
/* loaded from: classes4.dex */
public final class CapitalizeDecapitalizeKt {
    @g
    public static final String capitalizeAsciiOnly(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        boolean z9 = false;
        if (str.length() == 0) {
            return str;
        }
        char charAt = str.charAt(0);
        if ('a' <= charAt && charAt < '{') {
            z9 = true;
        }
        if (z9) {
            char upperCase = Character.toUpperCase(charAt);
            String substring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            return upperCase + substring;
        }
        return str;
    }

    @g
    public static final String decapitalizeAsciiOnly(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        boolean z9 = false;
        if (str.length() == 0) {
            return str;
        }
        char charAt = str.charAt(0);
        if ('A' <= charAt && charAt < '[') {
            z9 = true;
        }
        if (z9) {
            char lowerCase = Character.toLowerCase(charAt);
            String substring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            return lowerCase + substring;
        }
        return str;
    }

    @g
    public static final String decapitalizeSmartForCompiler(@g String str, boolean z9) {
        IntRange indices;
        Integer num;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if ((str.length() == 0) || !isUpperCaseCharAt(str, 0, z9)) {
            return str;
        }
        if (str.length() == 1 || !isUpperCaseCharAt(str, 1, z9)) {
            if (z9) {
                return decapitalizeAsciiOnly(str);
            }
            if (str.length() > 0) {
                char lowerCase = Character.toLowerCase(str.charAt(0));
                String substring = str.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                return lowerCase + substring;
            }
            return str;
        }
        indices = StringsKt__StringsKt.getIndices(str);
        Iterator<Integer> it = indices.iterator();
        while (true) {
            if (!it.hasNext()) {
                num = null;
                break;
            }
            num = it.next();
            if (!isUpperCaseCharAt(str, num.intValue(), z9)) {
                break;
            }
        }
        Integer num2 = num;
        if (num2 != null) {
            int intValue = num2.intValue() - 1;
            StringBuilder sb = new StringBuilder();
            String substring2 = str.substring(0, intValue);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(toLowerCase(substring2, z9));
            String substring3 = str.substring(intValue);
            Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
            sb.append(substring3);
            return sb.toString();
        }
        return toLowerCase(str, z9);
    }

    private static final boolean isUpperCaseCharAt(String str, int i4, boolean z9) {
        char charAt = str.charAt(i4);
        if (z9) {
            return 'A' <= charAt && charAt < '[';
        }
        return Character.isUpperCase(charAt);
    }

    private static final String toLowerCase(String str, boolean z9) {
        if (z9) {
            return toLowerCaseAsciiOnly(str);
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @g
    public static final String toLowerCaseAsciiOnly(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            if ('A' <= charAt && charAt < '[') {
                charAt = Character.toLowerCase(charAt);
            }
            sb.append(charAt);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "builder.toString()");
        return sb2;
    }
}

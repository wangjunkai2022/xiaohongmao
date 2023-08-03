package kotlin.text;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import m8.g;
import m8.h;

@Metadata(d1 = {"kotlin/text/StringsKt__AppendableKt", "kotlin/text/StringsKt__IndentKt", "kotlin/text/StringsKt__RegexExtensionsJVMKt", "kotlin/text/StringsKt__RegexExtensionsKt", "kotlin/text/StringsKt__StringBuilderJVMKt", "kotlin/text/StringsKt__StringBuilderKt", "kotlin/text/StringsKt__StringNumberConversionsJVMKt", "kotlin/text/StringsKt__StringNumberConversionsKt", "kotlin/text/StringsKt__StringsJVMKt", "kotlin/text/StringsKt__StringsKt", "kotlin/text/StringsKt___StringsJvmKt", "kotlin/text/StringsKt___StringsKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes4.dex */
public final class StringsKt extends StringsKt___StringsKt {
    private StringsKt() {
    }

    @g
    public static /* bridge */ /* synthetic */ StringBuilder append(@g StringBuilder sb, @g String... strArr) {
        return StringsKt__StringBuilderKt.append(sb, strArr);
    }

    public static /* bridge */ /* synthetic */ boolean equals(@h String str, @h String str2, boolean z9) {
        return StringsKt__StringsJVMKt.equals(str, str2, z9);
    }

    @g
    public static /* bridge */ /* synthetic */ Comparator getCASE_INSENSITIVE_ORDER(@g StringCompanionObject stringCompanionObject) {
        return StringsKt__StringsJVMKt.getCASE_INSENSITIVE_ORDER(stringCompanionObject);
    }

    public static /* bridge */ /* synthetic */ int indexOf$default(CharSequence charSequence, char c10, int i4, boolean z9, int i10, Object obj) {
        return StringsKt__StringsKt.indexOf$default(charSequence, c10, i4, z9, i10, obj);
    }

    public static /* bridge */ /* synthetic */ boolean isBlank(@g CharSequence charSequence) {
        return StringsKt__StringsJVMKt.isBlank(charSequence);
    }

    public static /* bridge */ /* synthetic */ String substringAfterLast$default(String str, char c10, String str2, int i4, Object obj) {
        return StringsKt__StringsKt.substringAfterLast$default(str, c10, str2, i4, obj);
    }
}

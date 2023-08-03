package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: RenderingUtils.kt */
/* loaded from: classes4.dex */
public final class RenderingUtilsKt {
    @g
    public static final String render(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "<this>");
        if (!shouldBeEscaped(name)) {
            String asString = name.asString();
            Intrinsics.checkNotNullExpressionValue(asString, "asString()");
            return asString;
        }
        StringBuilder sb = new StringBuilder();
        String asString2 = name.asString();
        Intrinsics.checkNotNullExpressionValue(asString2, "asString()");
        sb.append('`' + asString2);
        sb.append('`');
        return sb.toString();
    }

    @g
    public static final String renderFqName(@g List<Name> pathSegments) {
        Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
        StringBuilder sb = new StringBuilder();
        for (Name name : pathSegments) {
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(render(name));
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    private static final boolean shouldBeEscaped(Name name) {
        boolean z9;
        String asString = name.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "asString()");
        if (!KeywordStringsGenerated.KEYWORDS.contains(asString)) {
            int i4 = 0;
            while (true) {
                if (i4 >= asString.length()) {
                    z9 = false;
                    break;
                }
                char charAt = asString.charAt(i4);
                if ((Character.isLetterOrDigit(charAt) || charAt == '_') ? false : true) {
                    z9 = true;
                    break;
                }
                i4++;
            }
            if (!z9) {
                return false;
            }
        }
        return true;
    }

    @g
    public static final String render(@g FqNameUnsafe fqNameUnsafe) {
        Intrinsics.checkNotNullParameter(fqNameUnsafe, "<this>");
        List<Name> pathSegments = fqNameUnsafe.pathSegments();
        Intrinsics.checkNotNullExpressionValue(pathSegments, "pathSegments()");
        return renderFqName(pathSegments);
    }
}

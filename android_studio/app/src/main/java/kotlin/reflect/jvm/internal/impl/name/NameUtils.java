package kotlin.reflect.jvm.internal.impl.name;

import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import m8.g;

/* compiled from: NameUtils.kt */
/* loaded from: classes4.dex */
public final class NameUtils {
    @g
    public static final NameUtils INSTANCE = new NameUtils();
    @g
    private static final Regex SANITIZE_AS_JAVA_INVALID_CHARACTERS = new Regex("[^\\p{L}\\p{Digit}]");

    private NameUtils() {
    }

    @JvmStatic
    @g
    public static final String sanitizeAsJavaIdentifier(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return SANITIZE_AS_JAVA_INVALID_CHARACTERS.replace(name, "_");
    }
}

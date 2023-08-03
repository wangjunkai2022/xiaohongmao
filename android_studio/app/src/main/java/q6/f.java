package q6;

import java.util.Objects;

/* compiled from: Preconditions.java */
/* loaded from: classes3.dex */
public final class f {
    private f() {
    }

    public static void a(boolean expression, String errorMessageTemplate, Object... args) {
        if (!expression) {
            throw new IllegalArgumentException(String.format(errorMessageTemplate, args));
        }
    }

    public static <T> T b(T reference) {
        Objects.requireNonNull(reference);
        return reference;
    }

    public static <T> T c(T reference, String errorMessage) {
        Objects.requireNonNull(reference, errorMessage);
        return reference;
    }

    public static void d(boolean expression, String errorMessageTemplate, Object... args) {
        if (!expression) {
            throw new IllegalStateException(String.format(errorMessageTemplate, args));
        }
    }
}

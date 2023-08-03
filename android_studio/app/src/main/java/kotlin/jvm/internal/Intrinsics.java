package kotlin.jvm.internal;

import com.fasterxml.jackson.core.e;
import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.SinceKotlin;
import kotlin.UninitializedPropertyAccessException;

/* loaded from: classes4.dex */
public class Intrinsics {

    @SinceKotlin(version = "1.4")
    /* loaded from: classes4.dex */
    public static class Kotlin {
        private Kotlin() {
        }
    }

    private Intrinsics() {
    }

    public static boolean areEqual(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void checkExpressionValueIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException(str + " must not be null")));
    }

    public static void checkFieldIsNotNull(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException("Field specified as non-null is null: " + str + "." + str2)));
    }

    public static void checkHasClass(String str) throws ClassNotFoundException {
        String replace = str.replace(e.f13819f, '.');
        try {
            Class.forName(replace);
        } catch (ClassNotFoundException e4) {
            throw ((ClassNotFoundException) sanitizeStackTrace(new ClassNotFoundException("Class " + replace + " is not found. Please update the Kotlin runtime to the latest version", e4)));
        }
    }

    public static void checkNotNull(Object obj) {
        if (obj == null) {
            throwJavaNpe();
        }
    }

    public static void checkNotNullExpressionValue(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) sanitizeStackTrace(new NullPointerException(str + " must not be null")));
    }

    public static void checkNotNullParameter(Object obj, String str) {
        if (obj == null) {
            throwParameterIsNullNPE(str);
        }
    }

    public static void checkParameterIsNotNull(Object obj, String str) {
        if (obj == null) {
            throwParameterIsNullIAE(str);
        }
    }

    public static void checkReturnedValueIsNotNull(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException("Method specified as non-null returned null: " + str + "." + str2)));
    }

    public static int compare(int i4, int i10) {
        if (i4 < i10) {
            return -1;
        }
        return i4 == i10 ? 0 : 1;
    }

    public static int compare(long j4, long j10) {
        int i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
        if (i4 < 0) {
            return -1;
        }
        return i4 == 0 ? 0 : 1;
    }

    private static String createParameterIsNullExceptionMessage(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        return "Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str;
    }

    public static void needClassReification() {
        throwUndefinedForReified();
    }

    public static void reifiedOperationMarker(int i4, String str) {
        throwUndefinedForReified();
    }

    private static <T extends Throwable> T sanitizeStackTrace(T t9) {
        return (T) sanitizeStackTrace(t9, Intrinsics.class.getName());
    }

    public static String stringPlus(String str, Object obj) {
        return str + obj;
    }

    public static void throwAssert() {
        throw ((AssertionError) sanitizeStackTrace(new AssertionError()));
    }

    public static void throwIllegalArgument() {
        throw ((IllegalArgumentException) sanitizeStackTrace(new IllegalArgumentException()));
    }

    public static void throwIllegalState() {
        throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException()));
    }

    @SinceKotlin(version = "1.4")
    public static void throwJavaNpe() {
        throw ((NullPointerException) sanitizeStackTrace(new NullPointerException()));
    }

    public static void throwNpe() {
        throw ((KotlinNullPointerException) sanitizeStackTrace(new KotlinNullPointerException()));
    }

    private static void throwParameterIsNullIAE(String str) {
        throw ((IllegalArgumentException) sanitizeStackTrace(new IllegalArgumentException(createParameterIsNullExceptionMessage(str))));
    }

    private static void throwParameterIsNullNPE(String str) {
        throw ((NullPointerException) sanitizeStackTrace(new NullPointerException(createParameterIsNullExceptionMessage(str))));
    }

    public static void throwUndefinedForReified() {
        throwUndefinedForReified("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void throwUninitializedProperty(String str) {
        throw ((UninitializedPropertyAccessException) sanitizeStackTrace(new UninitializedPropertyAccessException(str)));
    }

    public static void throwUninitializedPropertyAccessException(String str) {
        throwUninitializedProperty("lateinit property " + str + " has not been initialized");
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Double d4, Double d10) {
        if (d4 == null) {
            if (d10 == null) {
                return true;
            }
        } else if (d10 != null && d4.doubleValue() == d10.doubleValue()) {
            return true;
        }
        return false;
    }

    public static void checkFieldIsNotNull(Object obj, String str) {
        if (obj == null) {
            throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException(str)));
        }
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj == null) {
            throwJavaNpe(str);
        }
    }

    public static void checkReturnedValueIsNotNull(Object obj, String str) {
        if (obj == null) {
            throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException(str)));
        }
    }

    public static void needClassReification(String str) {
        throwUndefinedForReified(str);
    }

    public static void reifiedOperationMarker(int i4, String str, String str2) {
        throwUndefinedForReified(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends Throwable> T sanitizeStackTrace(T t9, String str) {
        StackTraceElement[] stackTrace = t9.getStackTrace();
        int length = stackTrace.length;
        int i4 = -1;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equals(stackTrace[i10].getClassName())) {
                i4 = i10;
            }
        }
        t9.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i4 + 1, length));
        return t9;
    }

    public static void throwAssert(String str) {
        throw ((AssertionError) sanitizeStackTrace(new AssertionError(str)));
    }

    public static void throwIllegalArgument(String str) {
        throw ((IllegalArgumentException) sanitizeStackTrace(new IllegalArgumentException(str)));
    }

    public static void throwIllegalState(String str) {
        throw ((IllegalStateException) sanitizeStackTrace(new IllegalStateException(str)));
    }

    @SinceKotlin(version = "1.4")
    public static void throwJavaNpe(String str) {
        throw ((NullPointerException) sanitizeStackTrace(new NullPointerException(str)));
    }

    public static void throwNpe(String str) {
        throw ((KotlinNullPointerException) sanitizeStackTrace(new KotlinNullPointerException(str)));
    }

    public static void throwUndefinedForReified(String str) {
        throw new UnsupportedOperationException(str);
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Double d4, double d10) {
        return d4 != null && d4.doubleValue() == d10;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(double d4, Double d10) {
        return d10 != null && d4 == d10.doubleValue();
    }

    public static void checkHasClass(String str, String str2) throws ClassNotFoundException {
        String replace = str.replace(e.f13819f, '.');
        try {
            Class.forName(replace);
        } catch (ClassNotFoundException e4) {
            throw ((ClassNotFoundException) sanitizeStackTrace(new ClassNotFoundException("Class " + replace + " is not found: this code requires the Kotlin runtime of version at least " + str2, e4)));
        }
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Float f10, Float f11) {
        if (f10 == null) {
            if (f11 == null) {
                return true;
            }
        } else if (f11 != null && f10.floatValue() == f11.floatValue()) {
            return true;
        }
        return false;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Float f10, float f11) {
        return f10 != null && f10.floatValue() == f11;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(float f10, Float f11) {
        return f11 != null && f10 == f11.floatValue();
    }
}

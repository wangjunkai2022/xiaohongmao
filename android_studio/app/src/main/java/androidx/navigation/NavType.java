package androidx.navigation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.AnyRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;
import okhttp3.HttpUrl;

/* compiled from: NavType.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\t\b&\u0018\u0000 \u0019*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0006\u0019\u001a\u001b\u001c\u001d\u001eB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J \u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH¦\u0002¢\u0006\u0002\u0010\u000fJ%\u0010\u0010\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\bH&¢\u0006\u0002\u0010\u0014J%\u0010\u0015\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001f"}, d2 = {"Landroidx/navigation/NavType;", ExifInterface.GPS_DIRECTION_TRUE, "", "isNullableAllowed", "", "(Z)V", "()Z", "name", "", "getName", "()Ljava/lang/String;", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;", "parseAndPut", "value", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "parseValue", "(Ljava/lang/String;)Ljava/lang/Object;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V", "toString", "Companion", "EnumType", "ParcelableArrayType", "ParcelableType", "SerializableArrayType", "SerializableType", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class NavType<T> {
    private final boolean isNullableAllowed;
    @g
    private final String name = "nav_type";
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final NavType<Integer> IntType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$IntType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return TypedValues.Custom.S_INT;
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
            put(bundle, str, num.intValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Integer get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Int");
            return Integer.valueOf(((Integer) obj).intValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Integer parseValue(@g String value) {
            boolean startsWith$default;
            int parseInt;
            int checkRadix;
            Intrinsics.checkNotNullParameter(value, "value");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(value, "0x", false, 2, null);
            if (startsWith$default) {
                String substring = value.substring(2);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                checkRadix = CharsKt__CharJVMKt.checkRadix(16);
                parseInt = Integer.parseInt(substring, checkRadix);
            } else {
                parseInt = Integer.parseInt(value);
            }
            return Integer.valueOf(parseInt);
        }

        public void put(@g Bundle bundle, @g String key, int i4) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putInt(key, i4);
        }
    };
    @JvmField
    @g
    public static final NavType<Integer> ReferenceType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$ReferenceType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return "reference";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
            put(bundle, str, num.intValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @AnyRes
        @g
        public Integer get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Int");
            return Integer.valueOf(((Integer) obj).intValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Integer parseValue(@g String value) {
            boolean startsWith$default;
            int parseInt;
            int checkRadix;
            Intrinsics.checkNotNullParameter(value, "value");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(value, "0x", false, 2, null);
            if (startsWith$default) {
                String substring = value.substring(2);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                checkRadix = CharsKt__CharJVMKt.checkRadix(16);
                parseInt = Integer.parseInt(substring, checkRadix);
            } else {
                parseInt = Integer.parseInt(value);
            }
            return Integer.valueOf(parseInt);
        }

        public void put(@g Bundle bundle, @g String key, @AnyRes int i4) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putInt(key, i4);
        }
    };
    @JvmField
    @g
    public static final NavType<int[]> IntArrayType = new NavType<int[]>() { // from class: androidx.navigation.NavType$Companion$IntArrayType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return "integer[]";
        }

        @Override // androidx.navigation.NavType
        @h
        public int[] get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (int[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @g
        public int[] parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h int[] iArr) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putIntArray(key, iArr);
        }
    };
    @JvmField
    @g
    public static final NavType<Long> LongType = new NavType<Long>() { // from class: androidx.navigation.NavType$Companion$LongType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return "long";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Long l10) {
            put(bundle, str, l10.longValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Long get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Long");
            return Long.valueOf(((Long) obj).longValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Long parseValue(@g String value) {
            boolean endsWith$default;
            String str;
            boolean startsWith$default;
            long parseLong;
            int checkRadix;
            Intrinsics.checkNotNullParameter(value, "value");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(value, "L", false, 2, null);
            if (endsWith$default) {
                str = value.substring(0, value.length() - 1);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
            } else {
                str = value;
            }
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(value, "0x", false, 2, null);
            if (startsWith$default) {
                String substring = str.substring(2);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                checkRadix = CharsKt__CharJVMKt.checkRadix(16);
                parseLong = Long.parseLong(substring, checkRadix);
            } else {
                parseLong = Long.parseLong(str);
            }
            return Long.valueOf(parseLong);
        }

        public void put(@g Bundle bundle, @g String key, long j4) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putLong(key, j4);
        }
    };
    @JvmField
    @g
    public static final NavType<long[]> LongArrayType = new NavType<long[]>() { // from class: androidx.navigation.NavType$Companion$LongArrayType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return "long[]";
        }

        @Override // androidx.navigation.NavType
        @h
        public long[] get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (long[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @g
        public long[] parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h long[] jArr) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putLongArray(key, jArr);
        }
    };
    @JvmField
    @g
    public static final NavType<Float> FloatType = new NavType<Float>() { // from class: androidx.navigation.NavType$Companion$FloatType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return TypedValues.Custom.S_FLOAT;
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Float f10) {
            put(bundle, str, f10.floatValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Float get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = bundle.get(key);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Float");
            return Float.valueOf(((Float) obj).floatValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Float parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return Float.valueOf(Float.parseFloat(value));
        }

        public void put(@g Bundle bundle, @g String key, float f10) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putFloat(key, f10);
        }
    };
    @JvmField
    @g
    public static final NavType<float[]> FloatArrayType = new NavType<float[]>() { // from class: androidx.navigation.NavType$Companion$FloatArrayType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return "float[]";
        }

        @Override // androidx.navigation.NavType
        @h
        public float[] get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (float[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @g
        public float[] parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h float[] fArr) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putFloatArray(key, fArr);
        }
    };
    @JvmField
    @g
    public static final NavType<Boolean> BoolType = new NavType<Boolean>() { // from class: androidx.navigation.NavType$Companion$BoolType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return TypedValues.Custom.S_BOOLEAN;
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Boolean bool) {
            put(bundle, str, bool.booleanValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @h
        public Boolean get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (Boolean) bundle.get(key);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @g
        public Boolean parseValue(@g String value) {
            boolean z9;
            Intrinsics.checkNotNullParameter(value, "value");
            if (Intrinsics.areEqual(value, "true")) {
                z9 = true;
            } else if (!Intrinsics.areEqual(value, "false")) {
                throw new IllegalArgumentException("A boolean NavType only accepts \"true\" or \"false\" values.");
            } else {
                z9 = false;
            }
            return Boolean.valueOf(z9);
        }

        public void put(@g Bundle bundle, @g String key, boolean z9) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putBoolean(key, z9);
        }
    };
    @JvmField
    @g
    public static final NavType<boolean[]> BoolArrayType = new NavType<boolean[]>() { // from class: androidx.navigation.NavType$Companion$BoolArrayType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return "boolean[]";
        }

        @Override // androidx.navigation.NavType
        @h
        public boolean[] get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (boolean[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @g
        public boolean[] parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h boolean[] zArr) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putBooleanArray(key, zArr);
        }
    };
    @JvmField
    @g
    public static final NavType<String> StringType = new NavType<String>() { // from class: androidx.navigation.NavType$Companion$StringType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return TypedValues.Custom.S_STRING;
        }

        @Override // androidx.navigation.NavType
        @g
        public String parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }

        @Override // androidx.navigation.NavType
        @h
        public String get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (String) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h String str) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putString(key, str);
        }
    };
    @JvmField
    @g
    public static final NavType<String[]> StringArrayType = new NavType<String[]>() { // from class: androidx.navigation.NavType$Companion$StringArrayType$1
        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            return "string[]";
        }

        @Override // androidx.navigation.NavType
        @h
        public String[] get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (String[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @h
        public String[] parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h String[] strArr) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            bundle.putStringArray(key, strArr);
        }
    };

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0017J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u001d\u001a\u00020\u0017H\u0007J\u0018\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0007R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00160\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Landroidx/navigation/NavType$Companion;", "", "()V", "BoolArrayType", "Landroidx/navigation/NavType;", "", "BoolType", "", "FloatArrayType", "", "FloatType", "", "IntArrayType", "", "IntType", "", "LongArrayType", "", "LongType", "", "ReferenceType", "StringArrayType", "", "", "StringType", "fromArgType", "type", "packageName", "inferFromValue", "value", "inferFromValueType", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public NavType<?> fromArgType(@h String str, @h String str2) {
            boolean startsWith$default;
            String str3;
            boolean endsWith$default;
            NavType<Integer> navType = NavType.IntType;
            if (Intrinsics.areEqual(navType.getName(), str)) {
                return navType;
            }
            NavType navType2 = NavType.IntArrayType;
            if (Intrinsics.areEqual(navType2.getName(), str)) {
                return navType2;
            }
            NavType<Long> navType3 = NavType.LongType;
            if (Intrinsics.areEqual(navType3.getName(), str)) {
                return navType3;
            }
            NavType navType4 = NavType.LongArrayType;
            if (Intrinsics.areEqual(navType4.getName(), str)) {
                return navType4;
            }
            NavType<Boolean> navType5 = NavType.BoolType;
            if (Intrinsics.areEqual(navType5.getName(), str)) {
                return navType5;
            }
            NavType navType6 = NavType.BoolArrayType;
            if (Intrinsics.areEqual(navType6.getName(), str)) {
                return navType6;
            }
            NavType<String> navType7 = NavType.StringType;
            if (Intrinsics.areEqual(navType7.getName(), str)) {
                return navType7;
            }
            NavType navType8 = NavType.StringArrayType;
            if (Intrinsics.areEqual(navType8.getName(), str)) {
                return navType8;
            }
            NavType<Float> navType9 = NavType.FloatType;
            if (Intrinsics.areEqual(navType9.getName(), str)) {
                return navType9;
            }
            NavType navType10 = NavType.FloatArrayType;
            if (Intrinsics.areEqual(navType10.getName(), str)) {
                return navType10;
            }
            NavType<Integer> navType11 = NavType.ReferenceType;
            if (Intrinsics.areEqual(navType11.getName(), str)) {
                return navType11;
            }
            if (str == null || str.length() == 0) {
                return navType7;
            }
            try {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, ".", false, 2, null);
                if (!startsWith$default || str2 == null) {
                    str3 = str;
                } else {
                    str3 = str2 + str;
                }
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, false, 2, null);
                if (endsWith$default) {
                    str3 = str3.substring(0, str3.length() - 2);
                    Intrinsics.checkNotNullExpressionValue(str3, "this as java.lang.String…ing(startIndex, endIndex)");
                    Class<?> cls = Class.forName(str3);
                    if (Parcelable.class.isAssignableFrom(cls)) {
                        return new ParcelableArrayType(cls);
                    }
                    if (Serializable.class.isAssignableFrom(cls)) {
                        return new SerializableArrayType(cls);
                    }
                } else {
                    Class<?> cls2 = Class.forName(str3);
                    if (Parcelable.class.isAssignableFrom(cls2)) {
                        return new ParcelableType(cls2);
                    }
                    if (Enum.class.isAssignableFrom(cls2)) {
                        return new EnumType(cls2);
                    }
                    if (Serializable.class.isAssignableFrom(cls2)) {
                        return new SerializableType(cls2);
                    }
                }
                throw new IllegalArgumentException(str3 + " is not Serializable or Parcelable.");
            } catch (ClassNotFoundException e4) {
                throw new RuntimeException(e4);
            }
        }

        @JvmStatic
        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final NavType<Object> inferFromValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                try {
                    try {
                        try {
                            NavType<Integer> navType = NavType.IntType;
                            navType.parseValue(value);
                            return navType;
                        } catch (IllegalArgumentException unused) {
                            NavType<Boolean> navType2 = NavType.BoolType;
                            navType2.parseValue(value);
                            return navType2;
                        }
                    } catch (IllegalArgumentException unused2) {
                        return NavType.StringType;
                    }
                } catch (IllegalArgumentException unused3) {
                    NavType<Long> navType3 = NavType.LongType;
                    navType3.parseValue(value);
                    return navType3;
                }
            } catch (IllegalArgumentException unused4) {
                NavType<Float> navType4 = NavType.FloatType;
                navType4.parseValue(value);
                return navType4;
            }
        }

        @JvmStatic
        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final NavType<Object> inferFromValueType(@h Object obj) {
            NavType<Object> serializableType;
            if (obj instanceof Integer) {
                return NavType.IntType;
            }
            if (obj instanceof int[]) {
                return NavType.IntArrayType;
            }
            if (obj instanceof Long) {
                return NavType.LongType;
            }
            if (obj instanceof long[]) {
                return NavType.LongArrayType;
            }
            if (obj instanceof Float) {
                return NavType.FloatType;
            }
            if (obj instanceof float[]) {
                return NavType.FloatArrayType;
            }
            if (obj instanceof Boolean) {
                return NavType.BoolType;
            }
            if (obj instanceof boolean[]) {
                return NavType.BoolArrayType;
            }
            if (!(obj instanceof String) && obj != null) {
                if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
                    return NavType.StringArrayType;
                }
                if (obj.getClass().isArray()) {
                    Class<?> componentType = obj.getClass().getComponentType();
                    Intrinsics.checkNotNull(componentType);
                    if (Parcelable.class.isAssignableFrom(componentType)) {
                        Class<?> componentType2 = obj.getClass().getComponentType();
                        Objects.requireNonNull(componentType2, "null cannot be cast to non-null type java.lang.Class<android.os.Parcelable>");
                        serializableType = new ParcelableArrayType<>(componentType2);
                        return serializableType;
                    }
                }
                if (obj.getClass().isArray()) {
                    Class<?> componentType3 = obj.getClass().getComponentType();
                    Intrinsics.checkNotNull(componentType3);
                    if (Serializable.class.isAssignableFrom(componentType3)) {
                        Class<?> componentType4 = obj.getClass().getComponentType();
                        Objects.requireNonNull(componentType4, "null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                        serializableType = new SerializableArrayType<>(componentType4);
                        return serializableType;
                    }
                }
                if (obj instanceof Parcelable) {
                    serializableType = new ParcelableType<>(obj.getClass());
                } else if (obj instanceof Enum) {
                    serializableType = new EnumType<>(obj.getClass());
                } else if (!(obj instanceof Serializable)) {
                    throw new IllegalArgumentException("Object of type " + obj.getClass().getName() + " is not supported for navigation arguments.");
                } else {
                    serializableType = new SerializableType<>(obj.getClass());
                }
                return serializableType;
            }
            return NavType.StringType;
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J&\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u001aJ-\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001dR\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, d2 = {"Landroidx/navigation/NavType$ParcelableArrayType;", "D", "Landroid/os/Parcelable;", "Landroidx/navigation/NavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "arrayType", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Parcelable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)[Landroid/os/Parcelable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ParcelableArrayType<D extends Parcelable> extends NavType<D[]> {
        @g
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableArrayType(@g Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            if (Parcelable.class.isAssignableFrom(type)) {
                try {
                    this.arrayType = (Class<D[]>) Class.forName("[L" + type.getName() + ';');
                    return;
                } catch (ClassNotFoundException e4) {
                    throw new RuntimeException(e4);
                }
            }
            throw new IllegalArgumentException((type + " does not implement Parcelable.").toString());
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Intrinsics.areEqual(ParcelableArrayType.class, obj.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((ParcelableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            String name = this.arrayType.getName();
            Intrinsics.checkNotNullExpressionValue(name, "arrayType.name");
            return name;
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        @h
        public D[] get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D[]) ((Parcelable[]) bundle.get(key));
        }

        @Override // androidx.navigation.NavType
        @g
        public D[] parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h D[] dArr) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            this.arrayType.cast(dArr);
            bundle.putParcelableArray(key, dArr);
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J \u0010\u000e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0015\u0010\u0015\u001a\u00028\u00012\u0006\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\u0017J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/navigation/NavType$ParcelableType;", "D", "Landroidx/navigation/NavType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Object;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ParcelableType<D> extends NavType<D> {
        @g
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableType(@g Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            boolean z9 = true;
            if (!Parcelable.class.isAssignableFrom(type) && !Serializable.class.isAssignableFrom(type)) {
                z9 = false;
            }
            if (z9) {
                this.type = type;
                return;
            }
            throw new IllegalArgumentException((type + " does not implement Parcelable or Serializable.").toString());
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Intrinsics.areEqual(ParcelableType.class, obj.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.type, ((ParcelableType) obj).type);
        }

        @Override // androidx.navigation.NavType
        @h
        public D get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            String name = this.type.getName();
            Intrinsics.checkNotNullExpressionValue(name, "type.name");
            return name;
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, D d4) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            this.type.cast(d4);
            if (d4 != null && !(d4 instanceof Parcelable)) {
                if (d4 instanceof Serializable) {
                    bundle.putSerializable(key, (Serializable) d4);
                    return;
                }
                return;
            }
            bundle.putParcelable(key, (Parcelable) d4);
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J&\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u001aJ-\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001dR\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, d2 = {"Landroidx/navigation/NavType$SerializableArrayType;", "D", "Ljava/io/Serializable;", "Landroidx/navigation/NavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "arrayType", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/io/Serializable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)[Ljava/io/Serializable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;[Ljava/io/Serializable;)V", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SerializableArrayType<D extends Serializable> extends NavType<D[]> {
        @g
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableArrayType(@g Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            if (Serializable.class.isAssignableFrom(type)) {
                try {
                    this.arrayType = (Class<D[]>) Class.forName("[L" + type.getName() + ';');
                    return;
                } catch (ClassNotFoundException e4) {
                    throw new RuntimeException(e4);
                }
            }
            throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Intrinsics.areEqual(SerializableArrayType.class, obj.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((SerializableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            String name = this.arrayType.getName();
            Intrinsics.checkNotNullExpressionValue(name, "arrayType.name");
            return name;
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        @h
        public D[] get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D[]) ((Serializable[]) bundle.get(key));
        }

        @Override // androidx.navigation.NavType
        @g
        public D[] parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(@g Bundle bundle, @g String key, @h D[] dArr) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            this.arrayType.cast(dArr);
            bundle.putSerializable(key, (Serializable) dArr);
        }
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006B\u001d\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\tJ\u0013\u0010\u000e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J \u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0015\u0010\u0018\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0002\u0010\u001aJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001dR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/navigation/NavType$SerializableType;", "D", "Ljava/io/Serializable;", "Landroidx/navigation/NavType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "nullableAllowed", "", "(ZLjava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "equals", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)Ljava/io/Serializable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static class SerializableType<D extends Serializable> extends NavType<D> {
        @g
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(@g Class<D> type) {
            super(true);
            Intrinsics.checkNotNullParameter(type, "type");
            if (Serializable.class.isAssignableFrom(type)) {
                if (true ^ type.isEnum()) {
                    this.type = type;
                    return;
                }
                throw new IllegalArgumentException((type + " is an Enum. You should use EnumType instead.").toString());
            }
            throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SerializableType) {
                return Intrinsics.areEqual(this.type, ((SerializableType) obj).type);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        @g
        public String getName() {
            String name = this.type.getName();
            Intrinsics.checkNotNullExpressionValue(name, "type.name");
            return name;
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Object obj) {
            put(bundle, str, (String) obj);
        }

        @Override // androidx.navigation.NavType
        @h
        public D get(@g Bundle bundle, @g String key) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            return (D) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @g
        public D parseValue(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        public void put(@g Bundle bundle, @g String key, @g D value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this.type.cast(value);
            bundle.putSerializable(key, value);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(boolean z9, @g Class<D> type) {
            super(z9);
            Intrinsics.checkNotNullParameter(type, "type");
            if (Serializable.class.isAssignableFrom(type)) {
                this.type = type;
                return;
            }
            throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
        }
    }

    public NavType(boolean z9) {
        this.isNullableAllowed = z9;
    }

    @JvmStatic
    @g
    public static NavType<?> fromArgType(@h String str, @h String str2) {
        return Companion.fromArgType(str, str2);
    }

    @JvmStatic
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final NavType<Object> inferFromValue(@g String str) {
        return Companion.inferFromValue(str);
    }

    @JvmStatic
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final NavType<Object> inferFromValueType(@h Object obj) {
        return Companion.inferFromValueType(obj);
    }

    @h
    public abstract T get(@g Bundle bundle, @g String str);

    @g
    public String getName() {
        return this.name;
    }

    public boolean isNullableAllowed() {
        return this.isNullableAllowed;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final T parseAndPut(@g Bundle bundle, @g String key, @g String value) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        T parseValue = parseValue(value);
        put(bundle, key, parseValue);
        return parseValue;
    }

    public abstract T parseValue(@g String str);

    public abstract void put(@g Bundle bundle, @g String str, T t9);

    @g
    public String toString() {
        return getName();
    }

    /* compiled from: NavType.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000*\f\b\u0001\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u000b\u001a\u00028\u00012\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\rR\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/navigation/NavType$EnumType;", "D", "", "Landroidx/navigation/NavType$SerializableType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Enum;", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class EnumType<D extends Enum<?>> extends SerializableType<D> {
        @g
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumType(@g Class<D> type) {
            super(false, type);
            Intrinsics.checkNotNullParameter(type, "type");
            if (type.isEnum()) {
                this.type = type;
                return;
            }
            throw new IllegalArgumentException((type + " is not an Enum type.").toString());
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        @g
        public String getName() {
            String name = this.type.getName();
            Intrinsics.checkNotNullExpressionValue(name, "type.name");
            return name;
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        @g
        public D parseValue(@g String value) {
            D d4;
            boolean equals;
            Intrinsics.checkNotNullParameter(value, "value");
            D[] enumConstants = this.type.getEnumConstants();
            Intrinsics.checkNotNullExpressionValue(enumConstants, "type.enumConstants");
            int length = enumConstants.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    d4 = null;
                    break;
                }
                d4 = enumConstants[i4];
                equals = StringsKt__StringsJVMKt.equals(d4.name(), value, true);
                if (equals) {
                    break;
                }
                i4++;
            }
            D d10 = d4;
            if (d10 != null) {
                return d10;
            }
            throw new IllegalArgumentException("Enum value " + value + " not found for type " + this.type.getName() + '.');
        }
    }
}

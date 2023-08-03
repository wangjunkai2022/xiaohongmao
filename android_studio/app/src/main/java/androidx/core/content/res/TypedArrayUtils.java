package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TypedArrayUtils {
    private static final String NAMESPACE = "http://schemas.android.com/apk/res/android";

    private TypedArrayUtils() {
    }

    public static int getAttr(@NonNull Context context, int i4, int i10) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i4, typedValue, true);
        return typedValue.resourceId != 0 ? i4 : i10;
    }

    public static boolean getBoolean(@NonNull TypedArray typedArray, @StyleableRes int i4, @StyleableRes int i10, boolean z9) {
        return typedArray.getBoolean(i4, typedArray.getBoolean(i10, z9));
    }

    @Nullable
    public static Drawable getDrawable(@NonNull TypedArray typedArray, @StyleableRes int i4, @StyleableRes int i10) {
        Drawable drawable = typedArray.getDrawable(i4);
        return drawable == null ? typedArray.getDrawable(i10) : drawable;
    }

    public static int getInt(@NonNull TypedArray typedArray, @StyleableRes int i4, @StyleableRes int i10, int i11) {
        return typedArray.getInt(i4, typedArray.getInt(i10, i11));
    }

    public static boolean getNamedBoolean(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i4, boolean z9) {
        return !hasAttribute(xmlPullParser, str) ? z9 : typedArray.getBoolean(i4, z9);
    }

    @ColorInt
    public static int getNamedColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i4, @ColorInt int i10) {
        return !hasAttribute(xmlPullParser, str) ? i10 : typedArray.getColor(i4, i10);
    }

    @Nullable
    public static ColorStateList getNamedColorStateList(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i4) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i4, typedValue);
            int i10 = typedValue.type;
            if (i10 != 2) {
                if (i10 >= 28 && i10 <= 31) {
                    return getNamedColorStateListFromInt(typedValue);
                }
                return ColorStateListInflaterCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i4, 0), theme);
            }
            throw new UnsupportedOperationException("Failed to resolve attribute at index " + i4 + ": " + typedValue);
        }
        return null;
    }

    @NonNull
    private static ColorStateList getNamedColorStateListFromInt(@NonNull TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    public static ComplexColorCompat getNamedComplexColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i4, @ColorInt int i10) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i4, typedValue);
            int i11 = typedValue.type;
            if (i11 >= 28 && i11 <= 31) {
                return ComplexColorCompat.from(typedValue.data);
            }
            ComplexColorCompat inflate = ComplexColorCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i4, 0), theme);
            if (inflate != null) {
                return inflate;
            }
        }
        return ComplexColorCompat.from(i10);
    }

    public static float getNamedFloat(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i4, float f10) {
        return !hasAttribute(xmlPullParser, str) ? f10 : typedArray.getFloat(i4, f10);
    }

    public static int getNamedInt(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i4, int i10) {
        return !hasAttribute(xmlPullParser, str) ? i10 : typedArray.getInt(i4, i10);
    }

    @AnyRes
    public static int getNamedResourceId(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i4, @AnyRes int i10) {
        return !hasAttribute(xmlPullParser, str) ? i10 : typedArray.getResourceId(i4, i10);
    }

    @Nullable
    public static String getNamedString(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i4) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.getString(i4);
        }
        return null;
    }

    @AnyRes
    public static int getResourceId(@NonNull TypedArray typedArray, @StyleableRes int i4, @StyleableRes int i10, @AnyRes int i11) {
        return typedArray.getResourceId(i4, typedArray.getResourceId(i10, i11));
    }

    @Nullable
    public static String getString(@NonNull TypedArray typedArray, @StyleableRes int i4, @StyleableRes int i10) {
        String string = typedArray.getString(i4);
        return string == null ? typedArray.getString(i10) : string;
    }

    @Nullable
    public static CharSequence getText(@NonNull TypedArray typedArray, @StyleableRes int i4, @StyleableRes int i10) {
        CharSequence text = typedArray.getText(i4);
        return text == null ? typedArray.getText(i10) : text;
    }

    @Nullable
    public static CharSequence[] getTextArray(@NonNull TypedArray typedArray, @StyleableRes int i4, @StyleableRes int i10) {
        CharSequence[] textArray = typedArray.getTextArray(i4);
        return textArray == null ? typedArray.getTextArray(i10) : textArray;
    }

    public static boolean hasAttribute(@NonNull XmlPullParser xmlPullParser, @NonNull String str) {
        return xmlPullParser.getAttributeValue(NAMESPACE, str) != null;
    }

    @NonNull
    public static TypedArray obtainAttributes(@NonNull Resources resources, @Nullable Resources.Theme theme, @NonNull AttributeSet attributeSet, @NonNull int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Nullable
    public static TypedValue peekNamedValue(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, int i4) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.peekValue(i4);
        }
        return null;
    }
}

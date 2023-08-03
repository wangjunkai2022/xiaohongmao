package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Preconditions;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class EditorInfoCompat {
    private static final String CONTENT_MIME_TYPES_INTEROP_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_MIME_TYPES_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_SELECTION_END_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END";
    private static final String CONTENT_SELECTION_HEAD_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD";
    private static final String CONTENT_SURROUNDING_TEXT_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT";
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;
    @VisibleForTesting
    static final int MAX_INITIAL_SELECTION_LENGTH = 1024;
    @VisibleForTesting
    static final int MEMORY_EFFICIENT_TEXT_LENGTH = 2048;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int i4) {
            return editorInfo.getInitialSelectedText(i4);
        }

        static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int i4, int i10) {
            return editorInfo.getInitialTextAfterCursor(i4, i10);
        }

        static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int i4, int i10) {
            return editorInfo.getInitialTextBeforeCursor(i4, i10);
        }

        static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, CharSequence charSequence, int i4) {
            editorInfo.setInitialSurroundingSubText(charSequence, i4);
        }
    }

    @NonNull
    public static String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : EMPTY_STRING_ARRAY;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return EMPTY_STRING_ARRAY;
        }
        String[] stringArray = bundle.getStringArray(CONTENT_MIME_TYPES_KEY);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_INTEROP_KEY);
        }
        return stringArray != null ? stringArray : EMPTY_STRING_ARRAY;
    }

    @Nullable
    public static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int i4) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialSelectedText(editorInfo, i4);
        }
        if (editorInfo.extras == null) {
            return null;
        }
        int min = Math.min(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int max = Math.max(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int i10 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int i11 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int i12 = max - min;
        if (editorInfo.initialSelStart < 0 || editorInfo.initialSelEnd < 0 || i11 - i10 != i12 || (charSequence = editorInfo.extras.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        if ((i4 & 1) != 0) {
            return charSequence.subSequence(i10, i11);
        }
        return TextUtils.substring(charSequence, i10, i11);
    }

    @Nullable
    public static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int i4, int i10) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialTextAfterCursor(editorInfo, i4, i10);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i11 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int min = Math.min(i4, charSequence.length() - i11);
        if ((i10 & 1) != 0) {
            return charSequence.subSequence(i11, min + i11);
        }
        return TextUtils.substring(charSequence, i11, min + i11);
    }

    @Nullable
    public static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int i4, int i10) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialTextBeforeCursor(editorInfo, i4, i10);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i11 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int min = Math.min(i4, i11);
        if ((i10 & 1) != 0) {
            return charSequence.subSequence(i11 - min, i11);
        }
        return TextUtils.substring(charSequence, i11 - min, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getProtocol(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            return 1;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return 0;
        }
        boolean containsKey = bundle.containsKey(CONTENT_MIME_TYPES_KEY);
        boolean containsKey2 = editorInfo.extras.containsKey(CONTENT_MIME_TYPES_INTEROP_KEY);
        if (containsKey && containsKey2) {
            return 4;
        }
        if (containsKey) {
            return 3;
        }
        return containsKey2 ? 2 : 0;
    }

    private static boolean isCutOnSurrogate(CharSequence charSequence, int i4, int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return false;
            }
            return Character.isHighSurrogate(charSequence.charAt(i4));
        }
        return Character.isLowSurrogate(charSequence.charAt(i4));
    }

    private static boolean isPasswordInputType(int i4) {
        int i10 = i4 & 4095;
        return i10 == 129 || i10 == 225 || i10 == 18;
    }

    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, strArr);
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_INTEROP_KEY, strArr);
    }

    public static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence, int i4) {
        Preconditions.checkNotNull(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, i4);
            return;
        }
        int i10 = editorInfo.initialSelStart;
        int i11 = editorInfo.initialSelEnd;
        int i12 = i10 > i11 ? i11 - i4 : i10 - i4;
        int i13 = i10 > i11 ? i10 - i4 : i11 - i4;
        int length = charSequence.length();
        if (i4 >= 0 && i12 >= 0 && i13 <= length) {
            if (isPasswordInputType(editorInfo.inputType)) {
                setSurroundingText(editorInfo, null, 0, 0);
                return;
            } else if (length <= 2048) {
                setSurroundingText(editorInfo, charSequence, i12, i13);
                return;
            } else {
                trimLongSurroundingText(editorInfo, charSequence, i12, i13);
                return;
            }
        }
        setSurroundingText(editorInfo, null, 0, 0);
    }

    public static void setInitialSurroundingText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }

    private static void setSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i4, int i10) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(CONTENT_SURROUNDING_TEXT_KEY, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(CONTENT_SELECTION_HEAD_KEY, i4);
        editorInfo.extras.putInt(CONTENT_SELECTION_END_KEY, i10);
    }

    private static void trimLongSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i4, int i10) {
        CharSequence subSequence;
        int i11 = i10 - i4;
        int i12 = i11 > 1024 ? 0 : i11;
        int i13 = 2048 - i12;
        int min = Math.min(charSequence.length() - i10, i13 - Math.min(i4, (int) (i13 * 0.8d)));
        int min2 = Math.min(i4, i13 - min);
        int i14 = i4 - min2;
        if (isCutOnSurrogate(charSequence, i14, 0)) {
            i14++;
            min2--;
        }
        if (isCutOnSurrogate(charSequence, (i10 + min) - 1, 1)) {
            min--;
        }
        int i15 = min2 + i12 + min;
        if (i12 != i11) {
            subSequence = TextUtils.concat(charSequence.subSequence(i14, i14 + min2), charSequence.subSequence(i10, min + i10));
        } else {
            subSequence = charSequence.subSequence(i14, i15 + i14);
        }
        int i16 = min2 + 0;
        setSurroundingText(editorInfo, subSequence, i16, i12 + i16);
    }
}

package androidx.emoji2.widget;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class EditTextAttributeHelper {
    private int mMaxEmojiCount;

    public EditTextAttributeHelper(@NonNull View view, @Nullable AttributeSet attributeSet, int i4, int i10) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.EmojiEditText, i4, i10);
            this.mMaxEmojiCount = obtainStyledAttributes.getInteger(R.styleable.EmojiEditText_maxEmojiCount, Integer.MAX_VALUE);
            obtainStyledAttributes.recycle();
        }
    }

    public int getMaxEmojiCount() {
        return this.mMaxEmojiCount;
    }
}

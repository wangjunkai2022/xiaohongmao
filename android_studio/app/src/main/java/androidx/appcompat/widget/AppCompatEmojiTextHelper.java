package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.emoji2.viewsintegration.EmojiTextViewHelper;

/* loaded from: classes.dex */
class AppCompatEmojiTextHelper {
    @NonNull
    private final EmojiTextViewHelper mEmojiTextViewHelper;
    @NonNull
    private final TextView mView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatEmojiTextHelper(@NonNull TextView textView) {
        this.mView = textView;
        this.mEmojiTextViewHelper = new EmojiTextViewHelper(textView, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public InputFilter[] getFilters(@NonNull InputFilter[] inputFilterArr) {
        return this.mEmojiTextViewHelper.getFilters(inputFilterArr);
    }

    public boolean isEnabled() {
        return this.mEmojiTextViewHelper.isEnabled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadFromAttributes(@Nullable AttributeSet attributeSet, int i4) {
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i4, 0);
        try {
            int i10 = R.styleable.AppCompatTextView_emojiCompatEnabled;
            boolean z9 = obtainStyledAttributes.hasValue(i10) ? obtainStyledAttributes.getBoolean(i10, true) : true;
            obtainStyledAttributes.recycle();
            setEnabled(z9);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAllCaps(boolean z9) {
        this.mEmojiTextViewHelper.setAllCaps(z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEnabled(boolean z9) {
        this.mEmojiTextViewHelper.setEnabled(z9);
    }

    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.mEmojiTextViewHelper.wrapTransformationMethod(transformationMethod);
    }
}

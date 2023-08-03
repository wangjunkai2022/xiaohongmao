package androidx.emoji2.widget;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.viewsintegration.EmojiTextViewHelper;

/* loaded from: classes.dex */
public class EmojiButton extends Button {
    private EmojiTextViewHelper mEmojiTextViewHelper;
    private boolean mInitialized;

    public EmojiButton(@NonNull Context context) {
        super(context);
        init();
    }

    private EmojiTextViewHelper getEmojiTextViewHelper() {
        if (this.mEmojiTextViewHelper == null) {
            this.mEmojiTextViewHelper = new EmojiTextViewHelper(this);
        }
        return this.mEmojiTextViewHelper;
    }

    private void init() {
        if (this.mInitialized) {
            return;
        }
        this.mInitialized = true;
        getEmojiTextViewHelper().updateTransformationMethod();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z9) {
        super.setAllCaps(z9);
        getEmojiTextViewHelper().setAllCaps(z9);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@NonNull ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().getFilters(inputFilterArr));
    }

    public EmojiButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public EmojiButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        init();
    }
}

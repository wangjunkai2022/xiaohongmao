package androidx.emoji2.widget;

import android.content.Context;
import android.inputmethodservice.ExtractEditText;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.viewsintegration.EmojiEditTextHelper;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class EmojiExtractEditText extends ExtractEditText {
    private EmojiEditTextHelper mEmojiEditTextHelper;
    private boolean mInitialized;

    public EmojiExtractEditText(@NonNull Context context) {
        super(context);
        init(null, 0, 0);
    }

    private EmojiEditTextHelper getEmojiEditTextHelper() {
        if (this.mEmojiEditTextHelper == null) {
            this.mEmojiEditTextHelper = new EmojiEditTextHelper(this);
        }
        return this.mEmojiEditTextHelper;
    }

    private void init(@Nullable AttributeSet attributeSet, int i4, int i10) {
        if (this.mInitialized) {
            return;
        }
        this.mInitialized = true;
        setMaxEmojiCount(new EditTextAttributeHelper(this, attributeSet, i4, i10).getMaxEmojiCount());
        setKeyListener(super.getKeyListener());
    }

    public int getEmojiReplaceStrategy() {
        return getEmojiEditTextHelper().getEmojiReplaceStrategy();
    }

    public int getMaxEmojiCount() {
        return getEmojiEditTextHelper().getMaxEmojiCount();
    }

    @Override // android.widget.TextView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        return getEmojiEditTextHelper().onCreateInputConnection(super.onCreateInputConnection(editorInfo), editorInfo);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@NonNull ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiReplaceStrategy(int i4) {
        getEmojiEditTextHelper().setEmojiReplaceStrategy(i4);
    }

    @Override // android.widget.TextView
    public void setKeyListener(@Nullable KeyListener keyListener) {
        if (keyListener != null) {
            keyListener = getEmojiEditTextHelper().getKeyListener(keyListener);
        }
        super.setKeyListener(keyListener);
    }

    public void setMaxEmojiCount(@IntRange(from = 0) int i4) {
        getEmojiEditTextHelper().setMaxEmojiCount(i4);
    }

    public EmojiExtractEditText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 16842862, 0);
    }

    public EmojiExtractEditText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        init(attributeSet, i4, 0);
    }
}

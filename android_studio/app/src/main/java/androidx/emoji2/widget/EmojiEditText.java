package androidx.emoji2.widget;

import android.content.Context;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.viewsintegration.EmojiEditTextHelper;

/* loaded from: classes.dex */
public class EmojiEditText extends EditText {
    private EmojiEditTextHelper mEmojiEditTextHelper;
    private boolean mInitialized;

    public EmojiEditText(@NonNull Context context) {
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

    public EmojiEditText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 16842862, 0);
    }

    public EmojiEditText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        init(attributeSet, i4, 0);
    }
}

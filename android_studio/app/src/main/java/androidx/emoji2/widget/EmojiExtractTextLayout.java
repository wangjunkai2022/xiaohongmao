package androidx.emoji2.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.inputmethodservice.InputMethodService;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class EmojiExtractTextLayout extends LinearLayout {
    private View.OnClickListener mButtonOnClickListener;
    private ViewGroup mExtractAccessories;
    private ExtractButtonCompat mExtractAction;
    private EmojiExtractEditText mExtractEditText;
    private boolean mInitialized;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ButtonOnclickListener implements View.OnClickListener {
        private final InputMethodService mInputMethodService;

        ButtonOnclickListener(InputMethodService inputMethodService) {
            this.mInputMethodService = inputMethodService;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditorInfo currentInputEditorInfo = this.mInputMethodService.getCurrentInputEditorInfo();
            InputConnection currentInputConnection = this.mInputMethodService.getCurrentInputConnection();
            if (currentInputEditorInfo == null || currentInputConnection == null) {
                return;
            }
            int i4 = currentInputEditorInfo.actionId;
            if (i4 != 0) {
                currentInputConnection.performEditorAction(i4);
                return;
            }
            int i10 = currentInputEditorInfo.imeOptions;
            if ((i10 & 255) != 1) {
                currentInputConnection.performEditorAction(i10 & 255);
            }
        }
    }

    public EmojiExtractTextLayout(@NonNull Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    private View.OnClickListener getButtonClickListener(InputMethodService inputMethodService) {
        if (this.mButtonOnClickListener == null) {
            this.mButtonOnClickListener = new ButtonOnclickListener(inputMethodService);
        }
        return this.mButtonOnClickListener;
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4, int i10) {
        if (this.mInitialized) {
            return;
        }
        this.mInitialized = true;
        setOrientation(0);
        View inflate = LayoutInflater.from(context).inflate(R.layout.input_method_extract_view, (ViewGroup) this, true);
        this.mExtractAccessories = (ViewGroup) inflate.findViewById(R.id.inputExtractAccessories);
        this.mExtractAction = (ExtractButtonCompat) inflate.findViewById(R.id.inputExtractAction);
        this.mExtractEditText = (EmojiExtractEditText) inflate.findViewById(16908325);
        if (attributeSet != null) {
            int[] iArr = R.styleable.EmojiExtractTextLayout;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i4, i10);
            ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i4, i10);
            this.mExtractEditText.setEmojiReplaceStrategy(obtainStyledAttributes.getInteger(R.styleable.EmojiExtractTextLayout_emojiReplaceStrategy, 0));
            obtainStyledAttributes.recycle();
        }
    }

    public int getEmojiReplaceStrategy() {
        return this.mExtractEditText.getEmojiReplaceStrategy();
    }

    public void onUpdateExtractingViews(@NonNull InputMethodService inputMethodService, @NonNull EditorInfo editorInfo) {
        ViewGroup viewGroup;
        if (inputMethodService.isExtractViewShown() && (viewGroup = this.mExtractAccessories) != null) {
            boolean z9 = true;
            if (editorInfo.actionLabel == null) {
                int i4 = editorInfo.imeOptions;
                if ((i4 & 255) == 1 || (i4 & 536870912) != 0 || editorInfo.inputType == 0) {
                    z9 = false;
                }
            }
            if (z9) {
                viewGroup.setVisibility(0);
                ExtractButtonCompat extractButtonCompat = this.mExtractAction;
                if (extractButtonCompat != null) {
                    CharSequence charSequence = editorInfo.actionLabel;
                    if (charSequence != null) {
                        extractButtonCompat.setText(charSequence);
                    } else {
                        extractButtonCompat.setText(inputMethodService.getTextForImeAction(editorInfo.imeOptions));
                    }
                    this.mExtractAction.setOnClickListener(getButtonClickListener(inputMethodService));
                    return;
                }
                return;
            }
            viewGroup.setVisibility(8);
            ExtractButtonCompat extractButtonCompat2 = this.mExtractAction;
            if (extractButtonCompat2 != null) {
                extractButtonCompat2.setOnClickListener(null);
            }
        }
    }

    public void setEmojiReplaceStrategy(int i4) {
        this.mExtractEditText.setEmojiReplaceStrategy(i4);
    }

    public EmojiExtractTextLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public EmojiExtractTextLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        init(context, attributeSet, i4, 0);
    }
}

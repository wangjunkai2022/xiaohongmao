package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class EmojiInputFilter implements InputFilter {
    private EmojiCompat.InitCallback mInitCallback;
    private final TextView mTextView;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class InitCallbackImpl extends EmojiCompat.InitCallback {
        private final Reference<EmojiInputFilter> mEmojiInputFilterReference;
        private final Reference<TextView> mViewRef;

        InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
            this.mViewRef = new WeakReference(textView);
            this.mEmojiInputFilterReference = new WeakReference(emojiInputFilter);
        }

        private boolean isInputFilterCurrentlyRegisteredOnTextView(@Nullable TextView textView, @Nullable InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            CharSequence text;
            CharSequence process;
            super.onInitialized();
            TextView textView = this.mViewRef.get();
            if (isInputFilterCurrentlyRegisteredOnTextView(textView, this.mEmojiInputFilterReference.get()) && textView.isAttachedToWindow() && text != (process = EmojiCompat.get().process((text = textView.getText())))) {
                int selectionStart = Selection.getSelectionStart(process);
                int selectionEnd = Selection.getSelectionEnd(process);
                textView.setText(process);
                if (process instanceof Spannable) {
                    EmojiInputFilter.updateSelection((Spannable) process, selectionStart, selectionEnd);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiInputFilter(@NonNull TextView textView) {
        this.mTextView = textView;
    }

    private EmojiCompat.InitCallback getInitCallback() {
        if (this.mInitCallback == null) {
            this.mInitCallback = new InitCallbackImpl(this.mTextView, this);
        }
        return this.mInitCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateSelection(Spannable spannable, int i4, int i10) {
        if (i4 >= 0 && i10 >= 0) {
            Selection.setSelection(spannable, i4, i10);
        } else if (i4 >= 0) {
            Selection.setSelection(spannable, i4);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i4, int i10, Spanned spanned, int i11, int i12) {
        if (this.mTextView.isInEditMode()) {
            return charSequence;
        }
        int loadState = EmojiCompat.get().getLoadState();
        if (loadState != 0) {
            boolean z9 = true;
            if (loadState == 1) {
                if (i12 == 0 && i11 == 0 && spanned.length() == 0 && charSequence == this.mTextView.getText()) {
                    z9 = false;
                }
                if (!z9 || charSequence == null) {
                    return charSequence;
                }
                if (i4 != 0 || i10 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i4, i10);
                }
                return EmojiCompat.get().process(charSequence, 0, charSequence.length());
            } else if (loadState != 3) {
                return charSequence;
            }
        }
        EmojiCompat.get().registerInitCallback(getInitCallback());
        return charSequence;
    }
}

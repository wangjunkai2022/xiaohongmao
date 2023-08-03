package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class SpannableBuilder extends SpannableStringBuilder {
    @NonNull
    private final Class<?> mWatcherClass;
    @NonNull
    private final List<WatcherWrapper> mWatchers;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class WatcherWrapper implements TextWatcher, SpanWatcher {
        private final AtomicInteger mBlockCalls = new AtomicInteger(0);
        final Object mObject;

        WatcherWrapper(Object obj) {
            this.mObject = obj;
        }

        private boolean isEmojiSpan(Object obj) {
            return obj instanceof EmojiSpan;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.mObject).afterTextChanged(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
            ((TextWatcher) this.mObject).beforeTextChanged(charSequence, i4, i10, i11);
        }

        final void blockCalls() {
            this.mBlockCalls.incrementAndGet();
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i4, int i10) {
            if (this.mBlockCalls.get() <= 0 || !isEmojiSpan(obj)) {
                ((SpanWatcher) this.mObject).onSpanAdded(spannable, obj, i4, i10);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i4, int i10, int i11, int i12) {
            int i13;
            int i14;
            if (this.mBlockCalls.get() <= 0 || !isEmojiSpan(obj)) {
                if (Build.VERSION.SDK_INT < 28) {
                    int i15 = i4 > i10 ? 0 : i4;
                    if (i11 > i12) {
                        i13 = i15;
                        i14 = 0;
                    } else {
                        i14 = i11;
                        i13 = i15;
                    }
                } else {
                    i13 = i4;
                    i14 = i11;
                }
                ((SpanWatcher) this.mObject).onSpanChanged(spannable, obj, i13, i10, i14, i12);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i4, int i10) {
            if (this.mBlockCalls.get() <= 0 || !isEmojiSpan(obj)) {
                ((SpanWatcher) this.mObject).onSpanRemoved(spannable, obj, i4, i10);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
            ((TextWatcher) this.mObject).onTextChanged(charSequence, i4, i10, i11);
        }

        final void unblockCalls() {
            this.mBlockCalls.decrementAndGet();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    SpannableBuilder(@NonNull Class<?> cls) {
        this.mWatchers = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.mWatcherClass = cls;
    }

    private void blockWatchers() {
        for (int i4 = 0; i4 < this.mWatchers.size(); i4++) {
            this.mWatchers.get(i4).blockCalls();
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static SpannableBuilder create(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        return new SpannableBuilder(cls, charSequence);
    }

    private void fireWatchers() {
        for (int i4 = 0; i4 < this.mWatchers.size(); i4++) {
            this.mWatchers.get(i4).onTextChanged(this, 0, length(), length());
        }
    }

    private WatcherWrapper getWatcherFor(Object obj) {
        for (int i4 = 0; i4 < this.mWatchers.size(); i4++) {
            WatcherWrapper watcherWrapper = this.mWatchers.get(i4);
            if (watcherWrapper.mObject == obj) {
                return watcherWrapper;
            }
        }
        return null;
    }

    private boolean isWatcher(@Nullable Object obj) {
        return obj != null && isWatcher(obj.getClass());
    }

    private void unblockwatchers() {
        for (int i4 = 0; i4 < this.mWatchers.size(); i4++) {
            this.mWatchers.get(i4).unblockCalls();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void beginBatchEdit() {
        blockWatchers();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void endBatchEdit() {
        unblockwatchers();
        fireWatchers();
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(@Nullable Object obj) {
        WatcherWrapper watcherFor;
        if (isWatcher(obj) && (watcherFor = getWatcherFor(obj)) != null) {
            obj = watcherFor;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(@Nullable Object obj) {
        WatcherWrapper watcherFor;
        if (isWatcher(obj) && (watcherFor = getWatcherFor(obj)) != null) {
            obj = watcherFor;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(@Nullable Object obj) {
        WatcherWrapper watcherFor;
        if (isWatcher(obj) && (watcherFor = getWatcherFor(obj)) != null) {
            obj = watcherFor;
        }
        return super.getSpanStart(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i4, int i10, @NonNull Class<T> cls) {
        if (isWatcher((Class<?>) cls)) {
            WatcherWrapper[] watcherWrapperArr = (WatcherWrapper[]) super.getSpans(i4, i10, WatcherWrapper.class);
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, watcherWrapperArr.length));
            for (int i11 = 0; i11 < watcherWrapperArr.length; i11++) {
                tArr[i11] = watcherWrapperArr[i11].mObject;
            }
            return tArr;
        }
        return (T[]) super.getSpans(i4, i10, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i4, int i10, @Nullable Class cls) {
        return super.nextSpanTransition(i4, i10, (cls == null || isWatcher((Class<?>) cls)) ? WatcherWrapper.class : WatcherWrapper.class);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(@Nullable Object obj) {
        WatcherWrapper watcherWrapper;
        if (isWatcher(obj)) {
            watcherWrapper = getWatcherFor(obj);
            if (watcherWrapper != null) {
                obj = watcherWrapper;
            }
        } else {
            watcherWrapper = null;
        }
        super.removeSpan(obj);
        if (watcherWrapper != null) {
            this.mWatchers.remove(watcherWrapper);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(@Nullable Object obj, int i4, int i10, int i11) {
        if (isWatcher(obj)) {
            WatcherWrapper watcherWrapper = new WatcherWrapper(obj);
            this.mWatchers.add(watcherWrapper);
            obj = watcherWrapper;
        }
        super.setSpan(obj, i4, i10, i11);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i4, int i10) {
        return new SpannableBuilder(this.mWatcherClass, this, i4, i10);
    }

    private boolean isWatcher(@NonNull Class<?> cls) {
        return this.mWatcherClass == cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder delete(int i4, int i10) {
        super.delete(i4, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i4, CharSequence charSequence) {
        super.insert(i4, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i4, int i10, CharSequence charSequence) {
        blockWatchers();
        super.replace(i4, i10, charSequence);
        unblockwatchers();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i4, CharSequence charSequence, int i10, int i11) {
        super.insert(i4, charSequence, i10, i11);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        super(charSequence);
        this.mWatchers = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.mWatcherClass = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i4, int i10, CharSequence charSequence, int i11, int i12) {
        blockWatchers();
        super.replace(i4, i10, charSequence, i11, i12);
        unblockwatchers();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(char c10) {
        super.append(c10);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence, int i4, int i10) {
        super(charSequence, i4, i10);
        this.mWatchers = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.mWatcherClass = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i4, int i10) {
        super.append(charSequence, i4, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i4) {
        super.append(charSequence, obj, i4);
        return this;
    }
}

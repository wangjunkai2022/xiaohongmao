package com.jakewharton.rxbinding4.widget;

import android.widget.SeekBar;
import androidx.annotation.CheckResult;
import kotlin.Metadata;

/* compiled from: SeekBarChangeObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u0012\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u001a\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u001a\u0012\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007¨\u0006\u0006"}, d2 = {"Landroid/widget/SeekBar;", "Lcom/jakewharton/rxbinding4/a;", "", "a", "c", "b", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxSeekBar")
/* loaded from: classes3.dex */
final /* synthetic */ class a1 {
    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<Integer> a(@m8.g SeekBar seekBar) {
        return new q1(seekBar, null);
    }

    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<Integer> b(@m8.g SeekBar seekBar) {
        return new q1(seekBar, Boolean.FALSE);
    }

    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<Integer> c(@m8.g SeekBar seekBar) {
        return new q1(seekBar, Boolean.TRUE);
    }
}

package com.jakewharton.rxbinding4.widget;

import android.widget.SeekBar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SeekBarChangeObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0019\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/q1;", "Lcom/jakewharton/rxbinding4/a;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/SeekBar;", "a", "Landroid/widget/SeekBar;", "view", "", "b", "Ljava/lang/Boolean;", "shouldBeFromUser", "D8", "()Ljava/lang/Integer;", "initialValue", "<init>", "(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class q1 extends com.jakewharton.rxbinding4.a<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final SeekBar f44028a;

    /* renamed from: b  reason: collision with root package name */
    private final Boolean f44029b;

    /* compiled from: SeekBarChangeObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0017\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u0014¢\u0006\u0004\b\u0018\u0010\u0019J \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\r\u001a\u00020\tH\u0014R\u0014\u0010\u0010\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0017\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/q1$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "Landroid/widget/SeekBar;", "seekBar", "", "progress", "", "fromUser", "", "onProgressChanged", "onStartTrackingTouch", "onStopTrackingTouch", "a", "b", "Landroid/widget/SeekBar;", "view", "c", "Ljava/lang/Boolean;", "shouldBeFromUser", "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/SeekBar;Ljava/lang/Boolean;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final SeekBar f44030b;

        /* renamed from: c  reason: collision with root package name */
        private final Boolean f44031c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Integer> f44032d;

        public a(@m8.g SeekBar seekBar, @m8.h Boolean bool, @m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var) {
            this.f44030b = seekBar;
            this.f44031c = bool;
            this.f44032d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44030b.setOnSeekBarChangeListener(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(@m8.g SeekBar seekBar, int i4, boolean z9) {
            if (isDisposed()) {
                return;
            }
            Boolean bool = this.f44031c;
            if (bool == null || Intrinsics.areEqual(bool, Boolean.valueOf(z9))) {
                this.f44032d.onNext(Integer.valueOf(i4));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(@m8.g SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(@m8.g SeekBar seekBar) {
        }
    }

    public q1(@m8.g SeekBar seekBar, @m8.h Boolean bool) {
        this.f44028a = seekBar;
        this.f44029b = bool;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44028a, this.f44029b, n0Var);
            this.f44028a.setOnSeekBarChangeListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public Integer A8() {
        return Integer.valueOf(this.f44028a.getProgress());
    }
}

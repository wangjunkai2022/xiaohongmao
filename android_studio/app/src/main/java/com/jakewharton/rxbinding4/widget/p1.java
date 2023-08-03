package com.jakewharton.rxbinding4.widget;

import android.widget.SeekBar;
import kotlin.Metadata;

/* compiled from: SeekBarChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/p1;", "Lcom/jakewharton/rxbinding4/a;", "Lcom/jakewharton/rxbinding4/widget/o1;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/SeekBar;", "a", "Landroid/widget/SeekBar;", "view", "Lcom/jakewharton/rxbinding4/widget/r1;", "D8", "()Lcom/jakewharton/rxbinding4/widget/r1;", "initialValue", "<init>", "(Landroid/widget/SeekBar;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class p1 extends com.jakewharton.rxbinding4.a<o1> {

    /* renamed from: a  reason: collision with root package name */
    private final SeekBar f44021a;

    /* compiled from: SeekBarChangeEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00120\u0011¢\u0006\u0004\b\u0016\u0010\u0017J \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\r\u001a\u00020\tH\u0014R\u0014\u0010\u0010\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/p1$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "Landroid/widget/SeekBar;", "seekBar", "", "progress", "", "fromUser", "", "onProgressChanged", "onStartTrackingTouch", "onStopTrackingTouch", "a", "b", "Landroid/widget/SeekBar;", "view", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/o1;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/SeekBar;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final SeekBar f44022b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super o1> f44023c;

        public a(@m8.g SeekBar seekBar, @m8.g io.reactivex.rxjava3.core.n0<? super o1> n0Var) {
            this.f44022b = seekBar;
            this.f44023c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44022b.setOnSeekBarChangeListener(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(@m8.g SeekBar seekBar, int i4, boolean z9) {
            if (isDisposed()) {
                return;
            }
            this.f44023c.onNext(new r1(seekBar, i4, z9));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(@m8.g SeekBar seekBar) {
            if (isDisposed()) {
                return;
            }
            this.f44023c.onNext(new s1(seekBar));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(@m8.g SeekBar seekBar) {
            if (isDisposed()) {
                return;
            }
            this.f44023c.onNext(new t1(seekBar));
        }
    }

    public p1(@m8.g SeekBar seekBar) {
        this.f44021a = seekBar;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super o1> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44021a, n0Var);
            this.f44021a.setOnSeekBarChangeListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public r1 A8() {
        SeekBar seekBar = this.f44021a;
        return new r1(seekBar, seekBar.getProgress(), false);
    }
}

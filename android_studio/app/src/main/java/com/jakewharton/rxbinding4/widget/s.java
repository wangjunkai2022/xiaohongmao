package com.jakewharton.rxbinding4.widget;

import android.widget.RadioGroup;
import kotlin.Metadata;

/* compiled from: RadioGroupCheckedChangeObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/s;", "Lcom/jakewharton/rxbinding4/a;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/RadioGroup;", "a", "Landroid/widget/RadioGroup;", "view", "D8", "()Ljava/lang/Integer;", "initialValue", "<init>", "(Landroid/widget/RadioGroup;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class s extends com.jakewharton.rxbinding4.a<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final RadioGroup f44039a;

    /* compiled from: RadioGroupCheckedChangeObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0014R\u0016\u0010\f\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/s$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/RadioGroup$OnCheckedChangeListener;", "Landroid/widget/RadioGroup;", "radioGroup", "", "checkedId", "", "onCheckedChanged", "a", "b", "I", "lastChecked", "c", "Landroid/widget/RadioGroup;", "view", "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/RadioGroup;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private int f44040b = -1;

        /* renamed from: c  reason: collision with root package name */
        private final RadioGroup f44041c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Integer> f44042d;

        public a(@m8.g RadioGroup radioGroup, @m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var) {
            this.f44041c = radioGroup;
            this.f44042d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44041c.setOnCheckedChangeListener(null);
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(@m8.g RadioGroup radioGroup, int i4) {
            if (isDisposed() || i4 == this.f44040b) {
                return;
            }
            this.f44040b = i4;
            this.f44042d.onNext(Integer.valueOf(i4));
        }
    }

    public s(@m8.g RadioGroup radioGroup) {
        this.f44039a = radioGroup;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44039a, n0Var);
            this.f44039a.setOnCheckedChangeListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public Integer A8() {
        return Integer.valueOf(this.f44039a.getCheckedRadioButtonId());
    }
}

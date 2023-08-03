package com.jakewharton.rxbinding4.widget;

import android.database.DataSetObserver;
import android.widget.Adapter;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* compiled from: AdapterDataChangeObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004H\u0014R\u0014\u0010\n\u001a\u00028\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00028\u00008TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/c;", "Landroid/widget/Adapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/jakewharton/rxbinding4/a;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "a", "Landroid/widget/Adapter;", "adapter", "D8", "()Landroid/widget/Adapter;", "initialValue", "<init>", "(Landroid/widget/Adapter;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class c<T extends Adapter> extends com.jakewharton.rxbinding4.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f43954a;

    /* compiled from: AdapterDataChangeObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\f\u001a\u00028\u0001\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0005\u001a\u00020\u0004H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00028\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/c$a;", "Landroid/widget/Adapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/rxjava3/android/b;", "", "a", "Landroid/database/DataSetObserver;", "b", "Landroid/database/DataSetObserver;", "dataSetObserver", "c", "Landroid/widget/Adapter;", "adapter", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/Adapter;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a<T extends Adapter> extends io.reactivex.rxjava3.android.b {
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final DataSetObserver f43955b;

        /* renamed from: c  reason: collision with root package name */
        private final T f43956c;

        /* compiled from: AdapterDataChangeObservable.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/jakewharton/rxbinding4/widget/c$a$a", "Landroid/database/DataSetObserver;", "", "onChanged", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
        /* renamed from: com.jakewharton.rxbinding4.widget.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0377a extends DataSetObserver {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ io.reactivex.rxjava3.core.n0 f43958b;

            C0377a(io.reactivex.rxjava3.core.n0 n0Var) {
                this.f43958b = n0Var;
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                if (a.this.isDisposed()) {
                    return;
                }
                this.f43958b.onNext(a.this.f43956c);
            }
        }

        public a(@m8.g T t9, @m8.g io.reactivex.rxjava3.core.n0<? super T> n0Var) {
            this.f43956c = t9;
            this.f43955b = new C0377a(n0Var);
        }

        @Override // io.reactivex.rxjava3.android.b
        protected void a() {
            this.f43956c.unregisterDataSetObserver(this.f43955b);
        }
    }

    public c(@m8.g T t9) {
        this.f43954a = t9;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super T> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(A8(), n0Var);
            A8().registerDataSetObserver(aVar.f43955b);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public T A8() {
        return this.f43954a;
    }
}

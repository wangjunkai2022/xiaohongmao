package o4;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Extentions.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aZ\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\u001e\u0010\u0007\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u00020\u0006\u001ab\u0010\u0000\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032&\u0010\u0007\u001a\"\u0012\u0006\u0012\u0004\u0018\u00018\u0002\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u00020\t\u001av\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00030\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\n\"\u0004\b\u0003\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00020\u00032&\u0010\u0007\u001a\"\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0002\u0012\u0006\u0012\u0004\u0018\u00018\u00030\t\u001a\u0092\u0001\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00040\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\n\"\u0004\b\u0003\u0010\r\"\u0004\b\u0004\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00020\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00030\u00032.\u0010\u0007\u001a*\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0002\u0012\u0006\u0012\u0004\u0018\u00018\u0003\u0012\u0006\u0012\u0004\u0018\u00018\u00040\u000f¨\u0006\u0011"}, d2 = {ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "R", "Landroidx/lifecycle/LiveData;", "source1", "source2", "Lkotlin/Function2;", "transform", "n", "Lkotlin/Function3;", "C", "source3", "m", "D", "source4", "Lkotlin/Function4;", "l", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m {
    @m8.g
    public static final <A, B, R> LiveData<R> A(@m8.g final LiveData<A> source1, @m8.g final LiveData<B> source2, @m8.g final Function3<? super R, ? super A, ? super B, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(source1, "source1");
        Intrinsics.checkNotNullParameter(source2, "source2");
        Intrinsics.checkNotNullParameter(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(source1, new Observer() { // from class: o4.k
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.B(LiveData.this, source2, mediatorLiveData, transform, obj);
            }
        });
        mediatorLiveData.addSource(source2, new Observer() { // from class: o4.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.C(LiveData.this, source2, mediatorLiveData, transform, obj);
            }
        });
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(LiveData source1, LiveData source2, MediatorLiveData this_apply, Function3 transform, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        D(source1, source2, this_apply, transform);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(LiveData source1, LiveData source2, MediatorLiveData this_apply, Function3 transform, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        D(source1, source2, this_apply, transform);
    }

    private static final <A, B, R> void D(LiveData<A> liveData, LiveData<B> liveData2, MediatorLiveData<R> mediatorLiveData, Function3<? super R, ? super A, ? super B, ? extends R> function3) {
        mediatorLiveData.postValue(function3.invoke((R) mediatorLiveData.getValue(), liveData.getValue(), liveData2.getValue()));
    }

    @m8.g
    public static final <A, B, C, D, R> LiveData<R> l(@m8.g final LiveData<A> source1, @m8.g final LiveData<B> source2, @m8.g final LiveData<C> source3, @m8.g final LiveData<D> source4, @m8.g final Function4<? super A, ? super B, ? super C, ? super D, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(source1, "source1");
        Intrinsics.checkNotNullParameter(source2, "source2");
        Intrinsics.checkNotNullParameter(source3, "source3");
        Intrinsics.checkNotNullParameter(source4, "source4");
        Intrinsics.checkNotNullParameter(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(source1, new Observer() { // from class: o4.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.s(LiveData.this, source2, source3, source4, transform, mediatorLiveData, obj);
            }
        });
        mediatorLiveData.addSource(source2, new Observer() { // from class: o4.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.t(LiveData.this, source2, source3, source4, transform, mediatorLiveData, obj);
            }
        });
        mediatorLiveData.addSource(source3, new Observer() { // from class: o4.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.u(LiveData.this, source2, source3, source4, transform, mediatorLiveData, obj);
            }
        });
        mediatorLiveData.addSource(source4, new Observer() { // from class: o4.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.v(LiveData.this, source2, source3, source4, transform, mediatorLiveData, obj);
            }
        });
        return mediatorLiveData;
    }

    @m8.g
    public static final <A, B, C, R> LiveData<R> m(@m8.g final LiveData<A> source1, @m8.g final LiveData<B> source2, @m8.g final LiveData<C> source3, @m8.g final Function3<? super A, ? super B, ? super C, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(source1, "source1");
        Intrinsics.checkNotNullParameter(source2, "source2");
        Intrinsics.checkNotNullParameter(source3, "source3");
        Intrinsics.checkNotNullParameter(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(source1, new Observer() { // from class: o4.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.p(LiveData.this, source2, source3, transform, mediatorLiveData, obj);
            }
        });
        mediatorLiveData.addSource(source2, new Observer() { // from class: o4.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.q(LiveData.this, source2, source3, transform, mediatorLiveData, obj);
            }
        });
        mediatorLiveData.addSource(source3, new Observer() { // from class: o4.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.o(LiveData.this, source2, source3, transform, mediatorLiveData, obj);
            }
        });
        return mediatorLiveData;
    }

    @m8.g
    public static final <A, B, R> LiveData<R> n(@m8.g final LiveData<A> source1, @m8.g final LiveData<B> source2, @m8.g final Function2<? super A, ? super B, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(source1, "source1");
        Intrinsics.checkNotNullParameter(source2, "source2");
        Intrinsics.checkNotNullParameter(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(source1, new Observer() { // from class: o4.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.x(LiveData.this, source2, transform, mediatorLiveData, obj);
            }
        });
        mediatorLiveData.addSource(source2, new Observer() { // from class: o4.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                m.y(LiveData.this, source2, transform, mediatorLiveData, obj);
            }
        });
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(LiveData source1, LiveData source2, LiveData source3, Function3 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(source3, "$source3");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        r(source1, source2, source3, transform, this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(LiveData source1, LiveData source2, LiveData source3, Function3 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(source3, "$source3");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        r(source1, source2, source3, transform, this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(LiveData source1, LiveData source2, LiveData source3, Function3 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(source3, "$source3");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        r(source1, source2, source3, transform, this_apply);
    }

    private static final <A, B, C, R> void r(LiveData<A> liveData, LiveData<B> liveData2, LiveData<C> liveData3, Function3<? super A, ? super B, ? super C, ? extends R> function3, MediatorLiveData<R> mediatorLiveData) {
        mediatorLiveData.postValue(function3.invoke(liveData.getValue(), liveData2.getValue(), liveData3.getValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(LiveData source1, LiveData source2, LiveData source3, LiveData source4, Function4 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(source3, "$source3");
        Intrinsics.checkNotNullParameter(source4, "$source4");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        w(source1, source2, source3, source4, transform, this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(LiveData source1, LiveData source2, LiveData source3, LiveData source4, Function4 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(source3, "$source3");
        Intrinsics.checkNotNullParameter(source4, "$source4");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        w(source1, source2, source3, source4, transform, this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(LiveData source1, LiveData source2, LiveData source3, LiveData source4, Function4 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(source3, "$source3");
        Intrinsics.checkNotNullParameter(source4, "$source4");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        w(source1, source2, source3, source4, transform, this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(LiveData source1, LiveData source2, LiveData source3, LiveData source4, Function4 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(source3, "$source3");
        Intrinsics.checkNotNullParameter(source4, "$source4");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        w(source1, source2, source3, source4, transform, this_apply);
    }

    private static final <A, B, C, D, R> void w(LiveData<A> liveData, LiveData<B> liveData2, LiveData<C> liveData3, LiveData<D> liveData4, Function4<? super A, ? super B, ? super C, ? super D, ? extends R> function4, MediatorLiveData<R> mediatorLiveData) {
        mediatorLiveData.postValue(function4.invoke(liveData.getValue(), liveData2.getValue(), liveData3.getValue(), liveData4.getValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(LiveData source1, LiveData source2, Function2 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        z(source1, source2, transform, this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(LiveData source1, LiveData source2, Function2 transform, MediatorLiveData this_apply, Object obj) {
        Intrinsics.checkNotNullParameter(source1, "$source1");
        Intrinsics.checkNotNullParameter(source2, "$source2");
        Intrinsics.checkNotNullParameter(transform, "$transform");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        z(source1, source2, transform, this_apply);
    }

    private static final <A, B, R> void z(LiveData<A> liveData, LiveData<B> liveData2, Function2<? super A, ? super B, ? extends R> function2, MediatorLiveData<R> mediatorLiveData) {
        mediatorLiveData.postValue(function2.invoke(liveData.getValue(), liveData2.getValue()));
    }
}

package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.l1;

/* compiled from: CoroutineLiveData.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H¦@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u0004\u0018\u00018\u00008&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Landroidx/lifecycle/LiveDataScope;", ExifInterface.GPS_DIRECTION_TRUE, "", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/LiveData;", v.b.f83881a, "Lkotlinx/coroutines/l1;", "emitSource", "(Landroidx/lifecycle/LiveData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLatestValue", "()Ljava/lang/Object;", "latestValue", "lifecycle-livedata-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public interface LiveDataScope<T> {
    @m8.h
    Object emit(T t9, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object emitSource(@m8.g LiveData<T> liveData, @m8.g Continuation<? super l1> continuation);

    @m8.h
    T getLatestValue();
}

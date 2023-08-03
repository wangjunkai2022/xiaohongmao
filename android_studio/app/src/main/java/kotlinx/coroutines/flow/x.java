package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* compiled from: SharedFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J!\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H¦@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/x;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "b", "()Ljava/util/List;", "replayCache", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface x<T> extends i<T> {
    @m8.g
    List<T> b();

    @Override // kotlinx.coroutines.flow.i
    @m8.h
    Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<?> continuation);
}

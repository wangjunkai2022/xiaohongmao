package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: SimpleChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\b`\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003J!\u0010\u0007\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H¦@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Landroidx/paging/SimpleProducerScope;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/channels/j0;", "Lkotlin/Function0;", "", "block", "awaitClose", "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChannel", "()Lkotlinx/coroutines/channels/j0;", "channel", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface SimpleProducerScope<T> extends s0, j0<T> {

    /* compiled from: SimpleChannelFlow.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <T> boolean offer(@g SimpleProducerScope<T> simpleProducerScope, T t9) {
            Intrinsics.checkNotNullParameter(simpleProducerScope, "this");
            return j0.a.c(simpleProducerScope, t9);
        }
    }

    @h
    Object awaitClose(@g Function0<Unit> function0, @g Continuation<? super Unit> continuation);

    @g
    j0<T> getChannel();
}

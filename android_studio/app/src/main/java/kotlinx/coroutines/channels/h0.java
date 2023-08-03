package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: RendezvousChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012 \u0010\u000f\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r\u0018\u00010\fj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000e¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0006\u001a\u00020\u00038DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\b\u001a\u00020\u00038DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00038DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0005R\u0014\u0010\u000b\u001a\u00020\u00038DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u0010\u0005¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/h0;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/a;", "", "Z", "()Z", "isBufferAlwaysEmpty", "a0", "isBufferEmpty", "D", "isBufferAlwaysFull", "isBufferFull", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class h0<E> extends a<E> {
    public h0(@m8.h Function1<? super E, Unit> function1) {
        super(function1);
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean D() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean E() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.a
    protected final boolean Z() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.a
    protected final boolean a0() {
        return true;
    }
}

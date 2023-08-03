package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;

/* compiled from: AbstractChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B;\u0012\u0006\u0010\f\u001a\u00028\u0000\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\r\u0012\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00028\u0000`\b¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016R*\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00028\u0000`\b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/channels/l0;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/k0;", "", "Z", "", "k0", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "f", "Lkotlin/jvm/functions/Function1;", "onUndeliveredElement", "pollResult", "Lkotlinx/coroutines/q;", "cont", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/q;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class l0<E> extends k0<E> {
    @JvmField
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public final Function1<E, Unit> f84875f;

    /* JADX WARN: Multi-variable type inference failed */
    public l0(E e4, @m8.g kotlinx.coroutines.q<? super Unit> qVar, @m8.g Function1<? super E, Unit> function1) {
        super(e4, qVar);
        this.f84875f = function1;
    }

    @Override // kotlinx.coroutines.internal.x
    public boolean Z() {
        if (super.Z()) {
            k0();
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.channels.i0
    public void k0() {
        kotlinx.coroutines.internal.g0.b(this.f84875f, h0(), this.f84869e.getContext());
    }
}

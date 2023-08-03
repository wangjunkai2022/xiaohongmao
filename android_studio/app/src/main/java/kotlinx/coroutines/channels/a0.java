package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.c;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.p0;

/* compiled from: LinkedListChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012 \u0010\u001e\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001cj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u001d¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u00002\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ/\u0010\u0011\u001a\u00020\u00102\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00138DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00138DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\u00138DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u0010\u0015\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006!"}, d2 = {"Lkotlinx/coroutines/channels/a0;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/a;", "element", "", "H", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "I", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/p;", "Lkotlinx/coroutines/channels/i0;", "list", "Lkotlinx/coroutines/channels/v;", "closed", "", "d0", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V", "", "Z", "()Z", "isBufferAlwaysEmpty", "a0", "isBufferEmpty", "D", "isBufferAlwaysFull", "isBufferFull", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class a0<E> extends a<E> {
    public a0(@m8.h Function1<? super E, Unit> function1) {
        super(function1);
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean D() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean E() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.g
    public Object H(E e4) {
        g0<?> L;
        do {
            Object H = super.H(e4);
            p0 p0Var = b.f84827d;
            if (H == p0Var) {
                return p0Var;
            }
            if (H == b.f84828e) {
                L = L(e4);
                if (L == null) {
                    return p0Var;
                }
            } else if (H instanceof v) {
                return H;
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid offerInternal result ", H).toString());
            }
        } while (!(L instanceof v));
        return L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.g
    public Object I(E e4, @m8.g kotlinx.coroutines.selects.f<?> fVar) {
        Object w9;
        while (true) {
            if (Y()) {
                w9 = super.I(e4, fVar);
            } else {
                w9 = fVar.w(k(e4));
                if (w9 == null) {
                    w9 = b.f84827d;
                }
            }
            if (w9 == kotlinx.coroutines.selects.g.d()) {
                return kotlinx.coroutines.selects.g.d();
            }
            p0 p0Var = b.f84827d;
            if (w9 == p0Var) {
                return p0Var;
            }
            if (w9 != b.f84828e && w9 != kotlinx.coroutines.internal.c.f86247b) {
                if (w9 instanceof v) {
                    return w9;
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid result ", w9).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.channels.a
    protected final boolean Z() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.a
    protected final boolean a0() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.a
    protected void d0(@m8.g Object obj, @m8.g v<?> vVar) {
        UndeliveredElementException undeliveredElementException = null;
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                i0 i0Var = (i0) obj;
                if (i0Var instanceof c.a) {
                    Function1<E, Unit> function1 = this.f84839a;
                    if (function1 != null) {
                        undeliveredElementException = kotlinx.coroutines.internal.g0.c(function1, ((c.a) i0Var).f84841d, null);
                    }
                } else {
                    i0Var.i0(vVar);
                }
            } else {
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    UndeliveredElementException undeliveredElementException2 = null;
                    while (true) {
                        int i4 = size - 1;
                        i0 i0Var2 = (i0) arrayList.get(size);
                        if (i0Var2 instanceof c.a) {
                            Function1<E, Unit> function12 = this.f84839a;
                            undeliveredElementException2 = function12 == null ? null : kotlinx.coroutines.internal.g0.c(function12, ((c.a) i0Var2).f84841d, undeliveredElementException2);
                        } else {
                            i0Var2.i0(vVar);
                        }
                        if (i4 < 0) {
                            break;
                        }
                        size = i4;
                    }
                    undeliveredElementException = undeliveredElementException2;
                }
            }
        }
        if (undeliveredElementException != null) {
            throw undeliveredElementException;
        }
    }
}

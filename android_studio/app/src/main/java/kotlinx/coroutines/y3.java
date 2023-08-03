package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Unconfined.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0001\u0018\u0000 \b2\u00020\u0001:\u0001\u0003B\u0007¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/y3;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "", "a", "Z", "dispatcherWasUnconfined", "<init>", "()V", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public final class y3 extends AbstractCoroutineContextElement {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final a f86864b = new a(null);
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public boolean f86865a;

    /* compiled from: Unconfined.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/y3$a;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/y3;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements CoroutineContext.Key<y3> {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public y3() {
        super(f86864b);
    }
}

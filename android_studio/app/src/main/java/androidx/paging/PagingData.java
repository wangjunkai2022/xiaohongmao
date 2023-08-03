package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.k;
import m8.g;

/* compiled from: PagingData.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u0010*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0001\u0010B%\b\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fR&\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\u00020\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Landroidx/paging/PagingData;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PageEvent;", "flow", "Lkotlinx/coroutines/flow/i;", "getFlow$paging_common", "()Lkotlinx/coroutines/flow/i;", "Landroidx/paging/UiReceiver;", "receiver", "Landroidx/paging/UiReceiver;", "getReceiver$paging_common", "()Landroidx/paging/UiReceiver;", "<init>", "(Lkotlinx/coroutines/flow/i;Landroidx/paging/UiReceiver;)V", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class PagingData<T> {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final PagingData<Object> EMPTY;
    @g
    private static final UiReceiver NOOP_RECEIVER;
    @g
    private final i<PageEvent<T>> flow;
    @g
    private final UiReceiver receiver;

    /* compiled from: PagingData.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\r0\u0004\"\b\b\u0001\u0010\r*\u00020\u0001H\u0007J&\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0004\"\b\b\u0001\u0010\r*\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\r0\u0010H\u0007R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004X\u0080\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Landroidx/paging/PagingData$Companion;", "", "()V", "EMPTY", "Landroidx/paging/PagingData;", "getEMPTY$paging_common$annotations", "getEMPTY$paging_common", "()Landroidx/paging/PagingData;", "NOOP_RECEIVER", "Landroidx/paging/UiReceiver;", "getNOOP_RECEIVER$paging_common", "()Landroidx/paging/UiReceiver;", "empty", ExifInterface.GPS_DIRECTION_TRUE, TypedValues.Transition.S_FROM, "data", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getEMPTY$paging_common$annotations() {
        }

        @JvmStatic
        @g
        public final <T> PagingData<T> empty() {
            return (PagingData<T>) getEMPTY$paging_common();
        }

        @JvmStatic
        @g
        public final <T> PagingData<T> from(@g List<? extends T> data) {
            List listOf;
            Intrinsics.checkNotNullParameter(data, "data");
            PageEvent.Insert.Companion companion = PageEvent.Insert.Companion;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new TransformablePage(0, data));
            LoadState.NotLoading.Companion companion2 = LoadState.NotLoading.Companion;
            return new PagingData<>(k.L0(PageEvent.Insert.Companion.Refresh$default(companion, listOf, 0, 0, new LoadStates(companion2.getIncomplete$paging_common(), companion2.getComplete$paging_common(), companion2.getComplete$paging_common()), null, 16, null)), getNOOP_RECEIVER$paging_common());
        }

        @g
        public final PagingData<Object> getEMPTY$paging_common() {
            return PagingData.EMPTY;
        }

        @g
        public final UiReceiver getNOOP_RECEIVER$paging_common() {
            return PagingData.NOOP_RECEIVER;
        }
    }

    static {
        UiReceiver uiReceiver = new UiReceiver() { // from class: androidx.paging.PagingData$Companion$NOOP_RECEIVER$1
            @Override // androidx.paging.UiReceiver
            public void accessHint(@g ViewportHint viewportHint) {
                Intrinsics.checkNotNullParameter(viewportHint, "viewportHint");
            }

            @Override // androidx.paging.UiReceiver
            public void refresh() {
            }

            @Override // androidx.paging.UiReceiver
            public void retry() {
            }
        };
        NOOP_RECEIVER = uiReceiver;
        EMPTY = new PagingData<>(k.L0(PageEvent.Insert.Companion.getEMPTY_REFRESH_LOCAL()), uiReceiver);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PagingData(@g i<? extends PageEvent<T>> flow, @g UiReceiver receiver) {
        Intrinsics.checkNotNullParameter(flow, "flow");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        this.flow = flow;
        this.receiver = receiver;
    }

    @JvmStatic
    @g
    public static final <T> PagingData<T> empty() {
        return Companion.empty();
    }

    @JvmStatic
    @g
    public static final <T> PagingData<T> from(@g List<? extends T> list) {
        return Companion.from(list);
    }

    @g
    public final i<PageEvent<T>> getFlow$paging_common() {
        return this.flow;
    }

    @g
    public final UiReceiver getReceiver$paging_common() {
        return this.receiver;
    }
}

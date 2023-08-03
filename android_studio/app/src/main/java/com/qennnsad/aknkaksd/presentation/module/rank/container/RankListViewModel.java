package com.qennnsad.aknkaksd.presentation.module.rank.container;

import androidx.lifecycle.SavedStateHandle;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.ui.main.y;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RankListViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0010\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0019\b\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\r\u001a\u0004\b\u0018\u0010\u000fR\u0011\u0010\u001b\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u000fR\u0011\u0010\u001d\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u000f¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;", "Landroidx/lifecycle/SavedStateHandle;", "e", "Landroidx/lifecycle/SavedStateHandle;", t.b.f83859d, "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;", "f", "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;", "rankFlavorController", "", "g", "I", "v", "()I", "rootPosition", "", "h", "[Ljava/lang/Integer;", "w", "()[Ljava/lang/Integer;", "titles", ContextChain.TAG_INFRA, "t", "getBackground", "u", "rankPagesCount", "s", "gameRankPagePosition", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class RankListViewModel extends l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final SavedStateHandle f52248e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final y f52249f;

    /* renamed from: g  reason: collision with root package name */
    private final int f52250g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final Integer[] f52251h;

    /* renamed from: i  reason: collision with root package name */
    private final int f52252i;

    /* compiled from: RankListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    @u7.a
    public RankListViewModel(@m8.g SavedStateHandle state, @m8.g y rankFlavorController) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(rankFlavorController, "rankFlavorController");
        this.f52248e = state;
        this.f52249f = rankFlavorController;
        Object obj = state.get(d.f52262a);
        Intrinsics.checkNotNull(obj);
        int intValue = ((Number) obj).intValue();
        this.f52250g = intValue;
        this.f52251h = new Integer[]{Integer.valueOf((int) R.string.today_rank), Integer.valueOf((int) R.string.yesterday_rank), Integer.valueOf((int) R.string.week_rank), Integer.valueOf((int) R.string.prev_week_rank)};
        this.f52252i = rankFlavorController.a(intValue);
    }

    public final int s() {
        return this.f52249f.b();
    }

    public final int t() {
        return this.f52252i;
    }

    public final int u() {
        return this.f52249f.c();
    }

    public final int v() {
        return this.f52250g;
    }

    @m8.g
    public final Integer[] w() {
        return this.f52251h;
    }
}

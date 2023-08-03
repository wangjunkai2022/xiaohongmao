package com.qennnsad.aknkaksd.presentation.module.main.rank;

import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.ui.main.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainRankViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0011\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0011\u0010\u000e\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;", "", "", "t", "()[Ljava/lang/String;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;", "e", "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;", "rankFlavorController", "", "s", "()I", "gameRankPagePosition", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MainRankViewModel extends l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final y f51935e;

    /* compiled from: MainRankViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    @u7.a
    public MainRankViewModel(@m8.g y rankFlavorController) {
        Intrinsics.checkNotNullParameter(rankFlavorController, "rankFlavorController");
        this.f51935e = rankFlavorController;
    }

    public final int s() {
        return this.f51935e.b();
    }

    @m8.g
    public final String[] t() {
        return this.f51935e.e();
    }
}

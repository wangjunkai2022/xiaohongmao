package com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby;

import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.index.AnchorType;
import kotlin.Metadata;
import m8.g;

/* compiled from: NearbyAnchorViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\t\b\u0007¢\u0006\u0004\b\t\u0010\nR\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel$Event;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "k", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "t", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "anchorType", "<init>", "()V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class NearbyAnchorViewModel extends AbstractAnchorViewModel<Event> {
    @g

    /* renamed from: k  reason: collision with root package name */
    private final AnchorType f51549k = AnchorType.NEARBY;

    /* compiled from: NearbyAnchorViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel
    @g
    public AnchorType t() {
        return this.f51549k;
    }
}

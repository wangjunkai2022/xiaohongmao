package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBean;
import com.qennnsad.aknkaksd.data.repository.m;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HistoryListPresenter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/e;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;", "", "anchorId", "", "g", "ui", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends com.qennnsad.aknkaksd.presentation.ui.base.e<k> {

    /* compiled from: HistoryListPresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", io.sentry.protocol.j.f83728f, "", "f", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<List<? extends PinnedMessageBean>>> {
        a(k kVar) {
            super(kVar);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<List<PinnedMessageBean>> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            k f10 = j.f(j.this);
            if (f10 != null) {
                List<PinnedMessageBean> data = response.getData();
                Intrinsics.checkNotNullExpressionValue(data, "response.data");
                f10.A(data);
            }
            k f11 = j.f(j.this);
            if (f11 != null) {
                f11.a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(@m8.g k ui) {
        super(ui);
        Intrinsics.checkNotNullParameter(ui, "ui");
    }

    public static final /* synthetic */ k f(j jVar) {
        return jVar.e();
    }

    public final void g(@m8.g String anchorId) {
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        k e4 = e();
        if (e4 != null) {
            e4.c();
        }
        m.g(d(), false, 1, null).getPinnedMessagesHistory(anchorId).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new a(e()));
    }
}

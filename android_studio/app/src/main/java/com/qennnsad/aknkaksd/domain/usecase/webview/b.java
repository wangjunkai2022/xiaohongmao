package com.qennnsad.aknkaksd.domain.usecase.webview;

import com.qennnsad.aknkaksd.data.bean.IsAbleToCreateChatBean;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.domain.base.d;
import com.qennnsad.aknkaksd.domain.base.h;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import n7.o;
import retrofit2.Response;

/* compiled from: CheckIfAbleToCreateChatUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/IsAbleToCreateChatBean;", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "b", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends h<Integer, IsAbleToCreateChatBean> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final m f48505a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final d<IsAbleToCreateChatBean> f48506b;

    @u7.a
    public b(@g g5.a localDataManager, @g m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48505a = sourceFactory;
        this.f48506b = new d<>(IsAbleToCreateChatBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ IsAbleToCreateChatBean e(d dVar, Response response) {
        return (IsAbleToCreateChatBean) d.b(dVar, response, null, 2, null);
    }

    @Override // com.qennnsad.aknkaksd.domain.base.h
    public /* bridge */ /* synthetic */ z<IsAbleToCreateChatBean> a(Integer num) {
        return d(num.intValue());
    }

    @g
    protected z<IsAbleToCreateChatBean> d(int i4) {
        z<Response<String>> is_create_conversation = m.g(this.f48505a, false, 1, null).is_create_conversation(i4);
        final d<IsAbleToCreateChatBean> dVar = this.f48506b;
        z map = is_create_conversation.map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.webview.a
            @Override // n7.o
            public final Object apply(Object obj) {
                IsAbleToCreateChatBean e4;
                e4 = b.e(d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().i…(params).map(mapper::map)");
        return map;
    }
}

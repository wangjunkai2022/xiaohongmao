package com.im.freechat.domain.usecase.settings;

import com.im.freechat.domain.CacheFileType;
import com.ksyun.media.player.d.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DeleteCacheByTypeInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0006\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/settings/a;", "Lcom/im/freechat/domain/usecase/base/a;", "", "Lcom/im/freechat/domain/CacheFileType;", "", "params", "c", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/a;", "a", "Lcom/im/freechat/domain/a;", "cacheManager", "<init>", "(Lcom/im/freechat/domain/a;)V", d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends com.im.freechat.domain.usecase.base.a<List<? extends CacheFileType>, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.a f41937a;

    public a(@g com.im.freechat.domain.a cacheManager) {
        Intrinsics.checkNotNullParameter(cacheManager, "cacheManager");
        this.f41937a = cacheManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.a
    @h
    /* renamed from: c */
    public Object b(@g List<? extends CacheFileType> list, @g Continuation<? super Unit> continuation) {
        this.f41937a.b(list);
        return Unit.INSTANCE;
    }
}

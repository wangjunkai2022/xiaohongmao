package com.im.freechat.di;

import com.im.freechat.data.l;
import com.im.freechat.data.openapigen.api.ChatApi;
import com.im.freechat.data.openapigen.api.FileApi;
import com.im.freechat.data.openapigen.api.FriendApi;
import com.im.freechat.data.openapigen.api.MessageApi;
import com.im.freechat.data.openapigen.api.UserApi;
import com.im.freechat.data.sources.api.RemoteApi;
import com.im.freechat.data.sources.database.MainDatabase;
import com.im.freechat.data.sources.database.entities.chat.ChatMapper;
import com.im.freechat.domain.h;
import com.im.freechat.domain.n;
import com.im.freechat.domain.q;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinDSLHelper.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0012\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001\"\u0006\b\u0004\u0010\u0004\u0018\u0001\"\u0006\b\u0005\u0010\u0005\u0018\u0001\"\u0006\b\u0006\u0010\u0006\u0018\u0001\"\u0006\b\u0007\u0010\u0007\u0018\u0001\"\u0006\b\b\u0010\b\u0018\u0001\"\u0006\b\t\u0010\t\u0018\u0001\"\u0006\b\n\u0010\n\u0018\u0001\"\u0006\b\u000b\u0010\u000b\u0018\u0001*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\n¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "T11", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "com/im/freechat/di/KoinDSLHelperKt$singleOf$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$9 extends Lambda implements Function2<Scope, y8.a, l> {
    public CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$9() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final l invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = single.p(Reflection.getOrCreateKotlinClass(MainDatabase.class), null, null);
        Object p10 = single.p(Reflection.getOrCreateKotlinClass(ChatApi.class), null, null);
        Object p11 = single.p(Reflection.getOrCreateKotlinClass(FriendApi.class), null, null);
        Object p12 = single.p(Reflection.getOrCreateKotlinClass(UserApi.class), null, null);
        Object p13 = single.p(Reflection.getOrCreateKotlinClass(MessageApi.class), null, null);
        Object p14 = single.p(Reflection.getOrCreateKotlinClass(FileApi.class), null, null);
        Object p15 = single.p(Reflection.getOrCreateKotlinClass(RemoteApi.class), null, null);
        Object p16 = single.p(Reflection.getOrCreateKotlinClass(ChatMapper.class), null, null);
        Object p17 = single.p(Reflection.getOrCreateKotlinClass(h.class), null, null);
        return new l((MainDatabase) p9, (ChatApi) p10, (FriendApi) p11, (UserApi) p12, (MessageApi) p13, (FileApi) p14, (RemoteApi) p15, (ChatMapper) p16, (h) p17, (q) single.p(Reflection.getOrCreateKotlinClass(q.class), null, null), (n) single.p(Reflection.getOrCreateKotlinClass(n.class), null, null));
    }
}

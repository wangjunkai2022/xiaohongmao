package com.im.freechat.di;

import com.im.freechat.data.j;
import com.im.freechat.data.openapigen.api.FriendApi;
import com.im.freechat.data.sources.api.ApiService;
import com.im.freechat.data.sources.api.entities.banner.BannerResponseMapper;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: SingleOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u000b\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001\"\u0006\b\u0004\u0010\u0004\u0018\u0001*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"R", "T1", "T2", "T3", "T4", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "org/koin/core/module/dsl/SingleOfKt$singleOf$10", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$8 extends Lambda implements Function2<Scope, y8.a, j> {
    public CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$8() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final j invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = single.p(Reflection.getOrCreateKotlinClass(ApiService.class), null, null);
        Object p10 = single.p(Reflection.getOrCreateKotlinClass(FriendApi.class), null, null);
        return new j((ApiService) p9, (FriendApi) p10, (ContactResponseMapper) single.p(Reflection.getOrCreateKotlinClass(ContactResponseMapper.class), null, null), (BannerResponseMapper) single.p(Reflection.getOrCreateKotlinClass(BannerResponseMapper.class), null, null));
    }
}

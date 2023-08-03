package com.im.freechat.di;

import com.im.freechat.data.DatabaseRepositoryImpl;
import com.im.freechat.data.sources.database.MainDatabase;
import com.im.freechat.data.sources.database.entities.chat.ChatMapper;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.data.sources.database.entities.download.DownloadEntityMapper;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper;
import com.im.freechat.data.sources.database.entities.message.MessageMapper;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: SingleOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\r\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001\"\u0006\b\u0004\u0010\u0004\u0018\u0001\"\u0006\b\u0005\u0010\u0005\u0018\u0001\"\u0006\b\u0006\u0010\u0006\u0018\u0001*\u00020\u00072\u0006\u0010\t\u001a\u00020\bH\n¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"R", "T1", "T2", "T3", "T4", "T5", "T6", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "org/koin/core/module/dsl/SingleOfKt$singleOf$14", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class DataModuleKt$dataModule$1$invoke$$inlined$singleOf$1 extends Lambda implements Function2<Scope, y8.a, DatabaseRepositoryImpl> {
    public DataModuleKt$dataModule$1$invoke$$inlined$singleOf$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final DatabaseRepositoryImpl invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = single.p(Reflection.getOrCreateKotlinClass(MainDatabase.class), null, null);
        Object p10 = single.p(Reflection.getOrCreateKotlinClass(DownloadEntityMapper.class), null, null);
        Object p11 = single.p(Reflection.getOrCreateKotlinClass(UserEntityMapper.class), null, null);
        Object p12 = single.p(Reflection.getOrCreateKotlinClass(ChatMapper.class), null, null);
        return new DatabaseRepositoryImpl((MainDatabase) p9, (DownloadEntityMapper) p10, (UserEntityMapper) p11, (ChatMapper) p12, (MessageMapper) single.p(Reflection.getOrCreateKotlinClass(MessageMapper.class), null, null), (FriendStatusMapper) single.p(Reflection.getOrCreateKotlinClass(FriendStatusMapper.class), null, null));
    }
}

package com.im.freechat.di;

import android.app.DownloadManager;
import android.content.Context;
import androidx.room.Room;
import com.im.freechat.data.DatabaseRepositoryImpl;
import com.im.freechat.data.d;
import com.im.freechat.data.sources.database.MainDatabase;
import com.im.freechat.data.sources.database.entities.chat.ChatMapper;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.data.sources.database.entities.download.DownloadEntityMapper;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper;
import com.im.freechat.domain.e;
import com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor;
import java.util.List;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.definition.Kind;
import org.koin.core.instance.f;
import org.koin.core.registry.c;
import org.koin.core.scope.Scope;

/* compiled from: DataModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class DataModuleKt$dataModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final DataModuleKt$dataModule$1 f41251a = new DataModuleKt$dataModule$1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/data/sources/database/MainDatabase;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/data/sources/database/MainDatabase;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function2<Scope, y8.a, MainDatabase> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f41252a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @g
        /* renamed from: a */
        public final MainDatabase invoke(@g Scope single, @g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return (MainDatabase) Room.databaseBuilder((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null), MainDatabase.class, "main.db").fallbackToDestructiveMigration().setTransactionExecutor(Executors.newSingleThreadExecutor()).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Landroid/app/DownloadManager;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroid/app/DownloadManager;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<Scope, y8.a, DownloadManager> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f41253a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @g
        /* renamed from: a */
        public final DownloadManager invoke(@g Scope single, @g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            Object systemService = ((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getSystemService("download");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
            return (DownloadManager) systemService;
        }
    }

    DataModuleKt$dataModule$1() {
        super(1);
    }

    public final void a(@g x8.a module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        List emptyList5;
        List emptyList6;
        List emptyList7;
        List emptyList8;
        List emptyList9;
        List emptyList10;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        a aVar = a.f41252a;
        c.a aVar2 = c.f92526e;
        z8.c a10 = aVar2.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(MainDatabase.class), null, aVar, kind, emptyList));
        module.p(fVar);
        if (module.l()) {
            module.u(fVar);
        }
        new Pair(module, fVar);
        b bVar = b.f41253a;
        z8.c a11 = aVar2.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar2 = new f<>(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(DownloadManager.class), null, bVar, kind, emptyList2));
        module.p(fVar2);
        if (module.l()) {
            module.u(fVar2);
        }
        new Pair(module, fVar2);
        DataModuleKt$dataModule$1$invoke$$inlined$singleOf$1 dataModuleKt$dataModule$1$invoke$$inlined$singleOf$1 = new DataModuleKt$dataModule$1$invoke$$inlined$singleOf$1();
        z8.c a12 = aVar2.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar3 = new f<>(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(DatabaseRepositoryImpl.class), null, dataModuleKt$dataModule$1$invoke$$inlined$singleOf$1, kind, emptyList3));
        module.p(fVar3);
        if (module.l()) {
            module.u(fVar3);
        }
        b9.a.b(new Pair(module, fVar3), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.c.class));
        DataModuleKt$dataModule$1$invoke$$inlined$singleOf$2 dataModuleKt$dataModule$1$invoke$$inlined$singleOf$2 = new DataModuleKt$dataModule$1$invoke$$inlined$singleOf$2();
        z8.c a13 = aVar2.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar4 = new f<>(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(d.class), null, dataModuleKt$dataModule$1$invoke$$inlined$singleOf$2, kind, emptyList4));
        module.p(fVar4);
        if (module.l()) {
            module.u(fVar4);
        }
        b9.a.b(new Pair(module, fVar4), Reflection.getOrCreateKotlinClass(e.class));
        DataModuleKt$dataModule$1$invoke$$inlined$singleOf$3 dataModuleKt$dataModule$1$invoke$$inlined$singleOf$3 = new DataModuleKt$dataModule$1$invoke$$inlined$singleOf$3();
        z8.c a14 = aVar2.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar5 = new f<>(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(DownloadEntityMapper.class), null, dataModuleKt$dataModule$1$invoke$$inlined$singleOf$3, kind, emptyList5));
        module.p(fVar5);
        if (module.l()) {
            module.u(fVar5);
        }
        new Pair(module, fVar5);
        DataModuleKt$dataModule$1$invoke$$inlined$singleOf$4 dataModuleKt$dataModule$1$invoke$$inlined$singleOf$4 = new DataModuleKt$dataModule$1$invoke$$inlined$singleOf$4();
        z8.c a15 = aVar2.a();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar6 = new f<>(new org.koin.core.definition.a(a15, Reflection.getOrCreateKotlinClass(UserEntityMapper.class), null, dataModuleKt$dataModule$1$invoke$$inlined$singleOf$4, kind, emptyList6));
        module.p(fVar6);
        if (module.l()) {
            module.u(fVar6);
        }
        new Pair(module, fVar6);
        DataModuleKt$dataModule$1$invoke$$inlined$singleOf$5 dataModuleKt$dataModule$1$invoke$$inlined$singleOf$5 = new DataModuleKt$dataModule$1$invoke$$inlined$singleOf$5();
        z8.c a16 = aVar2.a();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar7 = new f<>(new org.koin.core.definition.a(a16, Reflection.getOrCreateKotlinClass(ChatMapper.class), null, dataModuleKt$dataModule$1$invoke$$inlined$singleOf$5, kind, emptyList7));
        module.p(fVar7);
        if (module.l()) {
            module.u(fVar7);
        }
        new Pair(module, fVar7);
        DataModuleKt$dataModule$1$invoke$$inlined$singleOf$6 dataModuleKt$dataModule$1$invoke$$inlined$singleOf$6 = new DataModuleKt$dataModule$1$invoke$$inlined$singleOf$6();
        z8.c a17 = aVar2.a();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar8 = new f<>(new org.koin.core.definition.a(a17, Reflection.getOrCreateKotlinClass(FriendStatusMapper.class), null, dataModuleKt$dataModule$1$invoke$$inlined$singleOf$6, kind, emptyList8));
        module.p(fVar8);
        if (module.l()) {
            module.u(fVar8);
        }
        new Pair(module, fVar8);
        DataModuleKt$dataModule$1$invoke$$inlined$factoryOf$1 dataModuleKt$dataModule$1$invoke$$inlined$factoryOf$1 = new DataModuleKt$dataModule$1$invoke$$inlined$factoryOf$1();
        z8.c a18 = aVar2.a();
        Kind kind2 = Kind.Factory;
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar3 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a18, Reflection.getOrCreateKotlinClass(SubscribeDownloadsInteractor.class), null, dataModuleKt$dataModule$1$invoke$$inlined$factoryOf$1, kind2, emptyList9));
        module.p(aVar3);
        new Pair(module, aVar3);
        DataModuleKt$dataModule$1$invoke$$inlined$factoryOf$2 dataModuleKt$dataModule$1$invoke$$inlined$factoryOf$2 = new DataModuleKt$dataModule$1$invoke$$inlined$factoryOf$2();
        z8.c a19 = aVar2.a();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar4 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a19, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.auth.a.class), null, dataModuleKt$dataModule$1$invoke$$inlined$factoryOf$2, kind2, emptyList10));
        module.p(aVar4);
        new Pair(module, aVar4);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}

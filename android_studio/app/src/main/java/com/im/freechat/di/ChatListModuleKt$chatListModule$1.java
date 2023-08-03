package com.im.freechat.di;

import com.im.freechat.domain.usecase.auth.StartWebSocketInteractor;
import com.im.freechat.domain.usecase.auth.e;
import com.im.freechat.domain.usecase.auth.f;
import com.im.freechat.domain.usecase.auth.k;
import com.im.freechat.domain.usecase.chat.l;
import com.im.freechat.domain.usecase.chat.s;
import com.im.freechat.domain.usecase.chat.t;
import com.im.freechat.domain.usecase.chat.u;
import com.im.freechat.domain.usecase.currentuser.m;
import com.im.freechat.domain.usecase.members.h;
import com.im.freechat.ui.chatlist.ChatListViewModel;
import com.im.freechat.ui.chatlist.d;
import com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.definition.Kind;
import org.koin.core.registry.c;

/* compiled from: ChatListModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class ChatListModuleKt$chatListModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final ChatListModuleKt$chatListModule$1 f41231a = new ChatListModuleKt$chatListModule$1();

    ChatListModuleKt$chatListModule$1() {
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
        List emptyList11;
        List emptyList12;
        List emptyList13;
        List emptyList14;
        List emptyList15;
        List emptyList16;
        List emptyList17;
        List emptyList18;
        List emptyList19;
        List emptyList20;
        List emptyList21;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        ChatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$1 chatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$1 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$1();
        c.a aVar = c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(ChatListViewModel.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$1, kind, emptyList));
        module.p(aVar2);
        new Pair(module, aVar2);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$2 chatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$2 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$2();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(ChooseChatTypeViewModel.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$2, kind, emptyList2));
        module.p(aVar3);
        new Pair(module, aVar3);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$1 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$1 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$1();
        z8.c a12 = aVar.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar4 = new org.koin.core.instance.a(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(d.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$1, kind, emptyList3));
        module.p(aVar4);
        new Pair(module, aVar4);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$2 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$2 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$2();
        z8.c a13 = aVar.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar5 = new org.koin.core.instance.a(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.auth.g.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$2, kind, emptyList4));
        module.p(aVar5);
        new Pair(module, aVar5);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$3 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$3 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$3();
        z8.c a14 = aVar.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar6 = new org.koin.core.instance.a(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(f.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$3, kind, emptyList5));
        module.p(aVar6);
        new Pair(module, aVar6);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$4 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$4 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$4();
        z8.c a15 = aVar.a();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar7 = new org.koin.core.instance.a(new org.koin.core.definition.a(a15, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.g.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$4, kind, emptyList6));
        module.p(aVar7);
        new Pair(module, aVar7);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$5 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$5 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$5();
        z8.c a16 = aVar.a();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar8 = new org.koin.core.instance.a(new org.koin.core.definition.a(a16, Reflection.getOrCreateKotlinClass(StartWebSocketInteractor.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$5, kind, emptyList7));
        module.p(aVar8);
        new Pair(module, aVar8);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$6 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$6 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$6();
        z8.c a17 = aVar.a();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar9 = new org.koin.core.instance.a(new org.koin.core.definition.a(a17, Reflection.getOrCreateKotlinClass(k.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$6, kind, emptyList8));
        module.p(aVar9);
        new Pair(module, aVar9);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$7 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$7 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$7();
        z8.c a18 = aVar.a();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar10 = new org.koin.core.instance.a(new org.koin.core.definition.a(a18, Reflection.getOrCreateKotlinClass(e.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$7, kind, emptyList9));
        module.p(aVar10);
        new Pair(module, aVar10);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$8 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$8 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$8();
        z8.c a19 = aVar.a();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar11 = new org.koin.core.instance.a(new org.koin.core.definition.a(a19, Reflection.getOrCreateKotlinClass(u.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$8, kind, emptyList10));
        module.p(aVar11);
        new Pair(module, aVar11);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$9 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$9 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$9();
        z8.c a20 = aVar.a();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar12 = new org.koin.core.instance.a(new org.koin.core.definition.a(a20, Reflection.getOrCreateKotlinClass(l.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$9, kind, emptyList11));
        module.p(aVar12);
        new Pair(module, aVar12);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$10 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$10 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$10();
        z8.c a21 = aVar.a();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar13 = new org.koin.core.instance.a(new org.koin.core.definition.a(a21, Reflection.getOrCreateKotlinClass(t.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$10, kind, emptyList12));
        module.p(aVar13);
        new Pair(module, aVar13);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$11 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$11 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$11();
        z8.c a22 = aVar.a();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar14 = new org.koin.core.instance.a(new org.koin.core.definition.a(a22, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.e.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$11, kind, emptyList13));
        module.p(aVar14);
        new Pair(module, aVar14);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$12 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$12 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$12();
        z8.c a23 = aVar.a();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar15 = new org.koin.core.instance.a(new org.koin.core.definition.a(a23, Reflection.getOrCreateKotlinClass(h.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$12, kind, emptyList14));
        module.p(aVar15);
        new Pair(module, aVar15);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$13 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$13 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$13();
        z8.c a24 = aVar.a();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar16 = new org.koin.core.instance.a(new org.koin.core.definition.a(a24, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.h.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$13, kind, emptyList15));
        module.p(aVar16);
        new Pair(module, aVar16);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$14 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$14 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$14();
        z8.c a25 = aVar.a();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar17 = new org.koin.core.instance.a(new org.koin.core.definition.a(a25, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.auth.c.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$14, kind, emptyList16));
        module.p(aVar17);
        new Pair(module, aVar17);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$15 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$15 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$15();
        z8.c a26 = aVar.a();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar18 = new org.koin.core.instance.a(new org.koin.core.definition.a(a26, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.k.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$15, kind, emptyList17));
        module.p(aVar18);
        new Pair(module, aVar18);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$16 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$16 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$16();
        z8.c a27 = aVar.a();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar19 = new org.koin.core.instance.a(new org.koin.core.definition.a(a27, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.members.d.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$16, kind, emptyList18));
        module.p(aVar19);
        new Pair(module, aVar19);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$17 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$17 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$17();
        z8.c a28 = aVar.a();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar20 = new org.koin.core.instance.a(new org.koin.core.definition.a(a28, Reflection.getOrCreateKotlinClass(s.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$17, kind, emptyList19));
        module.p(aVar20);
        new Pair(module, aVar20);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$18 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$18 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$18();
        z8.c a29 = aVar.a();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar21 = new org.koin.core.instance.a(new org.koin.core.definition.a(a29, Reflection.getOrCreateKotlinClass(m.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$18, kind, emptyList20));
        module.p(aVar21);
        new Pair(module, aVar21);
        ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$19 chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$19 = new ChatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$19();
        z8.c a30 = aVar.a();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar22 = new org.koin.core.instance.a(new org.koin.core.definition.a(a30, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.a.class), null, chatListModuleKt$chatListModule$1$invoke$$inlined$factoryOf$19, kind, emptyList21));
        module.p(aVar22);
        new Pair(module, aVar22);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}

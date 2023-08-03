package com.im.freechat.di;

import com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel;
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

/* compiled from: VideoPlayerModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class VideoPlayerModuleKt$videoPlayerModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final VideoPlayerModuleKt$videoPlayerModule$1 f41274a = new VideoPlayerModuleKt$videoPlayerModule$1();

    VideoPlayerModuleKt$videoPlayerModule$1() {
        super(1);
    }

    public final void a(@g x8.a module) {
        List emptyList;
        List emptyList2;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1 videoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1 = new VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1();
        c.a aVar = c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(MessageGalleryViewModel.class), null, videoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1, kind, emptyList));
        module.p(aVar2);
        new Pair(module, aVar2);
        VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$factoryOf$1 videoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$factoryOf$1 = new VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$factoryOf$1();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(com.im.freechat.ui.chat.message_gallery.c.class), null, videoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$factoryOf$1, kind, emptyList2));
        module.p(aVar3);
        new Pair(module, aVar3);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}

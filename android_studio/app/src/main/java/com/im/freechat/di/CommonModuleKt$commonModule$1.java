package com.im.freechat.di;

import android.app.usage.NetworkStatsManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.media.MediaRecorder;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.t;
import com.google.android.exoplayer2.upstream.cache.v;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.im.freechat.data.WebSocketRepositoryImpl;
import com.im.freechat.data.sources.database.entities.message.MessageMapper;
import com.im.freechat.domain.j;
import com.im.freechat.domain.l;
import com.im.freechat.domain.n;
import com.im.freechat.domain.o;
import com.im.freechat.domain.p;
import com.im.freechat.domain.usecase.messages.m;
import com.im.freechat.extend.k;
import com.im.freechat.service.music.MusicService;
import com.im.freechat.utils.player.PlaybackImpl;
import com.im.freechat.utils.u;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.Kind;
import org.koin.core.registry.c;
import org.koin.core.scope.Scope;

/* compiled from: CommonModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class CommonModuleKt$commonModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final CommonModuleKt$commonModule$1 f41236a = new CommonModuleKt$commonModule$1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/domain/l;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/domain/l;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function2<Scope, y8.a, l> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f41237a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final l invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            if (Build.VERSION.SDK_INT >= 24) {
                NetworkStatsManager e4 = k.e((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null));
                TelephonyManager j4 = k.j((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null));
                ApplicationInfo applicationInfo = ((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getApplicationInfo();
                Intrinsics.checkNotNullExpressionValue(applicationInfo, "get<Context>().applicationInfo");
                return new m4.c(e4, j4, applicationInfo);
            }
            ApplicationInfo applicationInfo2 = ((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getApplicationInfo();
            Intrinsics.checkNotNullExpressionValue(applicationInfo2, "get<Context>().applicationInfo");
            return new m4.d(applicationInfo2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroid/content/SharedPreferences;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<Scope, y8.a, SharedPreferences> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f41238a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final SharedPreferences invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getSharedPreferences("auth", 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/utils/u;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/utils/u;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function2<Scope, y8.a, u> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f41239a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final u invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            PhoneNumberUtil M = PhoneNumberUtil.M();
            Intrinsics.checkNotNullExpressionValue(M, "getInstance()");
            return new u((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null), M);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Landroid/content/res/Resources;", "kotlin.jvm.PlatformType", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroid/content/res/Resources;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function2<Scope, y8.a, Resources> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f41240a = new d();

        d() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Resources invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return ((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getResources();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/media/audio/b;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/media/audio/b;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function2<Scope, y8.a, com.im.freechat.media.audio.b> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f41241a = new e();

        e() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final com.im.freechat.media.audio.b invoke(@m8.g Scope factory, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new com.im.freechat.media.audio.b(new MediaRecorder(), com.im.freechat.utils.e.f43748a, 2000);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/utils/g;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/utils/g;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function2<Scope, y8.a, com.im.freechat.utils.g> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f41242a = new f();

        f() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final com.im.freechat.utils.g invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            ContentResolver contentResolver = ((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getContentResolver();
            Intrinsics.checkNotNullExpressionValue(contentResolver, "get<Context>().contentResolver");
            return new com.im.freechat.utils.g(contentResolver, (Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/google/android/exoplayer2/upstream/cache/Cache;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/google/android/exoplayer2/upstream/cache/Cache;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function2<Scope, y8.a, Cache> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f41243a = new g();

        g() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final Cache invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new v(new File(((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getCacheDir(), "media"), new t(100L), (com.google.android.exoplayer2.database.a) single.p(Reflection.getOrCreateKotlinClass(com.google.android.exoplayer2.database.a.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Lcom/im/freechat/service/music/b;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/service/music/b;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function2<Scope, y8.a, com.im.freechat.service.music.b> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f41244a = new h();

        h() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final com.im.freechat.service.music.b invoke(@m8.g Scope single, @m8.g y8.a it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new com.im.freechat.service.music.b(org.koin.android.ext.koin.b.b(single), new ComponentName(org.koin.android.ext.koin.b.b(single), MusicService.class));
        }
    }

    CommonModuleKt$commonModule$1() {
        super(1);
    }

    public final void a(@m8.g x8.a module) {
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
        List emptyList22;
        List emptyList23;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        d dVar = d.f41240a;
        c.a aVar = org.koin.core.registry.c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Resources.class), null, dVar, kind, emptyList));
        module.p(fVar);
        if (module.l()) {
            module.u(fVar);
        }
        new Pair(module, fVar);
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$1 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$1 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$1();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar2 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(j.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$1, kind, emptyList2));
        module.p(fVar2);
        if (module.l()) {
            module.u(fVar2);
        }
        new Pair(module, fVar2);
        f fVar3 = f.f41242a;
        z8.c a12 = aVar.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar4 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(com.im.freechat.utils.g.class), null, fVar3, kind, emptyList3));
        module.p(fVar4);
        if (module.l()) {
            module.u(fVar4);
        }
        b9.a.b(new Pair(module, fVar4), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.h.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$2 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$2 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$2();
        z8.c a13 = aVar.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar5 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(com.google.android.exoplayer2.database.c.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$2, kind, emptyList4));
        module.p(fVar5);
        if (module.l()) {
            module.u(fVar5);
        }
        b9.a.b(new Pair(module, fVar5), Reflection.getOrCreateKotlinClass(com.google.android.exoplayer2.database.a.class));
        g gVar = g.f41243a;
        z8.c a14 = aVar.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar6 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(Cache.class), null, gVar, kind, emptyList5));
        module.p(fVar6);
        if (module.l()) {
            module.u(fVar6);
        }
        new Pair(module, fVar6);
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$3 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$3 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$3();
        z8.c a15 = aVar.a();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar7 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a15, Reflection.getOrCreateKotlinClass(com.im.freechat.utils.f.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$3, kind, emptyList6));
        module.p(fVar7);
        if (module.l()) {
            module.u(fVar7);
        }
        new Pair(module, fVar7);
        h hVar = h.f41244a;
        z8.c a16 = aVar.a();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar8 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a16, Reflection.getOrCreateKotlinClass(com.im.freechat.service.music.b.class), null, hVar, kind, emptyList7));
        module.p(fVar8);
        if (module.l()) {
            module.u(fVar8);
        }
        new Pair(module, fVar8);
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$4 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$4 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$4();
        z8.c a17 = aVar.a();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar9 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a17, Reflection.getOrCreateKotlinClass(p4.e.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$4, kind, emptyList8));
        module.p(fVar9);
        if (module.l()) {
            module.u(fVar9);
        }
        new Pair(module, fVar9);
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$5 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$5 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$5();
        z8.c a18 = aVar.a();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar10 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a18, Reflection.getOrCreateKotlinClass(com.im.freechat.utils.l.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$5, kind, emptyList9));
        module.p(fVar10);
        if (module.l()) {
            module.u(fVar10);
        }
        b9.a.b(new Pair(module, fVar10), Reflection.getOrCreateKotlinClass(n.class));
        a aVar2 = a.f41237a;
        z8.c a19 = aVar.a();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar11 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a19, Reflection.getOrCreateKotlinClass(l.class), null, aVar2, kind, emptyList10));
        module.p(fVar11);
        if (module.l()) {
            module.u(fVar11);
        }
        new Pair(module, fVar11);
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$6 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$6 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$6();
        z8.c a20 = aVar.a();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar12 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a20, Reflection.getOrCreateKotlinClass(m4.a.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$6, kind, emptyList11));
        module.p(fVar12);
        if (module.l()) {
            module.u(fVar12);
        }
        b9.a.b(new Pair(module, fVar12), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.a.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$7 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$7 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$7();
        z8.c a21 = aVar.a();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar13 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a21, Reflection.getOrCreateKotlinClass(com.im.freechat.data.e.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$7, kind, emptyList12));
        module.p(fVar13);
        if (module.l()) {
            module.u(fVar13);
        }
        b9.a.b(new Pair(module, fVar13), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.g.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$8 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$8 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$8();
        z8.c a22 = aVar.a();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar14 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a22, Reflection.getOrCreateKotlinClass(com.im.freechat.data.j.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$8, kind, emptyList13));
        module.p(fVar14);
        if (module.l()) {
            module.u(fVar14);
        }
        b9.a.b(new Pair(module, fVar14), Reflection.getOrCreateKotlinClass(p.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$9 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$9 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$9();
        z8.c a23 = aVar.a();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar15 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a23, Reflection.getOrCreateKotlinClass(com.im.freechat.data.l.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$9, kind, emptyList14));
        module.p(fVar15);
        if (module.l()) {
            module.u(fVar15);
        }
        b9.a.b(new Pair(module, fVar15), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.t.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$10 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$10 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$10();
        z8.c a24 = aVar.a();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar16 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a24, Reflection.getOrCreateKotlinClass(com.im.freechat.data.f.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$10, kind, emptyList15));
        module.p(fVar16);
        if (module.l()) {
            module.u(fVar16);
        }
        b9.a.b(new Pair(module, fVar16), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.k.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$11 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$11 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$11();
        z8.c a25 = aVar.a();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar17 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a25, Reflection.getOrCreateKotlinClass(WebSocketRepositoryImpl.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$11, kind, emptyList16));
        module.p(fVar17);
        if (module.l()) {
            module.u(fVar17);
        }
        b9.a.b(new Pair(module, fVar17), Reflection.getOrCreateKotlinClass(com.im.freechat.domain.u.class));
        b bVar = b.f41238a;
        z8.c a26 = aVar.a();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar18 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a26, Reflection.getOrCreateKotlinClass(SharedPreferences.class), null, bVar, kind, emptyList17));
        module.p(fVar18);
        if (module.l()) {
            module.u(fVar18);
        }
        new Pair(module, fVar18);
        c cVar = c.f41239a;
        z8.c a27 = aVar.a();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar19 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a27, Reflection.getOrCreateKotlinClass(u.class), null, cVar, kind, emptyList18));
        module.p(fVar19);
        if (module.l()) {
            module.u(fVar19);
        }
        b9.a.b(new Pair(module, fVar19), Reflection.getOrCreateKotlinClass(o.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$12 commonModuleKt$commonModule$1$invoke$$inlined$singleOf$12 = new CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$12();
        z8.c a28 = aVar.a();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.f<?> fVar20 = new org.koin.core.instance.f<>(new org.koin.core.definition.a(a28, Reflection.getOrCreateKotlinClass(MessageMapper.class), null, commonModuleKt$commonModule$1$invoke$$inlined$singleOf$12, kind, emptyList19));
        module.p(fVar20);
        if (module.l()) {
            module.u(fVar20);
        }
        new Pair(module, fVar20);
        CommonModuleKt$commonModule$1$invoke$$inlined$factoryOf$1 commonModuleKt$commonModule$1$invoke$$inlined$factoryOf$1 = new CommonModuleKt$commonModule$1$invoke$$inlined$factoryOf$1();
        z8.c a29 = aVar.a();
        Kind kind2 = Kind.Factory;
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar3 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a29, Reflection.getOrCreateKotlinClass(m.class), null, commonModuleKt$commonModule$1$invoke$$inlined$factoryOf$1, kind2, emptyList20));
        module.p(aVar3);
        new Pair(module, aVar3);
        CommonModuleKt$commonModule$1$invoke$$inlined$factoryOf$2 commonModuleKt$commonModule$1$invoke$$inlined$factoryOf$2 = new CommonModuleKt$commonModule$1$invoke$$inlined$factoryOf$2();
        z8.c a30 = aVar.a();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar4 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a30, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.messages.l.class), null, commonModuleKt$commonModule$1$invoke$$inlined$factoryOf$2, kind2, emptyList21));
        module.p(aVar4);
        new Pair(module, aVar4);
        e eVar = e.f41241a;
        z8.c a31 = aVar.a();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar5 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a31, Reflection.getOrCreateKotlinClass(com.im.freechat.media.audio.b.class), null, eVar, kind2, emptyList22));
        module.p(aVar5);
        b9.a.b(new Pair(module, aVar5), Reflection.getOrCreateKotlinClass(com.im.freechat.media.audio.c.class));
        CommonModuleKt$commonModule$1$invoke$$inlined$factoryOf$3 commonModuleKt$commonModule$1$invoke$$inlined$factoryOf$3 = new CommonModuleKt$commonModule$1$invoke$$inlined$factoryOf$3();
        z8.c a32 = aVar.a();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.d<?> aVar6 = new org.koin.core.instance.a<>(new org.koin.core.definition.a(a32, Reflection.getOrCreateKotlinClass(PlaybackImpl.class), null, commonModuleKt$commonModule$1$invoke$$inlined$factoryOf$3, kind2, emptyList23));
        module.p(aVar6);
        b9.a.b(new Pair(module, aVar6), Reflection.getOrCreateKotlinClass(p4.a.class));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}

.class public final Lcom/im/freechat/sdk/SDKManager;
.super Ljava/lang/Object;
.source "SDKManager.kt"

# interfaces
.implements Lorg/koin/core/component/a;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSDKManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SDKManager.kt\ncom/im/freechat/sdk/SDKManager\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n*L\n1#1,124:1\n41#2,6:125\n47#2:132\n41#2,6:134\n47#2:141\n41#2,6:143\n47#2:150\n41#2,6:152\n47#2:159\n41#2,6:161\n47#2:168\n56#2,6:170\n56#2,6:176\n56#2,6:182\n131#3:131\n131#3:140\n131#3:149\n131#3:158\n131#3:167\n103#4:133\n103#4:142\n103#4:151\n103#4:160\n103#4:169\n*S KotlinDebug\n*F\n+ 1 SDKManager.kt\ncom/im/freechat/sdk/SDKManager\n*L\n110#1:125,6\n110#1:132\n111#1:134,6\n111#1:141\n114#1:143,6\n114#1:150\n117#1:152,6\n117#1:159\n118#1:161,6\n118#1:168\n28#1:170,6\n29#1:176,6\n30#1:182,6\n110#1:131\n111#1:140\n114#1:149\n117#1:158\n118#1:167\n110#1:133\n111#1:142\n114#1:151\n117#1:160\n118#1:169\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008O\u0010PJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0008\u0010\u000c\u001a\u00020\u000bH\u0007J\u0008\u0010\u000e\u001a\u00020\rH\u0007J\u0008\u0010\u0010\u001a\u00020\u000fH\u0007J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0019J.\u0010\u001f\u001a\u00020\u00042\u001c\u0010\u001e\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001b\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 R\"\u0010\'\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010)\u001a\u0004\u0008*\u0010+R\u001b\u00100\u001a\u00020-8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010)\u001a\u0004\u0008.\u0010/R\u001b\u00104\u001a\u0002018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010)\u001a\u0004\u00082\u00103R\u001d\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u0015058\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u00106\u001a\u0004\u00087\u00108R\u0017\u0010?\u001a\u00020:8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001b\u0010C\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010)\u001a\u0004\u0008A\u0010BR6\u0010L\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020F\u0018\u00010D8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR$\u0010N\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010\"\u001a\u0004\u0008;\u0010$\"\u0004\u0008M\u0010&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/im/freechat/sdk/SDKManager;",
        "Lorg/koin/core/component/a;",
        "Landroid/content/Context;",
        "c",
        "",
        "s",
        "appContext",
        "r",
        "",
        "muted",
        "y",
        "Lcom/im/freechat/sdk/c;",
        "h",
        "Lcom/im/freechat/sdk/a;",
        "d",
        "Lcom/im/freechat/sdk/b;",
        "e",
        "context",
        "",
        "appId",
        "t",
        "Ljava/lang/Runnable;",
        "v",
        "Lcom/im/freechat/sdk/e;",
        "q",
        "Lcom/im/freechat/sdk/d;",
        "p",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "block",
        "u",
        "(Lkotlin/jvm/functions/Function1;)V",
        "b",
        "Ljava/lang/String;",
        "f",
        "()Ljava/lang/String;",
        "w",
        "(Ljava/lang/String;)V",
        "IM_APP_ID",
        "Lcom/im/freechat/domain/usecase/dns/b;",
        "Lkotlin/Lazy;",
        "m",
        "()Lcom/im/freechat/domain/usecase/dns/b;",
        "resolveHostInteractor",
        "Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;",
        "o",
        "()Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;",
        "subscribeDownloadsInteractor",
        "Lcom/im/freechat/domain/usecase/chat/l;",
        "l",
        "()Lcom/im/freechat/domain/usecase/chat/l;",
        "resetSendingsInteractor",
        "",
        "Ljava/util/List;",
        "i",
        "()Ljava/util/List;",
        "logoutListeners",
        "Lkotlinx/coroutines/s0;",
        "g",
        "Lkotlinx/coroutines/s0;",
        "n",
        "()Lkotlinx/coroutines/s0;",
        "scope",
        "Lcom/im/freechat/domain/n;",
        "j",
        "()Lcom/im/freechat/domain/n;",
        "notificationManager",
        "Lkotlin/Function2;",
        "",
        "Landroid/app/PendingIntent;",
        "Lkotlin/jvm/functions/Function2;",
        "k",
        "()Lkotlin/jvm/functions/Function2;",
        "z",
        "(Lkotlin/jvm/functions/Function2;)V",
        "pendingIntentCreator",
        "x",
        "imageDomain",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/sdk/SDKManager;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static b:Ljava/lang/String;

.field private static final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final e:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final g:Lkotlinx/coroutines/s0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final h:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private static j:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/im/freechat/sdk/SDKManager;

    invoke-direct {v0}, Lcom/im/freechat/sdk/SDKManager;-><init>()V

    sput-object v0, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    .line 1
    sget-object v1, Ld9/b;->a:Ld9/b;

    invoke-virtual {v1}, Ld9/b;->b()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/im/freechat/sdk/SDKManager$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/im/freechat/sdk/SDKManager$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 3
    sput-object v2, Lcom/im/freechat/sdk/SDKManager;->c:Lkotlin/Lazy;

    .line 4
    invoke-virtual {v1}, Ld9/b;->b()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/im/freechat/sdk/SDKManager$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/im/freechat/sdk/SDKManager$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 6
    sput-object v2, Lcom/im/freechat/sdk/SDKManager;->d:Lkotlin/Lazy;

    .line 7
    invoke-virtual {v1}, Ld9/b;->b()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/im/freechat/sdk/SDKManager$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v4, v4}, Lcom/im/freechat/sdk/SDKManager$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/im/freechat/sdk/SDKManager;->e:Lkotlin/Lazy;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/im/freechat/sdk/SDKManager;->f:Ljava/util/List;

    .line 11
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/sdk/SDKManager;->g:Lkotlinx/coroutines/s0;

    .line 12
    sget-object v0, Lcom/im/freechat/sdk/SDKManager$f;->a:Lcom/im/freechat/sdk/SDKManager$f;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/sdk/SDKManager;->h:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b(Lcom/im/freechat/sdk/SDKManager;)Lcom/im/freechat/domain/usecase/dns/b;
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/sdk/SDKManager;->m()Lcom/im/freechat/domain/usecase/dns/b;

    move-result-object p0

    return-object p0
.end method

.method public static final d()Lcom/im/freechat/sdk/a;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lcom/im/freechat/sdk/a;

    sget-object v1, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    .line 2
    instance-of v2, v1, Lorg/koin/core/component/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lorg/koin/core/component/b;

    invoke-interface {v1}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/im/freechat/sdk/a;

    return-object v0
.end method

.method public static final e()Lcom/im/freechat/sdk/b;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lcom/im/freechat/sdk/b;

    sget-object v1, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    .line 2
    instance-of v2, v1, Lorg/koin/core/component/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lorg/koin/core/component/b;

    invoke-interface {v1}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/im/freechat/sdk/b;

    return-object v0
.end method

.method public static final h()Lcom/im/freechat/sdk/c;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lcom/im/freechat/sdk/c;

    sget-object v1, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    .line 2
    instance-of v2, v1, Lorg/koin/core/component/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lorg/koin/core/component/b;

    invoke-interface {v1}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/im/freechat/sdk/c;

    return-object v0
.end method

.method private final j()Lcom/im/freechat/domain/n;
    .locals 1

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/domain/n;

    return-object v0
.end method

.method private final m()Lcom/im/freechat/domain/usecase/dns/b;
    .locals 1

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/domain/usecase/dns/b;

    return-object v0
.end method

.method private final r(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lx8/a;

    .line 1
    invoke-static {}, Lcom/im/freechat/di/a;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-static {}, Lcom/im/freechat/di/CommonModuleKt;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {}, Lcom/im/freechat/di/DataModuleKt;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {}, Lcom/im/freechat/di/ApiModuleKt;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-static {}, Lcom/im/freechat/di/ManagerModuleKt;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-static {}, Lcom/im/freechat/di/ChatListModuleKt;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    invoke-static {}, Lcom/im/freechat/di/ChatModuleKt;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    invoke-static {}, Lcom/im/freechat/di/GroupManagerModuleKt;->a()Lx8/a;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    invoke-static {}, Lcom/im/freechat/di/CreateChatModuleKt;->a()Lx8/a;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 10
    invoke-static {}, Lcom/im/freechat/di/SettingsModuleKt;->a()Lx8/a;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 11
    invoke-static {}, Lcom/im/freechat/di/VideoPlayerModuleKt;->a()Lx8/a;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 12
    invoke-static {}, Lcom/im/freechat/di/AuthModuleKt;->a()Lx8/a;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 13
    invoke-static {}, Lcom/im/freechat/di/ContactModuleKt;->a()Lx8/a;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 15
    sget-object v1, Lv8/b;->a:Lv8/b;

    invoke-virtual {v1}, Lv8/b;->i()Lorg/koin/core/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {v0}, Lv8/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lcom/im/freechat/sdk/SDKManager$a;

    invoke-direct {v1, p1, v0}, Lcom/im/freechat/sdk/SDKManager$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lv8/a;->c(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/a;

    :goto_0
    return-void
.end method

.method private final s(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/provider/FontRequest;

    .line 2
    sget v1, Lb4/b$c;->c:I

    const-string v2, "com.google.android.gms.fonts"

    const-string v3, "com.google.android.gms"

    const-string v4, "Noto Color Emoji Compat"

    .line 3
    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    new-instance v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    invoke-direct {v1, p1, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Landroidx/emoji2/text/EmojiCompat$Config;->setMetadataLoadStrategy(I)Landroidx/emoji2/text/EmojiCompat$Config;

    .line 6
    invoke-static {v1}, Landroidx/emoji2/text/EmojiCompat;->init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;

    return-void
.end method

.method public static final y(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    invoke-direct {v0}, Lcom/im/freechat/sdk/SDKManager;->j()Lcom/im/freechat/domain/n;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/im/freechat/domain/n;->a(Z)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "IM_APP_ID"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lorg/koin/core/component/a$a;->a(Lorg/koin/core/component/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->f:Ljava/util/List;

    return-object v0
.end method

.method public final k()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->i:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final l()Lcom/im/freechat/domain/usecase/chat/l;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/domain/usecase/chat/l;

    return-object v0
.end method

.method public final n()Lkotlinx/coroutines/s0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->g:Lkotlinx/coroutines/s0;

    return-object v0
.end method

.method public final o()Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;

    return-object v0
.end method

.method public final p()Lcom/im/freechat/sdk/d;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lcom/im/freechat/sdk/d;

    .line 2
    instance-of v1, p0, Lorg/koin/core/component/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p0

    check-cast v1, Lorg/koin/core/component/b;

    invoke-interface {v1}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/im/freechat/sdk/d;

    return-object v0
.end method

.method public final q()Lcom/im/freechat/sdk/e;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lcom/im/freechat/sdk/e;

    .line 2
    instance-of v1, p0, Lorg/koin/core/component/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p0

    check-cast v1, Lorg/koin/core/component/b;

    invoke-interface {v1}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/im/freechat/sdk/e;

    return-object v0
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/im/freechat/sdk/SDKManager;->w(Ljava/lang/String;)V

    .line 2
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK INIT. APP_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Host App: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/im/freechat/sdk/SDKManager;->r(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/im/freechat/sdk/SDKManager;->s(Landroid/content/Context;)V

    .line 5
    new-instance p1, Lcom/im/freechat/sdk/SDKManager$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/im/freechat/sdk/SDKManager$b;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/sdk/SDKManager;->u(Lkotlin/jvm/functions/Function1;)V

    .line 6
    new-instance p1, Lcom/im/freechat/sdk/SDKManager$c;

    invoke-direct {p1, p2}, Lcom/im/freechat/sdk/SDKManager$c;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/sdk/SDKManager;->u(Lkotlin/jvm/functions/Function1;)V

    .line 7
    new-instance p1, Lcom/im/freechat/sdk/SDKManager$d;

    invoke-direct {p1, p2}, Lcom/im/freechat/sdk/SDKManager$d;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/sdk/SDKManager;->u(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final u(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/im/freechat/sdk/SDKManager;->g:Lkotlinx/coroutines/s0;

    new-instance v4, Lcom/im/freechat/sdk/SDKManager$e;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/im/freechat/sdk/SDKManager$e;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final v()V
    .locals 2

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/im/freechat/sdk/SDKManager;->b:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    sput-object p1, Lcom/im/freechat/sdk/SDKManager;->j:Ljava/lang/String;

    return-void
.end method

.method public final z(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/im/freechat/sdk/SDKManager;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method

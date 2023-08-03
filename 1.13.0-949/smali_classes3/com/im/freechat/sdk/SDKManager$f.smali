.class final Lcom/im/freechat/sdk/SDKManager$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SDKManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/sdk/SDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/im/freechat/domain/n;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSDKManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SDKManager.kt\ncom/im/freechat/sdk/SDKManager$notificationManager$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n*L\n1#1,124:1\n41#2,6:125\n47#2:132\n131#3:131\n103#4:133\n*S KotlinDebug\n*F\n+ 1 SDKManager.kt\ncom/im/freechat/sdk/SDKManager$notificationManager$2\n*L\n34#1:125,6\n34#1:132\n34#1:131\n34#1:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/im/freechat/domain/n;",
        "a",
        "()Lcom/im/freechat/domain/n;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/sdk/SDKManager$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/sdk/SDKManager$f;

    invoke-direct {v0}, Lcom/im/freechat/sdk/SDKManager$f;-><init>()V

    sput-object v0, Lcom/im/freechat/sdk/SDKManager$f;->a:Lcom/im/freechat/sdk/SDKManager$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/im/freechat/domain/n;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lcom/im/freechat/domain/n;

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
    check-cast v0, Lcom/im/freechat/domain/n;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/sdk/SDKManager$f;->a()Lcom/im/freechat/domain/n;

    move-result-object v0

    return-object v0
.end method

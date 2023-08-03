.class public final Lorg/koin/core/component/KoinComponentKt$inject$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/component/KoinComponentKt;->c(Lorg/koin/core/component/a;Lz8/a;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n*L\n1#1,71:1\n45#2,2:72\n47#2:75\n131#3:74\n103#4:76\n*S KotlinDebug\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n*L\n61#1:72,2\n61#1:75\n61#1:74\n61#1:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic a:Lorg/koin/core/component/a;

.field final synthetic b:Lz8/a;

.field final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/component/a;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->a:Lorg/koin/core/component/a;

    iput-object p2, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->b:Lz8/a;

    iput-object p3, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->a:Lorg/koin/core/component/a;

    iget-object v2, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->b:Lz8/a;

    iget-object v3, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    instance-of v4, v1, Lorg/koin/core/component/b;

    const-string v5, "T"

    const/4 v6, 0x4

    if-eqz v4, :cond_0

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
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/im/freechat/di/CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$12;
.super Lkotlin/jvm/internal/Lambda;
.source "SingleOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/CommonModuleKt$commonModule$1;->a(Lx8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleOf.kt\norg/koin/core/module/dsl/SingleOfKt$singleOf$2\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 CommonModule.kt\ncom/im/freechat/di/CommonModuleKt$commonModule$1\n*L\n1#1,232:1\n35#2:233\n86#3:234\n*S KotlinDebug\n*F\n+ 1 SingleOf.kt\norg/koin/core/module/dsl/SingleOfKt$singleOf$2\n*L\n58#1:233\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0010\u0007\u001a\u00028\u0000\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "R",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;",
        "org/koin/core/module/dsl/SingleOfKt$singleOf$2",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$12;->invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Ly8/a;",
            ")",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;"
        }
    .end annotation

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-direct {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;-><init>()V

    return-object p1
.end method

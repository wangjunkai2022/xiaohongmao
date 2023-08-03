.class final Lcom/im/freechat/di/ApiModuleKt$apiModule$1$n;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/ApiModuleKt$apiModule$1;->a(Lx8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "Lcom/squareup/moshi/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "Lcom/squareup/moshi/u;",
        "kotlin.jvm.PlatformType",
        "a",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/di/ApiModuleKt$apiModule$1$n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$n;

    invoke-direct {v0}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$n;-><init>()V

    sput-object v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$n;->a:Lcom/im/freechat/di/ApiModuleKt$apiModule$1$n;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;
    .locals 1
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/squareup/moshi/u$c;

    invoke-direct {p1}, Lcom/squareup/moshi/u$c;-><init>()V

    new-instance p2, Lv5/b;

    invoke-direct {p2}, Lv5/b;-><init>()V

    invoke-virtual {p1, p2}, Lcom/squareup/moshi/u$c;->a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/moshi/u$c;->i()Lcom/squareup/moshi/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$n;->a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;

    move-result-object p1

    return-object p1
.end method

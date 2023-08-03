.class public final Lcom/im/freechat/sdk/b;
.super Ljava/lang/Object;
.source "DnsManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u0006\u001a\u00020\u00042\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002R\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/im/freechat/sdk/b;",
        "",
        "Lkotlin/Function1;",
        "Lcom/im/freechat/shared/entities/DnsResolutionState;",
        "",
        "onData",
        "a",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/sdk/a$a;",
        "suspendRunner",
        "Lkotlinx/coroutines/j2;",
        "b",
        "Lcom/im/freechat/domain/usecase/dns/a;",
        "Lcom/im/freechat/domain/usecase/dns/a;",
        "listenDnsStatusInteractor",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/dns/a;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/domain/usecase/dns/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/dns/a;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/dns/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "listenDnsStatusInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/sdk/b;->a:Lcom/im/freechat/domain/usecase/dns/a;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/shared/entities/DnsResolutionState;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/sdk/b;->a:Lcom/im/freechat/domain/usecase/dns/a;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lcom/im/freechat/sdk/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/im/freechat/sdk/b$a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1, v2, p2}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final b(Lcom/im/freechat/sdk/a$a;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Lcom/im/freechat/sdk/a$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/sdk/a$a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/shared/entities/DnsResolutionState;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/j2;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "suspendRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/sdk/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/im/freechat/sdk/b$b;-><init>(Lcom/im/freechat/sdk/b;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Lcom/im/freechat/sdk/a$a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/im/freechat/sdk/e;
.super Ljava/lang/Object;
.source "WebsocketManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\"\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0006\u0010\t\u001a\u00020\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R$\u0010 \u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001b\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/im/freechat/sdk/e;",
        "",
        "",
        "timeoutEnabled",
        "Lkotlin/Function1;",
        "",
        "",
        "errorCallback",
        "g",
        "h",
        "Lcom/im/freechat/domain/usecase/dns/a;",
        "a",
        "Lcom/im/freechat/domain/usecase/dns/a;",
        "listenDnsStatusInteractor",
        "Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;",
        "b",
        "Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;",
        "startWebSocketInteractor",
        "Lcom/im/freechat/domain/usecase/auth/k;",
        "c",
        "Lcom/im/freechat/domain/usecase/auth/k;",
        "stopWebSocketInteractor",
        "Lcom/im/freechat/domain/usecase/auth/a;",
        "d",
        "Lcom/im/freechat/domain/usecase/auth/a;",
        "assertUserLoggedInInteractor",
        "Lkotlinx/coroutines/j2;",
        "e",
        "Lkotlinx/coroutines/j2;",
        "()Lkotlinx/coroutines/j2;",
        "f",
        "(Lkotlinx/coroutines/j2;)V",
        "listenerJob",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/dns/a;Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lcom/im/freechat/domain/usecase/auth/k;Lcom/im/freechat/domain/usecase/auth/a;)V",
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

.field private final b:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/usecase/auth/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/auth/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Lkotlinx/coroutines/j2;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/dns/a;Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lcom/im/freechat/domain/usecase/auth/k;Lcom/im/freechat/domain/usecase/auth/a;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/dns/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/usecase/auth/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/usecase/auth/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "listenDnsStatusInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startWebSocketInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopWebSocketInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assertUserLoggedInInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/sdk/e;->a:Lcom/im/freechat/domain/usecase/dns/a;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/sdk/e;->b:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/sdk/e;->c:Lcom/im/freechat/domain/usecase/auth/k;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/sdk/e;->d:Lcom/im/freechat/domain/usecase/auth/a;

    return-void
.end method

.method public static final synthetic a(Lcom/im/freechat/sdk/e;)Lcom/im/freechat/domain/usecase/auth/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/sdk/e;->d:Lcom/im/freechat/domain/usecase/auth/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/im/freechat/sdk/e;)Lcom/im/freechat/domain/usecase/dns/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/sdk/e;->a:Lcom/im/freechat/domain/usecase/dns/a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/im/freechat/sdk/e;)Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/sdk/e;->b:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    return-object p0
.end method

.method public static final synthetic d(Lcom/im/freechat/sdk/e;)Lcom/im/freechat/domain/usecase/auth/k;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/sdk/e;->c:Lcom/im/freechat/domain/usecase/auth/k;

    return-object p0
.end method


# virtual methods
.method public final e()Lkotlinx/coroutines/j2;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/sdk/e;->e:Lkotlinx/coroutines/j2;

    return-object v0
.end method

.method public final f(Lkotlinx/coroutines/j2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/j2;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/sdk/e;->e:Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final g(ZLkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "errorCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/sdk/e;->e:Lkotlinx/coroutines/j2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/im/freechat/sdk/e$a;

    invoke-direct {v5, p0, p1, p2, v1}, Lcom/im/freechat/sdk/e$a;-><init>(Lcom/im/freechat/sdk/e;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/sdk/e;->e:Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/im/freechat/sdk/e;->e:Lkotlinx/coroutines/j2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/im/freechat/sdk/e$b;

    invoke-direct {v5, p0, v1}, Lcom/im/freechat/sdk/e$b;-><init>(Lcom/im/freechat/sdk/e;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

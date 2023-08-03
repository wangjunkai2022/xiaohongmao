.class public final Lcom/im/freechat/domain/usecase/downloads/a;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "DownloadMediaFileInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/domain/usecase/downloads/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lcom/im/freechat/domain/usecase/downloads/a$a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/downloads/a;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "Lcom/im/freechat/domain/usecase/downloads/a$a;",
        "",
        "params",
        "c",
        "(Lcom/im/freechat/domain/usecase/downloads/a$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/e;",
        "a",
        "Lcom/im/freechat/domain/e;",
        "downloadManagerRepository",
        "<init>",
        "(Lcom/im/freechat/domain/e;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/domain/e;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/e;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "downloadManagerRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/a;->a:Lcom/im/freechat/domain/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/usecase/downloads/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/downloads/a;->c(Lcom/im/freechat/domain/usecase/downloads/a$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/im/freechat/domain/usecase/downloads/a$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lcom/im/freechat/domain/usecase/downloads/a$a;
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
            "Lcom/im/freechat/domain/usecase/downloads/a$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/domain/usecase/downloads/a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/domain/usecase/downloads/a$b;

    iget v1, v0, Lcom/im/freechat/domain/usecase/downloads/a$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/downloads/a$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/downloads/a$b;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/domain/usecase/downloads/a$b;-><init>(Lcom/im/freechat/domain/usecase/downloads/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v0

    iget-object p2, v10, Lcom/im/freechat/domain/usecase/downloads/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, v10, Lcom/im/freechat/domain/usecase/downloads/a$b;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/downloads/a;->a:Lcom/im/freechat/domain/e;

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/downloads/a$a;->b()J

    move-result-wide v3

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/downloads/a$a;->a()I

    move-result p2

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/downloads/a$a;->c()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/downloads/a$a;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {p1, v7, v9, v8, v9}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 9
    iput v2, v10, Lcom/im/freechat/domain/usecase/downloads/a$b;->c:I

    move-wide v2, v3

    move v4, p2

    invoke-interface/range {v1 .. v10}, Lcom/im/freechat/domain/e;->c(JILjava/lang/String;Ljava/lang/String;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

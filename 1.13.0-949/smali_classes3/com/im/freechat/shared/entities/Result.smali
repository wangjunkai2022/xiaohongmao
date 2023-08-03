.class public final Lcom/im/freechat/shared/entities/Result;
.super Ljava/lang/Object;
.source "Result.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/Result$Failure;,
        Lcom/im/freechat/shared/entities/Result$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Result.kt\ncom/im/freechat/shared/entities/Result\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u0017*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0002\u0017\u0018B\u0011\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\r\u0010\r\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\nJL\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000023\u0010\u000f\u001a/\u0008\u0001\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015JJ\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000021\u0010\u000f\u001a-\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0007R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/Result;",
        "T",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "isFailure",
        "",
        "()Z",
        "isSuccess",
        "getValue$shared",
        "()Ljava/lang/Object;",
        "exceptionOrNull",
        "",
        "getOrNull",
        "onFailure",
        "action",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSuccess",
        "Companion",
        "Failure",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/im/freechat/shared/entities/Result$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/im/freechat/shared/entities/Result$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/shared/entities/Result$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/shared/entities/Result;->Companion:Lcom/im/freechat/shared/entities/Result$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/shared/entities/Result;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final exceptionOrNull()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/shared/entities/Result;->value:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/im/freechat/shared/entities/Result$Failure;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/im/freechat/shared/entities/Result$Failure;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/Result$Failure;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/Result;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/im/freechat/shared/entities/Result;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getValue$shared()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/Result;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final isFailure()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/shared/entities/Result;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/im/freechat/shared/entities/Result$Failure;

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/shared/entities/Result;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/im/freechat/shared/entities/Result$Failure;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onFailure(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/Result;->exceptionOrNull()Ljava/lang/Throwable;

    return-object p0
.end method

.method public final onSuccess(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function2;
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
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/shared/entities/Result$onSuccess$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;

    iget v1, v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/shared/entities/Result$onSuccess$1;-><init>(Lcom/im/freechat/shared/entities/Result;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/shared/entities/Result;

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
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/Result;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/im/freechat/shared/entities/Result;->value:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/shared/entities/Result$onSuccess$1;->label:I

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    return-object p1
.end method

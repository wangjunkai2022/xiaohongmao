.class final Lcom/im/freechat/sdk/a$f;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DataManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/sdk/a;->f(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.im.freechat.sdk.DataManager"
    f = "DataManager.kt"
    i = {}
    l = {
        0x36
    }
    m = "deleteFriendRequest-gIAlu-s"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/im/freechat/sdk/a;

.field c:I


# direct methods
.method constructor <init>(Lcom/im/freechat/sdk/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/sdk/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/sdk/a$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/sdk/a$f;->b:Lcom/im/freechat/sdk/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/sdk/a$f;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/sdk/a$f;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/sdk/a$f;->c:I

    iget-object p1, p0, Lcom/im/freechat/sdk/a$f;->b:Lcom/im/freechat/sdk/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/im/freechat/sdk/a;->f(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

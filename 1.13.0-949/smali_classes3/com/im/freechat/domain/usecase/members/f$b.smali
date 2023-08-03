.class final Lcom/im/freechat/domain/usecase/members/f$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RemoveManagerRightsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/domain/usecase/members/f;->c(Lcom/im/freechat/domain/usecase/members/f$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.domain.usecase.members.RemoveManagerRightsInteractor"
    f = "RemoveManagerRightsInteractor.kt"
    i = {}
    l = {
        0xe
    }
    m = "run"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/im/freechat/domain/usecase/members/f;

.field c:I


# direct methods
.method constructor <init>(Lcom/im/freechat/domain/usecase/members/f;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/domain/usecase/members/f;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/domain/usecase/members/f$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/members/f$b;->b:Lcom/im/freechat/domain/usecase/members/f;

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

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/members/f$b;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/domain/usecase/members/f$b;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/domain/usecase/members/f$b;->c:I

    iget-object p1, p0, Lcom/im/freechat/domain/usecase/members/f$b;->b:Lcom/im/freechat/domain/usecase/members/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/im/freechat/domain/usecase/members/f;->c(Lcom/im/freechat/domain/usecase/members/f$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

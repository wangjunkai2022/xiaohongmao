.class public final Lcom/im/freechat/domain/usecase/auth/h;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "ParsePhoneInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/auth/h;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        "params",
        "c",
        "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/o;",
        "a",
        "Lcom/im/freechat/domain/o;",
        "phoneUtil",
        "<init>",
        "(Lcom/im/freechat/domain/o;)V",
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
.field private final a:Lcom/im/freechat/domain/o;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/o;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/o;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "phoneUtil"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/h;->a:Lcom/im/freechat/domain/o;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/auth/PhoneNumber;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/h;->c(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/shared/entities/auth/PhoneNumber;
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
            "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object p2, p0, Lcom/im/freechat/domain/usecase/auth/h;->a:Lcom/im/freechat/domain/o;

    invoke-interface {p2, p1}, Lcom/im/freechat/domain/o;->a(Lcom/im/freechat/shared/entities/auth/PhoneNumber;)Lcom/im/freechat/shared/entities/auth/PhoneNumber;

    move-result-object p1

    return-object p1
.end method

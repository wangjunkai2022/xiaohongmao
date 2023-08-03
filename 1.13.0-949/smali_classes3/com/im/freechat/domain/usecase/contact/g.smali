.class public final Lcom/im/freechat/domain/usecase/contact/g;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "SearchContactInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchContactInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchContactInteractor.kt\ncom/im/freechat/domain/usecase/contact/SearchContactInteractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n766#2:28\n857#2,2:29\n*S KotlinDebug\n*F\n+ 1 SearchContactInteractor.kt\ncom/im/freechat/domain/usecase/contact/SearchContactInteractor\n*L\n24#1:28\n24#1:29,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/contact/g;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "",
        "",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "params",
        "c",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/p;",
        "b",
        "Lcom/im/freechat/domain/p;",
        "remoteRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;)V",
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
.field private final a:Lcom/im/freechat/domain/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/domain/p;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/p;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/contact/g;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/contact/g;->b:Lcom/im/freechat/domain/p;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/contact/g;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/domain/usecase/contact/g$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/domain/usecase/contact/g$a;

    iget v1, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/contact/g$a;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/domain/usecase/contact/g$a;-><init>(Lcom/im/freechat/domain/usecase/contact/g;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->c:I

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/domain/usecase/contact/g;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/contact/g;->a:Lcom/im/freechat/domain/k;

    iput-object p0, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->f:I

    invoke-interface {p2, v0}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 6
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result p2

    .line 8
    iget-object v2, v2, Lcom/im/freechat/domain/usecase/contact/g;->b:Lcom/im/freechat/domain/p;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->a:Ljava/lang/Object;

    iput-object v6, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->b:Ljava/lang/Object;

    iput p2, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->c:I

    iput v3, v0, Lcom/im/freechat/domain/usecase/contact/g$a;->f:I

    invoke-interface {v2, v5, p1, v0}, Lcom/im/freechat/domain/p;->g(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move v7, p2

    move-object p2, p1

    move p1, v7

    .line 9
    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 12
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v2

    if-eq v2, p1, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0
.end method

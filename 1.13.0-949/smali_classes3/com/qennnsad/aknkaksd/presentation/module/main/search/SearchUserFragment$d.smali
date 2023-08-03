.class final Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchUserFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
        "it",
        "Lkotlin/Function0;",
        "",
        "onSuccess",
        "a",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;Lkotlin/jvm/functions/Function0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->f()Z

    move-result v0

    const-string v1, "it.anchorSummary.id"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->e()Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d$a;

    invoke-direct {v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->C(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->e()Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d$b;

    invoke-direct {v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d$b;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->w(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d;->a(Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.class public final Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContributorsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContributorsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContributorsAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsAdapter$ContributorsHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,67:1\n254#2,2:68\n*S KotlinDebug\n*F\n+ 1 ContributorsAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsAdapter$ContributorsHolder\n*L\n63#1:68,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "item",
        "",
        "b",
        "Le5/l2;",
        "binding",
        "Le5/l2;",
        "c",
        "()Le5/l2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;Le5/l2;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Le5/l2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;Le5/l2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/l2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;

    .line 2
    invoke-virtual {p2}, Le5/l2;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;->a:Le5/l2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V
    .locals 7
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/RankItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;->a:Le5/l2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;

    .line 2
    iget-object v2, v0, Le5/l2;->k:Landroid/widget/TextView;

    const-string v3, "tvRank"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getRankPosition()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->D(Landroid/widget/TextView;I)V

    .line 3
    iget-object v2, v0, Le5/l2;->f:Landroid/widget/ImageView;

    const-string v3, "ivTopBg"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getRankPosition()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->F(Landroid/widget/ImageView;I)V

    .line 4
    iget-object v2, v0, Le5/l2;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;->f(Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    const v6, 0x7f0803e2

    .line 6
    invoke-static {v2, v3, v5, v6, v6}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    .line 7
    iget-object v2, v0, Le5/l2;->e:Landroid/widget/ImageView;

    const-string v3, "ivSex"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getSex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->w(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 8
    iget-object v2, v0, Le5/l2;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, v0, Le5/l2;->c:Landroid/widget/ImageView;

    const-string v3, "ivLevel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getLevelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->isMystery()Z

    move-result v6

    invoke-static {v2, v3, v6}, Lcom/qennnsad/aknkaksd/util/s1;->A(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 10
    iget-object v2, v0, Le5/l2;->d:Landroid/widget/ImageView;

    const-string v3, "ivPeerage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getPeerageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->C(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 11
    iget-object v0, v0, Le5/l2;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getCoin()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;->a:Le5/l2;

    iget-object v0, v0, Le5/l2;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.main"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getRankPosition()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;->g(Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;)I

    move-result v1

    if-le p1, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/16 v4, 0x8

    .line 13
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c()Le5/l2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;->a:Le5/l2;

    return-object v0
.end method

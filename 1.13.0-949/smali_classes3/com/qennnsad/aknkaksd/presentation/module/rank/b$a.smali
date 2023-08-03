.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RankDataAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRankDataAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankDataAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/RankDataAdapter$RankingHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,110:1\n254#2,2:111\n254#2,2:113\n254#2,2:115\n254#2,2:117\n254#2,2:119\n254#2,2:121\n*S KotlinDebug\n*F\n+ 1 RankDataAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/RankDataAdapter$RankingHolder\n*L\n73#1:111,2\n84#1:113,2\n89#1:115,2\n95#1:117,2\n99#1:119,2\n105#1:121,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "item",
        "",
        "b",
        "Le5/x2;",
        "binding",
        "Le5/x2;",
        "c",
        "()Le5/x2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;Le5/x2;)V",
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
.field private final a:Le5/x2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/rank/b;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;Le5/x2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/rank/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/x2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/b;

    .line 2
    invoke-virtual {p2}, Le5/x2;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->a:Le5/x2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V
    .locals 14
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/RankItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->a:Le5/x2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/b;

    .line 2
    iget-object v2, v0, Le5/x2;->m:Landroid/widget/TextView;

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
    iget-object v2, v0, Le5/x2;->g:Landroid/widget/ImageView;

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
    iget-object v2, v0, Le5/x2;->c:Landroid/widget/ImageView;

    .line 5
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->g(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    const v5, 0x7f0803e2

    .line 6
    invoke-static {v2, v1, v3, v5, v5}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    .line 7
    iget-object v1, v0, Le5/x2;->f:Landroid/widget/ImageView;

    const-string v2, "ivSex"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getSex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/s1;->w(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 8
    iget-object v1, v0, Le5/x2;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, v0, Le5/x2;->d:Landroid/widget/ImageView;

    const-string v2, "ivLevel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getLevelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->isMystery()Z

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/qennnsad/aknkaksd/util/s1;->A(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 10
    iget-object v1, v0, Le5/x2;->e:Landroid/widget/ImageView;

    const-string v2, "ivPeerage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getPeerageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/s1;->C(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Le5/x2;->j:Landroid/widget/TextView;

    const-string v2, ""

    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItemKt;->isPkRank(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)Z

    move-result v5

    xor-int/2addr v5, v3

    const/16 v13, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    .line 13
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItemKt;->isGameRank(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f08040c

    goto :goto_3

    :cond_3
    const v5, 0x7f08019f

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, v1

    .line 15
    invoke-static/range {v5 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->o(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 16
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 17
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItemKt;->isGameRank(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f1301ba

    goto :goto_4

    :cond_4
    const v6, 0x7f1300ec

    :goto_4
    new-array v7, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getCoin()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 19
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, v0, Le5/x2;->i:Le5/j4;

    iget-object v1, v1, Le5/j4;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v5, "pkPanel.clPk"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItemKt;->isPkRank(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    const/16 v5, 0x8

    .line 21
    :goto_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v1, v0, Le5/x2;->i:Le5/j4;

    iget-object v1, v1, Le5/j4;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getWins()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, v0, Le5/x2;->i:Le5/j4;

    iget-object v1, v1, Le5/j4;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getDefeats()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, v0, Le5/x2;->k:Landroid/widget/TextView;

    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItemKt;->isGameRank(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    const/16 v5, 0x8

    .line 26
    :goto_6
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getGame()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, v0, Le5/x2;->b:Landroid/widget/TextView;

    .line 29
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItemKt;->isGameRank(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130149

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 34
    :cond_7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->isMystery()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_7

    :cond_8
    const/16 v1, 0x8

    .line 35
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->isFollowed()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 37
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->isFollowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1303da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->a:Le5/x2;

    iget-object v0, v0, Le5/x2;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.main"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getRankPosition()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_9

    :cond_a
    const/4 p1, 0x0

    :goto_9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/b;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->h(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;)I

    move-result v1

    if-le p1, v1, :cond_b

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    const/16 v4, 0x8

    .line 39
    :goto_b
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c()Le5/x2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->a:Le5/x2;

    return-object v0
.end method

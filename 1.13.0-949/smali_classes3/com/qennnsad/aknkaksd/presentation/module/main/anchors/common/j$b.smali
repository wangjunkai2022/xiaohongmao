.class final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AnchorAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnchorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorAdapter$AnchorHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,222:1\n254#2,2:223\n254#2,2:225\n254#2,2:227\n254#2,2:229\n254#2,2:231\n275#2,2:233\n*S KotlinDebug\n*F\n+ 1 AnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorAdapter$AnchorHolder\n*L\n108#1:223,2\n110#1:225,2\n112#1:227,2\n114#1:229,2\n124#1:231,2\n126#1:233,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;",
        "item",
        "",
        "b",
        "Le5/r2;",
        "binding",
        "Le5/r2;",
        "c",
        "()Le5/r2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/r2;)V",
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
.field private final a:Le5/r2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/r2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/r2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    invoke-virtual {p2}, Le5/r2;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;->a:Le5/r2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;)V
    .locals 14
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->d()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;->a:Le5/r2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    .line 3
    iget-object v2, v0, Le5/r2;->o:Landroid/widget/ImageView;

    const-string v3, "ivPkLabel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->i(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->H()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->i(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->v()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lb5/a;->j(Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x8

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v2, v0, Le5/r2;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getBroadcasting()Ljava/lang/String;

    move-result-object v3

    const-string v7, "y"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f1300b8

    goto :goto_2

    :cond_2
    const v3, 0x7f1300b9

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v2, v0, Le5/r2;->d:Landroid/widget/ImageView;

    const-string v3, "itemHotAnchorImgToy"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getToyStatus()I

    move-result v7

    if-ne v7, v4, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    const/16 v7, 0x8

    .line 7
    :goto_4
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v2, v0, Le5/r2;->d:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->l(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x3f28f5c3    # 0.66f

    goto :goto_5

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->E(Landroid/view/View;F)V

    .line 9
    iget-object v2, v0, Le5/r2;->e:Landroid/widget/ImageView;

    const-string v3, "itemHotAnchorImgVideo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getVideo_status()I

    move-result v3

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    const/16 v3, 0x8

    .line 10
    :goto_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, v0, Le5/r2;->n:Landroid/widget/ImageView;

    const-string v3, "ivLastWeekRank"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLastWeekRank()I

    move-result v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->y(Landroid/widget/ImageView;I)V

    .line 12
    iget-object v2, v0, Le5/r2;->f:Landroid/widget/TextView;

    const-string v3, "itemHotAnchorTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getRoomTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v3, 0x1

    :goto_9
    xor-int/2addr v3, v4

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    const/16 v3, 0x8

    .line 13
    :goto_a
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v2, v0, Le5/r2;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getRoomTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->k(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getSnap()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    const-string v3, ""

    goto :goto_b

    :cond_b
    const-string v7, "data.snap ?: \"\""

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 16
    iget-object v7, v0, Le5/r2;->c:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const v10, 0x7f080556

    const v11, 0x7f080556

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/qennnsad/aknkaksd/util/img/e;->h(Landroid/widget/ImageView;Landroid/net/Uri;ZIIILjava/lang/Object;)V

    .line 17
    :cond_c
    iget-object v2, v0, Le5/r2;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v2, v0, Le5/r2;->g:Landroid/widget/TextView;

    const-string v3, "itemHotAnchorTvIntro"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->l(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getIntro()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_e

    :cond_f
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_10

    const/4 v6, 0x0

    .line 19
    :cond_10
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, v0, Le5/r2;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, v0, Le5/r2;->q:Landroid/widget/LinearLayout;

    const-string v2, "locationContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_f

    :cond_11
    const/4 v4, 0x0

    :cond_12
    :goto_f
    if-eqz v4, :cond_13

    const/4 v5, 0x4

    .line 22
    :cond_13
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v1, v0, Le5/r2;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, v0, Le5/r2;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getOnlineCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/k;->a(Le5/r2;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    return-void
.end method

.method public final c()Le5/r2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;->a:Le5/r2;

    return-object v0
.end method

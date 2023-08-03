.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/k;
.super Ljava/lang/Object;
.source "AnchorAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnchorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorAdapterKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,222:1\n254#2,2:223\n254#2,2:225\n254#2,2:227\n254#2,2:229\n254#2,2:231\n254#2,2:233\n254#2,2:235\n*S KotlinDebug\n*F\n+ 1 AnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorAdapterKt\n*L\n181#1:223,2\n184#1:225,2\n188#1:227,2\n192#1:229,2\n200#1:231,2\n205#1:233,2\n213#1:235,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\"\u0014\u0010\u0007\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0006\"\u0014\u0010\t\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0006\"\u0014\u0010\u000b\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Le5/r2;",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
        "limit",
        "",
        "a",
        "",
        "I",
        "TYPE_ANCHOR",
        "b",
        "TYPE_BANNER",
        "c",
        "TYPE_AD",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:I = 0xa

.field public static final b:I = 0xb

.field public static final c:I = 0xc


# direct methods
.method public static final a(Le5/r2;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 6
    .param p0    # Le5/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    const-string v2, "itemHotAnchorTvOnlineLeixing"

    if-nez v0, :cond_1

    .line 2
    iget-object p0, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    const-string v0, "\u666e\u901a\u623f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p0, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7f0805d5

    const/4 v5, 0x0

    if-ne v3, v1, :cond_3

    .line 9
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    const-string v0, "\u5bc6\u7801\u623f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p0, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 14
    iget-object v0, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Le5/r2;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u95e8\u7968:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u91d1\u5e01"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    const v0, 0x7f0805d6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    iget-object p0, p0, Le5/r2;->k:Landroid/widget/TextView;

    const p1, 0x7f0804ba

    invoke-virtual {p0, p1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x3

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 20
    iget-object v0, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Le5/r2;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u7ea7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x7ea7

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p0, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 25
    iget-object v0, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Le5/r2;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u91d1\u5e01/\u5206\u949f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    const v0, 0x7f0805d7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 29
    iget-object p0, p0, Le5/r2;->k:Landroid/widget/TextView;

    const p1, 0x7f0804bb

    invoke-virtual {p0, p1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x5

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 31
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    const-string v0, "\u798f\u5229\u623f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Le5/r2;->k:Landroid/widget/TextView;

    const v0, 0x7f0805d4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 35
    iget-object p0, p0, Le5/r2;->k:Landroid/widget/TextView;

    const p1, 0x7f0804b6

    invoke-virtual {p0, p1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_7
    :goto_1
    return-void
.end method

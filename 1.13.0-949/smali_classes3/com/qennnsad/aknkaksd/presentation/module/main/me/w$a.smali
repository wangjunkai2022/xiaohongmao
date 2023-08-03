.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MeProfileMenusAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeProfileMenusAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeProfileMenusAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileMenusAdapter$MenuViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n254#2,2:98\n254#2,2:100\n254#2,2:102\n254#2,2:104\n254#2,2:106\n1#3:108\n*S KotlinDebug\n*F\n+ 1 MeProfileMenusAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileMenusAdapter$MenuViewHolder\n*L\n53#1:98,2\n60#1:100,2\n63#1:102,2\n69#1:104,2\n72#1:106,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "",
        "title",
        "",
        "c",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;",
        "data",
        "",
        "b",
        "Le5/u2;",
        "binding",
        "<init>",
        "(Le5/u2;)V",
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
.field private final a:Le5/u2;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le5/u2;)V
    .locals 1
    .param p1    # Le5/u2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Le5/u2;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;->a:Le5/u2;

    return-void
.end method

.method private final c(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "\u770b\u5e7f\u544a\u9886\u91d1\u5e01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f0804cd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "\u7eaa\u5b9a\u6536\u6b3e\u65b9\u5f0f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0804be

    goto :goto_1

    :sswitch_2
    const-string v0, "\u6536\u85cf\u56de\u5bb6\u5730\u5740"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x7f0804bf

    goto :goto_1

    :sswitch_3
    const-string v0, "\u91d1\u5e01\u7b79\u7801\u4e92\u6362"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7f0804cc

    goto :goto_1

    :sswitch_4
    const-string v0, "\u7b49\u7ea7\u4ecb\u7ecd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const p1, 0x7f0804c5

    goto :goto_1

    :sswitch_5
    const-string v0, "\u4f1a\u5458\u7b7e\u5230"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const p1, 0x7f0804c8

    goto :goto_1

    :sswitch_6
    const-string v0, "\u6211\u7684\u7c89\u4e1d\u724c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const p1, 0x7f0804c4

    goto :goto_1

    :sswitch_7
    const-string v0, "\u4fee\u6539\u624b\u673a\u53f7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const p1, 0x7f0804bd

    goto :goto_1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a242363 -> :sswitch_7
        -0x6253dd5b -> :sswitch_6
        0x25410770 -> :sswitch_5
        0x39f04e60 -> :sswitch_4
        0x39f36708 -> :sswitch_3
        0x3c177381 -> :sswitch_2
        0x5f2c656e -> :sswitch_1
        0x7fb5a3a0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;)V
    .locals 13
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;->a:Le5/u2;

    .line 2
    iget-object v1, v0, Le5/u2;->c:Landroid/widget/ImageView;

    const-string v2, "itemMeImgLeft"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;

    const-string v4, "itemMeTip"

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-eqz v1, :cond_4

    .line 5
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;->c(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;->k()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    iget-object v1, v0, Le5/u2;->c:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/c;->F(Landroid/view/View;)Lcom/bumptech/glide/k;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/k;->N(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v1

    iget-object v2, v0, Le5/u2;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->k1(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/r;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    iget-object v2, v0, Le5/u2;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, v0, Le5/u2;->c:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object v1, v0, Le5/u2;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, v0, Le5/u2;->d:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 13
    :cond_4
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;

    if-eqz v1, :cond_e

    .line 14
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, v0, Le5/u2;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, v0, Le5/u2;->c:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_1
    iget-object v1, v0, Le5/u2;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    iget-object v1, v0, Le5/u2;->d:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->e()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    const/16 v3, 0x8

    .line 20
    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->e()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 22
    :goto_6
    iget-object v2, v0, Le5/u2;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object v1, v3

    goto :goto_7

    :cond_c
    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    const-string v1, ""

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v5, v0, Le5/u2;->d:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08019f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;->c()Z

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x16

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->o(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    :cond_e
    :goto_8
    return-void
.end method

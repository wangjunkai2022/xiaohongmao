.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DepositOptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepositOptionsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepositOptionsAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/DepositOptionsAdapter$DepositOptionHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,79:1\n254#2,2:80\n254#2,2:82\n*S KotlinDebug\n*F\n+ 1 DepositOptionsAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/DepositOptionsAdapter$DepositOptionHolder\n*L\n65#1:80,2\n68#1:82,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
        "item",
        "",
        "b",
        "Le5/m2;",
        "binding",
        "Le5/m2;",
        "c",
        "()Le5/m2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;Le5/m2;)V",
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
.field private final a:Le5/m2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;Le5/m2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/m2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;

    .line 2
    invoke-virtual {p2}, Le5/m2;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;->a:Le5/m2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/DepositOption;)V
    .locals 9
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/DepositOption;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;->a:Le5/m2;

    invoke-virtual {v0}, Le5/m2;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getHighlighted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;->a:Le5/m2;

    iget-object v0, v0, Le5/m2;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getSelected()Z

    move-result v2

    const v3, 0x7f0602f5

    if-eqz v2, :cond_0

    const v2, 0x7f0602f5

    goto :goto_0

    :cond_0
    const v2, 0x7f0600f4

    .line 7
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getCoins()I

    move-result v2

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_1

    const v2, 0x7f1303ea

    goto :goto_1

    :cond_1
    const v2, 0x7f1303e9

    :goto_1
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getCoins()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 11
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;->a:Le5/m2;

    iget-object v0, v0, Le5/m2;->c:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getCoins()I

    move-result v1

    const-string v2, ""

    if-ne v1, v4, :cond_2

    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 16
    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const v3, 0x7f060046

    .line 20
    :goto_2
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1303eb

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getYuan()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public final c()Le5/m2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;->a:Le5/m2;

    return-object v0
.end method

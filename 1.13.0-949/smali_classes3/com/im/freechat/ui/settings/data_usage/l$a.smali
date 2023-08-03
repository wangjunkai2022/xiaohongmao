.class public final Lcom/im/freechat/ui/settings/data_usage/l$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "NetworkUsageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/settings/data_usage/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/im/freechat/domain/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/im/freechat/ui/settings/data_usage/l$a",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/im/freechat/domain/m;",
        "oldItem",
        "newItem",
        "",
        "b",
        "a",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/im/freechat/domain/m;Lcom/im/freechat/domain/m;)Z
    .locals 1
    .param p1    # Lcom/im/freechat/domain/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/m;

    check-cast p2, Lcom/im/freechat/domain/m;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/settings/data_usage/l$a;->a(Lcom/im/freechat/domain/m;Lcom/im/freechat/domain/m;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/m;

    check-cast p2, Lcom/im/freechat/domain/m;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/settings/data_usage/l$a;->b(Lcom/im/freechat/domain/m;Lcom/im/freechat/domain/m;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/im/freechat/domain/m;Lcom/im/freechat/domain/m;)Z
    .locals 1
    .param p1    # Lcom/im/freechat/domain/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/domain/m;->h()Lcom/im/freechat/domain/NetworkType;

    move-result-object p1

    invoke-virtual {p2}, Lcom/im/freechat/domain/m;->h()Lcom/im/freechat/domain/NetworkType;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

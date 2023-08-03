.class public final Lcom/im/freechat/ui/chat/holder/i0;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocationMessageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/i0;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lf4/n0;",
        "binding",
        "",
        "isGroup",
        "<init>",
        "(Lf4/n0;Z)V",
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
.method public constructor <init>(Lf4/n0;Z)V
    .locals 0
    .param p1    # Lf4/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/n0;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

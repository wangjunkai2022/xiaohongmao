.class public final Lcom/im/freechat/ui/create/choosemember/b$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChooseMemberAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/create/choosemember/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/choosemember/b$c;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "",
        "item",
        "",
        "position",
        "",
        "c",
        "Lf4/f1;",
        "binding",
        "<init>",
        "(Lcom/im/freechat/ui/create/choosemember/b;Lf4/f1;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lf4/f1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/im/freechat/ui/create/choosemember/b;


# direct methods
.method public constructor <init>(Lcom/im/freechat/ui/create/choosemember/b;Lf4/f1;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/create/choosemember/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/f1;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/b$c;->b:Lcom/im/freechat/ui/create/choosemember/b;

    invoke-virtual {p2}, Lf4/f1;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/im/freechat/ui/create/choosemember/b$c;->a:Lf4/f1;

    return-void
.end method

.method public static synthetic b(Lcom/im/freechat/ui/create/choosemember/b;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/create/choosemember/b$c;->d(Lcom/im/freechat/ui/create/choosemember/b;ILandroid/view/View;)V

    return-void
.end method

.method private static final d(Lcom/im/freechat/ui/create/choosemember/b;ILandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/im/freechat/ui/create/choosemember/b;->e(Lcom/im/freechat/ui/create/choosemember/b;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/b$c;->a:Lf4/f1;

    iget-object v1, p0, Lcom/im/freechat/ui/create/choosemember/b$c;->b:Lcom/im/freechat/ui/create/choosemember/b;

    .line 2
    iget-object v2, v0, Lf4/f1;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/im/freechat/ui/create/choosemember/d;

    invoke-direct {v3, v1, p2}, Lcom/im/freechat/ui/create/choosemember/d;-><init>(Lcom/im/freechat/ui/create/choosemember/b;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, v0, Lf4/f1;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

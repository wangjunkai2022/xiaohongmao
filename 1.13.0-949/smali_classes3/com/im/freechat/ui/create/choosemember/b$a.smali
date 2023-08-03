.class public final Lcom/im/freechat/ui/create/choosemember/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ChooseMemberAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/create/choosemember/b;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/im/freechat/ui/create/choosemember/b$a",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "",
        "onChanged",
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
.field final synthetic a:Lcom/im/freechat/ui/create/choosemember/b;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/create/choosemember/b;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/b$a;->a:Lcom/im/freechat/ui/create/choosemember/b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/b$a;->a:Lcom/im/freechat/ui/create/choosemember/b;

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosemember/b;->m()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/im/freechat/ui/create/choosemember/b$a;->a:Lcom/im/freechat/ui/create/choosemember/b;

    invoke-static {v1}, Lcom/im/freechat/ui/create/choosemember/b;->e(Lcom/im/freechat/ui/create/choosemember/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

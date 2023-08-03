.class final Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$a;
.super Lkotlin/jvm/internal/Lambda;
.source "ChooseMemberFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly8/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ly8/a;",
        "invoke",
        "()Ly8/a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$a;->a:Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$a;->invoke()Ly8/a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ly8/a;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$a;->a:Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;

    invoke-static {v1}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->o0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ly8/b;->b([Ljava/lang/Object;)Ly8/a;

    move-result-object v0

    return-object v0
.end method

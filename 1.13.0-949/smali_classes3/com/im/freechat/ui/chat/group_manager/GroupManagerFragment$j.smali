.class final Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$j;
.super Lkotlin/jvm/internal/Lambda;
.source "GroupManagerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lk4/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lk4/a;",
        "a",
        "()Lk4/a;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$j;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lk4/a;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lk4/a;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$j;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    sget-object v2, Lcom/im/freechat/ui/chat/history/HistoryTab;->Groups:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lk4/a;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$j;->a()Lk4/a;

    move-result-object v0

    return-object v0
.end method

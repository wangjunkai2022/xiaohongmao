.class public final synthetic Lcom/im/freechat/ui/chat/history/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/n;->a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/n;->a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->l0(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;Ljava/util/List;)V

    return-void
.end method

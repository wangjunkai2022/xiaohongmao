.class public final synthetic Lcom/im/freechat/ui/chat/history/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/p;->a:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/p;->a:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->i(Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;Ljava/lang/Object;)V

    return-void
.end method

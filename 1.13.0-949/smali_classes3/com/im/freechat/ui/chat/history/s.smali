.class public final synthetic Lcom/im/freechat/ui/chat/history/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/s;->a:Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/s;->a:Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->h(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Ljava/util/Map;)V

    return-void
.end method

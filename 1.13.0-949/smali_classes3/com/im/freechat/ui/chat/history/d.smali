.class public final synthetic Lcom/im/freechat/ui/chat/history/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/history/HistoryFileHolder;

.field public final synthetic b:Lcom/im/freechat/ui/chat/history/a;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Lcom/im/freechat/ui/chat/history/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/d;->a:Lcom/im/freechat/ui/chat/history/HistoryFileHolder;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/history/d;->b:Lcom/im/freechat/ui/chat/history/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/d;->a:Lcom/im/freechat/ui/chat/history/HistoryFileHolder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/d;->b:Lcom/im/freechat/ui/chat/history/a;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->f(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V

    return-void
.end method

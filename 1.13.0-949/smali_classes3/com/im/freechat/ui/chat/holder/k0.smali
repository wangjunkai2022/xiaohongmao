.class public final synthetic Lcom/im/freechat/ui/chat/holder/k0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/l0;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/l0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/k0;->a:Lcom/im/freechat/ui/chat/holder/l0;

    iput-boolean p2, p0, Lcom/im/freechat/ui/chat/holder/k0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/k0;->a:Lcom/im/freechat/ui/chat/holder/l0;

    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/holder/k0;->b:Z

    invoke-static {v0, v1}, Lcom/im/freechat/ui/chat/holder/l0;->y0(Lcom/im/freechat/ui/chat/holder/l0;Z)V

    return-void
.end method

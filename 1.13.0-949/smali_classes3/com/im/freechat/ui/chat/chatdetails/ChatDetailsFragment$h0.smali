.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0;
.super Ljava/lang/Object;
.source "ChatDetailsFragment.kt"

# interfaces
.implements Lc4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0",
        "Lc4/a;",
        "",
        "start",
        "stop",
        "a",
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
.field final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h0()V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->L3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->H1()V

    return-void
.end method

.class final Lcom/im/freechat/ui/chat/holder/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioMessageHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/holder/b;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/holder/b;

.field final synthetic b:Lcom/im/freechat/shared/entities/message/AudioAttachment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/holder/b;Lcom/im/freechat/shared/entities/message/AudioAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/b$a;->a:Lcom/im/freechat/ui/chat/holder/b;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/b$a;->b:Lcom/im/freechat/shared/entities/message/AudioAttachment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/b$a;->a:Lcom/im/freechat/ui/chat/holder/b;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/holder/b;->z0(Lcom/im/freechat/ui/chat/holder/b;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/b$a;->b:Lcom/im/freechat/shared/entities/message/AudioAttachment;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/holder/b$a;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

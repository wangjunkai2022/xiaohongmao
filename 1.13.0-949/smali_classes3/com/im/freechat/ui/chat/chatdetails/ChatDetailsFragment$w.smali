.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$w;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$init$15$8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1609:1\n1#2:1610\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "audio",
        "",
        "i",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/message/AudioAttachment;I)V"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$w;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/message/AudioAttachment;I)V
    .locals 10
    .param p1    # Lcom/im/freechat/shared/entities/message/AudioAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$w;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->q1(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMediaId()J

    move-result-wide v3

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$w;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v2

    int-to-long v5, p2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->i1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;JJZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$w;->a(Lcom/im/freechat/shared/entities/message/AudioAttachment;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

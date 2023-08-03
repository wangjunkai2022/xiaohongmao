.class public final Lcom/im/freechat/shared/entities/message/MessageWithChat;
.super Ljava/lang/Object;
.source "MessageWithChat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J3\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/MessageWithChat;",
        "",
        "message",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "chatTitle",
        "",
        "chatAvatar",
        "chatType",
        "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "(Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V",
        "getChatAvatar",
        "()Ljava/lang/String;",
        "getChatTitle",
        "getChatType",
        "()Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "getMessage",
        "()Lcom/im/freechat/shared/entities/message/Message;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final chatAvatar:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final chatTitle:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final message:Lcom/im/freechat/shared/entities/message/Message;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/shared/entities/chat/Chat$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/shared/entities/message/MessageWithChat;Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/MessageWithChat;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->copy(Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)Lcom/im/freechat/shared/entities/message/MessageWithChat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/shared/entities/message/Message;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)Lcom/im/freechat/shared/entities/message/MessageWithChat;
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/shared/entities/chat/Chat$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/shared/entities/message/MessageWithChat;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/shared/entities/message/MessageWithChat;-><init>(Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/shared/entities/message/MessageWithChat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/shared/entities/message/MessageWithChat;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    iget-object p1, p1, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChatAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getChatTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getChatType()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final getMessage()Lcom/im/freechat/shared/entities/message/Message;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageWithChat(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->message:Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chatTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageWithChat;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

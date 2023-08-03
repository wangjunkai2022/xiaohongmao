.class public final Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;
.super Ljava/lang/Object;
.source "MessageEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\rH\u00c6\u0003JM\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u00c6\u0001J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020%H\u00d6\u0001J\t\u0010&\u001a\u00020\nH\u00d6\u0001R\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;",
        "",
        "messageEntity",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "senderEntity",
        "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
        "attachments",
        "",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "chatTitle",
        "",
        "chatAvatar",
        "chatType",
        "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V",
        "getAttachments",
        "()Ljava/util/List;",
        "getChatAvatar",
        "()Ljava/lang/String;",
        "getChatTitle",
        "getChatType",
        "()Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "getMessageEntity",
        "()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "getSenderEntity",
        "()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "data_release"
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
.field private final attachments:Ljava/util/List;
    .annotation build Landroidx/room/Relation;
        entityColumn = "parent_message_id"
        parentColumn = "message_id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final chatAvatar:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "chat_avatar"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final chatTitle:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "chat_title"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .annotation build Landroidx/room/ColumnInfo;
        name = "chat_type"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .annotation build Landroidx/room/Embedded;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .annotation build Landroidx/room/Embedded;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/shared/entities/chat/Chat$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
            ")V"
        }
    .end annotation

    const-string v0, "messageEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatAvatar"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->copy(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;
    .locals 8
    .param p1    # Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/shared/entities/chat/Chat$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
            ")",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "messageEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatAvatar"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final getChatAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getChatTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getChatType()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    return-object v0
.end method

.method public final getSenderEntity()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

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

    const-string v1, "MessageWithChatInfo(messageEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senderEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chatTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;->chatType:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

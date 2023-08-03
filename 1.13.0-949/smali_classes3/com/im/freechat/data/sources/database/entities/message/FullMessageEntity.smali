.class public final Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
.super Ljava/lang/Object;
.source "MessageEntity.kt"


# annotations
.annotation build Landroidx/room/DatabaseView;
    value = "SELECT * FROM message LEFT JOIN user ON message.sender_id = user.user_id LEFT JOIN \n        (SELECT \n            user_id as forwarder_user_id,\n            nickname as forwarder_nickname,\n            avatar_url as forwarder_avatar_url,\n            management_role as forwarder_management_role,\n            user_name_mask as forwarder_user_name_mask,\n            is_current as forwarder_is_current\n        FROM user) ON message.forward_sender_id = forwarder_user_id"
    viewName = "full_message"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "",
        "messageEntity",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "senderEntity",
        "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
        "forwardSenderEntity",
        "attachments",
        "",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V",
        "getAttachments",
        "()Ljava/util/List;",
        "getForwardSenderEntity",
        "()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
        "getMessageEntity",
        "()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "getSenderEntity",
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
        "",
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

.field private final forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .annotation build Landroidx/room/Embedded;
        prefix = "forwarder_"
    .end annotation

    .annotation build Lm8/h;
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
.method public constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
            "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->copy(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    return-object v0
.end method

.method public final component3()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
            "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;)",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "messageEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final getForwardSenderEntity()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    return-object v0
.end method

.method public final getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    return-object v0
.end method

.method public final getSenderEntity()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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

    const-string v1, "FullMessageEntity(messageEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->messageEntity:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senderEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->senderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardSenderEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->forwardSenderEntity:Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

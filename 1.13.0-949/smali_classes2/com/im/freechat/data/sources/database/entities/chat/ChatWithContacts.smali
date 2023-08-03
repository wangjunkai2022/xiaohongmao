.class public final Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;
.super Ljava/lang/Object;
.source "ChatEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u000f\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J@\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\""
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
        "",
        "chatEntity",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
        "lastMessageEntity",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "updateTime",
        "",
        "contacts",
        "",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
        "(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)V",
        "getChatEntity",
        "()Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
        "getContacts",
        "()Ljava/util/List;",
        "getLastMessageEntity",
        "()Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "getUpdateTime",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
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
.field private final chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
    .annotation build Landroidx/room/Embedded;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final contacts:Ljava/util/List;
    .annotation build Landroidx/room/Relation;
        associateBy = .subannotation Landroidx/room/Junction;
            entityColumn = "user_id"
            parentColumn = "chat_id"
            value = Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;
        .end subannotation
        entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        entityColumn = "user_id"
        parentColumn = "chat_id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
    .annotation build Landroidx/room/Embedded;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final updateTime:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_time"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
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
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "chatEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contacts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->copy(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
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
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;)",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "chatEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contacts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChatEntity()Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    return-object v0
.end method

.method public final getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public final getLastMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    return-object v0
.end method

.method public final getUpdateTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

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

    const-string v1, "ChatWithContacts(chatEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->chatEntity:Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastMessageEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->lastMessageEntity:Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->updateTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->contacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

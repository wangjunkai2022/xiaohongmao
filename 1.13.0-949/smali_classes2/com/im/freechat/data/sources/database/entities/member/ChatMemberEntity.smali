.class public final Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;
.super Ljava/lang/Object;
.source "MemberEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;",
        "",
        "chatId",
        "",
        "role",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;",
        "status",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;",
        "contact",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
        "(ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)V",
        "getChatId",
        "()I",
        "getContact",
        "()Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
        "getRole",
        "()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;",
        "getStatus",
        "()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final chatId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "chat_id"
    .end annotation
.end field

.field private final contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
    .annotation build Landroidx/room/Embedded;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .annotation build Landroidx/room/ColumnInfo;
        name = "role"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .annotation build Landroidx/room/ColumnInfo;
        name = "status"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)V
    .locals 1
    .param p2    # Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->copy(ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    return v0
.end method

.method public final component2()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    return-object v0
.end method

.method public final component3()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    return-object v0
.end method

.method public final component4()Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    return-object v0
.end method

.method public final copy(ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;
    .locals 1
    .param p2    # Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;-><init>(ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    return v0
.end method

.method public final getContact()Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    return-object v0
.end method

.method public final getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    return-object v0
.end method

.method public final getStatus()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->hashCode()I

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

    const-string v1, "ChatMemberEntity(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->contact:Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

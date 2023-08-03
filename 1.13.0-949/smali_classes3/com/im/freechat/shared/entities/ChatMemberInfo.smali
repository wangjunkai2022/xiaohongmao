.class public final Lcom/im/freechat/shared/entities/ChatMemberInfo;
.super Ljava/lang/Object;
.source "ChatMemberInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/ChatMemberInfo;",
        "",
        "id",
        "",
        "name",
        "",
        "type",
        "Lcom/im/freechat/shared/entities/Type;",
        "avatar",
        "managementRole",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        "(ILjava/lang/String;Lcom/im/freechat/shared/entities/Type;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getManagementRole",
        "()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        "getName",
        "getType",
        "()Lcom/im/freechat/shared/entities/Type;",
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
.field private final avatar:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final id:I

.field private final managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/shared/entities/Type;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/im/freechat/shared/entities/Type;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/shared/entities/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managementRole"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->id:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->type:Lcom/im/freechat/shared/entities/Type;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->avatar:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->id:I

    return v0
.end method

.method public final getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/shared/entities/Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/ChatMemberInfo;->type:Lcom/im/freechat/shared/entities/Type;

    return-object v0
.end method

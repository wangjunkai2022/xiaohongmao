.class public final Lcom/im/freechat/shared/entities/chat/ChatMember;
.super Ljava/lang/Object;
.source "ChatMember.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/chat/ChatMember$Role;,
        Lcom/im/freechat/shared/entities/chat/ChatMember$Status;,
        Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0003\u001a\u001b\u001cB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "",
        "contact",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "status",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;",
        "role",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;",
        "(Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)V",
        "getContact",
        "()Lcom/im/freechat/shared/entities/contact/UserModel;",
        "getRole",
        "()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;",
        "getStatus",
        "()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "ManagementRole",
        "Role",
        "Status",
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
.field private final contact:Lcom/im/freechat/shared/entities/contact/UserModel;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/shared/entities/chat/ChatMember;Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/chat/ChatMember;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->copy(Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)Lcom/im/freechat/shared/entities/chat/ChatMember;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/shared/entities/contact/UserModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    return-object v0
.end method

.method public final component3()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)Lcom/im/freechat/shared/entities/chat/ChatMember;
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-direct {v0, p1, p2, p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;-><init>(Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)V

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
    instance-of v1, p1, Lcom/im/freechat/shared/entities/chat/ChatMember;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/shared/entities/chat/ChatMember;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    iget-object p1, p1, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getContact()Lcom/im/freechat/shared/entities/contact/UserModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    return-object v0
.end method

.method public final getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    return-object v0
.end method

.method public final getStatus()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

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

    const-string v1, "ChatMember(contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->contact:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->status:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/chat/ChatMember;->role:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

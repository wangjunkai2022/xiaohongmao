.class public final Lcom/im/freechat/shared/entities/chat/ChatMemberKt;
.super Ljava/lang/Object;
.source "ChatMember.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "createManagementRole",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        "role",
        "",
        "(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        "shared"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createManagementRole(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .locals 2
    .param p0    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->CUSTOMER_SERVICE:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-nez p0, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    sget-object p0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->MANAGEMENT:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v0, 0x3

    if-nez p0, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->FAMILY:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    goto :goto_3

    .line 4
    :cond_5
    :goto_2
    sget-object p0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    :goto_3
    return-object p0
.end method

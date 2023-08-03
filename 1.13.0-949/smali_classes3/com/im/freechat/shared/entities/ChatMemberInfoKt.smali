.class public final Lcom/im/freechat/shared/entities/ChatMemberInfoKt;
.super Ljava/lang/Object;
.source "ChatMemberInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toUserMask",
        "Lcom/im/freechat/shared/entities/ChatMemberInfo;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
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
.method public static final toUserMask(Lcom/im/freechat/shared/entities/contact/UserModel;)Lcom/im/freechat/shared/entities/ChatMemberInfo;
    .locals 13
    .param p0    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserNameMask()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/ChatMemberInfo;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v2

    sget-object v4, Lcom/im/freechat/shared/entities/Type$LocalMask;->INSTANCE:Lcom/im/freechat/shared/entities/Type$LocalMask;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/shared/entities/ChatMemberInfo;-><init>(ILjava/lang/String;Lcom/im/freechat/shared/entities/Type;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/im/freechat/shared/entities/ChatMemberInfo;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v8

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/im/freechat/shared/entities/Type$NicknameMask;->INSTANCE:Lcom/im/freechat/shared/entities/Type$NicknameMask;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/im/freechat/shared/entities/ChatMemberInfo;-><init>(ILjava/lang/String;Lcom/im/freechat/shared/entities/Type;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)V

    :goto_0
    return-object v0
.end method

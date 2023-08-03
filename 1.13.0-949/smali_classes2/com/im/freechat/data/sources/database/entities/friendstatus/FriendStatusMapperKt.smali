.class public final Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapperKt;
.super Ljava/lang/Object;
.source "FriendStatusMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toStatus",
        "Lcom/im/freechat/shared/entities/chat/Status;",
        "Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;",
        "data_release"
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
.method public static final toStatus(Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;)Lcom/im/freechat/shared/entities/chat/Status;
    .locals 1
    .param p0    # Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/im/freechat/shared/entities/chat/Status;->NONE:Lcom/im/freechat/shared/entities/chat/Status;

    goto :goto_1

    .line 3
    :cond_1
    sget-object p0, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

    goto :goto_1

    .line 4
    :cond_2
    sget-object p0, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_SENT:Lcom/im/freechat/shared/entities/chat/Status;

    goto :goto_1

    .line 5
    :cond_3
    sget-object p0, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_REJECTED:Lcom/im/freechat/shared/entities/chat/Status;

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    :goto_1
    return-object p0
.end method

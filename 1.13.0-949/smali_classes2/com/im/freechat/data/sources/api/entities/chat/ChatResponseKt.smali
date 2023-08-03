.class public final Lcom/im/freechat/data/sources/api/entities/chat/ChatResponseKt;
.super Ljava/lang/Object;
.source "ChatResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "nameOrNickname",
        "",
        "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;",
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
.method public static final nameOrNickname(Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->getExpansion()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->getExpansion()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

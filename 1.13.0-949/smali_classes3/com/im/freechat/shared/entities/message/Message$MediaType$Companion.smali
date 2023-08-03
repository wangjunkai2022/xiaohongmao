.class public final Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/message/Message$MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;",
        "",
        "()V",
        "typeByValue",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "type",
        "",
        "(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MediaType;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final typeByValue(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->getType()I

    move-result v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_6

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->AUDIO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->getType()I

    move-result v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_6

    .line 3
    :cond_3
    :goto_1
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->getType()I

    move-result v1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_6

    .line 4
    :cond_5
    :goto_2
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->LOCATION:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->getType()I

    move-result v1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_7

    goto :goto_6

    .line 5
    :cond_7
    :goto_3
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->FILE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->getType()I

    move-result v1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_9

    goto :goto_6

    .line 6
    :cond_9
    :goto_4
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->GIF:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->getType()I

    move-result v1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

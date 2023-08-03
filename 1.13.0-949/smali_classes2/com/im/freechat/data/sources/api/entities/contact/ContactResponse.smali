.class public final Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;
.super Ljava/lang/Object;
.source "ContactResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001Be\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u001a\u0008\u0001\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR#\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
        "",
        "nickname",
        "",
        "avatar",
        "userId",
        "",
        "managementRole",
        "onlineInfo",
        "Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;",
        "phone",
        "expansion",
        "",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;Ljava/lang/String;Ljava/util/Map;)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getExpansion",
        "()Ljava/util/Map;",
        "getManagementRole",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getNickname",
        "getOnlineInfo",
        "()Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;",
        "getPhone",
        "getUserId",
        "()I",
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
.field private final avatar:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final expansion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final managementRole:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final nickname:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final onlineInfo:Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final phone:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "nickname"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "avatar"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "user_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "management_role"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "online"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "phone"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->nickname:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->avatar:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->userId:I

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->managementRole:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->onlineInfo:Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->phone:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->expansion:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpansion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->expansion:Ljava/util/Map;

    return-object v0
.end method

.method public final getManagementRole()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->managementRole:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnlineInfo()Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->onlineInfo:Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->userId:I

    return v0
.end method

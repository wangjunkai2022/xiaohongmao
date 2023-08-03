.class public final Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;
.super Ljava/lang/Object;
.source "UserResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\r\u0018\u00002\u00020\u0001BW\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;",
        "",
        "userId",
        "",
        "nickname",
        "",
        "token",
        "imToken",
        "avatar",
        "role",
        "firstLogin",
        "lastSeen",
        "",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getFirstLogin",
        "()I",
        "getImToken",
        "getLastSeen",
        "()J",
        "getNickname",
        "getRole",
        "getToken",
        "getUserId",
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

.field private final firstLogin:I

.field private final imToken:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final lastSeen:J

.field private final nickname:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final role:I

.field private final token:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "nickname"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "token"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "im_token"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "avatar"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "role"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "is_first_login"
        .end annotation
    .end param
    .param p8    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "last_seen"
        .end annotation
    .end param

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->userId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->nickname:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->token:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->imToken:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->avatar:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->role:I

    .line 8
    iput p7, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->firstLogin:I

    .line 9
    iput-wide p8, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->lastSeen:J

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstLogin()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->firstLogin:I

    return v0
.end method

.method public final getImToken()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->imToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastSeen()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->lastSeen:J

    return-wide v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getRole()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->role:I

    return v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->userId:I

    return v0
.end method

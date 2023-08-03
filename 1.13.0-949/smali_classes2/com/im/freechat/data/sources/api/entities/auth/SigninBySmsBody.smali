.class public final Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;
.super Ljava/lang/Object;
.source "SigninBySmsBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;",
        "",
        "countryCode",
        "",
        "phoneNumber",
        "code",
        "",
        "deviceUUID",
        "device",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getCode",
        "()I",
        "getCountryCode",
        "()Ljava/lang/String;",
        "getDevice",
        "getDeviceUUID",
        "getPhoneNumber",
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
.field private final code:I

.field private final countryCode:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final device:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final deviceUUID:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final phoneNumber:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "nation_code"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "phone"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "check_code"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "device_id"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "device"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUUID"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->countryCode:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->phoneNumber:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->code:I

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->deviceUUID:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->device:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const-string p5, "android"

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->code:I

    return v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceUUID()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->deviceUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

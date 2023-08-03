.class public final enum Lcom/hcaptcha/sdk/HCaptchaError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hcaptcha/sdk/HCaptchaError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum CHALLENGE_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum INTERNAL_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum INVALID_CUSTOM_THEME:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum INVALID_DATA:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum NETWORK_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum RATE_LIMITED:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum SESSION_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum TOKEN_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

.field private static final synthetic c:[Lcom/hcaptcha/sdk/HCaptchaError;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x7

    const-string v4, "No internet connection"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->NETWORK_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v4, "INVALID_DATA"

    const/4 v5, 0x1

    const/16 v6, 0x8

    const-string v7, "Invalid data is not accepted by endpoints"

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/hcaptcha/sdk/HCaptchaError;->INVALID_DATA:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v4, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v7, "CHALLENGE_ERROR"

    const/4 v8, 0x2

    const/16 v9, 0x9

    const-string v10, "Challenge encountered error on setup"

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v7, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v10, "INTERNAL_ERROR"

    const/4 v11, 0x3

    const/16 v12, 0xa

    const-string v13, "hCaptcha client encountered an internal error"

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/hcaptcha/sdk/HCaptchaError;->INTERNAL_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v10, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v13, "SESSION_TIMEOUT"

    const/4 v14, 0x4

    const/16 v15, 0xf

    const-string v11, "Session Timeout"

    invoke-direct {v10, v13, v14, v15, v11}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/hcaptcha/sdk/HCaptchaError;->SESSION_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v11, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v13, "TOKEN_TIMEOUT"

    const/4 v15, 0x5

    const/16 v14, 0x10

    const-string v8, "Token Timeout"

    invoke-direct {v11, v13, v15, v14, v8}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/hcaptcha/sdk/HCaptchaError;->TOKEN_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v8, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v13, "CHALLENGE_CLOSED"

    const/4 v14, 0x6

    const/16 v15, 0x1e

    const-string v5, "Challenge Closed"

    invoke-direct {v8, v13, v14, v15, v5}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v5, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v13, "RATE_LIMITED"

    const/16 v15, 0x1f

    const-string v14, "Rate Limited"

    invoke-direct {v5, v13, v3, v15, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/hcaptcha/sdk/HCaptchaError;->RATE_LIMITED:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v13, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v14, "INVALID_CUSTOM_THEME"

    const/16 v15, 0x20

    const-string v3, "Invalid custom theme"

    invoke-direct {v13, v14, v6, v15, v3}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/hcaptcha/sdk/HCaptchaError;->INVALID_CUSTOM_THEME:Lcom/hcaptcha/sdk/HCaptchaError;

    new-instance v3, Lcom/hcaptcha/sdk/HCaptchaError;

    const-string v14, "ERROR"

    const/16 v15, 0x1d

    const-string v6, "Unknown error"

    invoke-direct {v3, v14, v9, v15, v6}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    new-array v6, v12, [Lcom/hcaptcha/sdk/HCaptchaError;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v10, v6, v0

    const/4 v0, 0x5

    aput-object v11, v6, v0

    const/4 v0, 0x6

    aput-object v8, v6, v0

    const/4 v0, 0x7

    aput-object v5, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    aput-object v3, v6, v9

    sput-object v6, Lcom/hcaptcha/sdk/HCaptchaError;->c:[Lcom/hcaptcha/sdk/HCaptchaError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hcaptcha/sdk/HCaptchaError;->a:I

    iput-object p4, p0, Lcom/hcaptcha/sdk/HCaptchaError;->b:Ljava/lang/String;

    return-void
.end method

.method public static fromId(I)Lcom/hcaptcha/sdk/HCaptchaError;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaError;->values()[Lcom/hcaptcha/sdk/HCaptchaError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/hcaptcha/sdk/HCaptchaError;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported error id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptchaError;
    .locals 1

    const-class v0, Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaError;

    return-object p0
.end method

.method public static values()[Lcom/hcaptcha/sdk/HCaptchaError;
    .locals 1

    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->c:[Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-virtual {v0}, [Lcom/hcaptcha/sdk/HCaptchaError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcaptcha/sdk/HCaptchaError;

    return-object v0
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    iget v0, p0, Lcom/hcaptcha/sdk/HCaptchaError;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaError;->b:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
.super Ljava/lang/Enum;
.source "CaptchaReason.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
        "",
        "(Ljava/lang/String;I)V",
        "LOGIN",
        "SMS",
        "FIND_PASSWORD",
        "REGISTER",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum FIND_PASSWORD:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

.field public static final enum LOGIN:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

.field public static final enum REGISTER:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

.field public static final enum SMS:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

.field private static final synthetic a:[Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->LOGIN:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const-string v1, "SMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->SMS:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const-string v1, "FIND_PASSWORD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->FIND_PASSWORD:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const-string v1, "REGISTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->REGISTER:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->a()[Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->a:[Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->LOGIN:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->SMS:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->FIND_PASSWORD:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->REGISTER:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->a:[Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    return-object v0
.end method

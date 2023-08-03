.class public final enum Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;
.super Ljava/lang/Enum;
.source "Ids.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;",
        ">;",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;",
        "",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;",
        "title",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "PersonalSettings",
        "AvatarChange",
        "OpenVip",
        "Topup",
        "DailyCoins",
        "ChangePhone",
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
.field private static final synthetic $VALUES:[Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

.field public static final enum AvatarChange:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

.field public static final enum ChangePhone:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

.field public static final enum DailyCoins:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

.field public static final enum OpenVip:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

.field public static final enum PersonalSettings:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

.field public static final enum Topup:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;


# instance fields
.field private final title:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->PersonalSettings:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->AvatarChange:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->OpenVip:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->Topup:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->DailyCoins:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->ChangePhone:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const-string v1, "PersonalSettings"

    const/4 v2, 0x0

    const-string v3, "k_personal_settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->PersonalSettings:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const-string v1, "AvatarChange"

    const/4 v2, 0x1

    const-string v3, "k_avatar_change"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->AvatarChange:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const-string v1, "OpenVip"

    const/4 v2, 0x2

    const-string v3, "k_open_VIP_profile_screen"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->OpenVip:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const-string v1, "Topup"

    const/4 v2, 0x3

    const-string v3, "k_top_up_profile_screen"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->Topup:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const-string v1, "DailyCoins"

    const/4 v2, 0x4

    const-string v3, "k_dailycoins"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->DailyCoins:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const-string v1, "ChangePhone"

    const/4 v2, 0x5

    const-string v3, "k_change_phone"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->ChangePhone:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    invoke-static {}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->$values()[Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->$VALUES:[Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->title:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->$VALUES:[Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->title:Ljava/lang/String;

    return-object v0
.end method

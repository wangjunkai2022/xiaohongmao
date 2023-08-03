.class public final enum Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;
.super Ljava/lang/Enum;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008!\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006R\u001b\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;",
        "",
        "keys",
        "",
        "",
        "readableName",
        "(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V",
        "getKeys",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getReadableName",
        "()Ljava/lang/String;",
        "APP_OPEN",
        "APP_CLOSED",
        "APP_SIGN_UP",
        "APP_LOGIN",
        "APP_IM_LOGIN",
        "APP_GUEST_LOGIN",
        "APP_LOGOUT",
        "APP_CLICK",
        "APP_AD_CLICK",
        "APP_SHOW_LAUNCH_AD",
        "APP_CLICK_LAUNCH_AD",
        "APP_ENTER_ROOM",
        "APP_LEAVE_ROOM",
        "APP_ROOM_STARTED",
        "APP_ROOM_ENDED",
        "APP_BLUETOOTH_ENABLED",
        "APP_SEARCH",
        "APP_PK_BATTLE_START",
        "APP_PK_BATTLE_END",
        "APP_MAIN_PAGE_CATEGORY_CHANGED",
        "APP_GIFT_SENT",
        "APP_BUY_VIP",
        "APP_RECHARGE_DIALOG_CREATED",
        "APP_RECHARGE_DIALOG_FAILED",
        "APP_RECHARGE_DIALOG_SUCCESS",
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
.field private static final synthetic $VALUES:[Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_AD_CLICK:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_BLUETOOTH_ENABLED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_BUY_VIP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_CLICK:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_CLICK_LAUNCH_AD:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_CLOSED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_ENTER_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_GIFT_SENT:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_GUEST_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_IM_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_LEAVE_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_LOGOUT:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_MAIN_PAGE_CATEGORY_CHANGED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_OPEN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_PK_BATTLE_END:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_PK_BATTLE_START:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_RECHARGE_DIALOG_CREATED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_RECHARGE_DIALOG_FAILED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_RECHARGE_DIALOG_SUCCESS:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_ROOM_ENDED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_ROOM_STARTED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_SEARCH:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_SHOW_LAUNCH_AD:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

.field public static final enum APP_SIGN_UP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;


# instance fields
.field private final keys:[Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final readableName:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_OPEN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_CLOSED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SIGN_UP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_IM_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_GUEST_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LOGOUT:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_CLICK:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_AD_CLICK:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SHOW_LAUNCH_AD:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_CLICK_LAUNCH_AD:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_ENTER_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LEAVE_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_ROOM_STARTED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_ROOM_ENDED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_BLUETOOTH_ENABLED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SEARCH:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_PK_BATTLE_START:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_PK_BATTLE_END:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_MAIN_PAGE_CATEGORY_CHANGED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_GIFT_SENT:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_BUY_VIP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_RECHARGE_DIALOG_CREATED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_RECHARGE_DIALOG_FAILED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_RECHARGE_DIALOG_SUCCESS:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v1, "APP_OPEN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Application Opened"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_OPEN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v9, "APP_CLOSED"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "Application Closed"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_CLOSED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "APP_SIGN_UP"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "Application Sign Up"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SIGN_UP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v9, "APP_LOGIN"

    const/4 v10, 0x3

    const-string v12, "Application Login"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "APP_IM_LOGIN"

    const/4 v3, 0x4

    const-string v5, "IM Login"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_IM_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v9, "APP_GUEST_LOGIN"

    const/4 v10, 0x5

    const-string v12, "Application Guest Login"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_GUEST_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 7
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "APP_LOGOUT"

    const/4 v3, 0x6

    const-string v5, "Application Logout"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LOGOUT:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 8
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v1, "screen_id"

    const-string v2, "event_title"

    const-string v3, "button_title"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_CLICK"

    const/4 v4, 0x7

    const-string v5, "Button clicked"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_CLICK:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 9
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "to"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_AD_CLICK"

    const/16 v4, 0x8

    const-string v5, "Ad Clicked"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_AD_CLICK:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 10
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "adsId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "APP_SHOW_LAUNCH_AD"

    const/16 v5, 0x9

    const-string v6, "ADS At App Launch Shown"

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SHOW_LAUNCH_AD:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 11
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_CLICK_LAUNCH_AD"

    const/16 v4, 0xa

    const-string v5, "ADS At App Launch Click"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_CLICK_LAUNCH_AD:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 12
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "room_number"

    const-string v3, "anchor_id"

    const-string v4, "room_type"

    .line 13
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP_ENTER_ROOM"

    const/16 v7, 0xb

    const-string v8, "Enter Room"

    .line 14
    invoke-direct {v0, v6, v7, v5, v8}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_ENTER_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 15
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v5, "duration"

    .line 16
    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "APP_LEAVE_ROOM"

    const/16 v7, 0xc

    const-string v8, "Leave Room"

    .line 17
    invoke-direct {v0, v6, v7, v3, v8}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LEAVE_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 18
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "APP_ROOM_STARTED"

    const/16 v7, 0xd

    const-string v8, "Room Started"

    invoke-direct {v0, v6, v7, v3, v8}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_ROOM_STARTED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 19
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v3, "received_coins_count"

    const-string v6, "average_online"

    const-string v7, "max_online"

    .line 20
    filled-new-array {v2, v3, v6, v7, v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "APP_ROOM_ENDED"

    const/16 v8, 0xe

    const-string v9, "Room Ended"

    .line 21
    invoke-direct {v0, v7, v8, v6, v9}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_ROOM_ENDED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 22
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "APP_BLUETOOTH_ENABLED"

    const/16 v8, 0xf

    const-string v9, "Bluetooth Device Enabled"

    invoke-direct {v0, v7, v8, v6, v9}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_BLUETOOTH_ENABLED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 23
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v6, "keyword"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "APP_SEARCH"

    const/16 v8, 0x10

    const-string v9, "Search Anchor"

    invoke-direct {v0, v7, v8, v6, v9}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SEARCH:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 24
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "APP_PK_BATTLE_START"

    const/16 v8, 0x11

    const-string v9, "PK Battle Start"

    invoke-direct {v0, v7, v8, v6, v9}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_PK_BATTLE_START:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 25
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 26
    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_PK_BATTLE_END"

    const/16 v5, 0x12

    const-string v6, "PK Battle End"

    .line 27
    invoke-direct {v0, v3, v5, v2, v6}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_PK_BATTLE_END:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 28
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_MAIN_PAGE_CATEGORY_CHANGED"

    const/16 v5, 0x13

    const-string v6, "Main Page Tab Open"

    invoke-direct {v0, v3, v5, v2, v6}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_MAIN_PAGE_CATEGORY_CHANGED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 29
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "gift_price"

    const-string v3, "gift_name"

    const-string v5, "streamer_id"

    const-string v6, "bluetooth_on"

    .line 30
    filled-new-array {v2, v3, v5, v4, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_GIFT_SENT"

    const/16 v4, 0x14

    const-string v6, "Gift Sent"

    .line 31
    invoke-direct {v0, v3, v4, v2, v6}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_GIFT_SENT:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 32
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v2, "VIP_type"

    filled-new-array {v2, v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_BUY_VIP"

    const/16 v3, 0x15

    const-string v4, "Buy VIP"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_BUY_VIP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 33
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const-string v1, "agent_id"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_RECHARGE_DIALOG_CREATED"

    const/16 v4, 0x16

    const-string v5, "Recharge dialog created"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_RECHARGE_DIALOG_CREATED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 34
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_RECHARGE_DIALOG_FAILED"

    const/16 v4, 0x17

    const-string v5, "Recharge dialog failed"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_RECHARGE_DIALOG_FAILED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 35
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_RECHARGE_DIALOG_SUCCESS"

    const/16 v3, 0x18

    const-string v4, "Recharge dialog success"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_RECHARGE_DIALOG_SUCCESS:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    invoke-static {}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->$values()[Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->$VALUES:[Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->keys:[Ljava/lang/String;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->readableName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;-><init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->$VALUES:[Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    return-object v0
.end method


# virtual methods
.method public final getKeys()[Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->keys:[Ljava/lang/String;

    return-object v0
.end method

.method public final getReadableName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->readableName:Ljava/lang/String;

    return-object v0
.end method

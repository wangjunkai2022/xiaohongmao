.class public final enum Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;
.super Ljava/lang/Enum;
.source "GroupManagerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Directions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;",
        "",
        "(Ljava/lang/String;I)V",
        "MAIN_SCREEN",
        "CHAT_DETAILS",
        "USER_PROFILE",
        "CHAT_SELECTOR",
        "app_prodRelease"
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
.field public static final enum CHAT_DETAILS:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

.field public static final enum CHAT_SELECTOR:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

.field public static final enum MAIN_SCREEN:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

.field public static final enum USER_PROFILE:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

.field private static final synthetic a:[Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const-string v1, "MAIN_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->MAIN_SCREEN:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const-string v1, "CHAT_DETAILS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const-string v1, "USER_PROFILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->USER_PROFILE:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const-string v1, "CHAT_SELECTOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->CHAT_SELECTOR:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-static {}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->a()[Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->a:[Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

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

.method private static final synthetic a()[Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->MAIN_SCREEN:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->USER_PROFILE:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->CHAT_SELECTOR:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;
    .locals 1

    const-class v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;
    .locals 1

    sget-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->a:[Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    return-object v0
.end method

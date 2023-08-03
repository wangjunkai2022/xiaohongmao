.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l$a;
.super Ljava/lang/Object;
.source "Navigator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->values()[Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->BACK:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->NAVIGATE_GROUP_MANAGER:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->NAVIGATE_USER_PROFILE:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x3

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->NAVIGATE_SELECT_CHAT:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x4

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->NAVIGATE_IN_APP_BROWSER:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x5

    aput v3, v0, v1

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;->values()[Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;->CHAT:Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l$a;->$EnumSwitchMapping$1:[I

    return-void
.end method

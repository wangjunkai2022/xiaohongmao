.class public final synthetic Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$a;
.super Ljava/lang/Object;
.source "GroupManagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;
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
    .locals 5

    invoke-static {}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->values()[Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->MAIN_SCREEN:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->USER_PROFILE:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->CHAT_SELECTOR:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->values()[Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->MANAGER:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->OWNER:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$a;->$EnumSwitchMapping$1:[I

    return-void
.end method

.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$c;
.super Ljava/lang/Object;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "c"
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

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->values()[Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->OPEN_FULLSCREEN:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->BACK:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->OPEN_FILE:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$c;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/im/freechat/utils/CameraRecorder$State;->values()[Lcom/im/freechat/utils/CameraRecorder$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/utils/CameraRecorder$State;->CLEAR:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/utils/CameraRecorder$State;->PREPEARING:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/utils/CameraRecorder$State;->PREVIEW:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/im/freechat/utils/CameraRecorder$State;->RECORDING:Lcom/im/freechat/utils/CameraRecorder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$c;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/im/freechat/shared/entities/chat/Chat$Type;->values()[Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$c;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->values()[Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->QUOTE:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->FORWARD:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->EDIT:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$c;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->values()[Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->KEYBOARD_REQUEST:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->KEYBOARD_SHOWING:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->ATTACHMENT:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->EMOJI:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->STICKERS:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->NONE:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$c;->$EnumSwitchMapping$4:[I

    return-void
.end method

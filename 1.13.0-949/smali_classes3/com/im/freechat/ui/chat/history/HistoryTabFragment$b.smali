.class public final synthetic Lcom/im/freechat/ui/chat/history/HistoryTabFragment$b;
.super Ljava/lang/Object;
.source "HistoryTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/history/HistoryTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;->values()[Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;->GALLERY:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;->OPEN_FILE:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$b;->$EnumSwitchMapping$0:[I

    return-void
.end method

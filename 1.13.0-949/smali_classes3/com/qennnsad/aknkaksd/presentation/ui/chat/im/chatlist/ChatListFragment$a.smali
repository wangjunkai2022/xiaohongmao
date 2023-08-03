.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$a;
.super Ljava/lang/Object;
.source "ChatListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/im/freechat/shared/entities/chat/Chat$Type;->values()[Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$a;->$EnumSwitchMapping$0:[I

    return-void
.end method

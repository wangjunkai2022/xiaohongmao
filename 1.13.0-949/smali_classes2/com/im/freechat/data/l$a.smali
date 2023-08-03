.class public final synthetic Lcom/im/freechat/data/l$a;
.super Ljava/lang/Object;
.source "SyncRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/l;
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

    invoke-static {}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->values()[Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->FILE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->GIF:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->AUDIO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->LOCATION:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/im/freechat/data/l$a;->$EnumSwitchMapping$0:[I

    return-void
.end method

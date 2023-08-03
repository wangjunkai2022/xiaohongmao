.class public final synthetic Lcom/giphy/sdk/ui/utils/e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/giphy/sdk/ui/drawables/ImageFormat;->values()[Lcom/giphy/sdk/ui/drawables/ImageFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/utils/e;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->WEBP:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->MP4:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->GIF:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/giphy/sdk/core/models/enums/RenditionType;->values()[Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/utils/e;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->original:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsized:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedMedium:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedLarge:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidth:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthSmall:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->looping:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeight:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->originalStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->preview:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightSmall:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedSmall:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    return-void
.end method

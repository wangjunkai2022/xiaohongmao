.class public final synthetic Lcom/giphy/sdk/ui/utils/c;
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
    .locals 6

    invoke-static {}, Lcom/giphy/sdk/core/models/enums/RenditionType;->values()[Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/utils/c;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->original:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsized:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedMedium:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedLarge:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidth:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x5

    aput v5, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x6

    aput v5, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x7

    aput v5, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->looping:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v5, 0x8

    aput v5, v0, v1

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeight:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v5, 0x9

    aput v5, v0, v1

    invoke-static {}, Lcom/giphy/sdk/ui/drawables/ImageFormat;->values()[Lcom/giphy/sdk/ui/drawables/ImageFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/utils/c;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->WEBP:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->MP4:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->GIF:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method

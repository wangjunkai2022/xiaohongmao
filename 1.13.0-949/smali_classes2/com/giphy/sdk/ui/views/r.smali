.class public final synthetic Lcom/giphy/sdk/ui/views/r;
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

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/giphy/sdk/ui/themes/GridType;->values()[Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/giphy/sdk/ui/themes/GridType;->carousel:Lcom/giphy/sdk/ui/themes/GridType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/giphy/sdk/ui/themes/GridType;->waterfall:Lcom/giphy/sdk/ui/themes/GridType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    invoke-static {}, Lcom/giphy/sdk/ui/themes/GridType;->values()[Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v0, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->values()[Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->search:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/giphy/sdk/ui/GPHContentType;->values()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->emoji:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v0, v2

    sget-object v2, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v5, v0, v4

    invoke-static {}, Lcom/giphy/sdk/ui/GPHContentType;->values()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$4:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/giphy/sdk/ui/GPHContentType;->values()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$5:[I

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->clips:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->sticker:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v5, v0, v2

    sget-object v2, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v6, 0x3

    aput v6, v0, v4

    invoke-static {}, Lcom/giphy/sdk/ui/GPHContentType;->values()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$6:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method

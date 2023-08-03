.class public final synthetic Lcom/giphy/sdk/ui/k;
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


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->values()[Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/giphy/sdk/ui/k;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Trending:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->None:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Autocomplete:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Text:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Recents:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Channels:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    return-void
.end method

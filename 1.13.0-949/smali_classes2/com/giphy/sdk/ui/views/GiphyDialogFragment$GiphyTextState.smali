.class public final enum Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;
.super Ljava/lang/Enum;
.source "GiphyDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GiphyTextState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;",
        "",
        "(Ljava/lang/String;I)V",
        "search",
        "create",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

.field public static final enum create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

.field public static final enum search:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    const-string v2, "search"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->search:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    const-string v2, "create"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->a:[Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;
    .locals 1

    const-class v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->a:[Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    invoke-virtual {v0}, [Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    return-object v0
.end method

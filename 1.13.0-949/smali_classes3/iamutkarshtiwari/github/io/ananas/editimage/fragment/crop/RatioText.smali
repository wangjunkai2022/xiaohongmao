.class public final enum Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;
.super Ljava/lang/Enum;
.source "RatioText.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;",
        "",
        "",
        "a",
        "I",
        "getRatioTextId",
        "()I",
        "ratioTextId",
        "Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;",
        "b",
        "Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;",
        "getAspectRatio",
        "()Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;",
        "aspectRatio",
        "<init>",
        "(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V",
        "FREE",
        "FIT_IMAGE",
        "SQUARE",
        "RATIO_3_4",
        "RATIO_4_3",
        "RATIO_9_16",
        "RATIO_16_9",
        "lib-ananas_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final enum FIT_IMAGE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

.field public static final enum FREE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

.field public static final enum RATIO_16_9:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

.field public static final enum RATIO_3_4:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

.field public static final enum RATIO_4_3:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

.field public static final enum RATIO_9_16:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

.field public static final enum SQUARE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

.field private static final synthetic c:[Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;


# instance fields
.field private final a:I

.field private final b:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget v1, Lf7/b$o;->q0:I

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "FREE"

    invoke-direct {v0, v5, v3, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;-><init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->FREE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    .line 2
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget v1, Lf7/b$o;->p0:I

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;-><init>(II)V

    const-string v3, "FIT_IMAGE"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;-><init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->FIT_IMAGE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    .line 3
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget v1, Lf7/b$o;->L0:I

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    invoke-direct {v2, v5, v5}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;-><init>(II)V

    const-string v3, "SQUARE"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;-><init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->SQUARE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    .line 4
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget v1, Lf7/b$o;->C0:I

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    const/4 v3, 0x4

    invoke-direct {v2, v4, v3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;-><init>(II)V

    const-string v5, "RATIO_3_4"

    invoke-direct {v0, v5, v4, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;-><init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_3_4:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    .line 5
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget v1, Lf7/b$o;->D0:I

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    invoke-direct {v2, v3, v4}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;-><init>(II)V

    const-string v4, "RATIO_4_3"

    invoke-direct {v0, v4, v3, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;-><init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_4_3:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    .line 6
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget v1, Lf7/b$o;->E0:I

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    const/16 v3, 0x9

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;-><init>(II)V

    const-string v5, "RATIO_9_16"

    const/4 v6, 0x5

    invoke-direct {v0, v5, v6, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;-><init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_9_16:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    .line 7
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget v1, Lf7/b$o;->B0:I

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    invoke-direct {v2, v4, v3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;-><init>(II)V

    const-string v3, "RATIO_16_9"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;-><init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_16_9:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->a()[Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->c:[Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->a:I

    iput-object p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->b:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    return-void
.end method

.method private static final synthetic a()[Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->FREE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->FIT_IMAGE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->SQUARE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_3_4:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_4_3:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_9_16:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->RATIO_16_9:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    return-object p0
.end method

.method public static values()[Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;
    .locals 1

    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->c:[Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    return-object v0
.end method


# virtual methods
.method public final getAspectRatio()Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->b:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    return-object v0
.end method

.method public final getRatioTextId()I
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->a:I

    return v0
.end method

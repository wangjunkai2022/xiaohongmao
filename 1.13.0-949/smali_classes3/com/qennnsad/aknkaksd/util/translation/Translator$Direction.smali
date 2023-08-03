.class public final enum Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;
.super Ljava/lang/Enum;
.source "Translator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getCode",
        "()Ljava/lang/String;",
        "code",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "ZH",
        "JA",
        "AUTO",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

.field public static final enum JA:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

.field public static final enum ZH:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

.field private static final synthetic b:[Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    sget-object v1, Lcom/qennnsad/aknkaksd/util/translation/Translator;->a:Lcom/qennnsad/aknkaksd/util/translation/Translator$a;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZH"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->ZH:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JA"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->JA:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->AUTO:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    invoke-static {}, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->a()[Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->b:[Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    sget-object v1, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->ZH:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->JA:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->AUTO:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->b:[Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->a:Ljava/lang/String;

    return-object v0
.end method

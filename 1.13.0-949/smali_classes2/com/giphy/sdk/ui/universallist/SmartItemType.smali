.class public final enum Lcom/giphy/sdk/ui/universallist/SmartItemType;
.super Ljava/lang/Enum;
.source "SmartItemType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/ui/universallist/SmartItemType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001BI\u0008\u0002\u0012>\u0010\u0010\u001a:\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\u0008\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012RO\u0010\u0010\u001a:\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\u0008\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/universallist/SmartItemType;",
        "",
        "Lkotlin/Function2;",
        "Landroid/view/ViewGroup;",
        "Lkotlin/ParameterName;",
        "name",
        "parent",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "Lcom/giphy/sdk/ui/universallist/e;",
        "adapterHelper",
        "Lcom/giphy/sdk/ui/universallist/j;",
        "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "getCreateViewHolder",
        "()Lkotlin/jvm/functions/Function2;",
        "createViewHolder",
        "<init>",
        "(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V",
        "Video",
        "Gif",
        "DynamicText",
        "DynamicTextWithMoreByYou",
        "UserProfile",
        "NetworkState",
        "NoResults",
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
.field public static final enum DynamicText:Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field public static final enum DynamicTextWithMoreByYou:Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field public static final enum Gif:Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field public static final enum NetworkState:Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field public static final enum NoResults:Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field public static final enum UserProfile:Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field public static final enum Video:Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field private static final synthetic b:[Lcom/giphy/sdk/ui/universallist/SmartItemType;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/ViewGroup;",
            "Lcom/giphy/sdk/ui/universallist/e$a;",
            "Lcom/giphy/sdk/ui/universallist/j;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/giphy/sdk/ui/universallist/SmartItemType;

    new-instance v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 1
    sget-object v2, Lcom/giphy/sdk/ui/universallist/i;->d:Lcom/giphy/sdk/ui/universallist/i$b;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/i$b;->a()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const-string v3, "Video"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/giphy/sdk/ui/universallist/SmartItemType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->Video:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 2
    sget-object v2, Lcom/giphy/sdk/ui/universallist/c;->d:Lcom/giphy/sdk/ui/universallist/c$b;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/c$b;->a()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const-string v3, "Gif"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v2}, Lcom/giphy/sdk/ui/universallist/SmartItemType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->Gif:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    aput-object v1, v0, v5

    new-instance v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 3
    sget-object v2, Lcom/giphy/sdk/ui/universallist/a;->c:Lcom/giphy/sdk/ui/universallist/a$a;

    invoke-virtual {v2, v4}, Lcom/giphy/sdk/ui/universallist/a$a;->a(Z)Lkotlin/jvm/functions/Function2;

    move-result-object v3

    const-string v4, "DynamicText"

    const/4 v6, 0x2

    invoke-direct {v1, v4, v6, v3}, Lcom/giphy/sdk/ui/universallist/SmartItemType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->DynamicText:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    aput-object v1, v0, v6

    new-instance v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 4
    invoke-virtual {v2, v5}, Lcom/giphy/sdk/ui/universallist/a$a;->a(Z)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const-string v3, "DynamicTextWithMoreByYou"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Lcom/giphy/sdk/ui/universallist/SmartItemType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->DynamicTextWithMoreByYou:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 5
    sget-object v2, Lcom/giphy/sdk/ui/universallist/k;->b:Lcom/giphy/sdk/ui/universallist/k$b;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/k$b;->a()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const-string v3, "UserProfile"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Lcom/giphy/sdk/ui/universallist/SmartItemType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->UserProfile:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 6
    sget-object v2, Lcom/giphy/sdk/ui/pagination/d;->c:Lcom/giphy/sdk/ui/pagination/d$b;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/pagination/d$b;->a()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const-string v3, "NetworkState"

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4, v2}, Lcom/giphy/sdk/ui/universallist/SmartItemType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->NetworkState:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 7
    sget-object v2, Lcom/giphy/sdk/ui/universallist/b;->b:Lcom/giphy/sdk/ui/universallist/b$b;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/b$b;->a()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const-string v3, "NoResults"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4, v2}, Lcom/giphy/sdk/ui/universallist/SmartItemType;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    sput-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->NoResults:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/giphy/sdk/ui/universallist/SmartItemType;->b:[Lcom/giphy/sdk/ui/universallist/SmartItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Lcom/giphy/sdk/ui/universallist/e$a;",
            "+",
            "Lcom/giphy/sdk/ui/universallist/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/giphy/sdk/ui/universallist/SmartItemType;->a:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/ui/universallist/SmartItemType;
    .locals 1

    const-class v0, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/ui/universallist/SmartItemType;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/ui/universallist/SmartItemType;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/universallist/SmartItemType;->b:[Lcom/giphy/sdk/ui/universallist/SmartItemType;

    invoke-virtual {v0}, [Lcom/giphy/sdk/ui/universallist/SmartItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/ui/universallist/SmartItemType;

    return-object v0
.end method


# virtual methods
.method public final getCreateViewHolder()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/ViewGroup;",
            "Lcom/giphy/sdk/ui/universallist/e$a;",
            "Lcom/giphy/sdk/ui/universallist/j;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartItemType;->a:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

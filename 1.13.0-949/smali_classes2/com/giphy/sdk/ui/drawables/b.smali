.class public final Lcom/giphy/sdk/ui/drawables/b;
.super Ljava/lang/Object;
.source "GifStepMapping.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\'\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00020\u0005`\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00020\u0005`\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00020\u0005`\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\n\u001a\u0004\u0008\u0010\u0010\u000cR\'\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00020\u0005`\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\t\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/drawables/b;",
        "",
        "Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "targetRendition",
        "",
        "Lcom/giphy/sdk/ui/drawables/c;",
        "e",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "a",
        "Ljava/util/ArrayList;",
        "c",
        "()Ljava/util/ArrayList;",
        "FIXED_WIDTH_STEPS",
        "b",
        "FIXED_HEIGHT_STEPS",
        "d",
        "FIXED_WIDTH_THEN_ORIGINAL_STEPS",
        "EMOJI_STEPS",
        "<init>",
        "()V",
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
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final e:Lcom/giphy/sdk/ui/drawables/b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/drawables/b;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/drawables/b;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/drawables/b;->e:Lcom/giphy/sdk/ui/drawables/b;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/giphy/sdk/ui/drawables/c;

    .line 2
    new-instance v2, Lcom/giphy/sdk/ui/drawables/c;

    sget-object v3, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidth:Lcom/giphy/sdk/core/models/enums/RenditionType;

    sget-object v4, Lcom/giphy/sdk/ui/drawables/GifStepAction;->TERMINATE:Lcom/giphy/sdk/ui/drawables/GifStepAction;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Lcom/giphy/sdk/ui/drawables/c;-><init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/giphy/sdk/ui/drawables/b;->a:Ljava/util/ArrayList;

    new-array v1, v0, [Lcom/giphy/sdk/ui/drawables/c;

    .line 3
    new-instance v2, Lcom/giphy/sdk/ui/drawables/c;

    sget-object v6, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeight:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-direct {v2, v6, v5, v4}, Lcom/giphy/sdk/ui/drawables/c;-><init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/giphy/sdk/ui/drawables/b;->b:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/giphy/sdk/ui/drawables/c;

    .line 4
    new-instance v2, Lcom/giphy/sdk/ui/drawables/c;

    sget-object v6, Lcom/giphy/sdk/ui/drawables/GifStepAction;->NEXT:Lcom/giphy/sdk/ui/drawables/GifStepAction;

    invoke-direct {v2, v3, v5, v6}, Lcom/giphy/sdk/ui/drawables/c;-><init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V

    aput-object v2, v1, v5

    .line 5
    new-instance v2, Lcom/giphy/sdk/ui/drawables/c;

    sget-object v3, Lcom/giphy/sdk/core/models/enums/RenditionType;->original:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-direct {v2, v3, v5, v4}, Lcom/giphy/sdk/ui/drawables/c;-><init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V

    aput-object v2, v1, v0

    .line 6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/giphy/sdk/ui/drawables/b;->c:Ljava/util/ArrayList;

    new-array v0, v0, [Lcom/giphy/sdk/ui/drawables/c;

    .line 7
    new-instance v1, Lcom/giphy/sdk/ui/drawables/c;

    sget-object v2, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthSmall:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-direct {v1, v2, v5, v4}, Lcom/giphy/sdk/ui/drawables/c;-><init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V

    aput-object v1, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/giphy/sdk/ui/drawables/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/drawables/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/drawables/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/drawables/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/drawables/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final e(Lcom/giphy/sdk/core/models/enums/RenditionType;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/models/enums/RenditionType;",
            ")",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "targetRendition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/giphy/sdk/ui/drawables/c;

    .line 1
    new-instance v1, Lcom/giphy/sdk/ui/drawables/c;

    sget-object v2, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidth:Lcom/giphy/sdk/core/models/enums/RenditionType;

    sget-object v3, Lcom/giphy/sdk/ui/drawables/GifStepAction;->NEXT:Lcom/giphy/sdk/ui/drawables/GifStepAction;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/giphy/sdk/ui/drawables/c;-><init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V

    aput-object v1, v0, v4

    .line 2
    new-instance v1, Lcom/giphy/sdk/ui/drawables/c;

    sget-object v2, Lcom/giphy/sdk/ui/drawables/GifStepAction;->TERMINATE:Lcom/giphy/sdk/ui/drawables/GifStepAction;

    invoke-direct {v1, p1, v4, v2}, Lcom/giphy/sdk/ui/drawables/c;-><init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/giphy/sdk/ui/universallist/g;
.super Ljava/lang/Object;
.source "SmartItemData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\n\u001a\u0004\u0008\u0005\u0010\u000bR\u0017\u0010\u0011\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000e\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/universallist/g;",
        "",
        "Lcom/giphy/sdk/core/models/Media;",
        "b",
        "Lcom/giphy/sdk/ui/universallist/SmartItemType;",
        "a",
        "Lcom/giphy/sdk/ui/universallist/SmartItemType;",
        "d",
        "()Lcom/giphy/sdk/ui/universallist/SmartItemType;",
        "viewType",
        "Ljava/lang/Object;",
        "()Ljava/lang/Object;",
        "data",
        "",
        "c",
        "I",
        "()I",
        "spanCount",
        "<init>",
        "(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;I)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/giphy/sdk/ui/universallist/SmartItemType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;I)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/universallist/SmartItemType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "viewType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/g;->a:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    iput-object p2, p0, Lcom/giphy/sdk/ui/universallist/g;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/giphy/sdk/ui/universallist/g;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/universallist/g;-><init>(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lcom/giphy/sdk/core/models/Media;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/g;->a:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    sget-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->Gif:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/g;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/giphy/sdk/core/models/Media;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/giphy/sdk/core/models/Media;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/ui/universallist/g;->c:I

    return v0
.end method

.method public final d()Lcom/giphy/sdk/ui/universallist/SmartItemType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/g;->a:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    return-object v0
.end method

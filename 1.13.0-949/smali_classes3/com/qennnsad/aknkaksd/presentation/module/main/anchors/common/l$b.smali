.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;
.super Ljava/lang/Object;
.source "AnchorItem.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u0002H\u0016J\t\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\t\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003R\u0017\u0010\u0007\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
        "",
        "kotlin.jvm.PlatformType",
        "getId",
        "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
        "a",
        "hotAnchorSummary",
        "b",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
        "d",
        "()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "hotAnchorSummary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->b(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    return-object v0
.end method

.method public final b(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "hotAnchorSummary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;-><init>(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V

    return-object v0
.end method

.method public final d()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorContentItem(hotAnchorSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->a:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

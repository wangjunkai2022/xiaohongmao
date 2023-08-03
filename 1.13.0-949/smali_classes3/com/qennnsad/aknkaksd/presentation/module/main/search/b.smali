.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;
.super Ljava/lang/Object;
.source "SearchUserAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\tH\u00d6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
        "a",
        "",
        "b",
        "anchorSummary",
        "isFollowed",
        "c",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
        "e",
        "()Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
        "Z",
        "f",
        "()Z",
        "g",
        "(Z)V",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Z)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Z)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "anchorSummary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    .line 3
    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->c(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Z)Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    return v0
.end method

.method public final c(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Z)Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "anchorSummary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;

    invoke-direct {v0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;-><init>(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Z)V

    return-object v0
.end method

.method public final e()Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    iget-boolean p1, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    return v0
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResultWrapper(anchorSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->a:Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFollowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
